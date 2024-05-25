import { Button } from '@/shared/component/Button.tsx';
import { BiMinus, BiPlus } from 'react-icons/bi';
import './IntegerField.scss';

type IntegerFieldProps = {
    value: number;
    onChange: (value: number) => void;
    minValue?: number;
    maxValue?: number;
};

const IntegerField = ({
    value,
    onChange,
    minValue = -Infinity,
    maxValue = Infinity
}: IntegerFieldProps) => {
    const updateValue = (newValue: number) => {
        if (newValue < minValue) {
            newValue = maxValue;
        }
        if (newValue > maxValue) {
            newValue = minValue;
        }
        onChange(newValue);
    };

    return (
        <div className="integer-field">
            <Button className="minus" onClick={() => updateValue(value - 1)}>
                <BiMinus />
            </Button>
            <input
                type="number"
                onChange={(e) => updateValue(parseInt(e.target.value))}
                value={value}
            />
            <Button className="plus" onClick={() => updateValue(value + 1)}>
                <BiPlus />
            </Button>
        </div>
    );
};

export { IntegerField };
