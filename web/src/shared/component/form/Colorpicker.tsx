import './Colorpicker.scss';
import {RGB} from "@/shared/types/RGB.ts";

type ColorpickerProps = {
    colors: Map<string, RGB>;
    onClick: (colorIndex: number) => void;
};
const Colorpicker = ({ colors, onClick }: ColorpickerProps) => {
    return (
        <div className={'color-picker'}>
            {Object.keys(colors).map((key: string, index) => {
                // @ts-ignore
                const color = colors[key];
                if (color === undefined) {
                    return null;
                }
                return (
                    <div
                        key={index}
                        className={'color-picker-color'}
                        onClick={() => onClick(parseInt(key))}
                        style={{
                            backgroundColor: `rgb(${color[0]}, ${color[1]}, ${color[2]})`
                        }}></div>
                );
            })}
        </div>
    );
};

export { Colorpicker };
