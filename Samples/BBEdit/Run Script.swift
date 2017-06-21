#!/usr/bin/xcrun swift -F /Library/Frameworks

//  Copyright (c) 2017 Majesty Software.
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

// BBEdit sample script.
// It tells BBEdit to save and run the frontmost document in Terminal. 
// Place this script in "~/Library/Application Support/BBEdit/Scripts" and it 
// will appear as a menu option in BBEdit's Script Menu.
//

import Foundation
import ScriptingUtilities
import BBEditScripting
import TerminalScripting

let bbEdit = application(name: "BBEdit") as! BBEditApplication
let terminal = application(name: "Terminal") as! TerminalApplication

let window = bbEdit.windows!().object(atLocation: 1) as! BBEditWindow
let document = window.document! as BBEditDocument

document.saveTo!(nil, savingAsStationery: false, addToRecentList: true)

if document.onDisk! {
    let fileURL: NSURL! = NSURL(string: document.file!.description)
    let path = fileURL.path! as NSString
    let name = path.lastPathComponent
    let directory = path.deletingLastPathComponent

    let script = "cd '\(directory)'; chmod u+x '\(name)';clear; ./'\(name)'"

    terminal.activate()
    let terminalWindow = terminal.windows!().object(atLocation: 1) as! TerminalWindow
    let tab = terminalWindow.selectedTab! as TerminalTab

    if !terminalWindow.frontmost! || tab.busy! {
        let _ = terminal.doScript!(script, in:nil)
    } else {
        let _ = terminal.doScript!(script, in:terminalWindow)
    }
}
