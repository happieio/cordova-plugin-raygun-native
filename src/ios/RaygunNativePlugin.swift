import Foundation
import UIKit

@objc(RaygunNativePlugin) class RaygunNativePlugin : CDVPlugin  {

    func startNativeRaygun(command: CDVInvokedUrlCommand) {
    //[Raygun sharedReporterWithApiKey:@"YOUR_APP_API_KEY"];
    //[[Raygun sharedReporter] identify:@"UNIQUE_USER_IDENTITY"];
        //options: NSMutableDictionary =
        //NSMutableDictionary *options = [command argumentAtIndex:0];
        //    NSString *identifier = [options objectForKey:@"value"];
        //    if(identifier) { [[Crashlytics sharedInstance] setUserIdentifier:identifier]; }
    }
}

