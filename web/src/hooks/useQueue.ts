import { useState } from 'react';

export interface QueueMethods<T> {
  add: (item: T) => void;
<<<<<<< HEAD
  remove: () => void;
=======
  remove: () => T | undefined;
>>>>>>> main
  first: T;
  last: T;
  values: T[];
  size: number;
}

const useQueue = <T>(initialValue: T[] = []): QueueMethods<T> => {
  const [state, set] = useState(initialValue);
  return {
    add: (value) => {
      set((queue) => [...queue, value]);
    },
    remove: () => {
<<<<<<< HEAD
      let result;
      set(([first, ...rest]) => {
        result = first;
        return rest;
      });
      return result;
=======
      let removed;
      set(([first, ...rest]) => {
        removed = first;
        return rest;
      });
      return removed;
>>>>>>> main
    },
    get values() {
      return state;
    },
    get first() {
      return state[0];
    },
    get last() {
      return state[state.length - 1];
    },
    get size() {
      return state.length;
    },
  };
};

export default useQueue;
