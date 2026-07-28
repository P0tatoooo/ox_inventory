import React from 'react';
import { Button } from '@/shared/component/Button';
import { fetchNui } from '../../utils/fetchNui';
import './ClothingToggles.scss';
import {
  BagIcon,
  BraceletIcon,
  DecalsIcon,
  EarIcon,
  GlassesIcon,
  GlovesIcon,
  HatIcon,
  MaskIcon,
  NeckIcon,
  PantsIcon,
  ShirtIcon,
  ShoesIcon,
  VestIcon,
  WatchIcon,
} from './ClothingIcons';

type ClothingToggle = {
  id: string;
  label: string;
  icon: React.FC;
  isProp?: boolean;
};

// Split left/right with a gap in between so the row doesn't cover the player's head.
const topLeftToggles: ClothingToggle[] = [
  { id: 'Hat', label: 'Chapeau', icon: HatIcon, isProp: true },
  { id: 'Mask', label: 'Masque', icon: MaskIcon },
];

const topRightToggles: ClothingToggle[] = [
  { id: 'Glasses', label: 'Lunettes', icon: GlassesIcon, isProp: true },
  { id: 'Ear', label: "Boucles d'Oreilles", icon: EarIcon, isProp: true },
];

const leftToggles: ClothingToggle[] = [
  { id: 'Vest', label: 'Gilet Pare-Balles', icon: VestIcon },
  { id: 'Shirt', label: 'Veste', icon: ShirtIcon },
  { id: 'gloves', label: 'Gants', icon: GlovesIcon },
  { id: 'Pants', label: 'Pantalon', icon: PantsIcon },
  { id: 'Shoes', label: 'Chaussures', icon: ShoesIcon },
];

const rightToggles: ClothingToggle[] = [
  { id: 'Neck', label: 'Chaine', icon: NeckIcon },
  { id: 'Bracelet', label: 'Bracelet', icon: BraceletIcon, isProp: true },
  { id: 'Watch', label: 'Montre', icon: WatchIcon, isProp: true },
  { id: 'Decals', label: 'Calques', icon: DecalsIcon },
  { id: 'Bagoff', label: 'Sac', icon: BagIcon },
];

const toggleClothing = (toggle: ClothingToggle) => {
  fetchNui('toggleClothing', { id: toggle.id, isProp: !!toggle.isProp });
};

const ToggleButton: React.FC<{ toggle: ClothingToggle }> = ({ toggle }) => (
  <Button square tooltip={toggle.label} onClick={() => toggleClothing(toggle)}>
    <toggle.icon />
  </Button>
);

const ClothingColumn: React.FC<{ toggles: ClothingToggle[] }> = ({ toggles }) => (
  <div className="clothing-toggles__column">
    {toggles.map((toggle) => (
      <ToggleButton key={toggle.id} toggle={toggle} />
    ))}
  </div>
);

const ClothingGroup: React.FC<{ toggles: ClothingToggle[] }> = ({ toggles }) => (
  <div className="clothing-toggles__top-group">
    {toggles.map((toggle) => (
      <ToggleButton key={toggle.id} toggle={toggle} />
    ))}
  </div>
);

export const ClothingToggles: React.FC = () => {
  return (
    <div className="clothing-toggles">
      <div className="clothing-toggles__top-row">
        <ClothingGroup toggles={topLeftToggles} />
        <ClothingGroup toggles={topRightToggles} />
      </div>
      <div className="clothing-toggles__columns">
        <ClothingColumn toggles={leftToggles} />
        <ClothingColumn toggles={rightToggles} />
      </div>
    </div>
  );
};

export default ClothingToggles;
