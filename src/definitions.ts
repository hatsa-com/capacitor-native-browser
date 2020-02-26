declare module "@capacitor/core" {
  interface PluginRegistry {
    browserOpen: browserOpenPlugin;
  }
}

export interface browserOpenPlugin {
  echo(options: { value: string }): Promise<{value: string}>;
}
