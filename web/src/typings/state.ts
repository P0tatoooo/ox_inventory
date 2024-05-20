import { Inventory } from './inventory';
import { Slot } from './slot';

export type State = {
  leftInventory: Inventory;
  rightInventory: Inventory;
  itemAmount: number;
  shiftPressed: boolean;
  isBusy: boolean;
<<<<<<< HEAD
  additionalMetadata: Array<{metadata: string, value: string}>;
  contextMenu: { coords: { mouseX: number; mouseY: number } | null; item?: Slot };
=======
  additionalMetadata: Array<{ metadata: string; value: string }>;
>>>>>>> main
  history?: {
    leftInventory: Inventory;
    rightInventory: Inventory;
  };
};
