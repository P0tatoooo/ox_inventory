import { useEffect } from 'react';
import { keydownHandler } from '@/shared/utility/keydownHandler.ts';
import './Keystroke.scss';

type KeystrokeProps = {
    onPress?: () => void;
    keystone: string;
    className?: string;
};

const Keystroke = ({ onPress, keystone, className }: KeystrokeProps) => {
    useEffect(() => {
        if (!onPress) return;
        return keydownHandler.register(keystone, onPress);
    });
    return <div className={`keystroke${className ? ' ' + className : ''}`}>{keystone}</div>;
};

export { Keystroke };
