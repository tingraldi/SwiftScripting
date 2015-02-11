
enum XcodeSaveOptions {
	XcodeSaveOptionsYes = 'yes ' /* Save the file. */,
	XcodeSaveOptionsNo = 'no  ' /* Do not save the file. */,
	XcodeSaveOptionsAsk = 'ask ' /* Ask the user whether or not to save the file. */
};
typedef enum XcodeSaveOptions XcodeSaveOptions;

enum XcodePrintingErrorHandling {
	XcodePrintingErrorHandlingStandard = 'lwst' /* Standard PostScript error handling */,
	XcodePrintingErrorHandlingDetailed = 'lwdt' /* print a detailed report of PostScript errors */
};
typedef enum XcodePrintingErrorHandling XcodePrintingErrorHandling;

enum XcodePwpa {
	XcodePwpaExecutablesDirectory = 'pwpe',
	XcodePwpaFrameworks = 'pwpf',
	XcodePwpaJavaResources = 'pwpj',
	XcodePwpaPluginsDirectory = 'pwpl',
	XcodePwpaProductsDirectory = 'pwpp',
	XcodePwpaResources = 'pwre',
	XcodePwpaRootVolume = 'pwpn',
	XcodePwpaSharedFrameworks = 'pwsf',
	XcodePwpaSharedSupport = 'pwss',
	XcodePwpaWrapper = 'pwpr'
};
typedef enum XcodePwpa XcodePwpa;

enum XcodeBmte {
	XcodeBmteAnalyzerResult = 'bmta',
	XcodeBmteError = 'bmte',
	XcodeBmteNone = 'bmtn',
	XcodeBmteNotice = 'bmto',
	XcodeBmteWarning = 'bmtw'
};
typedef enum XcodeBmte XcodeBmte;

enum XcodeLied {
	XcodeLiedCR = 'crle',
	XcodeLiedCRLF = 'crlf',
	XcodeLiedLF = 'lfle',
	XcodeLiedPreserveExisting = 'pele'
};
typedef enum XcodeLied XcodeLied;

enum XcodeFenc {
	XcodeFencIso2022Japanese = 'isjp',
	XcodeFencIsoLatin1 = 'ila1',
	XcodeFencIsoLatin2 = 'ila2',
	XcodeFencJapaneseEUC = 'jeuc',
	XcodeFencMacosRoman = 'mosr',
	XcodeFencNextstep = 'next',
	XcodeFencNonlossyAscii = 'nlas',
	XcodeFencShiftJisString = 'sjis',
	XcodeFencSymbolString = 'syms',
	XcodeFencUnicode = 'unic',
	XcodeFencUtf8 = 'utf8',
	XcodeFencWindowsCyrillic = 'wco1',
	XcodeFencWindowsGreek = 'wcp3',
	XcodeFencWindowsLatin1 = 'wcp2',
	XcodeFencWindowsLatin2 = 'wcp0',
	XcodeFencWindowsTurkish = 'wcp4'
};
typedef enum XcodeFenc XcodeFenc;

enum XcodeReft {
	XcodeReftAbsolute = 'asrt',
	XcodeReftBuildProductRelative = 'bprt',
	XcodeReftCurrentSDKRelative = 'sdrt',
	XcodeReftGroupRelative = 'grrt',
	XcodeReftOther = 'orft',
	XcodeReftProjectRelative = 'prrt',
	XcodeReftXcodeFolderRelative = 'xrrt'
};
typedef enum XcodeReft XcodeReft;

enum XcodeAsms {
	XcodeAsmsHasConflict = 'sccs',
	XcodeAsmsLocallyAdded = 'slas',
	XcodeAsmsLocallyModified = 'slms',
	XcodeAsmsLocallyRemoved = 'slrs',
	XcodeAsmsNeedsMerge = 'snms',
	XcodeAsmsNeedsUpdate = 'sncs',
	XcodeAsmsUnknown = 'scus',
	XcodeAsmsUpToDate = 'suds'
};
typedef enum XcodeAsms XcodeAsms;

enum XcodeSaveableFileFormat {
	XcodeSaveableFileFormatText = 'ctxt' /* Text File Format */
};
typedef enum XcodeSaveableFileFormat XcodeSaveableFileFormat;

enum XcodeXdel {
	XcodeXdelCPlusPlus = 'xdep',
	XcodeXdelJava = 'xdej',
	XcodeXdelObjectiveC = 'xdeo'
};
typedef enum XcodeXdel XcodeXdel;

enum XcodeXdeh {
	XcodeXdehAlwaysHide = 'xdea',
	XcodeXdehAlwaysShow = 'xdes',
	XcodeXdehHidePerFilter = 'xdef'
};
typedef enum XcodeXdeh XcodeXdeh;
