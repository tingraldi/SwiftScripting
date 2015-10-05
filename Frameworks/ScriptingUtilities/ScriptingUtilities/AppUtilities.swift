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

let defaultAppLocations = [
    "/Applications",
    "/Applications/Utilities",
    "/System/Library/CoreServices"
]

public func appPathForName(name: String, locations: [String] = defaultAppLocations) -> String? {
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

public func application(bundleIdentifier bundleIdentifier: String) -> AnyObject? {
    return SBApplication(bundleIdentifier: bundleIdentifier)
}

public func application(path path: String) -> AnyObject? {
    var app: AnyObject?
    if let bundle = NSBundle(path: path) {
        app = application(bundleIdentifier: bundle.bundleIdentifier!)
    }

    return app
}

public func application(name name: String, locations: [String] = defaultAppLocations) -> AnyObject? {
    var app: AnyObject?
    if let path = appPathForName(name, locations: locations) {
        app = application(path: path)
    }

    return app
}

public func objectWithApplication(application: AnyObject, scriptingClass: String, properties: [NSObject : AnyObject] = [:]) -> SBObject! {
    let theClass = (application as! SBApplication).classForScriptingClass(scriptingClass) as! SBObject.Type
    return theClass.init(properties: properties)
}

public func objectWithApplication<T: RawRepresentable>(application: AnyObject, scriptingClass: T, properties: [NSObject : AnyObject] = [:]) -> SBObject! {
    return objectWithApplication(application, scriptingClass: (scriptingClass.rawValue as! String), properties: properties)
}
