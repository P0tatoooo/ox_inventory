import getResourceName from '@/shared/utility/getResourceName.ts';
import axios from 'axios';

class MessageHandler {
    private handlers: { [key: string]: (data: any) => void };

    constructor() {
        this.handlers = {};

        window.addEventListener('message', (event) => {
            console.log(event.data)
            const action = event.data.message;
            const data = event.data;

            if (!this.handlers[action]) {
                return;
            }

            this.handlers[action](data);
        });
    }

    register(action: string, callback: (data: any) => void) {
        this.handlers[action] = callback;

        return () => this.unregister(action);
    }

    unregister(action: string) {
        delete this.handlers[action];
    }

    updateClient(action: string, data?: any) {
        return axios.post(`https://${getResourceName()}/${action}`, data);
    }
}

export const messageHandler = new MessageHandler();
