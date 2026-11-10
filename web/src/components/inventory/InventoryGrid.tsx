import React, { useEffect, useMemo, useRef, useState } from 'react';
import { observer } from 'mobx-react';
import { Inventory } from '../../typings';
import WeightBar from '../utils/WeightBar';
import InventorySlot from './InventorySlot';
import { getTotalWeight } from '../../helpers';
import { useAppSelector } from '../../store';
import { useIntersection } from '../../hooks/useIntersection';
import McCoin from '@/assets/mc-coins.png';
import { myCityCoinStore } from '../../store/mobx/MyCityCoinStore';

const PAGE_SIZE = 30;

const kg = (grams: number) => (grams / 1000).toFixed(2);

// the player's MyCity coins, on the right of their name (MyCity_UI's .mc-balance)
const McCoins = observer(() => (
  <div className="mc-balance">
    <span>MC</span>
    <b>{myCityCoinStore.cityCoin}</b>
    <img src={McCoin} alt="" />
  </div>
));

/**
 * One inventory: a see-through MyCity_UI box (.mc-float--glass) with its head (.mc-inv-head: the name, the weight)
 * over the grid of slots (.mc-inv-grid). What goes under it (the buttons, the key hints) is a box of its own.
 */
const InventoryGrid: React.FC<{ inventory: Inventory; BelowComponent?: JSX.Element; mcCoin?: boolean }> = ({
  inventory,
  BelowComponent,
  mcCoin = false,
}) => {
  const weight = useMemo(
    () => (inventory.maxWeight !== undefined ? Math.floor(getTotalWeight(inventory.items) * 1000) / 1000 : 0),
    [inventory.maxWeight, inventory.items]
  );
  const [page, setPage] = useState(0);
  const containerRef = useRef(null);
  const { ref, entry } = useIntersection({ threshold: 0.5 });
  const isBusy = useAppSelector((state) => state.inventory.isBusy);

  useEffect(() => {
    if (entry && entry.isIntersecting) {
      setPage((prev) => ++prev);
    }
  }, [entry]);

  return (
    <div className="inventory-side">
      <div className="mc-float mc-float--glass">
        <div className="mc-inv-head">
          <div className="mc-inv-head-row">
            <div className="mc-title">{inventory.label}</div>
            {mcCoin && <McCoins />}
          </div>
          <WeightBar
            percent={inventory.maxWeight ? (weight / inventory.maxWeight) * 100 : 0}
            label={`${kg(weight)} / ${kg(inventory.maxWeight ?? 0)} kg`}
          />
        </div>
        <div
          className="mc-inv-grid inventory-grid"
          ref={containerRef}
          style={{ pointerEvents: isBusy ? 'none' : 'auto' }}
        >
          {inventory.items.slice(0, (page + 1) * PAGE_SIZE).map((item, index) => (
            <InventorySlot
              key={`${inventory.type}-${inventory.id}-${item.slot}`}
              item={item}
              ref={index === (page + 1) * PAGE_SIZE - 1 ? ref : null}
              inventoryType={inventory.type}
              inventoryGroups={inventory.groups}
              inventoryId={inventory.id}
            />
          ))}
        </div>
      </div>
      {BelowComponent}
    </div>
  );
};

export default InventoryGrid;
