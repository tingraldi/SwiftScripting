import AppKit
import ScriptingBridge

@objc public protocol SBObjectProtocol: NSObjectProtocol {
    func get() -> AnyObject!
}

@objc public protocol SBApplicationProtocol: SBObjectProtocol {
    func activate()
    var delegate: SBApplicationDelegate! { get set }
}

// MARK: AcornApplication
@objc public protocol AcornApplication: SBApplicationProtocol {
    optional func documents() -> SBElementArray
    optional func windows() -> SBElementArray
    optional var name: String { get } // The name of the application.
    optional var frontmost: Bool { get } // Is this the active application?
    optional var version: String { get } // The version number of the application.
    optional func open(x: [AnyObject]!) // Open a document.
    optional func print(x: AnyObject!, withProperties: [NSObject : AnyObject]!, printDialog: Bool) // Print a document.
    optional func quitSaving(saving: AcornSaveOptions) // Quit the application.
    optional func exists(x: AnyObject!) -> Bool // Verify that an object exists.
    optional func taunt() -> String // Have Acorn taunt you.
    optional func doJavaScript(x: String!) -> AnyObject // Applies a string of JavaScript (or JSTalk) code to a document.
    optional func setPreferenceKey(key: String!, value: String!) // Set a preference, using it's defaults name and value.
}
extension SBApplication: AcornApplication {}

// MARK: AcornWindow
@objc public protocol AcornWindow: SBObjectProtocol {
    optional var name: String { get } // The title of the window.
    optional func id() -> Int // The unique identifier of the window.
    optional var index: Int { get set } // The index of the window, ordered front to back.
    optional var closeable: Bool { get } // Does the window have a close button?
    optional var miniaturizable: Bool { get } // Does the window have a minimize button?
    optional var miniaturized: Bool { get set } // Is the window minimized right now?
    optional var resizable: Bool { get } // Can the window be resized?
    optional var visible: Bool { get set } // Is the window visible right now?
    optional var zoomable: Bool { get } // Does the window have a zoom button?
    optional var zoomed: Bool { get set } // Is the window zoomed right now?
    optional var document: AcornDocument { get } // The document whose contents are displayed in the window.
    optional func closeSaving(saving: AcornSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(in_: NSURL!, `as`: AcornSaveableFileFormat) // Save a document.  You can use this to rename a document as well.
    optional func printWithProperties(withProperties: [NSObject : AnyObject]!, printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
}
extension SBObject: AcornWindow {}

// MARK: AcornRichText
@objc public protocol AcornRichText: SBObjectProtocol {
    optional func characters() -> SBElementArray
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get set } // The color of the text's first character.
    optional var font: String { get set } // The name of the font of the text's first character.
    optional var size: Int { get set } // The size in points of the text's first character.
    optional func closeSaving(saving: AcornSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(in_: NSURL!, `as`: AcornSaveableFileFormat) // Save a document.  You can use this to rename a document as well.
    optional func printWithProperties(withProperties: [NSObject : AnyObject]!, printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
}
extension SBObject: AcornRichText {}

// MARK: AcornCharacter
@objc public protocol AcornCharacter: SBObjectProtocol {
    optional func characters() -> SBElementArray
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get set } // Its color.
    optional var font: String { get set } // The name of its font.
    optional var size: Int { get set } // Its size, in points.
    optional func closeSaving(saving: AcornSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(in_: NSURL!, `as`: AcornSaveableFileFormat) // Save a document.  You can use this to rename a document as well.
    optional func printWithProperties(withProperties: [NSObject : AnyObject]!, printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
}
extension SBObject: AcornCharacter {}

// MARK: AcornParagraph
@objc public protocol AcornParagraph: SBObjectProtocol {
    optional func characters() -> SBElementArray
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get set } // The color of the paragraph's first character.
    optional var font: String { get set } // The name of the font of the paragraph's first character.
    optional var size: Int { get set } // The size in points of the paragraph's first character.
    optional func closeSaving(saving: AcornSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(in_: NSURL!, `as`: AcornSaveableFileFormat) // Save a document.  You can use this to rename a document as well.
    optional func printWithProperties(withProperties: [NSObject : AnyObject]!, printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
}
extension SBObject: AcornParagraph {}

// MARK: AcornWord
@objc public protocol AcornWord: SBObjectProtocol {
    optional func characters() -> SBElementArray
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get set } // The color of the word's first character.
    optional var font: String { get set } // The name of the font of the word's first character.
    optional var size: Int { get set } // The size in points of the word's first character.
    optional func closeSaving(saving: AcornSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(in_: NSURL!, `as`: AcornSaveableFileFormat) // Save a document.  You can use this to rename a document as well.
    optional func printWithProperties(withProperties: [NSObject : AnyObject]!, printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
}
extension SBObject: AcornWord {}

// MARK: AcornAttributeRun
@objc public protocol AcornAttributeRun: SBObjectProtocol {
    optional func characters() -> SBElementArray
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get set } // Its color.
    optional var font: String { get set } // The name of its font.
    optional var size: Int { get set } // Its size, in points.
    optional func closeSaving(saving: AcornSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(in_: NSURL!, `as`: AcornSaveableFileFormat) // Save a document.  You can use this to rename a document as well.
    optional func printWithProperties(withProperties: [NSObject : AnyObject]!, printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
}
extension SBObject: AcornAttributeRun {}

// MARK: AcornAttachment
@objc public protocol AcornAttachment: AcornRichText {
    optional var fileName: String { get set } // The path to the embedded file.
}
extension SBObject: AcornAttachment {}

// MARK: AcornDocument
@objc public protocol AcornDocument: SBObjectProtocol {
    optional func layers() -> SBElementArray
    optional func bitmapLayers() -> SBElementArray
    optional func groupLayers() -> SBElementArray
    optional func shapeLayers() -> SBElementArray
    optional var name: String { get } // Its name.
    optional var modified: Bool { get } // Has it been modified since the last save?
    optional var file: NSURL { get } // Its location on disk, if it has one.
    optional var height: Double { get set } // The height of the image in pixels.
    optional var width: Double { get set } // The width of the image in pixels.
    optional var currentLayer: AcornLayer { get set } // The Current layer
    optional func closeSaving(saving: AcornSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(in_: NSURL!, `as`: AcornSaveableFileFormat) // Save a document.  You can use this to rename a document as well.
    optional func printWithProperties(withProperties: [NSObject : AnyObject]!, printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func cropRect(rect: [AnyObject]!) // Crop an image
    optional func undo() // Undo the last operation
    optional func redo() // Redo the last undone operation.
    optional func resizeImageWidth(width: Double, height: Double, resolution: Double) // Resize an image
    optional func resizeCanvasWidth(width: Double, height: Double, anchorPosition: AcornAnchorPosition) // Resize the canvas
    optional func trim() // Trim an image, cropping out any whitespace.
    optional func webExportIn(in_: NSURL!, `as`: AcornSaveableFileFormat, quality: Int, width: Int, height: Int) // Export a document for the Web.
    optional func copyMerged() // Copy the document or selection, with combined layers.
    optional func copy() // Copy the layer or selection to the clipboard.
    optional func paste() // Paste whatever is on the clipboard, making a new layer.
    optional func clear() // Clear (delete) the current selection
    optional func cut() // Cut (copy + delete) the current selection.  This is the same as the Edit ▸ Cut menu item.
    optional func deselect() // Clear the current selection
    optional func fillWithColor(withColor: [AnyObject]!) // Fill the current layer or selection with the forground color.
    optional func flipCanvasDirection(direction: AcornDirection) // Flip the cavnas in a direction
    optional func invertSelection() // Invert the current selection.
    optional func mergeVisibleLayers() // Merge the visible layers into one.
    optional func selectAll() // Select the whole canvas
    optional func selectRect(rect: [AnyObject]!) // Select a frame
    optional func selectOvalRect(rect: [AnyObject]!) // Select an oval frame
    optional func doFilterName(name: String!) // Call a Core Image filter for the selected layer, or a filter plugin with the given name.
    optional func loadFilterPresetName(name: String!) // Load a filter preset with the given name.
    optional func addLayerMask() // Add a layer mask to the layer
    optional func rotateCanvasAngle(angle: Double) // Rotates the canvas
    optional func autoLevels() // Perform autolevels for the layer or document
}
extension SBObject: AcornDocument {}

// MARK: AcornLayer
@objc public protocol AcornLayer: SBObjectProtocol {
    optional func layers() -> SBElementArray
    optional func bitmapLayers() -> SBElementArray
    optional func groupLayers() -> SBElementArray
    optional func shapeLayers() -> SBElementArray
    optional var name: String { get set }
    optional var opacity: Double { get set }
    optional var visible: Bool { get set }
    optional var bounds: [AnyObject] { get }
    optional var blendMode: AcornBlendMode { get set }
    optional var origin: [AnyObject] { get set }
    optional func closeSaving(saving: AcornSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(in_: NSURL!, `as`: AcornSaveableFileFormat) // Save a document.  You can use this to rename a document as well.
    optional func printWithProperties(withProperties: [NSObject : AnyObject]!, printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
}
extension SBObject: AcornLayer {}

// MARK: AcornBitmapLayer
@objc public protocol AcornBitmapLayer: AcornLayer {
}
extension SBObject: AcornBitmapLayer {}

// MARK: AcornGroupLayer
@objc public protocol AcornGroupLayer: AcornLayer {
}
extension SBObject: AcornGroupLayer {}

// MARK: AcornShapeLayer
@objc public protocol AcornShapeLayer: AcornLayer {
}
extension SBObject: AcornShapeLayer {}

