import { PropsWithChildren, useMemo } from 'react';
import './Block.scss';

type BlockProps = {
    title?: string;
    className?: string;
    overflowBody?: boolean;
    footer?: JSX.Element | null;
} & PropsWithChildren;

const Block = ({ title, className, footer = null, children, overflowBody = false }: BlockProps) => {
    const blockClasses = useMemo(
        () =>
            ['block', className, overflowBody && 'block--body-overflow'].filter(Boolean).join(' '),
        [className, overflowBody]
    );
    const wrapperClasses = useMemo(
        () =>
            ['block-wrapper', className ? `${className}__wrapper`: null, overflowBody && 'block-wrapper--overflow'].filter(Boolean).join(' '),
        [className, overflowBody]
    );

    return (
        <div className={wrapperClasses}>
            <div className={blockClasses}>
                {title && <div className="block-title">{title}</div>}
                <div className="block-content">{children}</div>
                {footer && <div className="block-footer">{footer}</div>}
            </div>
        </div>
    );
};

export { Block };
