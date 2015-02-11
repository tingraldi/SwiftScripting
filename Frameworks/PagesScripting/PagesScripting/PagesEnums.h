
enum PagesSaveOptions {
	PagesSaveOptionsYes = 'yes ' /* Save the file. */,
	PagesSaveOptionsNo = 'no  ' /* Do not save the file. */,
	PagesSaveOptionsAsk = 'ask ' /* Ask the user whether or not to save the file. */
};
typedef enum PagesSaveOptions PagesSaveOptions;

enum PagesPrintingErrorHandling {
	PagesPrintingErrorHandlingStandard = 'lwst' /* Standard PostScript error handling */,
	PagesPrintingErrorHandlingDetailed = 'lwdt' /* print a detailed report of PostScript errors */
};
typedef enum PagesPrintingErrorHandling PagesPrintingErrorHandling;

enum PagesSaveableFileFormat {
	PagesSaveableFileFormatPagesFormat = 'Pgff' /* The Pages native file format */
};
typedef enum PagesSaveableFileFormat PagesSaveableFileFormat;

enum PagesExportFormat {
	PagesExportFormatEpub = 'Pepu' /* ePub */,
	PagesExportFormatUnformattedText = 'Ptxf' /* Plain text */,
	PagesExportFormatPDF = 'Ppdf' /* PDF */,
	PagesExportFormatMicrosoftWord = 'Pwrd' /* Microsoft Word */,
	PagesExportFormatPages09 = 'PPag' /* Pages 09 */
};
typedef enum PagesExportFormat PagesExportFormat;

enum PagesTAVT {
	PagesTAVTBottom = 'avbt' /* Right-align content. */,
	PagesTAVTCenter = 'actr' /* Center-align content. */,
	PagesTAVTTop = 'avtp' /* Top-align content. */
};
typedef enum PagesTAVT PagesTAVT;

enum PagesTAHT {
	PagesTAHTAutoAlign = 'aaut' /* Auto-align based on content type. */,
	PagesTAHTCenter = 'actr' /* Center-align content. */,
	PagesTAHTJustify = 'ajst' /* Fully justify (left and right) content. */,
	PagesTAHTLeft = 'alft' /* Left-align content. */,
	PagesTAHTRight = 'arit' /* Right-align content. */
};
typedef enum PagesTAHT PagesTAHT;

enum PagesNMSD {
	PagesNMSDAscending = 'ascn' /* Sort in increasing value order */,
	PagesNMSDDescending = 'dscn' /* Sort in decreasing value order */
};
typedef enum PagesNMSD PagesNMSD;

enum PagesNMCT {
	PagesNMCTAutomatic = 'faut' /* Automatic format */,
	PagesNMCTCheckbox = 'fcch' /* Checkbox control format (Numbers only) */,
	PagesNMCTCurrency = 'fcur' /* Currency number format */,
	PagesNMCTDateAndTime = 'fdtm' /* Date and time format */,
	PagesNMCTFraction = 'ffra' /* Fraction number format */,
	PagesNMCTNumber = 'nmbr' /* Decimal number format */,
	PagesNMCTPercent = 'fper' /* Percentage number format */,
	PagesNMCTPopUpMenu = 'fcpp' /* Pop-up menu control format (Numbers only) */,
	PagesNMCTScientific = 'fsci' /* Scientific notation format */,
	PagesNMCTSlider = 'fcsl' /* Slider control format (Numbers only) */,
	PagesNMCTStepper = 'fcst' /* Stepper control format (Numbers only) */,
	PagesNMCTText = 'ctxt' /* Text format */,
	PagesNMCTDuration = 'fdur' /* Duration format */,
	PagesNMCTRating = 'frat' /* Rating format. (Numbers only) */,
	PagesNMCTNumeralSystem = 'fcns' /* Numeral System */
};
typedef enum PagesNMCT PagesNMCT;

enum PagesItemFillOptions {
	PagesItemFillOptionsNoFill = 'fino' /*  */,
	PagesItemFillOptionsColorFill = 'fico' /*  */,
	PagesItemFillOptionsGradientFill = 'figr' /*  */,
	PagesItemFillOptionsAdvancedGradientFill = 'fiag' /*  */,
	PagesItemFillOptionsImageFill = 'fiim' /*  */,
	PagesItemFillOptionsAdvancedImageFill = 'fiai' /*  */
};
typedef enum PagesItemFillOptions PagesItemFillOptions;

enum PagesPlaybackRepetitionMethod {
	PagesPlaybackRepetitionMethodNone = 'mvrn' /*  */,
	PagesPlaybackRepetitionMethodLoop = 'mvlp' /*  */,
	PagesPlaybackRepetitionMethodLoopBackAndForth = 'mvbf' /*  */
};
typedef enum PagesPlaybackRepetitionMethod PagesPlaybackRepetitionMethod;
