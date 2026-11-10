import React from 'react';
import { useDrop } from 'react-dnd';
import { useAppDispatch, useAppSelector } from '../../store';
import { selectItemAmount, setItemAmount } from '../../store/inventory';
import { DragSource } from '../../typings';
import { onUse } from '../../dnd/onUse';
import { onGive } from '../../dnd/onGive';
import { fetchNui } from '../../utils/fetchNui';
import { Locale } from '../../store/locale';

/**
 * Under the player's inventory, in a see-through MyCity_UI box of its own: how many of a stack a move takes
 * (input.mc-input), then Use and Give (an item dropped on them) and Close, as .mc-ghost-btn in a .mc-btn-row.
 */
const InventoryControl: React.FC = () => {
  const itemAmount = useAppSelector(selectItemAmount);
  const dispatch = useAppDispatch();

  const [, use] = useDrop<DragSource, void, any>(() => ({
    accept: 'SLOT',
    drop: (source) => {
      source.inventory === 'player' && onUse(source.item);
    },
  }));

  const [, give] = useDrop<DragSource, void, any>(() => ({
    accept: 'SLOT',
    drop: (source) => {
      source.inventory === 'player' && onGive(source.item);
    },
  }));

  const inputHandler = (event: React.ChangeEvent<HTMLInputElement>) => {
    event.target.valueAsNumber =
      isNaN(event.target.valueAsNumber) || event.target.valueAsNumber < 0 ? 0 : Math.floor(event.target.valueAsNumber);
    dispatch(setItemAmount(event.target.valueAsNumber));
  };

  return (
    <div className="mc-float mc-float--glass mc-float--row inventory-control inventory-under">
      <input
        className="mc-input"
        type="number"
        defaultValue={itemAmount}
        onChange={inputHandler}
        min={0}
      />
      <div className="mc-btn-row inventory-control__buttons">
        <button type="button" className="mc-ghost-btn" ref={use}>
          {Locale.ui_use || 'Use'}
        </button>
        <button type="button" className="mc-ghost-btn" ref={give}>
          {Locale.ui_give || 'Give'}
        </button>
        <button type="button" className="mc-ghost-btn" onClick={() => fetchNui('exit')}>
          {Locale.ui_close || 'Close'}
        </button>
      </div>
    </div>
  );
};

export default InventoryControl;
