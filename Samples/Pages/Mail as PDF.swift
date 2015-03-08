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

// Pages sample script.
//
// Exports the frontmost Pages document as PDF and attaches it to a new
// Mail message
//

import Foundation
import ScriptingUtilities
import MailScripting
import PagesScripting

let pages = Application(name: "Pages") as! PagesApplication
let mail = Application(name: "Mail") as! MailApplication

let document = pages.documents!().objectAtLocation(1) as! PagesDocument
let tempDirectory = NSURL(fileURLWithPath: "/tmp")!
let pdfName = "\(document.name!.stringByDeletingPathExtension).pdf"
let pdfURL = tempDirectory.URLByAppendingPathComponent(pdfName)

document.exportTo!(pdfURL, `as`: PagesExportFormatPDF, withProperties: nil)

let futureMessage = ObjectWithApplication(mail, scriptingClass: MailScripting.OutgoingMessage)
mail.outgoingMessages!().addObject(futureMessage)
let message = futureMessage as MailOutgoingMessage

let futureAttachment = ObjectWithApplication(mail, scriptingClass: MailScripting.Attachment, properties: ["fileName": pdfURL])
message.content!.attachments!().addObject(futureAttachment)

mail.activate()