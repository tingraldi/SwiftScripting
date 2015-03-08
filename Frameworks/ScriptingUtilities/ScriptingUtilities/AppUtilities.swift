//  Copyright (c) 2015 Majesty Software.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

import Foundation
import ScriptingBridge

let DefaultAppLocations = [
    "/Applications",
    "/Applications/Utilities",
    "/System/Library/CoreServices"
]

public func FindAppWithName(name: String, locations: [String] = DefaultAppLocations) -> String? {
    var path: String?
    for location in locations {
        let possiblePath = "\(location)/\(name).app"
        var isDirectory = ObjCBool(false)
        if NSFileManager.defaultManager().fileExistsAtPath(possiblePath, isDirectory: &isDirectory) && isDirectory.boolValue {
            path = possiblePath
            break
        }
    }

    return path
}

public func Application(#bundleIdentifier: String) -> AnyObject? {
    return SBApplication.applicationWithBundleIdentifier(bundleIdentifier)
}

public func Application(#path: String) -> AnyObject? {
    var app: AnyObject?
    if let bundle = NSBundle(path: path) {
        app = Application(bundleIdentifier: bundle.bundleIdentifier!)
    }

    return app
}

public func Application(#name: String, locations: [String] = DefaultAppLocations) -> AnyObject? {
    var app: AnyObject?
    if let path = FindAppWithName(name, locations: locations) {
        app = Application(path: path)
    }

    return app
}

public func ObjectWithApplication(application: AnyObject, #scriptingClass: String, properties: [NSObject : AnyObject] = [:]) -> SBObject! {
    let theClass = (application as! SBApplication).classForScriptingClass(scriptingClass) as! SBObject.Type
    return theClass(properties: properties)
}

public func ObjectWithApplication<T: RawRepresentable>(application: AnyObject, #scriptingClass: T, properties: [NSObject : AnyObject] = [:]) -> SBObject! {
    return ObjectWithApplication(application, scriptingClass: (scriptingClass.rawValue as! String), properties: properties)
}
