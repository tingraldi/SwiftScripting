import AppKit
import ScriptingBridge

@objc public protocol SBObjectProtocol: NSObjectProtocol {
    func get() -> Any!
}

@objc public protocol SBApplicationProtocol: SBObjectProtocol {
    func activate()
    var delegate: SBApplicationDelegate! { get set }
    var running: Bool { @objc(isRunning) get }
}

// MARK: AcornSaveOptions
@objc public enum AcornSaveOptions : AEKeyword {
    case yes = 0x79657320 /* 'yes ' */
    case no = 0x6e6f2020 /* 'no  ' */
    case ask = 0x61736b20 /* 'ask ' */
}

// MARK: AcornPrintingErrorHandling
@objc public enum AcornPrintingErrorHandling : AEKeyword {
    case standard = 0x6c777374 /* 'lwst' */
    case detailed = 0x6c776474 /* 'lwdt' */
}

// MARK: AcornSaveableFileFormat
@objc public enum AcornSaveableFileFormat : AEKeyword {
    case acorn = 0x4163524e /* 'AcRN' */
    case pdf = 0x50444620 /* 'PDF ' */
    case png = 0x504e4720 /* 'PNG ' */
    case jpeg = 0x4a504547 /* 'JPEG' */
    case tiff = 0x54494646 /* 'TIFF' */
    case jpeg2000 = 0x4a504532 /* 'JPE2' */
    case gif = 0x47494646 /* 'GIFF' */
    case webP = 0x57454250 /* 'WEBP' */
}

// MARK: AcornAnchorPosition
@objc public enum AcornAnchorPosition : AEKeyword {
    case topLeft = 0x616e746c /* 'antl' */
    case topCenter = 0x616e7463 /* 'antc' */
    case topRight = 0x616e7472 /* 'antr' */
    case middleLeft = 0x616e6d6c /* 'anml' */
    case middleRight = 0x616e6d72 /* 'anmr' */
    case bottomLeft = 0x616e626c /* 'anbl' */
    case bottomCenter = 0x616e6263 /* 'anbc' */
    case bottomRight = 0x616e6272 /* 'anbr' */
    case middleCenter = 0x616e6d63 /* 'anmc' */
}

// MARK: AcornBlendMode
@objc public enum AcornBlendMode : AEKeyword {
    case normal = 0x626d6e6f /* 'bmno' */
    case multiply = 0x626d6d6f /* 'bmmo' */
    case screen = 0x626d7363 /* 'bmsc' */
    case overlay = 0x626d6f76 /* 'bmov' */
    case darken = 0x626d6472 /* 'bmdr' */
    case lighten = 0x626d6c69 /* 'bmli' */
    case colorDodge = 0x626d6364 /* 'bmcd' */
    case colorBurn = 0x626d6362 /* 'bmcb' */
    case softLight = 0x626d736c /* 'bmsl' */
    case hardLight = 0x626d686c /* 'bmhl' */
    case difference = 0x626d6469 /* 'bmdi' */
    case exclusion = 0x626d6578 /* 'bmex' */
    case hue = 0x626d6875 /* 'bmhu' */
    case saturation = 0x626d7361 /* 'bmsa' */
    case colorBlend = 0x626d636f /* 'bmco' */
    case luminosity = 0x626d6c75 /* 'bmlu' */
    case clear = 0x626d636c /* 'bmcl' */
    case copy = 0x626d6370 /* 'bmcp' */
    case sourceIn = 0x626d7369 /* 'bmsi' */
    case sourceOut = 0x626d736f /* 'bmso' */
    case sourceAtop = 0x626d7374 /* 'bmst' */
    case destinationOver = 0x626d646f /* 'bmdo' */
    case destinationOut = 0x626d6474 /* 'bmdt' */
    case destinationAtop = 0x626d6461 /* 'bmda' */
    case xor = 0x626d7872 /* 'bmxr' */
    case plusDarker = 0x626d7064 /* 'bmpd' */
    case plusLighter = 0x626d706c /* 'bmpl' */
    case passThrough = 0x626d7074 /* 'bmpt' */
}

// MARK: AcornDirection
@objc public enum AcornDirection : AEKeyword {
    case horizontal = 0x686f727a /* 'horz' */
    case vertical = 0x76657274 /* 'vert' */
}

// MARK: AcornGenericMethods
@objc public protocol AcornGenericMethods {
    @objc optional func closeSaving(_ saving: AcornSaveOptions, savingIn: URL!) // Close a document.
    @objc optional func saveIn(_ in_: URL!, as: AcornSaveableFileFormat) // Save a document.  You can use this to rename a document as well.
    @objc optional func printWithProperties(_ withProperties: [AnyHashable : Any]!, printDialog: Bool) // Print a document.
    @objc optional func delete() // Delete an object.
    @objc optional func duplicateTo(_ to: SBObject!, withProperties: [AnyHashable : Any]!) // Copy an object.
    @objc optional func moveTo(_ to: SBObject!) // Move an object to a new location.
}

// MARK: AcornApplication
@objc public protocol AcornApplication: SBApplicationProtocol {
    @objc optional func documents() -> SBElementArray
    @objc optional func windows() -> SBElementArray
    @objc optional var name: String { get } // The name of the application.
    @objc optional var frontmost: Bool { get } // Is this the active application?
    @objc optional var version: String { get } // The version number of the application.
    @objc optional func `open`(_ x: [URL]!) // Open a document.
    @objc optional func print(_ x: Any!, withProperties: [AnyHashable : Any]!, printDialog: Bool) // Print a document.
    @objc optional func quitSaving(_ saving: AcornSaveOptions) // Quit the application.
    @objc optional func exists(_ x: Any!) -> Bool // Verify that an object exists.
    @objc optional func taunt() -> String // Have Acorn taunt you.
    @objc optional func doJavaScript(_ x: String!) -> Any // Applies a string of JavaScript (or JSTalk) code to a document.
    @objc optional func setPreferenceKey(_ key: String!, value: String!) // Set a preference, using it's defaults name and value.
}
extension SBApplication: AcornApplication {}

// MARK: AcornWindow
@objc public protocol AcornWindow: SBObjectProtocol, AcornGenericMethods {
    @objc optional var name: String { get } // The title of the window.
    @objc optional func id() -> Int // The unique identifier of the window.
    @objc optional var index: Int { get } // The index of the window, ordered front to back.
    @objc optional var closeable: Bool { get } // Does the window have a close button?
    @objc optional var miniaturizable: Bool { get } // Does the window have a minimize button?
    @objc optional var miniaturized: Bool { get } // Is the window minimized right now?
    @objc optional var resizable: Bool { get } // Can the window be resized?
    @objc optional var visible: Bool { get } // Is the window visible right now?
    @objc optional var zoomable: Bool { get } // Does the window have a zoom button?
    @objc optional var zoomed: Bool { get } // Is the window zoomed right now?
    @objc optional var document: AcornDocument { get } // The document whose contents are displayed in the window.
    @objc optional func setIndex(_ index: Int) // The index of the window, ordered front to back.
    @objc optional func setMiniaturized(_ miniaturized: Bool) // Is the window minimized right now?
    @objc optional func setVisible(_ visible: Bool) // Is the window visible right now?
    @objc optional func setZoomed(_ zoomed: Bool) // Is the window zoomed right now?
}
extension SBObject: AcornWindow {}

// MARK: AcornRichText
@objc public protocol AcornRichText: SBObjectProtocol, AcornGenericMethods {
    @objc optional func characters() -> SBElementArray
    @objc optional func paragraphs() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional func attributeRuns() -> SBElementArray
    @objc optional func attachments() -> SBElementArray
    @objc optional var color: NSColor { get } // The color of the text's first character.
    @objc optional var font: String { get } // The name of the font of the text's first character.
    @objc optional var size: Int { get } // The size in points of the text's first character.
    @objc optional func setColor(_ color: NSColor!) // The color of the text's first character.
    @objc optional func setFont(_ font: String!) // The name of the font of the text's first character.
    @objc optional func setSize(_ size: Int) // The size in points of the text's first character.
}
extension SBObject: AcornRichText {}

// MARK: AcornCharacter
@objc public protocol AcornCharacter: SBObjectProtocol, AcornGenericMethods {
    @objc optional func characters() -> SBElementArray
    @objc optional func paragraphs() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional func attributeRuns() -> SBElementArray
    @objc optional func attachments() -> SBElementArray
    @objc optional var color: NSColor { get } // Its color.
    @objc optional var font: String { get } // The name of its font.
    @objc optional var size: Int { get } // Its size, in points.
    @objc optional func setColor(_ color: NSColor!) // Its color.
    @objc optional func setFont(_ font: String!) // The name of its font.
    @objc optional func setSize(_ size: Int) // Its size, in points.
}
extension SBObject: AcornCharacter {}

// MARK: AcornParagraph
@objc public protocol AcornParagraph: SBObjectProtocol, AcornGenericMethods {
    @objc optional func characters() -> SBElementArray
    @objc optional func paragraphs() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional func attributeRuns() -> SBElementArray
    @objc optional func attachments() -> SBElementArray
    @objc optional var color: NSColor { get } // The color of the paragraph's first character.
    @objc optional var font: String { get } // The name of the font of the paragraph's first character.
    @objc optional var size: Int { get } // The size in points of the paragraph's first character.
    @objc optional func setColor(_ color: NSColor!) // The color of the paragraph's first character.
    @objc optional func setFont(_ font: String!) // The name of the font of the paragraph's first character.
    @objc optional func setSize(_ size: Int) // The size in points of the paragraph's first character.
}
extension SBObject: AcornParagraph {}

// MARK: AcornWord
@objc public protocol AcornWord: SBObjectProtocol, AcornGenericMethods {
    @objc optional func characters() -> SBElementArray
    @objc optional func paragraphs() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional func attributeRuns() -> SBElementArray
    @objc optional func attachments() -> SBElementArray
    @objc optional var color: NSColor { get } // The color of the word's first character.
    @objc optional var font: String { get } // The name of the font of the word's first character.
    @objc optional var size: Int { get } // The size in points of the word's first character.
    @objc optional func setColor(_ color: NSColor!) // The color of the word's first character.
    @objc optional func setFont(_ font: String!) // The name of the font of the word's first character.
    @objc optional func setSize(_ size: Int) // The size in points of the word's first character.
}
extension SBObject: AcornWord {}

// MARK: AcornAttributeRun
@objc public protocol AcornAttributeRun: SBObjectProtocol, AcornGenericMethods {
    @objc optional func characters() -> SBElementArray
    @objc optional func paragraphs() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional func attributeRuns() -> SBElementArray
    @objc optional func attachments() -> SBElementArray
    @objc optional var color: NSColor { get } // Its color.
    @objc optional var font: String { get } // The name of its font.
    @objc optional var size: Int { get } // Its size, in points.
    @objc optional func setColor(_ color: NSColor!) // Its color.
    @objc optional func setFont(_ font: String!) // The name of its font.
    @objc optional func setSize(_ size: Int) // Its size, in points.
}
extension SBObject: AcornAttributeRun {}

// MARK: AcornAttachment
@objc public protocol AcornAttachment: AcornRichText {
    @objc optional var fileName: String { get } // The path to the embedded file.
    @objc optional func setFileName(_ fileName: String!) // The path to the embedded file.
}
extension SBObject: AcornAttachment {}

// MARK: AcornDocument
@objc public protocol AcornDocument: SBObjectProtocol, AcornGenericMethods {
    @objc optional func layers() -> SBElementArray
    @objc optional func bitmapLayers() -> SBElementArray
    @objc optional func groupLayers() -> SBElementArray
    @objc optional func shapeLayers() -> SBElementArray
    @objc optional var name: String { get } // Its name.
    @objc optional var modified: Bool { get } // Has it been modified since the last save?
    @objc optional var file: URL { get } // Its location on disk, if it has one.
    @objc optional var height: Double { get } // The height of the image in pixels.
    @objc optional var width: Double { get } // The width of the image in pixels.
    @objc optional var currentLayer: AcornLayer { get } // The Current layer
    @objc optional func cropRect(_ rect: [NSNumber]!) // Crop an image
    @objc optional func undo() // Undo the last operation
    @objc optional func redo() // Redo the last undone operation.
    @objc optional func resizeImageWidth(_ width: Double, height: Double, resolution: Double) // Resize an image
    @objc optional func resizeCanvasWidth(_ width: Double, height: Double, anchorPosition: AcornAnchorPosition) // Resize the canvas
    @objc optional func trim() // Trim an image, cropping out any whitespace.
    @objc optional func webExportIn(_ in_: URL!, as: AcornSaveableFileFormat, quality: Int, width: Int, height: Int) // Export a document for the Web.
    @objc optional func copyMerged() // Copy the document or selection, with combined layers.
    @objc optional func copy() // Copy the layer or selection to the clipboard.
    @objc optional func paste() // Paste whatever is on the clipboard, making a new layer.
    @objc optional func clear() // Clear (delete) the current selection
    @objc optional func cut() // Cut (copy + delete) the current selection.  This is the same as the Edit ▸ Cut menu item.
    @objc optional func deselect() // Clear the current selection
    @objc optional func fillWithColor(_ withColor: [NSNumber]!) // Fill the current layer or selection with the forground color.
    @objc optional func flipCanvasDirection(_ direction: AcornDirection) // Flip the cavnas in a direction
    @objc optional func invertSelection() // Invert the current selection.
    @objc optional func mergeVisibleLayers() // Merge the visible layers into one.
    @objc optional func selectAll() // Select the whole canvas
    @objc optional func selectRect(_ rect: [NSNumber]!) // Select a frame
    @objc optional func selectOvalRect(_ rect: [NSNumber]!) // Select an oval frame
    @objc optional func doFilterName(_ name: String!) // Call a Core Image filter for the selected layer, or a filter plugin with the given name.
    @objc optional func loadFilterPresetName(_ name: String!) // Load a filter preset with the given name.
    @objc optional func addLayerMask() // Add a layer mask to the layer
    @objc optional func rotateCanvasAngle(_ angle: Double) // Rotates the canvas
    @objc optional func autoLevels() // Perform autolevels for the layer or document
    @objc optional func setHeight(_ height: Double) // The height of the image in pixels.
    @objc optional func setWidth(_ width: Double) // The width of the image in pixels.
    @objc optional func setCurrentLayer(_ currentLayer: AcornLayer!) // The Current layer
}
extension SBObject: AcornDocument {}

// MARK: AcornLayer
@objc public protocol AcornLayer: SBObjectProtocol, AcornGenericMethods {
    @objc optional func layers() -> SBElementArray
    @objc optional func bitmapLayers() -> SBElementArray
    @objc optional func groupLayers() -> SBElementArray
    @objc optional func shapeLayers() -> SBElementArray
    @objc optional var name: String { get }
    @objc optional var opacity: Double { get }
    @objc optional var visible: Bool { get }
    @objc optional var bounds: [NSNumber] { get }
    @objc optional var blendMode: AcornBlendMode { get }
    @objc optional var origin: [NSNumber] { get }
    @objc optional func setName(_ name: String!)
    @objc optional func setOpacity(_ opacity: Double)
    @objc optional func setVisible(_ visible: Bool)
    @objc optional func setBlendMode(_ blendMode: AcornBlendMode)
    @objc optional func setOrigin(_ origin: [NSNumber]!)
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

