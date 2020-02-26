package com.hatsa.browser;

import android.content.Intent;
import android.net.Uri;

import com.getcapacitor.JSObject;
import com.getcapacitor.NativePlugin;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;

@NativePlugin()
public class browserOpen extends Plugin {

    @PluginMethod()
    public void openUrl(PluginCall call) {
        String url = call.getString("url");
        if (url != null && url != "") {
            Intent browserIntent = new Intent(Intent.ACTION_VIEW, Uri.parse(url));
            this.getContext().startActivity(browserIntent);
        } else {
            call.error("Missing parameter: url");
        }
    }
}
