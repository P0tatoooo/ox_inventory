import React, { useLayoutEffect, useRef, useState } from 'react';
import { useAppSelector } from '../../store';
import { selectClothingInventory } from '../../store/inventory';
import { Inventory } from '../../typings';
import { isSlotWithItem } from '../../helpers';
import { fetchNui } from '../../utils/fetchNui';
import InventorySlot from './InventorySlot';
import './ClothingSlots.scss';
import {
  BagIcon,
  BraceletIcon,
  DecalsIcon,
  EarIcon,
  GlassesIcon,
  GlovesIcon,
  HatIcon,
  LockIcon,
  MaskIcon,
  NeckIcon,
  OutfitIcon,
  PantsIcon,
  ShirtIcon,
  ShoesIcon,
  TShirtIcon,
  VestIcon,
  WatchIcon,
} from './ClothingIcons';

/**
 * MyCity: the clothes the player wears, as items, in slots around the character (the inventory `clothing:<citizenid>`,
 * Inventory.GetClothing). The slot numbers are the categories of MyCity_Appearance's shared/clothingslots.lua: an item
 * dropped on a slot puts the piece on, one dragged out takes it off; the server refuses a piece in the wrong slot.
 * A worn piece has a lock at its top right: locked (its metadata.locked), no outfit takes it off, it is worn over it
 * (MyCity_Appearance server lockSlot).
 */
type ClothingSlotDef = { slot: number; label: string; icon: React.FC };

// two columns at the character's sides: the body from head to feet, then the outfit; the accessories
const LEFT: ClothingSlotDef[] = [
  { slot: 1, label: 'Chapeau', icon: HatIcon },
  { slot: 2, label: 'Masque', icon: MaskIcon },
  { slot: 6, label: 'Veste', icon: ShirtIcon },
  { slot: 7, label: 'T-shirt', icon: TShirtIcon },
  { slot: 8, label: 'Gants', icon: GlovesIcon },
  { slot: 14, label: 'Pantalon', icon: PantsIcon },
  { slot: 15, label: 'Chaussures', icon: ShoesIcon },
  { slot: 16, label: 'Tenue', icon: OutfitIcon },
];

const RIGHT: ClothingSlotDef[] = [
  { slot: 3, label: 'Lunettes', icon: GlassesIcon },
  { slot: 4, label: "Boucles d'oreilles", icon: EarIcon },
  { slot: 5, label: 'Chaîne', icon: NeckIcon },
  { slot: 9, label: 'Gilet pare-balles', icon: VestIcon },
  { slot: 12, label: 'Montre', icon: WatchIcon },
  { slot: 13, label: 'Bracelet', icon: BraceletIcon },
  { slot: 10, label: 'Sac', icon: BagIcon },
  { slot: 11, label: 'Calque', icon: DecalsIcon },
];

const ClothingSlot: React.FC<{ def: ClothingSlotDef; inventory: Inventory }> = ({ def, inventory }) => {
  const item = inventory.items[def.slot - 1] || { slot: def.slot };
  const worn = isSlotWithItem(item);
  // pieces only: an outfit is what the lock keeps out, a bulletproof vest never goes into one
  const lockable = worn && item.name === 'clothing';
  const locked = lockable && item.metadata?.locked === true;

  return (
    <div className="clothing-slot">
      {!worn && (
        <div className="clothing-slot__empty">
          <def.icon />
          <span>{def.label}</span>
        </div>
      )}
      <InventorySlot
        item={item}
        inventoryType={inventory.type}
        inventoryGroups={inventory.groups}
        inventoryId={inventory.id}
      />
      {lockable && (
        <button
          type="button"
          className={`clothing-slot__lock${locked ? ' clothing-slot__lock--on' : ''}`}
          title={locked ? 'Verrouillé : reste porté sous une tenue' : 'Verrouiller : une tenue ne l’enlèvera pas'}
          onMouseDown={(event) => event.stopPropagation()}
          onClick={(event) => {
            event.stopPropagation();
            fetchNui('clothingLock', def.slot);
          }}
        >
          <LockIcon open={!locked} />
        </button>
      )}
    </div>
  );
};

const Column: React.FC<{ defs: ClothingSlotDef[]; inventory: Inventory; className: string }> = ({
  defs,
  inventory,
  className,
}) => (
  <div className={className}>
    {defs.map((def) => (
      <ClothingSlot key={def.slot} def={def} inventory={inventory} />
    ))}
  </div>
);

/**
 * Where the player's inventory beside it is drawn: from the top of its panel to the bottom of the buttons under it
 * (its wrapper is the whole screen's height, the two centred in it). The columns take that place exactly, so their
 * top and bottom line up with the inventory's; the slots' size follows (ClothingSlots.scss).
 */
const useSideBox = (ref: React.RefObject<HTMLDivElement>) => {
  const [box, setBox] = useState<{ marginTop: number; height: number }>();

  useLayoutEffect(() => {
    const self = ref.current;
    const side = self?.previousElementSibling as HTMLElement | null;
    const row = self?.parentElement;
    if (!side || !row) return;
    const measure = () => {
      const first = side.firstElementChild;
      const last = side.lastElementChild;
      if (!first || !last) return;
      const top = first.getBoundingClientRect().top;
      const bottom = last.getBoundingClientRect().bottom;
      setBox({ marginTop: top - row.getBoundingClientRect().top, height: bottom - top });
    };
    measure();
    const observer = new ResizeObserver(measure);
    observer.observe(side);
    Array.from(side.children).forEach((child) => observer.observe(child));
    return () => observer.disconnect();
  }, [ref]);

  return box;
};

export const ClothingSlots: React.FC = () => {
  const inventory = useAppSelector(selectClothingInventory);
  const ref = useRef<HTMLDivElement>(null);
  const style = useSideBox(ref);

  // not received yet (or a ped that has none): the space stays free for the character
  if (!inventory.id || inventory.items.length === 0) return <div className="clothing-slots" ref={ref} style={style} />;

  return (
    <div className="clothing-slots" ref={ref} style={style}>
      <div className="clothing-slots__sides">
        <Column defs={LEFT} inventory={inventory} className="clothing-slots__column" />
        <Column defs={RIGHT} inventory={inventory} className="clothing-slots__column" />
      </div>
    </div>
  );
};

export default ClothingSlots;
