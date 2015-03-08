#!/usr/bin/swift -F /Library/Frameworks

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

// Image Events sample script.
// Operates on selected images in the Finder
// Outputs half-scale images in same folder as originals
//

import Foundation
import FinderScripting
import ImageEventsScripting
import ScriptingUtilities

let imageExtensions = ["png", "jpg", "jpeg", "tif", "tiff", "gif"]

let finder = Application(name: "Finder") as! FinderApplication
let imageEvents = Application(name: "Image Events") as! ImageEventsApplication

for item in (finder.selection!.get() as! NSArray) {
    if let file = item as? FinderFile {
        let fileExtension = file.nameExtension!.lowercaseString
        if contains(imageExtensions, fileExtension) {
            let fileURL = NSURL(string: file.URL!)
            let outputDirectory = fileURL!.URLByDeletingLastPathComponent!
            let outputFilename = "\(file.name!.stringByDeletingPathExtension) (half-scale).\(fileExtension)"
            let outputURL = outputDirectory.URLByAppendingPathComponent(outputFilename)
            
            let image = imageEvents.open!(fileURL!) as! ImageEventsImage
            image.scaleByFactor!(0.5, toSize: 0)
            
            image.closeSaving!(ImageEventsSavoYes, savingIn: outputURL.path!)
        }
    }
}