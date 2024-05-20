import { useEffect, useRef } from 'react';
import { noop } from '../utils/misc';
import { fetchNui } from '../utils/fetchNui';
<<<<<<< HEAD
=======
import { closeTooltip } from '../store/tooltip';
import { useAppDispatch } from '../store';
import { closeContextMenu } from '../store/contextMenu';
>>>>>>> main

type FrameVisibleSetter = (bool: boolean) => void;

const LISTENED_KEYS = ['Escape'];

// Basic hook to listen for key presses in NUI in order to exit
export const useExitListener = (visibleSetter: FrameVisibleSetter) => {
  const setterRef = useRef<FrameVisibleSetter>(noop);
<<<<<<< HEAD
=======
  const dispatch = useAppDispatch();
>>>>>>> main

  useEffect(() => {
    setterRef.current = visibleSetter;
  }, [visibleSetter]);

  useEffect(() => {
    const keyHandler = (e: KeyboardEvent) => {
      if (LISTENED_KEYS.includes(e.code)) {
        setterRef.current(false);
<<<<<<< HEAD
=======
        dispatch(closeTooltip());
        dispatch(closeContextMenu());
>>>>>>> main
        fetchNui('exit');
      }
    };

    window.addEventListener('keyup', keyHandler);

    return () => window.removeEventListener('keyup', keyHandler);
  }, []);
};
