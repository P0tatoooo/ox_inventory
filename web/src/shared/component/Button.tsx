import { PropsWithChildren, useMemo } from 'react';
import './Button.scss';
import { Keystroke } from '@/shared/component/Keystroke.tsx';

type ButtonProps = {
    square?: boolean;
    block?: boolean;
    isActive?: boolean;
    className?: string;
    keystone?: string;
    disabled?: boolean;
    tooltip?: string;
    type?: 'primary' | 'secondary';
    tooltipPosition?: 'bottom' | 'top' | 'left' | 'right';
    onClick?: () => void;
} & PropsWithChildren;

const Button = ({
    square,
    block,
    isActive,
    onClick,
    className,
    disabled,
    keystone,
    tooltip,
    tooltipPosition = 'top',
    children,
    type
}: ButtonProps) => {
    const classes = useMemo<string>(() => {
        const classes = ['button'];
        if (type) {
            classes.push(`button--${type}`);
        }
        if (square) {
            classes.push('button--square');
        }
        if (block) {
            classes.push('button--block');
        }
        if (isActive) {
            classes.push('button--active');
        }
        if (className) {
            classes.push(className);
        }
        return classes.join(' ');
    }, [square, isActive]);

    const handleClick = (event?: any) => {
        event?.stopPropagation();
        event?.preventDefault();
        if (disabled) {
            return;
        }
        onClick?.();
    };

    const tooltipConfiguration = useMemo(() => {
        if (!tooltip) {
            return {};
        }
        return {
            'data-tooltip': tooltip,
            'data-tooltip-position': tooltipPosition
        };
    }, [tooltip, tooltipPosition]);

    return (
        <button
            disabled={disabled}
            className={classes}
            onClick={handleClick}
            {...tooltipConfiguration}>
            {keystone && <Keystroke keystone={keystone} onPress={handleClick} />}
            {children}
        </button>
    );
};

export { Button };
