import { WebPlugin } from '@capacitor/core';
import { browserOpenPlugin } from './definitions';

export class browserOpenWeb extends WebPlugin implements browserOpenPlugin {
  constructor() {
    super({
      name: 'browserOpen',
      platforms: ['web']
    });
  }

  async echo(options: { value: string }): Promise<{value: string}> {
    console.log('ECHO', options);
    return options;
  }
}

const browserOpen = new browserOpenWeb();

export { browserOpen };

import { registerWebPlugin } from '@capacitor/core';
registerWebPlugin(browserOpen);
