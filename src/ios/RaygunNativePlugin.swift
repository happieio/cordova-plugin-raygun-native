import Foundation
import UIKit
import Raygun4iOS

@objc(RaygunNativePlugin) class RaygunNativePlugin : CDVPlugin  {

    @objc(startNativeRaygun:)
    func startNativeRaygun(_ command: CDVInvokedUrlCommand) {
        let params: [String: Any] = command.arguments[0] as! [String: Any]
        let user: String = params["user"] as! String
        let apiKey: String = params["api"] as! String
        Raygun.sharedReporter(withApiKey: apiKey)
        (Raygun.sharedReporter() as AnyObject).identify(user)
    }
    
    @objc(updateNativeLogs:)
    func updateNativeLogs(_ command: CDVInvokedUrlCommand) {
        let logs = command.arguments[0] as! String
        if let data = logs.data(using: .utf8) {
            do {
                let dict = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                (Raygun.sharedReporter() as! Raygun).userCustomData = dict;
            } catch {
            }
        }
    }

    func testCrash(_ command: CDVInvokedUrlCommand) {
        var crashWithMissingValueInDicitonary = Dictionary<Int,Int>()
        _ = crashWithMissingValueInDicitonary[1]!
    }
}
