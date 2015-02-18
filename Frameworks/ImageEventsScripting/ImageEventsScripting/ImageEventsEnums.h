
enum ImageEventsSaveOptions {
	ImageEventsSaveOptionsYes = 'yes ' /* Save the file. */,
	ImageEventsSaveOptionsNo = 'no  ' /* Do not save the file. */,
	ImageEventsSaveOptionsAsk = 'ask ' /* Ask the user whether or not to save the file. */
};
typedef enum ImageEventsSaveOptions ImageEventsSaveOptions;

enum ImageEventsPrintingErrorHandling {
	ImageEventsPrintingErrorHandlingStandard = 'lwst' /* Standard PostScript error handling */,
	ImageEventsPrintingErrorHandlingDetailed = 'lwdt' /* print a detailed report of PostScript errors */
};
typedef enum ImageEventsPrintingErrorHandling ImageEventsPrintingErrorHandling;

enum ImageEventsEdfm {
	ImageEventsEdfmApplePhotoFormat = 'dfph' /* Apple Photo format */,
	ImageEventsEdfmAppleShareFormat = 'dfas' /* AppleShare format */,
	ImageEventsEdfmAudioFormat = 'dfau' /* audio format */,
	ImageEventsEdfmHighSierraFormat = 'dfhs' /* High Sierra format */,
	ImageEventsEdfmISO9660Format = 'df96' /* ISO 9660 format */,
	ImageEventsEdfmMacOSExtendedFormat = 'dfh+' /* Mac OS Extended format */,
	ImageEventsEdfmMacOSFormat = 'dfhf' /* Mac OS format */,
	ImageEventsEdfmMSDOSFormat = 'dfms' /* MSDOS format */,
	ImageEventsEdfmNFSFormat = 'dfnf' /* NFS format */,
	ImageEventsEdfmProDOSFormat = 'dfpr' /* ProDOS format */,
	ImageEventsEdfmQuickTakeFormat = 'dfqt' /* QuickTake format */,
	ImageEventsEdfmUDFFormat = 'dfud' /* UDF format */,
	ImageEventsEdfmUFSFormat = 'dfuf' /* UFS format */,
	ImageEventsEdfmUnknownFormat = 'df$$' /* unknown format */,
	ImageEventsEdfmWebDAVFormat = 'dfwd' /* WebDAV format */
};
typedef enum ImageEventsEdfm ImageEventsEdfm;

enum ImageEventsBitz {
	ImageEventsBitzBest = 'best' /* best */,
	ImageEventsBitzBlackWhite = 'b&w ' /* black & white */,
	ImageEventsBitzColor = 'colr' /* color */,
	ImageEventsBitzFourColors = '4clr' /* four colors */,
	ImageEventsBitzFourGrays = '4gry' /* four grays */,
	ImageEventsBitzGrayscale = 'gray' /* grayscale */,
	ImageEventsBitzMillionsOfColors = 'mill' /* millions of colors */,
	ImageEventsBitzMillionsOfColorsPlus = 'mil+' /* millions of colors plus */,
	ImageEventsBitzSixteenColors = '16cl' /* sixteen colors */,
	ImageEventsBitzSixteenGrays = '16gr' /* sixteen grays */,
	ImageEventsBitzThousandsOfColors = 'thou' /* thousands of colors */,
	ImageEventsBitzTwoHundredFiftySixColors = '256c' /* two hundred fifty six colors */,
	ImageEventsBitzTwoHundredFiftySixGrays = '256g' /* two hundred fifty six grays */
};
typedef enum ImageEventsBitz ImageEventsBitz;

enum ImageEventsPCla {
	ImageEventsPClaAbstract = 'abst' /* abstract profile */,
	ImageEventsPClaColorspace = 'spac' /* colorspace profile */,
	ImageEventsPClaInput = 'scnr' /* input device */,
	ImageEventsPClaLink = 'link' /* device-link profile */,
	ImageEventsPClaMonitor = 'mntr' /* display device */,
	ImageEventsPClaNamed = 'nmcl' /* named color space profile */,
	ImageEventsPClaOutput = 'prtr' /* output device */
};
typedef enum ImageEventsPCla ImageEventsPCla;

enum ImageEventsPPCS {
	ImageEventsPPCSLab = 'Lab ' /* Lab */,
	ImageEventsPPCSXYZ = 'XYZ ' /* XYZ */
};
typedef enum ImageEventsPPCS ImageEventsPPCS;

enum ImageEventsCmlv {
	ImageEventsCmlvHigh = 'high' /* High compression */,
	ImageEventsCmlvLow = 'low ' /* Low compression */,
	ImageEventsCmlvMedium = 'medi' /* Medium compression */
};
typedef enum ImageEventsCmlv ImageEventsCmlv;

enum ImageEventsTypz {
	ImageEventsTypzBMP = 'BMPf' /* BMP */,
	ImageEventsTypzGIF = 'GIF ' /* GIF */,
	ImageEventsTypzJPEG = 'JPEG' /* JPEG */,
	ImageEventsTypzJPEG2 = 'jpg2' /* JPEG2 */,
	ImageEventsTypzMacPaint = 'PNTG' /* MacPaint */,
	ImageEventsTypzPDF = 'PDF ' /* PDF */,
	ImageEventsTypzPhotoshop = '8BPS' /* Photoshop */,
	ImageEventsTypzPICT = 'PICT' /* PICT */,
	ImageEventsTypzPNG = 'PNGf' /* PNG */,
	ImageEventsTypzPSD = 'psd ' /* PSD */,
	ImageEventsTypzQuickTimeImage = 'qtif' /* QuickTime Image */,
	ImageEventsTypzSGI = '.SGI' /* SGI */,
	ImageEventsTypzText = 'TEXT' /* Text */,
	ImageEventsTypzTGA = 'tga ' /* TGA */,
	ImageEventsTypzTIFF = 'TIFF' /* TIFF */
};
typedef enum ImageEventsTypz ImageEventsTypz;

enum ImageEventsPQua {
	ImageEventsPQuaBest = 'Qua2' /* best */,
	ImageEventsPQuaDraft = 'Qua1' /* draft */,
	ImageEventsPQuaNormal = 'Qua0' /* normal */
};
typedef enum ImageEventsPQua ImageEventsPQua;

enum ImageEventsPSpc {
	ImageEventsPSpcCMYK = 'CMYK' /* CMYK */,
	ImageEventsPSpcEightChannel = 'MCH8' /* Eight channel */,
	ImageEventsPSpcEightColor = '8CLR' /* Eight color */,
	ImageEventsPSpcFiveChannel = 'MCH5' /* Five channel */,
	ImageEventsPSpcFiveColor = '5CLR' /* Five color */,
	ImageEventsPSpcGray = 'GRAY' /* Gray */,
	ImageEventsPSpcLab = 'Lab ' /* Lab */,
	ImageEventsPSpcNamed = 'NAME' /* Named */,
	ImageEventsPSpcRGB = 'RGB ' /* RGB */,
	ImageEventsPSpcSevenChannel = 'MCH7' /* Seven channel */,
	ImageEventsPSpcSevenColor = '7CLR' /* Seven color */,
	ImageEventsPSpcSixChannel = 'MCH6' /* Six channel */,
	ImageEventsPSpcSixColor = '6CLR' /* Six color */,
	ImageEventsPSpcXYZ = 'XYZ ' /* XYZ */
};
typedef enum ImageEventsPSpc ImageEventsPSpc;

enum ImageEventsPRdr {
	ImageEventsPRdrAbsoluteColorimetricIntent = 'Rdr3' /* absolute colorimetric */,
	ImageEventsPRdrPerceptualIntent = 'Rdr0' /* perceptual */,
	ImageEventsPRdrRelativeColorimetricIntent = 'Rdr1' /* relative colorimetric */,
	ImageEventsPRdrSaturationIntent = 'Rdr2' /* saturation */
};
typedef enum ImageEventsPRdr ImageEventsPRdr;

enum ImageEventsSavo {
	ImageEventsSavoNo = 'no  ' /* Do not save the image. */,
	ImageEventsSavoYes = 'yes ' /* Save the image. */
};
typedef enum ImageEventsSavo ImageEventsSavo;

enum ImageEventsQual {
	ImageEventsQualBest = 'best' /* best */,
	ImageEventsQualHigh = 'high' /* high */,
	ImageEventsQualLeast = 'leas' /* least */,
	ImageEventsQualLow = 'low ' /* low */,
	ImageEventsQualMedium = 'medi' /* medium */
};
typedef enum ImageEventsQual ImageEventsQual;

enum ImageEventsTypv {
	ImageEventsTypvBMP = 'BMPf' /* BMP */,
	ImageEventsTypvJPEG = 'JPEG' /* JPEG */,
	ImageEventsTypvJPEG2 = 'jpg2' /* JPEG2 */,
	ImageEventsTypvPICT = 'PICT' /* PICT */,
	ImageEventsTypvPNG = 'PNGf' /* PNG */,
	ImageEventsTypvPSD = 'psd ' /* PSD */,
	ImageEventsTypvQuickTimeImage = 'qtif' /* QuickTime Image */,
	ImageEventsTypvTIFF = 'TIFF' /* TIFF */
};
typedef enum ImageEventsTypv ImageEventsTypv;

enum ImageEventsSaveableFileFormat {
	ImageEventsSaveableFileFormatText = 'ctxt' /* Text File Format */
};
typedef enum ImageEventsSaveableFileFormat ImageEventsSaveableFileFormat;
