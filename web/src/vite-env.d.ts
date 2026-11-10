/// <reference types="vite/client" />

// MyCity_UI (https://cfx-nui-MyCity_UI/dist/mc.js), loaded by index.html before the bundle
interface Window {
  MC?: {
    version: string;
    needs?: (version: string, resource: string) => boolean;
    icon: (name: string) => SVGElement | null;
  };
}
