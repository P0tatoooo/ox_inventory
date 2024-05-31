import React from 'react';
import './Header.scss';
import logo from '../../shared/assets/logo_mcv5_web_transparent.png';

export const Header = () => {
    return (
        <div className="header">
            <div className="header__left" />
            <div className="header__center" />
            <div className="header__right">
                <img src={logo} alt="logo" className="logo" />
            </div>
        </div>
    );
};
