<<<<<<< HEAD
import React from 'react';
import useNuiEvent from '../../hooks/useNuiEvent';
import InventoryControl from './InventoryControl';
import InventoryHotbar from './InventoryHotbar';
import { Fade, Stack } from '@mui/material';
import { useAppDispatch } from '../../store';
import { setAdditionalMetadata, setupInventory, refreshSlots, setContextMenu } from '../../store/inventory';
=======
import React, { useState } from 'react';
import useNuiEvent from '../../hooks/useNuiEvent';
import InventoryControl from './InventoryControl';
import InventoryHotbar from './InventoryHotbar';
import { useAppDispatch } from '../../store';
import { refreshSlots, setAdditionalMetadata, setupInventory } from '../../store/inventory';
>>>>>>> main
import { useExitListener } from '../../hooks/useExitListener';
import type { Inventory as InventoryProps } from '../../typings';
import RightInventory from './RightInventory';
import LeftInventory from './LeftInventory';
<<<<<<< HEAD

const Inventory: React.FC = () => {
  const [inventoryVisible, setInventoryVisible] = React.useState(false);
=======
import Tooltip from '../utils/Tooltip';
import { closeTooltip } from '../../store/tooltip';
import InventoryContext from './InventoryContext';
import { closeContextMenu } from '../../store/contextMenu';
import Fade from '../utils/transitions/Fade';

const Inventory: React.FC = () => {
  const [inventoryVisible, setInventoryVisible] = useState(false);
>>>>>>> main
  const dispatch = useAppDispatch();

  useNuiEvent<boolean>('setInventoryVisible', setInventoryVisible);
  useNuiEvent<false>('closeInventory', () => {
    setInventoryVisible(false);
<<<<<<< HEAD
    dispatch(setContextMenu({ coords: null }));
=======
    dispatch(closeContextMenu());
    dispatch(closeTooltip());
>>>>>>> main
  });
  useExitListener(setInventoryVisible);

  useNuiEvent<{
    leftInventory?: InventoryProps;
    rightInventory?: InventoryProps;
  }>('setupInventory', (data) => {
    dispatch(setupInventory(data));
    !inventoryVisible && setInventoryVisible(true);
  });

  useNuiEvent('refreshSlots', (data) => dispatch(refreshSlots(data)));

<<<<<<< HEAD
  useNuiEvent('displayMetadata', (data: Array<{metadata: string, value: string}>) => {
=======
  useNuiEvent('displayMetadata', (data: Array<{ metadata: string; value: string }>) => {
>>>>>>> main
    dispatch(setAdditionalMetadata(data));
  });

  return (
    <>
      <Fade in={inventoryVisible}>
        <div className="inventory-wrapper">
          <LeftInventory />
          <InventoryControl />
          <RightInventory />
<<<<<<< HEAD
=======
          <Tooltip />
          <InventoryContext />
>>>>>>> main
        </div>
      </Fade>
      <InventoryHotbar />
    </>
  );
};

export default Inventory;
