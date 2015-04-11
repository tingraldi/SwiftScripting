#!/usr/bin/xcrun swift -F /Library/Frameworks

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

// Xcode sample script.
//
// Visits the web site associated with the git repository for the active project.
// Assumes that the project is part of a git repository and that the repository has a
// remote origin url of the form
//  
//    username@host.com:path/repo_name.git
//
// Remote services known to work include GitHub, Bitbucket, and GitLab.
// Git hosting service is assumed to use HTTPS.
//

import Foundation
import ScriptingUtilities
import XcodeScripting

let xcode = Application(name: "Xcode") as! XcodeApplication

let workspace = xcode.activeWorkspaceDocument!
let pathComponents = workspace.file!.pathComponents!.filter {
    !$0.hasSuffix(".xcodeproj") && !$0.hasSuffix(".xcworkspace")
}

if let URLString = CommandOutput("/usr/bin/git", 
                                 withArguments: ["config", "--get", "remote.origin.url"], 
                                 currentDirectoryPath: NSString.pathWithComponents(pathComponents)) 
                                 where count(URLString) > 0 {
    let parts = URLString.componentsSeparatedByString("@")
    if parts.count == 2 {
        var location = parts[1].stringByDeletingPathExtension
        location = location.stringByReplacingOccurrencesOfString(":", withString:"/")
        NSTask.launchedTaskWithLaunchPath("/usr/bin/open", arguments: ["https://\(location)"])
    }
}
