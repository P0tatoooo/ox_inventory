import React, { useEffect, useMemo, useRef, useState } from 'react';
import { Inventory } from '../../typings';
import WeightBar from '../utils/WeightBar';
import InventorySlot from './InventorySlot';
import { getTotalWeight } from '../../helpers';
import { useAppSelector } from '../../store';
import { useIntersection } from '../../hooks/useIntersection';
import './InventoryGrid.scss';
import { Block } from '../../shared/component/Block';

const PAGE_SIZE = 30;

const InventoryGrid: React.FC<{ inventory: Inventory, BelowComponent?: JSX.Element }> = ({ inventory, BelowComponent }) => {
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

  const FooterContent = ({inventory, weight}: {inventory: Inventory, weight: number}) => {
    return (
      <div className="inventory-weight-bar__container">
        <WeightBar percent={inventory.maxWeight ? (weight / inventory.maxWeight) * 100 : 0} />
        <div className="inventory-weight-bar__weight">
          {weight / 1000}/{(inventory.maxWeight ?? 0) / 1000}kg
        </div>
      </div>
    )
  }

  return (
    <div className="inventory-side-wrapper">
      <Block className="inventory-block" title={inventory.label} subTitle={<FooterContent weight={weight} inventory={inventory}/>}>
        <div className="inventory-grid-wrapper" style={{ pointerEvents: isBusy ? 'none' : 'auto' }}>
          <div className="inventory-grid-container" ref={containerRef}>
            <>
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
            </>
          </div>
        </div>
      </Block>
      {BelowComponent}
    </div>
  );
};

export default InventoryGrid;
