import AppKit
import ScriptingBridge

@objc public protocol SBObjectProtocol: NSObjectProtocol {
    func get() -> AnyObject!
}

@objc public protocol SBApplicationProtocol: SBObjectProtocol {
    func activate()
    var delegate: SBApplicationDelegate! { get set }
}

// MARK: AcornSaveOptions
@objc public enum AcornSaveOptions : AEKeyword {
    case Yes = 0x79657320 /* 'yes ' */
    case No = 0x6e6f2020 /* 'no  ' */
    case Ask = 0x61736b20 /* 'ask ' */
}

// MARK: AcornPrintingErrorHandling
@objc public enum AcornPrintingErrorHandling : AEKeyword {
    case Standard = 0x6c777374 /* 'lwst' */
    case Detailed = 0x6c776474 /* 'lwdt' */
}

// MARK: AcornSaveableFileFormat
@objc public enum AcornSaveableFileFormat : AEKeyword {
    case Acorn = 0x4163524e /* 'AcRN' */
    case PDF = 0x50444620 /* 'PDF ' */
    case PNG = 0x504e4720 /* 'PNG ' */
    case JPEG = 0x4a504547 /* 'JPEG' */
    case TIFF = 0x54494646 /* 'TIFF' */
    case JPEG2000 = 0x4a504532 /* 'JPE2' */
    case GIF = 0x47494646 /* 'GIFF' */
    case WebP = 0x57454250 /* 'WEBP' */
}

// MARK: AcornAnchorPosition
@objc public enum AcornAnchorPosition : AEKeyword {
    case TopLeft = 0x616e746c /* 'antl' */
    case TopCenter = 0x616e7463 /* 'antc' */
    case TopRight = 0x616e7472 /* 'antr' */
    case MiddleLeft = 0x616e6d6c /* 'anml' */
    case MiddleRight = 0x616e6d72 /* 'anmr' */
    case BottomLeft = 0x616e626c /* 'anbl' */
    case BottomCenter = 0x616e6263 /* 'anbc' */
    case BottomRight = 0x616e6272 /* 'anbr' */
    case MiddleCenter = 0x616e6d63 /* 'anmc' */
}

// MARK: AcornBlendMode
@objc public enum AcornBlendMode : AEKeyword {
    case Normal = 0x626d6e6f /* 'bmno' */
    case Multiply = 0x626d6d6f /* 'bmmo' */
    case Screen = 0x626d7363 /* 'bmsc' */
    case Overlay = 0x626d6f76 /* 'bmov' */
    case Darken = 0x626d6472 /* 'bmdr' */
    case Lighten = 0x626d6c69 /* 'bmli' */
    case ColorDodge = 0x626d6364 /* 'bmcd' */
    case ColorBurn = 0x626d6362 /* 'bmcb' */
    case SoftLight = 0x626d736c /* 'bmsl' */
    case HardLight = 0x626d686c /* 'bmhl' */
    case Difference = 0x626d6469 /* 'bmdi' */
    case Exclusion = 0x626d6578 /* 'bmex' */
    case Hue = 0x626d6875 /* 'bmhu' */
    case Saturation = 0x626d7361 /* 'bmsa' */
    case ColorBlend = 0x626d636f /* 'bmco' */
    case Luminosity = 0x626d6c75 /* 'bmlu' */
    case Clear = 0x626d636c /* 'bmcl' */
    case Copy = 0x626d6370 /* 'bmcp' */
    case SourceIn = 0x626d7369 /* 'bmsi' */
    case SourceOut = 0x626d736f /* 'bmso' */
    case SourceAtop = 0x626d7374 /* 'bmst' */
    case DestinationOver = 0x626d646f /* 'bmdo' */
    case DestinationOut = 0x626d6474 /* 'bmdt' */
    case DestinationAtop = 0x626d6461 /* 'bmda' */
    case Xor = 0x626d7872 /* 'bmxr' */
    case PlusDarker = 0x626d7064 /* 'bmpd' */
    case PlusLighter = 0x626d706c /* 'bmpl' */
    case PassThrough = 0x626d7074 /* 'bmpt' */
}

// MARK: AcornDirection
@objc public enum AcornDirection : AEKeyword {
    case Horizontal = 0x686f727a /* 'horz' */
    case Vertical = 0x76657274 /* 'vert' */
}

// MARK: AcornGenericMethods
@objc public protocol AcornGenericMethods {
    @objc optional func closeSaving(saving: AcornSaveOptions, savingIn: NSURL!) // Close a document.
    @objc optional func saveIn(in_: NSURL!, `as`: AcornSaveableFileFormat) // Save a document.  You can use this to rename a document as well.
    @objc optional func printWithProperties(withProperties: [NSObject : AnyObject]!, printDialog: Bool) // Print a document.
    @objc optional func delete() // Delete an object.
    @objc optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    @objc optional func moveTo(to: SBObject!) // Move an object to a new location.
}

// MARK: AcornApplication
@objc public protocol AcornApplication: SBApplicationProtocol {
    @objc optional func documents() -> SBElementArray
    @objc optional func windows() -> SBElementArray
    @objc optional var name: String { get } // The name of the application.
    @objc optional var frontmost: Bool { get } // Is this the active application?
    @objc optional var version: String { get } // The version number of the application.
    @objc optional func open(x: [NSURL]!) // Open a document.
    @objc optional func print(x: AnyObject!, withProperties: [NSObject : AnyObject]!, printDialog: Bool) // Print a document.
    @objc optional func quitSaving(saving: AcornSaveOptions) // Quit the application.
    @objc optional func exists(x: AnyObject!) -> Bool // Verify that an object exists.
    @objc optional func taunt() -> String // Have Acorn taunt you.
    @objc optional func doJavaScript(x: String!) -> AnyObject // Applies a string of JavaScript (or JSTalk) code to a document.
    @objc optional func setPreferenceKey(key: String!, value: String!) // Set a preference, using it's defaults name and value.
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
    @objc optional func setIndex(index: Int) // The index of the window, ordered front to back.
    @objc optional func setMiniaturized(miniaturized: Bool) // Is the window minimized right now?
    @objc optional func setVisible(visible: Bool) // Is the window visible right now?
    @objc optional func setZoomed(zoomed: Bool) // Is the window zoomed right now?
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
    @objc optional func setColor(color: NSColor!) // The color of the text's first character.
    @objc optional func setFont(font: String!) // The name of the font of the text's first character.
    @objc optional func setSize(size: Int) // The size in points of the text's first character.
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
    @objc optional func setColor(color: NSColor!) // Its color.
    @objc optional func setFont(font: String!) // The name of its font.
    @objc optional func setSize(size: Int) // Its size, in points.
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
    @objc optional func setColor(color: NSColor!) // The color of the paragraph's first character.
    @objc optional func setFont(font: String!) // The name of the font of the paragraph's first character.
    @objc optional func setSize(size: Int) // The size in points of the paragraph's first character.
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
    @objc optional func setColor(color: NSColor!) // The color of the word's first character.
    @objc optional func setFont(font: String!) // The name of the font of the word's first character.
    @objc optional func setSize(size: Int) // The size in points of the word's first character.
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
    @objc optional func setColor(color: NSColor!) // Its color.
    @objc optional func setFont(font: String!) // The name of its font.
    @objc optional func setSize(size: Int) // Its size, in points.
}
extension SBObject: AcornAttributeRun {}

// MARK: AcornAttachment
@objc public protocol AcornAttachment: AcornRichText {
    @objc optional var fileName: String { get } // The path to the embedded file.
    @objc optional func setFileName(fileName: String!) // The path to the embedded file.
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
    @objc optional var file: NSURL { get } // Its location on disk, if it has one.
    @objc optional var height: Double { get } // The height of the image in pixels.
    @objc optional var width: Double { get } // The width of the image in pixels.
    @objc optional var currentLayer: AcornLayer { get } // The Current layer
    @objc optional func cropRect(rect: [NSNumber]!) // Crop an image
    @objc optional func undo() // Undo the last operation
    @objc optional func redo() // Redo the last undone operation.
    @objc optional func resizeImageWidth(width: Double, height: Double, resolution: Double) // Resize an image
    @objc optional func resizeCanvasWidth(width: Double, height: Double, anchorPosition: AcornAnchorPosition) // Resize the canvas
    @objc optional func trim() // Trim an image, cropping out any whitespace.
    @objc optional func webExportIn(in_: NSURL!, `as`: AcornSaveableFileFormat, quality: Int, width: Int, height: Int) // Export a document for the Web.
    @objc optional func copyMerged() // Copy the document or selection, with combined layers.
    @objc optional func copy() // Copy the layer or selection to the clipboard.
    @objc optional func paste() // Paste whatever is on the clipboard, making a new layer.
    @objc optional func clear() // Clear (delete) the current selection
    @objc optional func cut() // Cut (copy + delete) the current selection.  This is the same as the Edit ▸ Cut menu item.
    @objc optional func deselect() // Clear the current selection
    @objc optional func fillWithColor(withColor: [NSNumber]!) // Fill the current layer or selection with the forground color.
    @objc optional func flipCanvasDirection(direction: AcornDirection) // Flip the cavnas in a direction
    @objc optional func invertSelection() // Invert the current selection.
    @objc optional func mergeVisibleLayers() // Merge the visible layers into one.
    @objc optional func selectAll() // Select the whole canvas
    @objc optional func selectRect(rect: [NSNumber]!) // Select a frame
    @objc optional func selectOvalRect(rect: [NSNumber]!) // Select an oval frame
    @objc optional func doFilterName(name: String!) // Call a Core Image filter for the selected layer, or a filter plugin with the given name.
    @objc optional func loadFilterPresetName(name: String!) // Load a filter preset with the given name.
    @objc optional func addLayerMask() // Add a layer mask to the layer
    @objc optional func rotateCanvasAngle(angle: Double) // Rotates the canvas
    @objc optional func autoLevels() // Perform autolevels for the layer or document
    @objc optional func setHeight(height: Double) // The height of the image in pixels.
    @objc optional func setWidth(width: Double) // The width of the image in pixels.
    @objc optional func setCurrentLayer(currentLayer: AcornLayer!) // The Current layer
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
    @objc optional func setName(name: String!)
    @objc optional func setOpacity(opacity: Double)
    @objc optional func setVisible(visible: Bool)
    @objc optional func setBlendMode(blendMode: AcornBlendMode)
    @objc optional func setOrigin(origin: [NSNumber]!)
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

