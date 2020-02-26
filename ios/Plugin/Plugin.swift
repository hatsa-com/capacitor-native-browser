import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(browserOpen)
public class browserOpen: CAPPlugin {
    
    @objc func openUrl(_ call: CAPPluginCall) {
        if let url = call.getString("url") {
            if let link = URL(string: url) {
                if UIApplication.shared.canOpenURL(link) {
                    UIApplication.shared.open(link)
                } else {
                    call.error("UIApplication cannot open url")
                }
            } else {
                call.error("Parameter url is not a url")
            }
        } else {
            call.error("Missing parameter: url")
        }
    }
}
