import { Slot } from './slot';

export enum InventoryType {
  PLAYER = 'player',
  SHOP = 'shop',
  CONTAINER = 'container',
  CRAFTING = 'crafting',
  // MyCity: the clothes the player wears, in the slots around the character (ClothingSlots)
  CLOTHING = 'clothing',
}

export type Inventory = {
  id: string;
  type: string;
  slots: number;
  items: Slot[];
  maxWeight?: number;
  label?: string;
  groups?: Record<string, number>;
  /** MyCity: with the player's inventory, the clothes they wear (server.lua openInventory). */
  clothing?: Inventory;
};
