import Foundation
import UIKit
import Raygun4iOS

@objc(RaygunNativePlugin) class RaygunNativePlugin : CDVPlugin  {
    func startNativeRaygun(command: CDVInvokedUrlCommand) {
        var params: AnyObject = command.arguments[0] as AnyObject!
        var user: String = params["user"] as AnyObject! as! String
        var apiKey: String = params["api"] as AnyObject! as! String
        Raygun.sharedReporterWithApiKey(apiKey)
        Raygun.sharedReporter().identify(user)
    }

    func testCrash(command: CDVInvokedUrlCommand) {
        var crashWithMissingValueInDicitonary = Dictionary<Int,Int>()
        let crashInt = crashWithMissingValueInDicitonary[1]!
    }
}