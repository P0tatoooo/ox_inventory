import {PropsWithChildren, useMemo} from 'react';
import './Block.scss';
import McCoin from '@/assets/mc-coins.png';
import {myCityCoinStore} from "../../store/mobx/MyCityCoinStore";
import {observer} from "mobx-react";

type BlockProps = {
  title?: string;
  subTitle?: JSX.Element | null;
  className?: string;
  overflowBody?: boolean;
  footer?: JSX.Element | null;
  mcCoin?: boolean;
} & PropsWithChildren;

const Block = observer(({title, subTitle, className, footer = null, children, overflowBody = false, mcCoin = false}: BlockProps) => {
  const blockClasses = useMemo(
    () =>
      ['block', className, overflowBody && 'block--body-overflow'].filter(Boolean).join(' '),
    [className, overflowBody]
  );
  const wrapperClasses = useMemo(
    () =>
      ['block-wrapper', className ? `${className}__wrapper` : null, overflowBody && 'block-wrapper--overflow'].filter(Boolean).join(' '),
    [className, overflowBody]
  );

  const BlockTitle = () => {
    if (!title) {
      return null;
    }
    return (
      <div className="block-title">
        <div className="block-title__left"></div>
        <div className="block-title__center">
          {title}
        </div>
        <div className="block-title__right">
          {
            mcCoin &&
            (<><span>MC {myCityCoinStore.cityCoin}</span> <img src={McCoin} alt={"mc-coin"} className={"mc-coin"} title={'MyCity Coin'}/></>)
          }
        </div>
      </div>
    );
  }

  return (
    <div className={wrapperClasses}>
      <div className={blockClasses}>
        <BlockTitle/>
        {subTitle && <div className="block-sub-title">{subTitle}</div>}
        <div className="block-content">{children}</div>
        {footer && <div className="block-footer">{footer}</div>}
      </div>
    </div>
  );
});

export {Block};
