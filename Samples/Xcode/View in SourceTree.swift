#!/usr/bin/env TOOLCHAINS=com.apple.dt.toolchain.Swift_2_3 xcrun swift -F /Library/Frameworks

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
// Views the repository associated with the active project in SourceTree.
// Assumes that SourceTree (http://www.sourcetreeapp.com) and its associated
// stree command-line tool has been installed.

import Foundation
import ScriptingUtilities
import XcodeScripting

let xcode = application(name: "Xcode") as! XcodeApplication

let workspace = xcode.activeWorkspaceDocument!
let pathComponents = workspace.file!.pathComponents!.filter {
    !$0.hasSuffix(".xcodeproj") && !$0.hasSuffix(".xcworkspace")
}

let task = NSTask()
task.launchPath = "/usr/local/bin/stree"
task.environment = ["PWD" : NSString.pathWithComponents(pathComponents)]
task.launch()
