import logo from '@/shared/assets/logo_mcv5_web_transparent.png';
import './SidedApp.scss';
import { PropsWithChildren, useMemo } from 'react';

type SidedAppProps = {
    classeName?: string;
    headerLeft?: JSX.Element;
    headerCenter?: JSX.Element;
    contentLeft?: JSX.Element;
    contentRight?: JSX.Element;
    footer?: JSX.Element;
} & PropsWithChildren;

export const SidedApp = ({
    classeName,
    headerLeft,
    headerCenter,
    children,
    contentLeft,
    contentRight,
    footer
}: SidedAppProps) => {
    const classes = useMemo(() => {
        const items = ['app'];
        if (classeName) {
            items.push(classeName);
        }
        if (contentLeft) {
            items.push('app--left-column');
        }
        if (contentRight) {
            items.push('app--right-column');
        }
        return items.join(' ');
    }, [contentLeft, contentRight]);

    return (
        <div className={classes}>
            <div className="app__header">
                <div className="app__header-left">{headerLeft}</div>
                <div className="app__header-center">{headerCenter}</div>
                <div className="app__header-right">
                    <img src={logo} alt="logo" className="logo" />
                </div>
            </div>
            <div className="app__content">
                {children}
                {!children && <div className="app__content-left">{contentLeft}</div>}
                {!children && <div className="app__content-right">{contentRight}</div>}
            </div>
            <div className="app__footer">{footer}</div>
        </div>
    );
};
