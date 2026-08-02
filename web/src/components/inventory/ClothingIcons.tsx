import React from 'react';

const iconProps = {
  xmlns: 'http://www.w3.org/2000/svg',
  viewBox: '0 0 24 24',
  strokeWidth: 1.5,
  stroke: 'currentColor',
  fill: 'none',
  strokeLinecap: 'round' as const,
  strokeLinejoin: 'round' as const,
};

export const HatIcon: React.FC = () => (
  <svg {...iconProps}>
    <path d="M4 15c0-1.1 3.6-2 8-2s8 .9 8 2-3.6 2-8 2-8-.9-8-2Z" />
    <path d="M8 15V9a4 4 0 0 1 8 0v6" />
  </svg>
);

export const MaskIcon: React.FC = () => (
  <svg {...iconProps}>
    <path d="M3 10c2-3 5-4 9-4s7 1 9 4c-1 3-4 5-9 5s-8-2-9-5Z" />
    <circle cx="8" cy="10" r="1" fill="currentColor" stroke="none" />
    <circle cx="16" cy="10" r="1" fill="currentColor" stroke="none" />
  </svg>
);

export const NeckIcon: React.FC = () => (
  <svg {...iconProps}>
    <path d="M6 4c0 4 2.5 6 6 6s6-2 6-6" />
    <path d="M12 10v2" />
    <circle cx="12" cy="14.5" r="2" />
  </svg>
);

export const ShirtIcon: React.FC = () => (
  <svg {...iconProps}>
    <path d="M8 4 4 7l2 3 2-1v11h8V9l2 1 2-3-4-3-2 2h-4L8 4Z" />
  </svg>
);

export const VestIcon: React.FC = () => (
  <svg {...iconProps}>
    <path d="M9 4H7L5 9v11h4V10l3 4 3-4v10h4V9l-2-5h-2l-3 3-3-3Z" />
  </svg>
);

export const GlovesIcon: React.FC = () => (
  <svg {...iconProps}>
    <path d="M8 3v6M11 3v6M14 4v5M17 6v5" />
    <path d="M6 9h12v4a6 6 0 0 1-12 0V9Z" />
  </svg>
);

export const PantsIcon: React.FC = () => (
  <svg {...iconProps}>
    <path d="M7 3h10l1 18h-4l-2-10-2 10H6L7 3Z" />
  </svg>
);

export const ShoesIcon: React.FC = () => (
  <svg {...iconProps}>
    <path d="M3 17c0-2 2-3 4-4l6-4 2 2 6 1v5H3Z" />
  </svg>
);

export const BagIcon: React.FC = () => (
  <svg {...iconProps}>
    <rect x="6" y="8" width="12" height="12" rx="2" />
    <path d="M9 8V6a3 3 0 0 1 6 0v2" />
    <path d="M9 12h6" />
  </svg>
);

export const GlassesIcon: React.FC = () => (
  <svg {...iconProps}>
    <circle cx="7" cy="13" r="3.2" />
    <circle cx="17" cy="13" r="3.2" />
    <path d="M10.2 12h3.6" />
    <path d="M3.8 11.5 2 10" />
    <path d="M20.2 11.5 22 10" />
  </svg>
);

export const EarIcon: React.FC = () => (
  <svg {...iconProps}>
    <path d="M13 4a4.5 4.5 0 0 1 4.5 4.5c0 2.5-1.8 3.3-1.8 6" />
    <circle cx="15.4" cy="16.5" r="2.3" />
  </svg>
);

export const BraceletIcon: React.FC = () => (
  <svg {...iconProps}>
    <circle cx="12" cy="13" r="6.5" />
    <rect x="9.5" y="4.5" width="5" height="4" rx="1" />
  </svg>
);

export const WatchIcon: React.FC = () => (
  <svg {...iconProps}>
    <circle cx="12" cy="12" r="5" />
    <path d="M12 9v3l2 1.5" />
    <path d="M9.5 4h5M9.5 20h5" />
  </svg>
);

export const DecalsIcon: React.FC = () => (
  <svg {...iconProps}>
    <path d="M12 3 3 8l9 5 9-5-9-5Z" />
    <path d="M3 12l9 5 9-5" />
  </svg>
);

export const HairIcon: React.FC = () => (
  <svg {...iconProps}>
    <path d="M4 10h16" />
    <path d="M7 10c0 4 .4 7 .8 9M12 10c0 4 .2 7 .5 9M17 10c0 4-.4 7-.8 9" />
  </svg>
);
