import Foundation
import UIKit
import Raygun4iOS

@objc(RaygunNativePlugin) class RaygunNativePlugin : CDVPlugin  {
    func startNativeRaygun(_ command: CDVInvokedUrlCommand) {
//        let params: [String: Any] = command.arguments[0] as! [String: Any]
//        let user: String = params["user"] as! String
//        let apiKey: String = params["api"] as! String
//        Raygun.sharedReporter(withApiKey: apiKey)
//        (Raygun.sharedReporter() as AnyObject).identify(user)
    }

    func testCrash(_ command: CDVInvokedUrlCommand) {
//        var crashWithMissingValueInDicitonary = Dictionary<Int,Int>()
//        _ = crashWithMissingValueInDicitonary[1]!
    }
}
