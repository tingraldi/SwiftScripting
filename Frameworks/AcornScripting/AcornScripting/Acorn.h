/*
 * Acorn.h
 */

#import <AppKit/AppKit.h>
#import <ScriptingBridge/ScriptingBridge.h>


@class AcornApplication, AcornWindow, AcornRichText, AcornCharacter, AcornParagraph, AcornWord, AcornAttributeRun, AcornAttachment, AcornDocument, AcornGraphic, AcornBox, AcornCircle, AcornImage, AcornLine, AcornTextArea, AcornLayer, AcornBitmapLayer, AcornGroupLayer, AcornShapeLayer;

enum AcornSaveOptions {
	AcornSaveOptionsYes = 'yes ' /* Save the file. */,
	AcornSaveOptionsNo = 'no  ' /* Do not save the file. */,
	AcornSaveOptionsAsk = 'ask ' /* Ask the user whether or not to save the file. */
};
typedef enum AcornSaveOptions AcornSaveOptions;

enum AcornPrintingErrorHandling {
	AcornPrintingErrorHandlingStandard = 'lwst' /* Standard PostScript error handling */,
	AcornPrintingErrorHandlingDetailed = 'lwdt' /* print a detailed report of PostScript errors */
};
typedef enum AcornPrintingErrorHandling AcornPrintingErrorHandling;

// The types that a file may be saved as.
enum AcornSaveableFileFormat {
	AcornSaveableFileFormatAcorn = 'AcRN' /* The native Acorn file format */,
	AcornSaveableFileFormatPDF = 'PDF ' /* Portable Document Format */,
	AcornSaveableFileFormatPNG = 'PNG ' /* Portable Network Graphic */,
	AcornSaveableFileFormatJPEG = 'JPEG' /* JPEG */,
	AcornSaveableFileFormatTIFF = 'TIFF' /* Tagged Image File Format */,
	AcornSaveableFileFormatJPEG2000 = 'JPE2' /* JPEG 2000 */,
	AcornSaveableFileFormatGIF = 'GIFF' /* GIF */,
	AcornSaveableFileFormatWebP = 'WEBP' /* Google's WebP image format */
};
typedef enum AcornSaveableFileFormat AcornSaveableFileFormat;

// The edges of an image.  This is used for the crop command
enum AcornAnchorPosition {
	AcornAnchorPositionTopLeft = 'antl',
	AcornAnchorPositionTopCenter = 'antc',
	AcornAnchorPositionTopRight = 'antr',
	AcornAnchorPositionMiddleLeft = 'anml',
	AcornAnchorPositionMiddleRight = 'anmr',
	AcornAnchorPositionBottomLeft = 'anbl',
	AcornAnchorPositionBottomCenter = 'anbc',
	AcornAnchorPositionBottomRight = 'anbr',
	AcornAnchorPositionMiddleCenter = 'anmc'
};
typedef enum AcornAnchorPosition AcornAnchorPosition;

// The blend (compositing) mode of a layer.
enum AcornBlendMode {
	AcornBlendModeNormal = 'bmno',
	AcornBlendModeMultiply = 'bmmo',
	AcornBlendModeScreen = 'bmsc',
	AcornBlendModeOverlay = 'bmov',
	AcornBlendModeDarken = 'bmdr',
	AcornBlendModeLighten = 'bmli',
	AcornBlendModeColorDodge = 'bmcd',
	AcornBlendModeColorBurn = 'bmcb',
	AcornBlendModeSoftLight = 'bmsl',
	AcornBlendModeHardLight = 'bmhl',
	AcornBlendModeDifference = 'bmdi',
	AcornBlendModeExclusion = 'bmex',
	AcornBlendModeHue = 'bmhu',
	AcornBlendModeSaturation = 'bmsa',
	AcornBlendModeColorBlend = 'bmco',
	AcornBlendModeLuminosity = 'bmlu',
	AcornBlendModeClear = 'bmcl',
	AcornBlendModeCopy = 'bmcp',
	AcornBlendModeSourceIn = 'bmsi',
	AcornBlendModeSourceOut = 'bmso',
	AcornBlendModeSourceAtop = 'bmst',
	AcornBlendModeDestinationOver = 'bmdo',
	AcornBlendModeDestinationIn = 'bmdi',
	AcornBlendModeDestinationOut = 'bmdt',
	AcornBlendModeDestinationAtop = 'bmda',
	AcornBlendModeXor = 'bmxr',
	AcornBlendModePlusDarker = 'bmpd',
	AcornBlendModePlusLighter = 'bmpl',
	AcornBlendModePassThrough = 'bmpt'
};
typedef enum AcornBlendMode AcornBlendMode;

enum AcornDirection {
	AcornDirectionHorizontal = 'horz',
	AcornDirectionVertical = 'vert'
};
typedef enum AcornDirection AcornDirection;



/*
 * Standard Suite
 */

// The application's top-level scripting object.
@interface AcornApplication : SBApplication

- (SBElementArray *) documents;
- (SBElementArray *) windows;

@property (copy, readonly) NSString *name;  // The name of the application.
@property (readonly) BOOL frontmost;  // Is this the active application?
@property (copy, readonly) NSString *version;  // The version number of the application.

- (void) open:(NSArray *)x;  // Open a document.
- (void) print:(id)x withProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) quitSaving:(AcornSaveOptions)saving;  // Quit the application.
- (BOOL) exists:(id)x;  // Verify that an object exists.
- (NSString *) taunt;  // Have Acorn taunt you.
- (id) doJavaScript:(NSString *)x;  // Applies a string of JavaScript (or JSTalk) code to a document.
- (void) setPreferenceKey:(NSString *)key value:(NSString *)value;  // Set a preference, using it's defaults name and value.

@end

// A window.
@interface AcornWindow : SBObject

@property (copy, readonly) NSString *name;  // The title of the window.
- (NSInteger) id;  // The unique identifier of the window.
@property NSInteger index;  // The index of the window, ordered front to back.
@property (readonly) BOOL closeable;  // Does the window have a close button?
@property (readonly) BOOL miniaturizable;  // Does the window have a minimize button?
@property BOOL miniaturized;  // Is the window minimized right now?
@property (readonly) BOOL resizable;  // Can the window be resized?
@property BOOL visible;  // Is the window visible right now?
@property (readonly) BOOL zoomable;  // Does the window have a zoom button?
@property BOOL zoomed;  // Is the window zoomed right now?
@property (copy, readonly) AcornDocument *document;  // The document whose contents are displayed in the window.

- (void) closeSaving:(AcornSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(AcornSaveableFileFormat)as;  // Save a document.  You can use this to rename a document as well.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end



/*
 * Text Suite
 */

// Rich (styled) text.
@interface AcornRichText : SBObject

- (SBElementArray *) characters;
- (SBElementArray *) paragraphs;
- (SBElementArray *) words;
- (SBElementArray *) attributeRuns;
- (SBElementArray *) attachments;

@property (copy) NSColor *color;  // The color of the text's first character.
@property (copy) NSString *font;  // The name of the font of the text's first character.
@property NSInteger size;  // The size in points of the text's first character.

- (void) closeSaving:(AcornSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(AcornSaveableFileFormat)as;  // Save a document.  You can use this to rename a document as well.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end

// One of some text's characters.
@interface AcornCharacter : SBObject

- (SBElementArray *) characters;
- (SBElementArray *) paragraphs;
- (SBElementArray *) words;
- (SBElementArray *) attributeRuns;
- (SBElementArray *) attachments;

@property (copy) NSColor *color;  // Its color.
@property (copy) NSString *font;  // The name of its font.
@property NSInteger size;  // Its size, in points.

- (void) closeSaving:(AcornSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(AcornSaveableFileFormat)as;  // Save a document.  You can use this to rename a document as well.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end

// One of some text's paragraphs.
@interface AcornParagraph : SBObject

- (SBElementArray *) characters;
- (SBElementArray *) paragraphs;
- (SBElementArray *) words;
- (SBElementArray *) attributeRuns;
- (SBElementArray *) attachments;

@property (copy) NSColor *color;  // The color of the paragraph's first character.
@property (copy) NSString *font;  // The name of the font of the paragraph's first character.
@property NSInteger size;  // The size in points of the paragraph's first character.

- (void) closeSaving:(AcornSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(AcornSaveableFileFormat)as;  // Save a document.  You can use this to rename a document as well.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end

// One of some text's words.
@interface AcornWord : SBObject

- (SBElementArray *) characters;
- (SBElementArray *) paragraphs;
- (SBElementArray *) words;
- (SBElementArray *) attributeRuns;
- (SBElementArray *) attachments;

@property (copy) NSColor *color;  // The color of the word's first character.
@property (copy) NSString *font;  // The name of the font of the word's first character.
@property NSInteger size;  // The size in points of the word's first character.

- (void) closeSaving:(AcornSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(AcornSaveableFileFormat)as;  // Save a document.  You can use this to rename a document as well.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end

// A chunk of text that all has the same attributes.
@interface AcornAttributeRun : SBObject

- (SBElementArray *) characters;
- (SBElementArray *) paragraphs;
- (SBElementArray *) words;
- (SBElementArray *) attributeRuns;
- (SBElementArray *) attachments;

@property (copy) NSColor *color;  // Its color.
@property (copy) NSString *font;  // The name of its font.
@property NSInteger size;  // Its size, in points.

- (void) closeSaving:(AcornSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(AcornSaveableFileFormat)as;  // Save a document.  You can use this to rename a document as well.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end

// A file embedded in text. This is just for use when embedding a file using the make command.
@interface AcornAttachment : AcornRichText

@property (copy) NSString *fileName;  // The path to the embedded file.


@end



/*
 * Acorn Suite
 */

// An Acorn document, representing one or more layers and groups to make up a single image.
@interface AcornDocument : SBObject

- (SBElementArray *) layers;
- (SBElementArray *) bitmapLayers;
- (SBElementArray *) groupLayers;
- (SBElementArray *) shapeLayers;

@property (copy, readonly) NSString *name;  // Its name.
@property (readonly) BOOL modified;  // Has it been modified since the last save?
@property (copy, readonly) NSURL *file;  // Its location on disk, if it has one.
@property double height;  // The height of the image in pixels.
@property double width;  // The width of the image in pixels.
@property (copy) AcornLayer *currentLayer;  // The Current layer

- (void) closeSaving:(AcornSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(AcornSaveableFileFormat)as;  // Save a document.  You can use this to rename a document as well.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (void) cropRect:(NSArray *)rect;  // Crop an image
- (void) undo;  // Undo the last operation
- (void) redo;  // Redo the last undone operation.
- (void) resizeImageWidth:(double)width height:(double)height resolution:(double)resolution;  // Resize an image
- (void) resizeCanvasWidth:(double)width height:(double)height anchorPosition:(AcornAnchorPosition)anchorPosition;  // Resize the canvas
- (void) trim;  // Trim an image, cropping out any whitespace.
- (void) webExportIn:(NSURL *)in_ as:(AcornSaveableFileFormat)as quality:(NSInteger)quality width:(NSInteger)width height:(NSInteger)height;  // Export a document for the Web.
- (void) copyMerged NS_RETURNS_NOT_RETAINED;  // Copy the document or selection, with combined layers.
- (void) copy NS_RETURNS_NOT_RETAINED;  // Copy the layer or selection to the clipboard.
- (void) paste;  // Paste whatever is on the clipboard, making a new layer.
- (void) clear;  // Clear (delete) the current selection
- (void) cut;  // Cut (copy + delete) the current selection.  This is the same as the Edit ▸ Cut menu item.
- (void) deselect;  // Clear the current selection
- (void) fillWithColor:(NSArray *)withColor;  // Fill the current layer or selection with the forground color.
- (void) flipCanvasDirection:(AcornDirection)direction;  // Flip the cavnas in a direction
- (void) invertSelection;  // Invert the current selection.
- (void) mergeVisibleLayers;  // Merge the visible layers into one.
- (void) selectAll;  // Select the whole canvas
- (void) selectRect:(NSArray *)rect;  // Select a frame
- (void) selectOvalRect:(NSArray *)rect;  // Select an oval frame
- (void) doFilterName:(NSString *)name;  // Call a Core Image filter for the selected layer, or a filter plugin with the given name.
- (void) loadFilterPresetName:(NSString *)name;  // Load a filter preset with the given name.
- (void) addLayerMask;  // Add a layer mask to the layer
- (void) rotateCanvasAngle:(double)angle;  // Rotates the canvas
- (void) autoLevels;  // Perform autolevels for the layer or document

@end

// An Acorn layer.
@interface AcornLayer : SBObject

- (SBElementArray *) layers;
- (SBElementArray *) bitmapLayers;
- (SBElementArray *) groupLayers;
- (SBElementArray *) shapeLayers;

@property (copy) NSString *name;
@property double opacity;
@property BOOL visible;
@property (copy, readonly) NSArray *bounds;
@property AcornBlendMode blendMode;
@property (copy) NSArray *origin;

- (void) closeSaving:(AcornSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(AcornSaveableFileFormat)as;  // Save a document.  You can use this to rename a document as well.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end

// An Acorn bitmap layer.
@interface AcornBitmapLayer : AcornLayer


@end

// An Group of other layers
@interface AcornGroupLayer : AcornLayer


@end

// A Shape / Text layer
@interface AcornShapeLayer : AcornLayer



@end

