<<<<<<< HEAD
import React from 'react';
import { DragSource, Inventory, InventoryType, Slot, SlotWithItem } from '../../typings';
import { useDrag, useDragDropManager, useDrop } from 'react-dnd';
import { useAppDispatch, useAppSelector } from '../../store';
import WeightBar from '../utils/WeightBar';
import { onDrop } from '../../dnd/onDrop';
import { onBuy } from '../../dnd/onBuy';
import { selectIsBusy } from '../../store/inventory';
import { Items } from '../../store/items';
import { canCraftItem, getItemUrl, canPurchaseItem, isSlotWithItem } from '../../helpers';
import { onUse } from '../../dnd/onUse';
import { Locale } from '../../store/locale';
import { Tooltip } from '@mui/material';
import SlotTooltip from './SlotTooltip';
import { setContextMenu } from '../../store/inventory';
import { onCraft } from '../../dnd/onCraft';
import useNuiEvent from '../../hooks/useNuiEvent';
import { ItemsPayload } from '../../reducers/refreshSlots';

interface SlotProps {
  inventory: Inventory;
  item: Slot;
}

const InventorySlot: React.FC<SlotProps> = ({ inventory, item }) => {
  const manager = useDragDropManager();
  const isBusy = useAppSelector(selectIsBusy);
  const dispatch = useAppDispatch();

  const canDrag = React.useCallback(() => {
    return !isBusy && canPurchaseItem(item, inventory) && canCraftItem(item, inventory.type);
  }, [item, inventory, isBusy]);
=======
import React, { useCallback, useRef } from 'react';
import { DragSource, Inventory, InventoryType, Slot, SlotWithItem } from '../../typings';
import { useDrag, useDragDropManager, useDrop } from 'react-dnd';
import { useAppDispatch } from '../../store';
import WeightBar from '../utils/WeightBar';
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
>>>>>>> main

  const [{ isDragging }, drag] = useDrag<DragSource, void, { isDragging: boolean }>(
    () => ({
      type: 'SLOT',
      collect: (monitor) => ({
        isDragging: monitor.isDragging(),
      }),
      item: () =>
<<<<<<< HEAD
        isSlotWithItem(item, inventory.type !== InventoryType.SHOP)
          ? {
              inventory: inventory.type,
=======
        isSlotWithItem(item, inventoryType !== InventoryType.SHOP)
          ? {
              inventory: inventoryType,
>>>>>>> main
              item: {
                name: item.name,
                slot: item.slot,
              },
              image: item?.name && `url(${getItemUrl(item) || 'none'}`,
            }
          : null,
      canDrag,
    }),
<<<<<<< HEAD
    [isBusy, inventory, item]
=======
    [inventoryType, item]
>>>>>>> main
  );

  const [{ isOver }, drop] = useDrop<DragSource, void, { isOver: boolean }>(
    () => ({
      accept: 'SLOT',
      collect: (monitor) => ({
        isOver: monitor.isOver(),
      }),
<<<<<<< HEAD
      drop: (source) =>
        source.inventory === InventoryType.SHOP
          ? onBuy(source, {
              inventory: inventory.type,
              item: {
                slot: item.slot,
              },
            })
          : source.inventory === InventoryType.CRAFTING
          ? onCraft(source, {
              inventory: inventory.type,
              item: {
                slot: item.slot,
              },
            })
          : onDrop(source, {
              inventory: inventory.type,
              item: {
                slot: item.slot,
              },
            }),
      canDrop: (source) =>
        !isBusy &&
        (source.item.slot !== item.slot || source.inventory !== inventory.type) &&
        inventory.type !== InventoryType.SHOP &&
        inventory.type !== InventoryType.CRAFTING,
    }),
    [isBusy, inventory, item]
=======
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
>>>>>>> main
  );

  useNuiEvent('refreshSlots', (data: { items?: ItemsPayload | ItemsPayload[] }) => {
    if (!isDragging && !data.items) return;
    if (!Array.isArray(data.items)) return;

    const itemSlot = data.items.find(
<<<<<<< HEAD
      (dataItem) => dataItem.item.slot === item.slot && dataItem.inventory === inventory.id
=======
      (dataItem) => dataItem.item.slot === item.slot && dataItem.inventory === inventoryId
>>>>>>> main
    );

    if (!itemSlot) return;

    manager.dispatch({ type: 'dnd-core/END_DRAG' });
  });

  const connectRef = (element: HTMLDivElement) => drag(drop(element));

  const handleContext = (event: React.MouseEvent<HTMLDivElement>) => {
    event.preventDefault();
<<<<<<< HEAD

    !isBusy &&
      inventory.type === 'player' &&
      isSlotWithItem(item) &&
      dispatch(setContextMenu({ coords: { mouseX: event.clientX, mouseY: event.clientY }, item }));
  };

  const handleClick = (event: React.MouseEvent<HTMLDivElement>) => {
    if (isBusy) return;

    if (event.ctrlKey && isSlotWithItem(item) && inventory.type !== 'shop' && inventory.type !== 'crafting') {
      onDrop({ item: item, inventory: inventory.type });
    } else if (event.altKey && isSlotWithItem(item) && inventory.type === 'player') {
=======
    if (inventoryType !== 'player' || !isSlotWithItem(item)) return;

    dispatch(openContextMenu({ item, coords: { x: event.clientX, y: event.clientY } }));
  };

  const handleClick = (event: React.MouseEvent<HTMLDivElement>) => {
    dispatch(closeTooltip());
    if (timerRef.current) clearTimeout(timerRef.current);
    if (event.ctrlKey && isSlotWithItem(item) && inventoryType !== 'shop' && inventoryType !== 'crafting') {
      onDrop({ item: item, inventory: inventoryType });
    } else if (event.altKey && isSlotWithItem(item) && inventoryType === 'player') {
>>>>>>> main
      onUse(item);
    }
  };

<<<<<<< HEAD
  return (
    <Tooltip
      title={!isSlotWithItem(item) || isOver || isDragging ? '' : <SlotTooltip item={item} inventory={inventory} />}
      disableInteractive
      followCursor
      disableFocusListener
      disableTouchListener
      placement="right-start"
      enterDelay={500}
      enterNextDelay={500}
      PopperProps={{ disablePortal: true }}
    >
      <div
        ref={connectRef}
        onContextMenu={handleContext}
        onClick={handleClick}
        className="inventory-slot"
        style={{
          filter:
            !canPurchaseItem(item, inventory) || !canCraftItem(item, inventory.type)
              ? 'brightness(80%) grayscale(100%)'
              : undefined,
          opacity: isDragging ? 0.4 : 1.0,
          backgroundImage: `url(${item?.name ? getItemUrl(item as SlotWithItem) : 'none'}`,
          border: isOver ? '1px dashed rgba(255,255,255,0.4)' : '',
        }}
      >
        {isSlotWithItem(item) && (
          <div className="item-slot-wrapper">
            <div
              className={
                inventory.type === 'player' && item.slot <= 5
                  ? 'item-hotslot-header-wrapper'
                  : 'item-slot-header-wrapper'
              }
            >
              {inventory.type === 'player' && item.slot <= 5 && (
                <div className="inventory-slot-number">{item.slot}</div>
              )}
              <div className="item-slot-info-wrapper">
                <p>
                  {item.weight > 0
                    ? item.weight >= 1000
                      ? `${(item.weight / 1000).toLocaleString('en-us', {
                          minimumFractionDigits: 2,
                        })}kg `
                      : `${item.weight.toLocaleString('en-us', {
                          minimumFractionDigits: 0,
                        })}g `
                    : ''}
                </p>
                <p>{item.count ? item.count.toLocaleString('en-us') + `x` : ''}</p>
              </div>
            </div>
            <div>
              {inventory.type !== 'shop' && item?.durability !== undefined && (
                <WeightBar percent={item.durability} durability />
              )}
              {inventory.type === 'shop' && item?.price !== undefined && (
                <>
                  {item?.currency !== 'money' && item.currency !== 'black_money' && item.price > 0 && item.currency ? (
                    <div className="item-slot-currency-wrapper">
                      <img
                        src={item.currency ? getItemUrl(item.currency) : 'none'}
                        alt="item-image"
                        style={{
                          imageRendering: '-webkit-optimize-contrast',
                          height: 'auto',
                          width: '2vh',
                          backfaceVisibility: 'hidden',
                          transform: 'translateZ(0)',
                        }}
                      />
                      <p>{item.price.toLocaleString('en-us')}</p>
                    </div>
                  ) : (
                    <>
                      {item.price > 0 && (
                        <div
                          className="item-slot-price-wrapper"
                          style={{ color: item.currency === 'money' || !item.currency ? '#2ECC71' : '#E74C3C' }}
                        >
                          <p>
                            {Locale.$ || '$'}
                            {item.price.toLocaleString('en-us')}
                          </p>
                        </div>
                      )}
                    </>
                  )}
                </>
              )}
              <div className="inventory-slot-label-box">
                <div className="inventory-slot-label-text">
                  {item.metadata?.label ? item.metadata.label : Items[item.name]?.label || item.name}
                </div>
              </div>
            </div>
          </div>
        )}
      </div>
    </Tooltip>
  );
};

export default InventorySlot;
=======
  const refs = useMergeRefs([connectRef, ref]);

  return (
    <div
      ref={refs}
      onContextMenu={handleContext}
      onClick={handleClick}
      className="inventory-slot"
      style={{
        filter:
          !canPurchaseItem(item, { type: inventoryType, groups: inventoryGroups }) || !canCraftItem(item, inventoryType)
            ? 'brightness(80%) grayscale(100%)'
            : undefined,
        opacity: isDragging ? 0.4 : 1.0,
        backgroundImage: `url(${item?.name ? getItemUrl(item as SlotWithItem) : 'none'}`,
        border: isOver ? '1px dashed rgba(255,255,255,0.4)' : '',
      }}
    >
      {isSlotWithItem(item) && (
        <div
          className="item-slot-wrapper"
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
          <div
            className={
              inventoryType === 'player' && item.slot <= 5 ? 'item-hotslot-header-wrapper' : 'item-slot-header-wrapper'
            }
          >
            {inventoryType === 'player' && item.slot <= 5 && <div className="inventory-slot-number">{item.slot}</div>}
            <div className="item-slot-info-wrapper">
              <p>
                {item.weight > 0
                  ? item.weight >= 1000
                    ? `${(item.weight / 1000).toLocaleString('en-us', {
                        minimumFractionDigits: 2,
                      })}kg `
                    : `${item.weight.toLocaleString('en-us', {
                        minimumFractionDigits: 0,
                      })}g `
                  : ''}
              </p>
              <p>{item.count ? item.count.toLocaleString('en-us') + `x` : ''}</p>
            </div>
          </div>
          <div>
            {inventoryType !== 'shop' && item?.durability !== undefined && (
              <WeightBar percent={item.durability} durability />
            )}
            {inventoryType === 'shop' && item?.price !== undefined && (
              <>
                {item?.currency !== 'money' && item.currency !== 'black_money' && item.price > 0 && item.currency ? (
                  <div className="item-slot-currency-wrapper">
                    <img
                      src={item.currency ? getItemUrl(item.currency) : 'none'}
                      alt="item-image"
                      style={{
                        imageRendering: '-webkit-optimize-contrast',
                        height: 'auto',
                        width: '2vh',
                        backfaceVisibility: 'hidden',
                        transform: 'translateZ(0)',
                      }}
                    />
                    <p>{item.price.toLocaleString('en-us')}</p>
                  </div>
                ) : (
                  <>
                    {item.price > 0 && (
                      <div
                        className="item-slot-price-wrapper"
                        style={{ color: item.currency === 'money' || !item.currency ? '#2ECC71' : '#E74C3C' }}
                      >
                        <p>
                          {Locale.$ || '$'}
                          {item.price.toLocaleString('en-us')}
                        </p>
                      </div>
                    )}
                  </>
                )}
              </>
            )}
            <div className="inventory-slot-label-box">
              <div className="inventory-slot-label-text">
                {item.metadata?.label ? item.metadata.label : Items[item.name]?.label || item.name}
              </div>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};

export default React.memo(React.forwardRef(InventorySlot));
>>>>>>> main
