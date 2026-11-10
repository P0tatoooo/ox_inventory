import React, { useEffect, useRef } from 'react';

/** One of MyCity_UI's icons (MC.icon), in a host that takes no room of its own. */
const McIcon: React.FC<{ name: string }> = ({ name }) => {
  const host = useRef<HTMLSpanElement>(null);

  useEffect(() => {
    const node = host.current;
    if (!node) return;
    node.textContent = '';
    const icon = window.MC?.icon(name);
    if (icon) node.appendChild(icon);
  }, [name]);

  return <span ref={host} aria-hidden style={{ display: 'contents' }} />;
};

export default McIcon;
