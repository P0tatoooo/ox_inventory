import { Locale } from '../../store/locale';
import React from 'react';
import './UsefulControls.scss'
import { Block } from '../../shared/component/Block';

export const UsefulControls = () => {
  return (
    <Block className="usefull-controls">
      <div className="usefull-controls__control">
        <kbd>CTRL + Clic Gauche</kbd>
        <span>{Locale.ui_ctrl_lmb}</span>
      </div>
      <div className="usefull-controls__control">
        <kbd>CTRL + SHIFT + Clic Gauche</kbd>
        <span>{Locale.ui_ctrl_shift_lmb}</span>
      </div>
      <div className="usefull-controls__control">
        <kbd>SHIFT + Drag</kbd>
        <span>{Locale.ui_shift_drag}</span>
      </div>
    </Block>
  );
};
