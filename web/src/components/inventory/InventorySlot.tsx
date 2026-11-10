import React, { useCallback, useRef } from 'react';
import { DragSource, Inventory, InventoryType, Slot, SlotWithItem } from '../../typings';
import { useDrag, useDragDropManager, useDrop } from 'react-dnd';
import { useAppDispatch } from '../../store';
import { DurabilityBar } from '../utils/WeightBar';
import { onDrop } from '../../dnd/onDrop';
import { onBuy } from '../../dnd/onBuy';
import { Items } from '../../store/items';
import { canCraftItem, canPurchaseItem, getItemUrl, isSlotWithItem } from '../../helpers';
import { onUse } from '../../dnd/onUse';
import { Locale } from '../../store/locale';
import { onCraft } from '../../dnd/onCraft';
import useNuiEvent from '../../hooks/useNuiEvent';
import { ItemsPayload } from '../../reducers/refreshSlots';
import { closeTooltip, openTooltip } from '../../store/tooltip';
import { openContextMenu } from '../../store/contextMenu';
import { useMergeRefs } from '@floating-ui/react';
import { fetchNui } from '../../utils/fetchNui';

interface SlotProps {
  inventoryId: Inventory['id'];
  inventoryType: Inventory['type'];
  inventoryGroups: Inventory['groups'];
  item: Slot;
}

const InventorySlot: React.ForwardRefRenderFunction<HTMLDivElement, SlotProps> = (
  { item, inventoryId, inventoryType, inventoryGroups },
  ref
) => {
  const manager = useDragDropManager();
  const dispatch = useAppDispatch();
  const timerRef = useRef<number | null>(null);

  const canDrag = useCallback(() => {
    return canPurchaseItem(item, { type: inventoryType, groups: inventoryGroups }) && canCraftItem(item, inventoryType);
  }, [item, inventoryType, inventoryGroups]);

  const [{ isDragging }, drag] = useDrag<DragSource, void, { isDragging: boolean }>(
    () => ({
      type: 'SLOT',
      collect: (monitor) => ({
        isDragging: monitor.isDragging(),
      }),
      item: () =>
        isSlotWithItem(item, inventoryType !== InventoryType.SHOP)
          ? {
              inventory: inventoryType,
              item: {
                name: item.name,
                slot: item.slot,
              },
              image: item?.name && `url(${getItemUrl(item) || 'none'}`,
            }
          : null,
      canDrag,
    }),
    [inventoryType, item]
  );

  const [{ isOver }, drop] = useDrop<DragSource, void, { isOver: boolean }>(
    () => ({
      accept: 'SLOT',
      collect: (monitor) => ({
        isOver: monitor.isOver(),
      }),
      drop: (source) => {
        dispatch(closeTooltip());
        switch (source.inventory) {
          case InventoryType.SHOP:
            onBuy(source, { inventory: inventoryType, item: { slot: item.slot } });
            break;
          case InventoryType.CRAFTING:
            onCraft(source, { inventory: inventoryType, item: { slot: item.slot } });
            break;
          default:
            onDrop(source, { inventory: inventoryType, item: { slot: item.slot } });
            break;
        }
      },
      canDrop: (source) =>
        (source.item.slot !== item.slot || source.inventory !== inventoryType) &&
        inventoryType !== InventoryType.SHOP &&
        inventoryType !== InventoryType.CRAFTING,
    }),
    [inventoryType, item]
  );

  useNuiEvent('refreshSlots', (data: { items?: ItemsPayload | ItemsPayload[] }) => {
    if (!isDragging && !data.items) return;
    if (!Array.isArray(data.items)) return;

    const itemSlot = data.items.find(
      (dataItem) => dataItem.item.slot === item.slot && dataItem.inventory === inventoryId
    );

    if (!itemSlot) return;

    manager.dispatch({ type: 'dnd-core/END_DRAG' });
  });

  const connectRef = (element: HTMLDivElement) => drag(drop(element));

  const handleContext = (event: React.MouseEvent<HTMLDivElement>) => {
    event.preventDefault();
    if (!isSlotWithItem(item)) return;
    // MyCity: in the other inventory (a trunk, a stash, not a shop or a bench), an
    // item with buttons marked `otherInventory` opens the menu too -- those buttons
    // only (a pallet or a forklift taken out of a truck, MyCity_CoreV2 Transistep)
    if (inventoryType !== 'player') {
      const buttons: any[] = (Items[item.name]?.buttons as any) || [];
      const hasButtons = buttons.some((button) => button && button.otherInventory);
      if (!hasButtons || inventoryType === 'shop' || inventoryType === 'crafting') return;
    }

    dispatch(
      openContextMenu({ item, coords: { x: event.clientX, y: event.clientY }, inventoryType, inventoryId })
    );
  };

  const handleClick = (event: React.MouseEvent<HTMLDivElement>) => {
    dispatch(closeTooltip());
    if (timerRef.current) clearTimeout(timerRef.current);
    if (event.ctrlKey && isSlotWithItem(item) && inventoryType !== 'shop' && inventoryType !== 'crafting') {
      onDrop({ item: item, inventory: inventoryType });
    } else if (event.altKey && isSlotWithItem(item) && inventoryType === 'player') {
      onUse(item);
    }
  };

  // MyCity: a double-click puts a piece of clothing / an outfit / a bulletproof vest on (from the inventory: its use) or takes it off
  // (from the slots around the character: MyCity_Appearance server takeOffSlot)
  const handleDoubleClick = () => {
    if (!isSlotWithItem(item) || (item.name !== 'clothing' && item.name !== 'outfit' && item.name !== 'bulletproof')) return;
    dispatch(closeTooltip());
    if (inventoryType === 'clothing') fetchNui('clothingTakeOff', item.slot);
    else if (inventoryType === 'player') onUse(item);
  };

  const refs = useMergeRefs([connectRef, ref]);

  const getQuantity = (item: Slot) => {
    if(!item.count){
      return '';
    }

    let suffix = 'x';
    let prefix = '';
    if(item.name === 'money'){
      prefix = '$ '
      suffix = ''
    }

    const quantity = item.count.toLocaleString('en-us', {}).replace(/,/g, ' ');

    return prefix + quantity + suffix;
  }

  const filled = isSlotWithItem(item);
  const available =
    canPurchaseItem(item, { type: inventoryType, groups: inventoryGroups }) && canCraftItem(item, inventoryType);
  // the worn clothes stand around the character, over the game itself: one piece a slot, its name only
  const worn = inventoryType === 'clothing';
  const hotkey = inventoryType === 'player' && item.slot <= 5;

  const getWeight = (weight: number) =>
    weight > 0
      ? weight >= 1000
        ? `${(weight / 1000).toLocaleString('en-us', { minimumFractionDigits: 2, maximumFractionDigits: 2 })}kg`
        : `${weight.toLocaleString('en-us', { minimumFractionDigits: 0, maximumFractionDigits: 2 })}g`
      : '';

  // a shop's price: in an item (its picture first), or in money -- clean (green) or not (red)
  const getPrice = (item: SlotWithItem) => {
    if (inventoryType !== 'shop' || item.price === undefined || item.price <= 0) return null;
    if (item.currency && item.currency !== 'money' && item.currency !== 'black_money')
      return (
        <span className="mc-inv-pill">
          <img src={getItemUrl(item.currency)} alt="" />
          {item.price.toLocaleString('en-us')}
        </span>
      );
    return (
      <span className={`mc-inv-pill ${item.currency === 'money' || !item.currency ? 'mc-inv-pill--ok' : 'mc-inv-pill--danger'}`}>
        {Locale.$ || '$'}
        {item.price.toLocaleString('en-us')}
      </span>
    );
  };

  // MyCity_UI's inventory slot (.mc-inv-slot): the kit draws it, its states are classes
  const className = [
    'mc-inv-slot',
    filled && 'mc-inv-slot--filled',
    worn && 'mc-inv-slot--bare',
    isOver && 'mc-inv-slot--over',
    isDragging && 'mc-inv-slot--dragging',
    !available && 'mc-inv-slot--off',
  ]
    .filter(Boolean)
    .join(' ');

  return (
    <div
      ref={refs}
      onContextMenu={handleContext}
      onClick={handleClick}
      onDoubleClick={handleDoubleClick}
      className={className}
      style={{ backgroundImage: `url(${item?.name ? getItemUrl(item as SlotWithItem) : 'none'}` }}
    >
      {isSlotWithItem(item) && (
        <div
          className="inventory-slot-body"
          onMouseEnter={() => {
            timerRef.current = window.setTimeout(() => {
              dispatch(openTooltip({ item, inventoryType }));
            }, 500) as unknown as number;
          }}
          onMouseLeave={() => {
            dispatch(closeTooltip());
            if (timerRef.current) {
              clearTimeout(timerRef.current);
              timerRef.current = null;
            }
          }}
        >
          <div className="mc-inv-slot-top">
            {hotkey && <span className="mc-inv-slot-key">{item.slot}</span>}
            {/* its weight on the top left (after the hotbar key), how many and its price on the top right */}
            {!worn && getWeight(item.weight) && (
              <span className="mc-inv-pill mc-inv-pill--dim">{getWeight(item.weight)}</span>
            )}
            {!worn && (
              <div className="mc-inv-slot-pills">
                {getQuantity(item) && <span className="mc-inv-pill">{getQuantity(item)}</span>}
                {getPrice(item)}
              </div>
            )}
          </div>
          <div>
            {inventoryType !== 'shop' && item?.durability !== undefined && <DurabilityBar percent={item.durability} />}
            <div className="mc-inv-slot-name">
              {item.metadata?.label ? item.metadata.label : Items[item.name]?.label || item.name}
            </div>
          </div>
        </div>
      )}
    </div>
  );
};

export default React.memo(React.forwardRef(InventorySlot));
