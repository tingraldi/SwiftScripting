
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
