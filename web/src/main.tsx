import React from 'react';
import { createRoot } from 'react-dom/client';
import { Provider } from 'react-redux';
import { DndProvider } from 'react-dnd';
import { TouchBackend } from 'react-dnd-touch-backend';
import { store } from './store';
import App from './App';
import './index.scss';
import { ItemNotificationsProvider } from './components/utils/ItemNotifications';
import { isEnvBrowser } from './utils/misc';

const root = document.getElementById('root');
const MC = window.MC;

if (!MC) {
  // MyCity_UI not there yet (this page came up first, or the kit is restarting): try again. Nothing is
  // mounted before that, so the game has not been told the page is loaded (`uiLoaded`) and still holds
  // its `init` for the page that will answer.
  setTimeout(() => location.reload(), 1000);
} else {
  // which kit the page was built on
  if (!MC.needs) console.error('[ox_inventory] MyCity_UI trop ancien : restart MyCity_UI, puis ox_inventory.');
  else MC.needs('1.7.122', 'ox_inventory');

  if (isEnvBrowser()) {
    // https://i.imgur.com/iPTAdYV.png - Night time img
    root!.style.backgroundImage = 'url("https://i.imgur.com/3pzRj9n.png")';
    root!.style.backgroundSize = 'cover';
    root!.style.backgroundRepeat = 'no-repeat';
    root!.style.backgroundPosition = 'center';
  }

  createRoot(root!).render(
    <React.StrictMode>
      <Provider store={store}>
        <DndProvider backend={TouchBackend} options={{ enableMouseEvents: true }}>
          <ItemNotificationsProvider>
            <App />
          </ItemNotificationsProvider>
        </DndProvider>
      </Provider>
    </React.StrictMode>
  );
}
