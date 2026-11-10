import { Locale } from '../../store/locale';

const HINTS: { keys: string[]; text: () => string }[] = [
  { keys: ['Ctrl', 'Clic gauche'], text: () => Locale.ui_ctrl_lmb },
  { keys: ['Maj', 'Glisser'], text: () => Locale.ui_shift_drag },
];

// two lines only: with the buttons' box under the player's inventory, both sides end at the same height
/** The mouse shortcuts, under the other inventory: MyCity_UI key hints (.mc-keys-group) in a see-through box. */
export const UsefulControls = () => {
  return (
    <div className="mc-float mc-float--glass inventory-under">
      <div className="mc-keys-group">
        {HINTS.map((hint) => (
          <div className="mc-keys" key={hint.keys.join('+')}>
            <span className="mc-keys-caps">
              {hint.keys.map((key) => (
                <span className="mc-keystroke" key={key}>
                  {key}
                </span>
              ))}
            </span>
            <span>{hint.text()}</span>
          </div>
        ))}
      </div>
    </div>
  );
};
