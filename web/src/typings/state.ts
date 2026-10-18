import { Inventory } from './inventory';
import { Slot } from './slot';

export type State = {
  leftInventory: Inventory;
  rightInventory: Inventory;
  /** MyCity: the clothes the player wears, one slot per category (ClothingSlots). */
  clothingInventory: Inventory;
  itemAmount: number;
  shiftPressed: boolean;
  isBusy: boolean;
  additionalMetadata: Array<{ metadata: string; value: string }>;
  history?: {
    leftInventory: Inventory;
    rightInventory: Inventory;
    clothingInventory: Inventory;
  };
};
