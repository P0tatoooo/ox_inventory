import React, { useState } from 'react';
import { getItemUrl, isSlotWithItem } from '../../helpers';
import useNuiEvent from '../../hooks/useNuiEvent';
import { Items } from '../../store/items';
import { DurabilityBar } from '../utils/WeightBar';
import { useAppSelector } from '../../store';
import { selectLeftInventory } from '../../store/inventory';
import { SlotWithItem } from '../../typings';
import SlideUp from '../utils/transitions/SlideUp';

const InventoryHotbar: React.FC = () => {
  const [hotbarVisible, setHotbarVisible] = useState(false);
  const items = useAppSelector(selectLeftInventory).items.slice(0, 5);

  //stupid fix for timeout
  const [handle, setHandle] = useState<NodeJS.Timeout>();
  useNuiEvent('toggleHotbar', () => {
    if (hotbarVisible) {
      setHotbarVisible(false);
    } else {
      if (handle) clearTimeout(handle);
      setHotbarVisible(true);
      setHandle(setTimeout(() => setHotbarVisible(false), 3000));
    }
  });

  // the five first slots, shown for a moment over the game: MyCity_UI's inventory slots, standing alone (--bare)
  return (
    <SlideUp in={hotbarVisible}>
      <div className="hotbar-container">
        {items.map((item) => (
          <div
            className={`mc-inv-slot mc-inv-slot--bare hotbar-slot${isSlotWithItem(item) ? ' mc-inv-slot--filled' : ''}`}
            style={{
              backgroundImage: `url(${item?.name ? getItemUrl(item as SlotWithItem) : 'none'}`,
            }}
            key={`hotbar-${item.slot}`}
          >
            {isSlotWithItem(item) && (
              <div className="inventory-slot-body">
                <div className="mc-inv-slot-top">
                  <span className="mc-inv-slot-key">{item.slot}</span>
                  <div className="mc-inv-slot-pills">
                    {item.count ? <span className="mc-inv-pill">{item.count.toLocaleString('en-us')}x</span> : null}
                  </div>
                </div>
                <div>
                  {item?.durability !== undefined && <DurabilityBar percent={item.durability} />}
                  <div className="mc-inv-slot-name">
                    {item.metadata?.label ? item.metadata.label : Items[item.name]?.label || item.name}
                  </div>
                </div>
              </div>
            )}
          </div>
        ))}
      </div>
    </SlideUp>
  );
};

export default InventoryHotbar;
