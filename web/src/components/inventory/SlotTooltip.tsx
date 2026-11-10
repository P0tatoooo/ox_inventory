import { Inventory, SlotWithItem } from '../../typings';
import React, { useMemo } from 'react';
import { Items } from '../../store/items';
import { Locale } from '../../store/locale';
import ReactMarkdown from 'react-markdown';
import { useAppSelector } from '../../store';
import ClockIcon from '../utils/icons/ClockIcon';
import { getItemUrl } from '../../helpers';

/**
 * What an item is, under the mouse: MyCity_UI's .mc-tipcard -- its name (and its type, or how long a recipe takes),
 * its description, then its figures as a dl.mc-dl (wear, ammunition, serial...) or what a recipe needs.
 */
const SlotTooltip: React.ForwardRefRenderFunction<
  HTMLDivElement,
  { item: SlotWithItem; inventoryType: Inventory['type']; style: React.CSSProperties }
> = ({ item, inventoryType, style }, ref) => {
  const additionalMetadata = useAppSelector((state) => state.inventory.additionalMetadata);
  const itemData = useMemo(() => Items[item.name], [item]);
  const ingredients = useMemo(() => {
    if (!item.ingredients) return null;
    return Object.entries(item.ingredients).sort((a, b) => a[1] - b[1]);
  }, [item]);

  if (!itemData)
    return (
      <div className="mc-tipcard" ref={ref} style={style}>
        <div className="mc-tipcard-head">
          <span className="mc-tipcard-title">{item.name}</span>
        </div>
      </div>
    );

  const description = item.metadata?.description || itemData?.description;
  const ammoName = itemData?.ammoName && Items[itemData?.ammoName]?.label;
  const crafting = inventoryType === 'crafting';

  const figures: [string, React.ReactNode][] = [];
  if (!crafting) {
    if (item.durability !== undefined) figures.push([Locale.ui_durability, Math.trunc(item.durability)]);
    if (item.metadata?.ammo !== undefined) figures.push([Locale.ui_ammo, item.metadata.ammo]);
    if (ammoName) figures.push([Locale.ammo_type, ammoName]);
    if (item.metadata?.serial) figures.push([Locale.ui_serial, item.metadata.serial]);
    // MyCity: weapon attachments only (an outfit's `components` are clothing pieces, objects)
    if (item.metadata?.components && typeof item.metadata?.components[0] === 'string')
      figures.push([
        Locale.ui_components,
        (item.metadata.components as string[]).map((component) => Items[component]?.label).join(', '),
      ]);
    if (item.metadata?.weapontint) figures.push([Locale.ui_tint, item.metadata.weapontint]);
    additionalMetadata.forEach((data: { metadata: string; value: string }) => {
      if (item.metadata && item.metadata[data.metadata]) figures.push([data.value, item.metadata[data.metadata]]);
    });
  }

  return (
    <div style={{ ...style }} className="mc-tipcard" ref={ref}>
      <div className="mc-tipcard-head">
        <span className="mc-tipcard-title">{item.metadata?.label || itemData.label || item.name}</span>
        {crafting ? (
          <span className="mc-tipcard-meta">
            <ClockIcon />
            {(item.duration !== undefined ? item.duration : 3000) / 1000}s
          </span>
        ) : (
          item.metadata?.type && <span className="mc-tipcard-meta">{item.metadata.type}</span>
        )}
      </div>
      {description && <ReactMarkdown>{description}</ReactMarkdown>}
      {figures.length > 0 && (
        <dl className="mc-dl">
          {figures.map(([name, value], index) => (
            <React.Fragment key={index}>
              <dt>{name}</dt>
              <dd>{value}</dd>
            </React.Fragment>
          ))}
        </dl>
      )}
      {crafting &&
        ingredients &&
        ingredients.map(([name, count]) => (
          <div className="mc-tipcard-line" key={`ingredient-${name}`}>
            <img src={name ? getItemUrl(name) : 'none'} alt="" />
            <span>
              {count >= 1
                ? `${count}x ${Items[name]?.label || name}`
                : count === 0
                ? `${Items[name]?.label || name}`
                : `${count * 100}% ${Items[name]?.label || name}`}
            </span>
          </div>
        ))}
    </div>
  );
};

export default React.forwardRef(SlotTooltip);
