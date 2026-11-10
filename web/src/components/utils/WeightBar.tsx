import React, { useMemo } from 'react';

const mix = (a: number[], b: number[], amount: number) =>
  `rgb(${a.map((channel, i) => Math.round(channel * amount + b[i] * (1 - amount))).join(', ')})`;

// from worn out to new: red, orange, green
const RED = [231, 76, 60];
const ORANGE = [211, 84, 0];
const GREEN = [39, 174, 96];

/**
 * An item's wear under its picture (MyCity_UI's .mc-inv-slot-bar): the fill's width is what is left of it, its
 * colour (the kit's --mc-inv-bar) how worn it is.
 */
export const DurabilityBar: React.FC<{ percent: number }> = ({ percent }) => {
  const color = useMemo(
    () => (percent < 50 ? mix(ORANGE, RED, percent / 100) : mix(GREEN, ORANGE, percent / 100)),
    [percent]
  );

  return (
    <div className="mc-inv-slot-bar">
      <div
        style={
          {
            visibility: percent > 0 ? 'visible' : 'hidden',
            width: `${Math.max(0, Math.min(100, percent))}%`,
            '--mc-inv-bar': color,
          } as React.CSSProperties
        }
      />
    </div>
  );
};

/**
 * An inventory's weight, on one line (MyCity_UI's .mc-stat--inline): the track, then the figures -- in the kit's
 * danger colour (.mc-stat--low) once it is nearly full, as the bar used to turn red.
 */
const WeightBar: React.FC<{ percent: number; label: string }> = ({ percent, label }) => (
  <div className={`mc-stat mc-stat--inline${percent >= 90 ? ' mc-stat--low' : ''}`}>
    <div className="mc-progress">
      <div className="mc-progress-fill" style={{ width: `${Math.max(0, Math.min(100, percent))}%` }} />
    </div>
    <span className="mc-stat-value">{label}</span>
  </div>
);

export default WeightBar;
