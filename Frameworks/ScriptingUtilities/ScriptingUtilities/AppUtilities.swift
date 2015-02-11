
import Foundation
import ScriptingBridge

let DefaultAppLocations = [
    "/Applications",
    "/Applications/Utilities",
    "/System/Library/CoreServices"
]

public func Application(#bundleIdentifier: String) -> AnyObject? {
    return SBApplication.applicationWithBundleIdentifier(bundleIdentifier)
}

public func FindAppWithName(name: String, locations: [String] = DefaultAppLocations) -> String? {
    var path: String?
    for location in locations {
        let possiblePath = "\(location)/\(name).app"
        var isDirectory = ObjCBool(false)
        if NSFileManager.defaultManager().fileExistsAtPath(possiblePath, isDirectory: &isDirectory) && isDirectory.boolValue {
            path = possiblePath
        }
    }

    return path
}

public func Application(#name: String, locations: [String] = DefaultAppLocations) -> AnyObject? {
    var app: AnyObject?
    if let path = FindAppWithName(name, locations: locations) {
        if let bundle = NSBundle(path: path) {
            app = Application(bundleIdentifier: bundle.bundleIdentifier!)
        }
    }

    return app
}

public func Application(#name: String, location: String) -> AnyObject? {
    return Application(name: name, locations: [location])
}

