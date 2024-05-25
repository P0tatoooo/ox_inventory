import InventoryGrid from './InventoryGrid';
import { useAppSelector } from '../../store';
import { selectLeftInventory } from '../../store/inventory';
import InventoryControl from './InventoryControl';
import React from 'react';

const LeftInventory: React.FC<{BelowComponent?:JSX.Element}> = ({ BelowComponent }) => {
  const leftInventory = useAppSelector(selectLeftInventory);

  return <InventoryGrid inventory={leftInventory} BelowComponent={BelowComponent}/>;
};

export default LeftInventory;
