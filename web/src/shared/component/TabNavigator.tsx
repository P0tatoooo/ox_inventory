import { Button } from '@/shared/component/Button.tsx';
import { useCallback, useMemo } from 'react';
import './TabNavigator.scss';

type Tab = {
    label: string | JSX.Element;
    visible: boolean;
    tooltip?: string;
    tooltipPosition?: 'left' | 'right' | 'top' | 'bottom';
};

type TabNavigatorProps = {
    currentTab: number;
    expanded?: boolean;
    onTabClick: (index: number) => void;
    tabs: Array<Tab>;
    prevNext?: boolean;
};

const TabNavigator = ({
    currentTab,
    onTabClick,
    tabs,
    prevNext = true,
    expanded = false
}: TabNavigatorProps) => {
    const visibleTabs = useMemo(() => tabs.filter((tab) => tab.visible), [tabs]);

    const getTooltipConfiguration = useCallback((tab: Tab) => {
        if (!tab.tooltip) {
            return {};
        }
        return {
            tooltip: tab.tooltip,
            tooltipPosition: tab.tooltipPosition ?? 'top'
        };
    }, []);

    return (
        <div className={`tab-navigator${expanded ? ' tab-navigator--expanded' : ''}`}>
            {prevNext && (
                <Button
                    type="secondary"
                    keystone="a"
                    disabled={currentTab === 0}
                    onClick={() => onTabClick(currentTab - 1)}
                    className="tab-navigator__previous"
                />
            )}
            {visibleTabs.map((tab, index) => (
                <Button
                    type="secondary"
                    {...getTooltipConfiguration(tab)}
                    key={index}
                    isActive={currentTab === index}
                    onClick={() => onTabClick(index)}>
                    {tab.label}
                </Button>
            ))}
            {prevNext && (
                <Button
                    type="secondary"
                    keystone="e"
                    disabled={currentTab === tabs.length - 1}
                    onClick={() => onTabClick(currentTab + 1)}
                    className="tab-navigator__next"
                />
            )}
        </div>
    );
};

export { TabNavigator };
export type { Tab };
