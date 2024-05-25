import InventoryGrid from './InventoryGrid';
import { useAppSelector } from '../../store';
import { selectRightInventory } from '../../store/inventory';
import React from 'react';

const RightInventory: React.FC<{BelowComponent?:JSX.Element}> = ({ BelowComponent }) => {
  const rightInventory = useAppSelector(selectRightInventory);

  return <InventoryGrid inventory={rightInventory} BelowComponent={BelowComponent} />;
};

export default RightInventory;
