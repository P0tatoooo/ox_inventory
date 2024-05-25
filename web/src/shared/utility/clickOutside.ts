import { RefObject, useEffect } from 'react';

const useClickOutside = (ref: RefObject<HTMLElement | null>, onClickOutside: () => void): void => {
    const callback = (event: MouseEvent) => {
        if (ref.current && !ref.current.contains(event.target as Node)) {
            onClickOutside();
        }
    };

    useEffect(() => {
        window.addEventListener('click', callback);

        return () => {
            window.removeEventListener('click', callback);
        };
    }, []);
};

export { useClickOutside };
