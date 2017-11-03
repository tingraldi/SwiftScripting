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

// Acorn sample script.
// Exports the frontmost document open in Acorn and exports it as PNG
// in three different sizes.
//
// @3x - same size as source image
// @2x - 2/3 the size of the source image
// 1x  - 1/3 the size of the source image
//
// Images are exported to the Images folder on the user's Desktop. The Images
// folder is created if it doesn't already exist.
//

import Foundation
import ScriptingUtilities
import AcornScripting

let acorn = application(name: "Acorn") as! AcornApplication

let imageFolderURL = URL(fileURLWithPath:("~/Desktop/Images" as NSString).expandingTildeInPath)

do {
    try FileManager.default.createDirectory(at: imageFolderURL, 
                                    withIntermediateDirectories: true, 
                                    attributes: nil)
} catch let _ as NSError {
}

Process.launchedProcess(launchPath: "/usr/bin/open", arguments: [imageFolderURL.path])

let document = acorn.documents!().object(atLocation: 0) as! AcornDocument
let name = (document.name! as NSString).deletingPathExtension

for (scale, suffix) in [1.0 : "@3x", 2.0 / 3.0 : "@2x", 1.0 / 3.0 : ""] {
    let fileName = "\(name)\(suffix).png"
    let fileURL: URL! = imageFolderURL.appendingPathComponent(fileName)
    let scaledWidth = Int(scale * document.width!)
    let scaledHeight = Int(scale * document.height!)
    document.webExportIn!(fileURL, 
              as: .png, 
              quality: 100, 
              width: scaledWidth, 
              height: scaledHeight)
}

notifyUserWithMessage("Export complete.", title: "Acorn")
