import Foundation
import UIKit
import Raygun4iOS

@objc(RaygunNativePlugin) class RaygunNativePlugin : CDVPlugin  {
    func startNativeRaygun(command: CDVInvokedUrlCommand) {
        let params: AnyObject = command.arguments[0] as AnyObject!
        let user: String = params["user"] as AnyObject! as! String
        let apiKey: String = params["api"] as AnyObject! as! String
        Raygun.sharedReporterWithApiKey(apiKey)
        Raygun.sharedReporter().identify(user)
    }

    func testCrash(command: CDVInvokedUrlCommand) {
        var crashWithMissingValueInDicitonary = Dictionary<Int,Int>()
        _ = crashWithMissingValueInDicitonary[1]!
    }
}