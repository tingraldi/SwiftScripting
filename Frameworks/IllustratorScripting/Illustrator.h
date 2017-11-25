/*
 * Illustrator.h
 */

#import <AppKit/AppKit.h>
#import <ScriptingBridge/ScriptingBridge.h>


@class IllustratorApplication, IllustratorDocument, IllustratorArtwork, IllustratorArtboard, IllustratorBrush, IllustratorDimensionsInfo, IllustratorDocumentPreset, IllustratorGradient, IllustratorGradientStop, IllustratorGradientStopInfo, IllustratorGraphicStyle, IllustratorIllustratorPreferences, IllustratorLayer, IllustratorPageItem, IllustratorCompoundPathItem, IllustratorEmbeddedItem, IllustratorGraphItem, IllustratorGroupItem, IllustratorLegacyTextItem, IllustratorMeshItem, IllustratorNonNativeItem, IllustratorPathItem, IllustratorPathPoint, IllustratorPathPointInfo, IllustratorPlacedItem, IllustratorPluginItem, IllustratorRasterEffectOptions, IllustratorRasterItem, IllustratorRasterizeOptions, IllustratorSymbol, IllustratorSymbolItem, IllustratorTabStopInfo, IllustratorTag, IllustratorFont, IllustratorTextFrame, IllustratorView, IllustratorColorInfo, IllustratorCMYKColorInfo, IllustratorGradientColorInfo, IllustratorGrayColorInfo, IllustratorLabColorInfo, IllustratorNoColorInfo, IllustratorPattern, IllustratorPatternColorInfo, IllustratorRGBColorInfo, IllustratorSpot, IllustratorSpotColorInfo, IllustratorSwatch, IllustratorSwatchgroup, IllustratorCharacter, IllustratorCharacterStyle, IllustratorInsertionPoint, IllustratorLine, IllustratorParagraph, IllustratorParagraphStyle, IllustratorStory, IllustratorText, IllustratorTextPath, IllustratorWord, IllustratorMatrix, IllustratorEllipse, IllustratorRectangle, IllustratorRoundedRectangle, IllustratorPolygon, IllustratorStar, IllustratorAutoCADOptions, IllustratorOpenOptions, IllustratorPDFOptions, IllustratorPhotoshopOptions, IllustratorEPSSaveOptions, IllustratorFXGSaveOptions, IllustratorIllustratorSaveOptions, IllustratorPDFSaveOptions, IllustratorAutoCADExportOptions, IllustratorFlashExportOptions, IllustratorGIFExportOptions, IllustratorImageCaptureOptions, IllustratorItemToExport, IllustratorJPEGExportOptions, IllustratorPDFExportOptions, IllustratorPhotoshopExportOptions, IllustratorPNG24ExportOptions, IllustratorPNG8ExportOptions, IllustratorSVGExportOptions, IllustratorTIFFExportOptions, IllustratorDataset, IllustratorVariable, IllustratorColorManagementOptions, IllustratorColorSeparationOptions, IllustratorCoordinateOptions, IllustratorFlatteningOptions, IllustratorFontOptions, IllustratorInk, IllustratorInkProperties, IllustratorJobOptions, IllustratorPageMarksOptions, IllustratorPaper, IllustratorPaperOptions, IllustratorPaperProperties, IllustratorPostscriptOptions, IllustratorPPDFile, IllustratorPPDProperties, IllustratorPrintOptions, IllustratorPrinter, IllustratorPrinterProperties, IllustratorScreenProperties, IllustratorScreenSpotFunction, IllustratorSeparationScreen, IllustratorTracingobject, IllustratorTracingoptions, IllustratorAsset, IllustratorAddfromselection, IllustratorAdd, IllustratorObsolete_properties;

enum IllustratorESCM {
	IllustratorESCMDesktop = 'e002',
	IllustratorESCMFullScreen = 'e003',
	IllustratorESCMMultiwindow = 'e001'
};
typedef enum IllustratorESCM IllustratorESCM;

enum IllustratorECCS {
	IllustratorECCSCMYK = 'eCyM',
	IllustratorECCSRGB = 'eRbM'
};
typedef enum IllustratorECCS IllustratorECCS;

enum IllustratorEDPT {
	IllustratorEDPTBasicCMYKDocument = 'pCPR',
	IllustratorEDPTBasicRGBDocument = 'pRPR',
	IllustratorEDPTMobileDocumentPreset = 'pMPR',
	IllustratorEDPTPrintDocumentPreset = 'pPPR',
	IllustratorEDPTVideoDocumentPreset = 'pVPR',
	IllustratorEDPTWebDocumentPreset = 'pWPR'
};
typedef enum IllustratorEDPT IllustratorEDPT;

enum IllustratorEDCR {
	IllustratorEDCRHighResolution = 'pHRR',
	IllustratorEDCRMediumResolution = 'pMRR',
	IllustratorEDCRScreenResolution = 'pSRR'
};
typedef enum IllustratorEDCR IllustratorEDCR;

enum IllustratorEDGR {
	IllustratorEDGRBlueTransparencyGrids = 'pTGB',
	IllustratorEDGRDarkColorTransparencyGrids = 'pTGD',
	IllustratorEDGRGreenTransparencyGrids = 'pTGG',
	IllustratorEDGRHideTransparencyGrids = 'pTGN',
	IllustratorEDGRLightColorTransparencyGrids = 'pTGL',
	IllustratorEDGRMediumColorTransparencyGrids = 'pTGM',
	IllustratorEDGROrangeTransparencyGrids = 'pTGO',
	IllustratorEDGRPurpleTransparencyGrids = 'pTGP',
	IllustratorEDGRRedColorTransparencyGrids = 'pTGR'
};
typedef enum IllustratorEDGR IllustratorEDGR;

enum IllustratorEDPM {
	IllustratorEDPMDefaultPreview = 'pDPM',
	IllustratorEDPMOverprintPreview = 'pOPP',
	IllustratorEDPMPixelPreview = 'pPPM'
};
typedef enum IllustratorEDPM IllustratorEDPM;

enum IllustratorEDAL {
	IllustratorEDALColumn = 'pCol',
	IllustratorEDALGridByColumn = 'pGrC',
	IllustratorEDALGridByRow = 'pGrR',
	IllustratorEDALRlGridByCol = 'pRGC',
	IllustratorEDALRlGridByRow = 'pRGR',
	IllustratorEDALRlRow = 'pRRw',
	IllustratorEDALRow = 'pRow'
};
typedef enum IllustratorEDAL IllustratorEDAL;

enum IllustratorECLS {
	IllustratorECLSCMYK = 'eCyM',
	IllustratorECLSDeviceN = 'e0DN',
	IllustratorECLSGray = 'e0GM',
	IllustratorECLSIndexed = 'e0ID',
	IllustratorECLSLAB = 'e0Lb',
	IllustratorECLSRGB = 'eRbM',
	IllustratorECLSSeparation = 'e0SP'
};
typedef enum IllustratorECLS IllustratorECLS;

enum IllustratorESTc {
	IllustratorESTcButted = 'e020',
	IllustratorESTcProjecting = 'e022',
	IllustratorESTcRounded = 'e021'
};
typedef enum IllustratorESTc IllustratorESTc;

enum IllustratorESTj {
	IllustratorESTjBeveled = 'e031',
	IllustratorESTjMitered = 'e030',
	IllustratorESTjRounded = 'e021'
};
typedef enum IllustratorESTj IllustratorESTj;

enum IllustratorESGs {
	IllustratorESGsAnchorSelected = 'e050',
	IllustratorESGsLeftRightSelected = 'e053',
	IllustratorESGsLeftSelected = 'e051',
	IllustratorESGsNone = 'ge01',
	IllustratorESGsRightSelected = 'e052'
};
typedef enum IllustratorESGs IllustratorESGs;

enum IllustratorEPTy {
	IllustratorEPTyCorner = 'e057',
	IllustratorEPTySmooth = 'e056'
};
typedef enum IllustratorEPTy IllustratorEPTy;

enum IllustratorETXt {
	IllustratorETXtAreaText = 'e062',
	IllustratorETXtPathText = 'e061',
	IllustratorETXtPointText = 'e060'
};
typedef enum IllustratorETXt IllustratorETXt;

enum IllustratorETAa {
	IllustratorETAaCrisp = 'e064',
	IllustratorETAaNone = 'ge01',
	IllustratorETAaSharp = 'e063',
	IllustratorETAaStrong = 'e065'
};
typedef enum IllustratorETAa IllustratorETAa;

enum IllustratorEGDt {
	IllustratorEGDtLinear = 'e040',
	IllustratorEGDtRadial = 'e041'
};
typedef enum IllustratorEGDt IllustratorEGDt;

enum IllustratorETXo {
	IllustratorETXoHorizontal = 'e070',
	IllustratorETXoVertical = 'e071'
};
typedef enum IllustratorETXo IllustratorETXo;

enum IllustratorECRs {
	IllustratorECRsJapaneseStyle = 'e081',
	IllustratorECRsStandard = 'e080'
};
typedef enum IllustratorECRs IllustratorECRs;

enum IllustratorERLt {
	IllustratorERLtDataFromFile = 'e091',
	IllustratorERLtModifiedData = 'e092',
	IllustratorERLtNoData = 'e090'
};
typedef enum IllustratorERLt IllustratorERLt;

enum IllustratorETBa {
	IllustratorETBaCenter = 'e122',
	IllustratorETBaDecimal = 'e124',
	IllustratorETBaLeft = 'e121',
	IllustratorETBaRight = 'e123'
};
typedef enum IllustratorETBa IllustratorETBa;

enum IllustratorEPRa {
	IllustratorEPRaCenter = 'e122',
	IllustratorEPRaFullJustify = 'e128',
	IllustratorEPRaFullJustifyLastLineCenter = 'e127',
	IllustratorEPRaFullJustifyLastLineLeft = 'e125',
	IllustratorEPRaFullJustifyLastLineRight = 'e126',
	IllustratorEPRaLeft = 'e121',
	IllustratorEPRaRight = 'e123'
};
typedef enum IllustratorEPRa IllustratorEPRa;

enum IllustratorETRt {
	IllustratorETRtBottom = 'e177',
	IllustratorETRtBottomLeft = 'e174',
	IllustratorETRtBottomRight = 'e17A',
	IllustratorETRtCenter = 'e122',
	IllustratorETRtDocumentOrigin = 'e171',
	IllustratorETRtLeft = 'e121',
	IllustratorETRtRight = 'e123',
	IllustratorETRtTop = 'e175',
	IllustratorETRtTopLeft = 'e172',
	IllustratorETRtTopRight = 'e178'
};
typedef enum IllustratorETRt IllustratorETRt;

enum IllustratorEDCc {
	IllustratorEDCcIllustrator10 = 'e209',
	IllustratorEDCcIllustrator11 = 'e20a',
	IllustratorEDCcIllustrator12 = 'e20b',
	IllustratorEDCcIllustrator13 = 'e20c',
	IllustratorEDCcIllustrator14 = 'e20d',
	IllustratorEDCcIllustrator15 = 'e20e',
	IllustratorEDCcIllustrator16 = 'e20f',
	IllustratorEDCcIllustrator17 = 'e20g',
	IllustratorEDCcIllustrator3 = 'e2x2',
	IllustratorEDCcIllustrator8 = 'e207',
	IllustratorEDCcIllustrator9 = 'e208',
	IllustratorEDCcJapanese3 = 'e202'
};
typedef enum IllustratorEDCc IllustratorEDCc;

enum IllustratorEPdX {
	IllustratorEPdXPDFX1a2001 = 'ePd1',
	IllustratorEPdXPDFX1a2003 = 'ePd2',
	IllustratorEPdXPDFX32001 = 'ePd3',
	IllustratorEPdXPDFX32002 = 'ePdE',
	IllustratorEPdXPDFX32003 = 'ePd4',
	IllustratorEPdXPDFX42007 = 'ePd5',
	IllustratorEPdXPDFXNone = 'ePd0'
};
typedef enum IllustratorEPdX IllustratorEPdX;

enum IllustratorEPDc {
	IllustratorEPDcAcrobat4 = 'e231',
	IllustratorEPDcAcrobat5 = 'e232',
	IllustratorEPDcAcrobat6 = 'e233',
	IllustratorEPDcAcrobat7 = 'e234',
	IllustratorEPDcAcrobat8 = 'e235'
};
typedef enum IllustratorEPDc IllustratorEPDc;

enum IllustratorEPSc {
	IllustratorEPScPhotoshop6 = 'e241',
	IllustratorEPScPhotoshop8 = 'e242'
};
typedef enum IllustratorEPSc IllustratorEPSc;

enum IllustratorCCcT {
	IllustratorCCcTAutomaticJPEGHigh = 'e504',
	IllustratorCCcTAutomaticJPEGLow = 'e502',
	IllustratorCCcTAutomaticJPEGMaximum = 'e505',
	IllustratorCCcTAutomaticJPEGMedium = 'e503',
	IllustratorCCcTAutomaticJPEGMinimum = 'e501',
	IllustratorCCcTAutomaticJPEG2000High = 'e50e',
	IllustratorCCcTAutomaticJPEG2000Lossless = 'e511',
	IllustratorCCcTAutomaticJPEG2000Low = 'e50c',
	IllustratorCCcTAutomaticJPEG2000Maximum = 'e510',
	IllustratorCCcTAutomaticJPEG2000Medium = 'e50d',
	IllustratorCCcTAutomaticJPEG2000Minimum = 'e50b',
	IllustratorCCcTJPEGHigh = 'e258',
	IllustratorCCcTJPEGLow = 'e256',
	IllustratorCCcTJPEGMaximum = 'e259',
	IllustratorCCcTJPEGMedium = 'e257',
	IllustratorCCcTJPEGMinimum = 'e255',
	IllustratorCCcTJPEG2000High = 'e515',
	IllustratorCCcTJPEG2000Lossless = 'e517',
	IllustratorCCcTJPEG2000Low = 'e513',
	IllustratorCCcTJPEG2000Maximum = 'e516',
	IllustratorCCcTJPEG2000Medium = 'e514',
	IllustratorCCcTJPEG2000Minimum = 'e512',
	IllustratorCCcTNone = 'ge01',
	IllustratorCCcTZIP4bit = 'e25a',
	IllustratorCCcTZIP8bit = 'e25b'
};
typedef enum IllustratorCCcT IllustratorCCcT;

enum IllustratorEPcC {
	IllustratorEPcCColorConversionRepurpose = 'ePc3',
	IllustratorEPcCColorConversionToDest = 'ePc2',
	IllustratorEPcCNone = 'ge01'
};
typedef enum IllustratorEPcC IllustratorEPcC;

enum IllustratorEDcD {
	IllustratorEDcDColorDestDocCmyk = 'eDc2',
	IllustratorEDcDColorDestDocRgb = 'eDc4',
	IllustratorEDcDColorDestProfile = 'eDc6',
	IllustratorEDcDColorDestWorkingCmyk = 'eDc3',
	IllustratorEDcDColorDestWorkingRgb = 'eDc5',
	IllustratorEDcDNone = 'ge01'
};
typedef enum IllustratorEDcD IllustratorEDcD;

enum IllustratorEDpC {
	IllustratorEDpCIncludeAllProfiles = 'eDp2',
	IllustratorEDpCIncludeAllRgb = 'eDp4',
	IllustratorEDpCIncludeDestProfile = 'eDp5',
	IllustratorEDpCLeaveProfileUnchanged = 'eDp3',
	IllustratorEDpCNone = 'ge01'
};
typedef enum IllustratorEDpC IllustratorEDpC;

enum IllustratorCMcQ {
	IllustratorCMcQCCIT3 = 'e272',
	IllustratorCMcQCCIT4 = 'e271',
	IllustratorCMcQNone = 'ge01',
	IllustratorCMcQRunLength = 'e274',
	IllustratorCMcQZIP = 'e273'
};
typedef enum IllustratorCMcQ IllustratorCMcQ;

enum IllustratorCPtW {
	IllustratorCPtWTrimmarkweight0125 = 'e570',
	IllustratorCPtWTrimmarkweight025 = 'e571',
	IllustratorCPtWTrimmarkweight05 = 'e572'
};
typedef enum IllustratorCPtW IllustratorCPtW;

enum IllustratorCPoP {
	IllustratorCPoPDiscard = 'e541',
	IllustratorCPoPPreserve = 'e540'
};
typedef enum IllustratorCPoP IllustratorCPoP;

enum IllustratorCPpA {
	IllustratorCPpAPdf128PrintHighRes = 'e552',
	IllustratorCPpAPdf128PrintLowRes = 'e551',
	IllustratorCPpAPdf128PrintNone = 'e550',
	IllustratorCPpAPdf40PrintHighRes = 'e554',
	IllustratorCPpAPdf40PrintNone = 'e553'
};
typedef enum IllustratorCPpA IllustratorCPpA;

enum IllustratorCPcA {
	IllustratorCPcAPdf128AnyChanges = 'e564',
	IllustratorCPcAPdf128CommentingAllowed = 'e563',
	IllustratorCPcAPdf128EditPageAllowed = 'e561',
	IllustratorCPcAPdf128FillFormAllowed = 'e562',
	IllustratorCPcAPdf128NoChanges = 'e560',
	IllustratorCPcAPdf40AnyChanges = 'e568',
	IllustratorCPcAPdf40CommentingAllowed = 'e566',
	IllustratorCPcAPdf40NoChanges = 'e565',
	IllustratorCPcAPdf40PageLayoutAllowed = 'e567'
};
typedef enum IllustratorCPcA IllustratorCPcA;

enum IllustratorCRsT {
	IllustratorCRsTAverageDownsampling = 'e291',
	IllustratorCRsTBicubicDownsample = 'e293',
	IllustratorCRsTNodownsample = 'e290',
	IllustratorCRsTSubsampling = 'e292'
};
typedef enum IllustratorCRsT IllustratorCRsT;

enum IllustratorEEPV {
	IllustratorEEPVBWMacintosh = 'e211',
	IllustratorEEPVBWTIFF = 'e213',
	IllustratorEEPVColorMacintosh = 'e212',
	IllustratorEEPVColorTIFF = 'e214',
	IllustratorEEPVNone = 'ge01',
	IllustratorEEPVTransparentColorTIFF = 'e215'
};
typedef enum IllustratorEEPV IllustratorEEPV;

enum IllustratorEPSt {
	IllustratorEPStLevel2 = 'e221',
	IllustratorEPStLevel3 = 'e222'
};
typedef enum IllustratorEPSt IllustratorEPSt;

enum IllustratorEPPS {
	IllustratorEPPSLevel1 = 'e220',
	IllustratorEPPSLevel2 = 'e221',
	IllustratorEPPSLevel3 = 'e222'
};
typedef enum IllustratorEPPS IllustratorEPPS;

enum IllustratorSavo {
	IllustratorSavoAsk = 'ask ',
	IllustratorSavoNo = 'no  ',
	IllustratorSavoYes = 'yes '
};
typedef enum IllustratorSavo IllustratorSavo;

enum IllustratorERUt {
	IllustratorERUtCentimeters = 'e183',
	IllustratorERUtInches = 'e182',
	IllustratorERUtMillimeters = 'e186',
	IllustratorERUtPicas = 'e185',
	IllustratorERUtPixels = 'e188',
	IllustratorERUtPoints = 'e184',
	IllustratorERUtQs = 'e187',
	IllustratorERUtUnknown = 'e120'
};
typedef enum IllustratorERUt IllustratorERUt;

enum IllustratorCBlM {
	IllustratorCBlMColorBlend = 'e314',
	IllustratorCBlMColorBurn = 'e307',
	IllustratorCBlMColorDodge = 'e306',
	IllustratorCBlMDarken = 'e308',
	IllustratorCBlMDifference = 'e310',
	IllustratorCBlMExclusion = 'e311',
	IllustratorCBlMHardLight = 'e305',
	IllustratorCBlMHue = 'e312',
	IllustratorCBlMLighten = 'e309',
	IllustratorCBlMLuminosity = 'e315',
	IllustratorCBlMMultiply = 'e301',
	IllustratorCBlMNormal = 'e110',
	IllustratorCBlMOverlay = 'e303',
	IllustratorCBlMSaturationBlend = 'e313',
	IllustratorCBlMScreen = 'e302',
	IllustratorCBlMSoftLight = 'e304'
};
typedef enum IllustratorCBlM IllustratorCBlM;

enum IllustratorCKOS {
	IllustratorCKOSDisabled = 'e321',
	IllustratorCKOSEnabled = 'e322',
	IllustratorCKOSInherited = 'e323',
	IllustratorCKOSUnknown = 'e120'
};
typedef enum IllustratorCKOS IllustratorCKOS;

enum IllustratorEZOR {
	IllustratorEZORMoveBackward = 'e372',
	IllustratorEZORMoveForward = 'e371',
	IllustratorEZORMoveToBack = 'e373',
	IllustratorEZORMoveToFront = 'e370'
};
typedef enum IllustratorEZOR IllustratorEZOR;

enum IllustratorEDTD {
	IllustratorEDTDSVG10 = 'e3B0',
	IllustratorEDTDSVG11 = 'e3B1',
	IllustratorEDTDSVGBasic11 = 'e3B4',
	IllustratorEDTDSVGTiny11 = 'e3B2',
	IllustratorEDTDSVGTiny11Plus = 'e3B3',
	IllustratorEDTDSVGTiny12 = 'e3B5'
};
typedef enum IllustratorEDTD IllustratorEDTD;

enum IllustratorESFT {
	IllustratorESFTOutlineFont = 'e3A2',
	IllustratorESFTSVGFont = 'e3A1'
};
typedef enum IllustratorESFT IllustratorESFT;

enum IllustratorESFS {
	IllustratorESFSAllGlyphs = 'e385',
	IllustratorESFSCommonEnglish = 'e381',
	IllustratorESFSCommonRoman = 'e383',
	IllustratorESFSGlyphsUsed = 'e380',
	IllustratorESFSGlyphsUsedPlusEnglish = 'e382',
	IllustratorESFSGlyphsUsedPlusRoman = 'e384',
	IllustratorESFSNone = 'ge01'
};
typedef enum IllustratorESFS IllustratorESFS;

enum IllustratorESDE {
	IllustratorESDEASCII = 'e400',
	IllustratorESDEUTF16 = 'e402',
	IllustratorESDEUTF8 = 'e401'
};
typedef enum IllustratorESDE IllustratorESDE;

enum IllustratorESCS {
	IllustratorESCSEntities = 'e410',
	IllustratorESCSPresentationAttributes = 'e413',
	IllustratorESCSStyleAttributes = 'e411',
	IllustratorESCSStyleElements = 'e412'
};
typedef enum IllustratorESCS IllustratorESCS;

enum IllustratorESIT {
	IllustratorESITMinimalSvg = 'e3C0',
	IllustratorESITRegularSvg = 'e3C1',
	IllustratorESITUniqueSvg = 'e3C2'
};
typedef enum IllustratorESIT IllustratorESIT;

enum IllustratorERIL {
	IllustratorERILEmbed = 'e3D0',
	IllustratorERILLink = 'e3D1',
	IllustratorERILPreserve = 'e3D2'
};
typedef enum IllustratorERIL IllustratorERIL;

enum IllustratorEOFl {
	IllustratorEOFlPreserveAppearance = 'e421',
	IllustratorEOFlPreservePaths = 'e420'
};
typedef enum IllustratorEOFl IllustratorEOFl;

enum IllustratorECMd {
	IllustratorECMdProcessColor = 'e426',
	IllustratorECMdRegistrationColor = 'e425',
	IllustratorECMdSpotColor = 'e427'
};
typedef enum IllustratorECMd IllustratorECMd;

enum IllustratorESCk {
	IllustratorESCkSpotCmykColor = 'kCMY',
	IllustratorESCkSpotLabColor = 'kLAB',
	IllustratorESCkSpotRgbColor = 'kRGB'
};
typedef enum IllustratorESCk IllustratorESCk;

enum IllustratorEFXS {
	IllustratorEFXSArtboardsToFiles = 'e434',
	IllustratorEFXSFlashFile = 'e430',
	IllustratorEFXSLayersToFiles = 'e432',
	IllustratorEFXSLayersToFrames = 'e431',
	IllustratorEFXSLayersToSymbols = 'e433'
};
typedef enum IllustratorEFXS IllustratorEFXS;

enum IllustratorEFOS {
	IllustratorEFOSOutputArtBounds = 'e435',
	IllustratorEFOSOutputArtboardBounds = 'e436',
	IllustratorEFOSOutputCroprectBounds = 'e437'
};
typedef enum IllustratorEFOS IllustratorEFOS;

enum IllustratorEFXV {
	IllustratorEFXVSWFVersion1 = 'eFV1',
	IllustratorEFXVSWFVersion2 = 'eFV2',
	IllustratorEFXVSWFVersion3 = 'eFV3',
	IllustratorEFXVSWFVersion4 = 'eFV4',
	IllustratorEFXVSWFVersion5 = 'eFV5',
	IllustratorEFXVSWFVersion6 = 'eFV6',
	IllustratorEFXVSWFVersion7 = 'eFV7',
	IllustratorEFXVSWFVersion8 = 'eFV8',
	IllustratorEFXVSWFVersion9 = 'eFV9'
};
typedef enum IllustratorEFXV IllustratorEFXV;

enum IllustratorEFCS {
	IllustratorEFCSLossless = 'e43a',
	IllustratorEFCSLossy = 'e43b'
};
typedef enum IllustratorEFCS IllustratorEFCS;

enum IllustratorEFOT {
	IllustratorEFOTBottomUp = 'e4A0',
	IllustratorEFOTTopDown = 'e4A1'
};
typedef enum IllustratorEFOT IllustratorEFOT;

enum IllustratorEFBA {
	IllustratorEFBAInBuild = 'e4B1',
	IllustratorEFBAInSequence = 'e4B0',
	IllustratorEFBANone = 'ge01'
};
typedef enum IllustratorEFBA IllustratorEFBA;

enum IllustratorEFJM {
	IllustratorEFJMOptimized = 'e43e',
	IllustratorEFJMStandard = 'e080'
};
typedef enum IllustratorEFJM IllustratorEFJM;

enum IllustratorEFPS {
	IllustratorEFPSFlashPlaybackLocalAccess = 'eFPL',
	IllustratorEFPSFlashPlaybackNetworkAccess = 'eFPN'
};
typedef enum IllustratorEFPS IllustratorEFPS;

enum IllustratorEVKd {
	IllustratorEVKdGraph = 'e444',
	IllustratorEVKdImage = 'e443',
	IllustratorEVKdTextual = 'e442',
	IllustratorEVKdUnknown = 'e120',
	IllustratorEVKdVisibility = 'e441'
};
typedef enum IllustratorEVKd IllustratorEVKd;

enum IllustratorEAFF {
	IllustratorEAFFDwg = 'eAF1',
	IllustratorEAFFDxf = 'eAF0'
};
typedef enum IllustratorEAFF IllustratorEAFF;

enum IllustratorEAVS {
	IllustratorEAVSAutoCADRelease13 = 'eAV0',
	IllustratorEAVSAutoCADRelease14 = 'eAV1',
	IllustratorEAVSAutoCADRelease15 = 'eAV2',
	IllustratorEAVSAutoCADRelease18 = 'eAV3',
	IllustratorEAVSAutoCADRelease21 = 'eAV4',
	IllustratorEAVSAutoCADRelease24 = 'eAV5'
};
typedef enum IllustratorEAVS IllustratorEAVS;

enum IllustratorEASU {
	IllustratorEASUAutocadCentimeters = 'eAU4',
	IllustratorEASUAutocadInches = 'eAU2',
	IllustratorEASUAutocadMillimeters = 'eAU3',
	IllustratorEASUAutocadPicas = 'eAU1',
	IllustratorEASUAutocadPixels = 'eAU5',
	IllustratorEASUAutocadPoints = 'eAU0'
};
typedef enum IllustratorEASU IllustratorEASU;

enum IllustratorEACL {
	IllustratorEACLMax16Colors = 'eAC1',
	IllustratorEACLMax256Colors = 'eAC2',
	IllustratorEACLMax8Colors = 'eAC0',
	IllustratorEACLTrueColors = 'eAC3'
};
typedef enum IllustratorEACL IllustratorEACL;

enum IllustratorEARF {
	IllustratorEARFJPEGRaster = 'eAR1',
	IllustratorEARFPNGRaster = 'eAR0'
};
typedef enum IllustratorEARF IllustratorEARF;

enum IllustratorEExO {
	IllustratorEExOMaintainAppearance = 'eEx0',
	IllustratorEExOMaximizeEditability = 'eEx1'
};
typedef enum IllustratorEExO IllustratorEExO;

enum IllustratorEGSO {
	IllustratorEGSOFitArtboard = 'eAS1',
	IllustratorEGSOOriginalSize = 'eAS0',
	IllustratorEGSOScaleByValue = 'eAS2'
};
typedef enum IllustratorEGSO IllustratorEGSO;

enum IllustratorETbo {
	IllustratorETboIBMPC = 'kTBP',
	IllustratorETboMacintosh = 'kTBM'
};
typedef enum IllustratorETbo IllustratorETbo;

enum IllustratorEMUI {
	IllustratorEMUIInteractWithAll = 'e45d',
	IllustratorEMUIInteractWithLocal = 'e45c',
	IllustratorEMUIInteractWithSelf = 'e45b',
	IllustratorEMUINeverInteract = 'e45a'
};
typedef enum IllustratorEMUI IllustratorEMUI;

enum IllustratorEPVu {
	IllustratorEPVuNegative = 'eao2',
	IllustratorEPVuPositive = 'ea01'
};
typedef enum IllustratorEPVu IllustratorEPVu;

enum IllustratorE940 {
	IllustratorE940BeforeRunning = 'a942',
	IllustratorE940Never = 'Nevr',
	IllustratorE940OnRuntimeError = 'e941'
};
typedef enum IllustratorE940 IllustratorE940;

enum IllustratorECHd {
	IllustratorECHdKumiMoji = 'e112',
	IllustratorECHdNormal = 'e110',
	IllustratorECHdRotated = 'e111'
};
typedef enum IllustratorECHd IllustratorECHd;

enum IllustratorEPBX {
	IllustratorEPBXPDFArtBox = 'ePO1',
	IllustratorEPBXPDFBleedBox = 'eP04',
	IllustratorEPBXPDFBoundingBox = 'eP06',
	IllustratorEPBXPDFCropBox = 'eP02',
	IllustratorEPBXPDFMediaBox = 'eP05',
	IllustratorEPBXPDFTrimBox = 'eP03'
};
typedef enum IllustratorEPBX IllustratorEPBX;

enum IllustratorERAS {
	IllustratorERASBitmapRasterization = 'kRSb',
	IllustratorERASDefaultRasterization = 'kRSd',
	IllustratorERASGrayscaleRasterization = 'kRSg'
};
typedef enum IllustratorERAS IllustratorERAS;

enum IllustratorEALS {
	IllustratorEALSArtOptimized = 'aOPT',
	IllustratorEALSNone = 'ge01',
	IllustratorEALSTypeOptimized = 'tOPT'
};
typedef enum IllustratorEALS IllustratorEALS;

enum IllustratorEFxV {
	IllustratorEFxVVersion10 = 'e581',
	IllustratorEFxVVersion20 = 'e582'
};
typedef enum IllustratorEFxV IllustratorEFxV;

enum IllustratorEFFp {
	IllustratorEFFpExpandFilters = 'e591',
	IllustratorEFFpKeepFiltersEditable = 'e593',
	IllustratorEFFpRasterizeFilters = 'e592'
};
typedef enum IllustratorEFFp IllustratorEFFp;

enum IllustratorEFTp {
	IllustratorEFTpAutoConvertText = 'e5a4',
	IllustratorEFTpKeepTextEditable = 'e5a3',
	IllustratorEFTpOutlineText = 'e5a1',
	IllustratorEFTpRasterizeText = 'e5a2'
};
typedef enum IllustratorEFTp IllustratorEFTp;

enum IllustratorEFGp {
	IllustratorEFGpAutoConvertGradients = 'e5b4',
	IllustratorEFGpKeepGradientsEditable = 'e5b3'
};
typedef enum IllustratorEFGp IllustratorEFGp;

enum IllustratorEFBp {
	IllustratorEFBpAutoConvertBlends = 'e5c1',
	IllustratorEFBpRasterizeBlends = 'e5c2'
};
typedef enum IllustratorEFBp IllustratorEFBp;

enum IllustratorECoS {
	IllustratorECoSArtboardCoordinateSystem = 'eCo2',
	IllustratorECoSDocumentCoordinateSystem = 'eCo1'
};
typedef enum IllustratorECoS IllustratorECoS;

enum IllustratorESRp {
	IllustratorESRpSymbolBottomleftPoint = 'eSR7',
	IllustratorESRpSymbolBottommiddlePoint = 'eSR8',
	IllustratorESRpSymbolBottomrightPoint = 'eSR9',
	IllustratorESRpSymbolCenterPoint = 'eSR5',
	IllustratorESRpSymbolMiddleleftPoint = 'eSR4',
	IllustratorESRpSymbolMiddlerightPoint = 'eSR6',
	IllustratorESRpSymbolTopleftPoint = 'eSR1',
	IllustratorESRpSymbolTopmiddlePoint = 'eSR2',
	IllustratorESRpSymbolToprightPoint = 'eSR3'
};
typedef enum IllustratorESRp IllustratorESRp;

enum IllustratorEPPt {
	IllustratorEPPtFloorplane = 'ePP4',
	IllustratorEPPtLeftplane = 'ePP2',
	IllustratorEPPtNoplane = 'ePP1',
	IllustratorEPPtRightplane = 'ePP3'
};
typedef enum IllustratorEPPt IllustratorEPPt;

enum IllustratorEDST {
	IllustratorEDSTCascade = 'kACd',
	IllustratorEDSTConsolidateAll = 'kACA',
	IllustratorEDSTFloatAll = 'kAFA',
	IllustratorEDSTHorizontalTile = 'kAHT',
	IllustratorEDSTVerticalTile = 'kAVT'
};
typedef enum IllustratorEDST IllustratorEDST;

enum IllustratorEJCT {
	IllustratorEJCTBaselineOptimized = 'e267',
	IllustratorEJCTBaselineStandard = 'e266',
	IllustratorEJCTProgressive = 'e268'
};
typedef enum IllustratorEJCT IllustratorEJCT;

enum IllustratorECCP {
	IllustratorECCPDefaultPurpose = 'kDPU',
	IllustratorECCPDummyPurposeOption = 'kDUM',
	IllustratorECCPExportPurpose = 'kEPU',
	IllustratorECCPPreviewPurpose = 'kPPU'
};
typedef enum IllustratorECCP IllustratorECCP;

enum IllustratorEATK {
	IllustratorEATKAuto = 'eAE0',
	IllustratorEATKMetricsromanonly = 'eAEs',
	IllustratorEATKNone = 'ge01',
	IllustratorEATKOptical = 'eAE1'
};
typedef enum IllustratorEATK IllustratorEATK;

enum IllustratorEALD {
	IllustratorEALDBottomToBottom = 'eBtB',
	IllustratorEALDTopToTop = 'eTtT'
};
typedef enum IllustratorEALD IllustratorEALD;

enum IllustratorECCT {
	IllustratorECCTLowerCase = 'eAE4',
	IllustratorECCTSentenceCase = 'eAE6',
	IllustratorECCTTitleCase = 'eAE5',
	IllustratorECCTUpperCase = 'eAE3'
};
typedef enum IllustratorECCT IllustratorECCT;

enum IllustratorEFCO {
	IllustratorEFCOAllCaps = 'eAE8',
	IllustratorEFCOAllSmallCaps = 'eAE9',
	IllustratorEFCONormal = 'e110',
	IllustratorEFCOSmallCaps = 'eAE7'
};
typedef enum IllustratorEFCO IllustratorEFCO;

enum IllustratorEFBO {
	IllustratorEFBONormal = 'e110',
	IllustratorEFBOSubscript = 'pOT8',
	IllustratorEFBOSuperscript = 'pOT9'
};
typedef enum IllustratorEFBO IllustratorEFBO;

enum IllustratorCOTP {
	IllustratorCOTPDefault = 'pFS0',
	IllustratorCOTPDenominator = 'pOT7',
	IllustratorCOTPNumerator = 'pOT6',
	IllustratorCOTPSubscript = 'pOT8',
	IllustratorCOTPSuperscript = 'pOT9'
};
typedef enum IllustratorCOTP IllustratorCOTP;

enum IllustratorCFST {
	IllustratorCFSTDefault = 'pFS0',
	IllustratorCFSTProportional = 'pFS3',
	IllustratorCFSTProportionalOldstyle = 'pFS2',
	IllustratorCFSTTabular = 'pFS1',
	IllustratorCFSTTabularOldstyle = 'pFS4'
};
typedef enum IllustratorCFST IllustratorCFST;

enum IllustratorEBSD {
	IllustratorEBSDStandard = 'e080',
	IllustratorEBSDTateChuYoko = 'eAEd',
	IllustratorEBSDVerticalRotated = 'eAEc'
};
typedef enum IllustratorEBSD IllustratorEBSD;

enum IllustratorELNG {
	IllustratorELNGArabic = 'eL39',
	IllustratorELNGBengaliIndia = 'eL51',
	IllustratorELNGBokmalNorwegian = 'eL09',
	IllustratorELNGBrazillianPortuguese = 'eL12',
	IllustratorELNGBulgarian = 'eL21',
	IllustratorELNGCanadianFrench = 'eL04',
	IllustratorELNGCatalan = 'eL18',
	IllustratorELNGChinese = 'eL30',
	IllustratorELNGCzech = 'eL23',
	IllustratorELNGDanish = 'eL17',
	IllustratorELNGDutch = 'eL16',
	IllustratorELNGDutch2005Reform = 'eL43',
	IllustratorELNGEnglish = 'eL01',
	IllustratorELNGFarsi = 'eL41',
	IllustratorELNGFinnish = 'eL02',
	IllustratorELNGGerman2006Reform = 'eL42',
	IllustratorELNGGreek = 'eL26',
	IllustratorELNGGujarati = 'eL53',
	IllustratorELNGHindi = 'eL49',
	IllustratorELNGHungarian = 'eL29',
	IllustratorELNGIcelandic = 'eL28',
	IllustratorELNGItalian = 'eL08',
	IllustratorELNGJapanese = 'eL31',
	IllustratorELNGKannada = 'eL57',
	IllustratorELNGMalayalam = 'eL58',
	IllustratorELNGMarathi = 'eL50',
	IllustratorELNGNynorskNorwegian = 'eL10',
	IllustratorELNGOldGerman = 'eL06',
	IllustratorELNGOriya = 'eL54',
	IllustratorELNGPolish = 'eL24',
	IllustratorELNGPunjabi = 'eL52',
	IllustratorELNGRomanian = 'eL25',
	IllustratorELNGRussian = 'eL19',
	IllustratorELNGSerbian = 'eL22',
	IllustratorELNGSpanish = 'eL13',
	IllustratorELNGStandardFrench = 'eL03',
	IllustratorELNGStandardGerman = 'eL05',
	IllustratorELNGStandardPortuguese = 'eL11',
	IllustratorELNGSwedish = 'eL14',
	IllustratorELNGSwissGerman = 'eL07',
	IllustratorELNGSwissGerman2006Reform = 'eL44',
	IllustratorELNGTamil = 'eL55',
	IllustratorELNGTelugu = 'eL56',
	IllustratorELNGTurkish = 'eL27',
	IllustratorELNGUKEnglish = 'eL15',
	IllustratorELNGUkranian = 'eL20'
};
typedef enum IllustratorELNG IllustratorELNG;

enum IllustratorEAGF {
	IllustratorEAGFDefault = 'pFS0',
	IllustratorEAGFExpert = 'eAEf',
	IllustratorEAGFFullWidth = 'eAEo',
	IllustratorEAGFHalfWidth = 'eAEi',
	IllustratorEAGFJis04 = 'eAEr',
	IllustratorEAGFJis78 = 'eAEg',
	IllustratorEAGFJis83 = 'eAEh',
	IllustratorEAGFJis90 = 'eAEq',
	IllustratorEAGFProportionalWidth = 'eAEp',
	IllustratorEAGFQuarterWidth = 'eAEk',
	IllustratorEAGFThirdWidth = 'eAEj',
	IllustratorEAGFTraditional = 'eAEe'
};
typedef enum IllustratorEAGF IllustratorEAGF;

enum IllustratorESRA {
	IllustratorESRABottom = 'e177',
	IllustratorESRACenter = 'e122',
	IllustratorESRAIcfBottom = 'eAEl',
	IllustratorESRAIcfTop = 'eAEn',
	IllustratorESRARomanBaseline = 'eAEm',
	IllustratorESRATop = 'e175'
};
typedef enum IllustratorESRA IllustratorESRA;

enum IllustratorEWCJ {
	IllustratorEWCJAutoJustify = 'e129',
	IllustratorEWCJCenter = 'e122',
	IllustratorEWCJFullJustify = 'e128',
	IllustratorEWCJFullJustifyLastLineCenter = 'e127',
	IllustratorEWCJFullJustifyLastLineLeft = 'e125',
	IllustratorEWCJFullJustifyLastLineRight = 'e126',
	IllustratorEWCJLeft = 'e121',
	IllustratorEWCJRight = 'e123'
};
typedef enum IllustratorEWCJ IllustratorEWCJ;

enum IllustratorEKas {
	IllustratorEKasKashidaDefault = 'kKdD',
	IllustratorEKasKashidaOff = 'kKOf',
	IllustratorEKasKashidaOn = 'kKOn'
};
typedef enum IllustratorEKas IllustratorEKas;

enum IllustratorEDOT {
	IllustratorEDOTDiroverrideDefault = 'kDoD',
	IllustratorEDOTDiroverrideLtr = 'kDLR',
	IllustratorEDOTDiroverrideRtl = 'kDRL'
};
typedef enum IllustratorEDOT IllustratorEDOT;

enum IllustratorEDgS {
	IllustratorEDgSArabicDigits = 'kADt',
	IllustratorEDgSDefaultDigits = 'kDDt',
	IllustratorEDgSFarsiDigits = 'kFDt',
	IllustratorEDgSHindiDigits = 'kHDt'
};
typedef enum IllustratorEDgS IllustratorEDgS;

enum IllustratorEDVP {
	IllustratorEDVPDiacVposLoose = 'kDPl',
	IllustratorEDVPDiacVposMedium = 'kDPm',
	IllustratorEDVPDiacVposOff = 'kDPo',
	IllustratorEDVPDiacVposOpentype = 'kDPo',
	IllustratorEDVPDiacVposTight = 'kDPt'
};
typedef enum IllustratorEDVP IllustratorEDVP;

enum IllustratorEKWT {
	IllustratorEKWTKashidaLong = 'kKaL',
	IllustratorEKWTKashidaMedium = 'kKaM',
	IllustratorEKWTKashidaNone = 'kKaN',
	IllustratorEKWTKashidaSmall = 'kKaS',
	IllustratorEKWTKashidaStylistic = 'kKSy'
};
typedef enum IllustratorEKWT IllustratorEKWT;

enum IllustratorECET {
	IllustratorECETAdornment = 'kACo',
	IllustratorECETLatinCJKComposer = 'kLCo',
	IllustratorECETOptycaComposer = 'kOCo'
};
typedef enum IllustratorECET IllustratorECET;

enum IllustratorEPDT {
	IllustratorEPDTLeftToRight = 'kLtR',
	IllustratorEPDTRightToLeft = 'kRtL'
};
typedef enum IllustratorEPDT IllustratorEPDT;

enum IllustratorEPJ0 {
	IllustratorEPJ0Forced = 'ePJ1',
	IllustratorEPJ0None = 'ge01',
	IllustratorEPJ0Standard = 'e080'
};
typedef enum IllustratorEPJ0 IllustratorEPJ0;

enum IllustratorEPJ2 {
	IllustratorEPJ2PushIn = 'ePJ3',
	IllustratorEPJ2PushOutFirst = 'ePJ4',
	IllustratorEPJ2PushOutOnly = 'ePJ5'
};
typedef enum IllustratorEPJ2 IllustratorEPJ2;

enum IllustratorEFBT {
	IllustratorEFBTBaselineAscent = 'kBAS',
	IllustratorEFBTBaselineCapHeight = 'kBCH',
	IllustratorEFBTBaselineEmBoxHeight = 'kBEH',
	IllustratorEFBTBaselineFixed = 'kBFX',
	IllustratorEFBTBaselineLeading = 'kBLG',
	IllustratorEFBTBaselineLegacy = 'kBLY',
	IllustratorEFBTBaselineXHeight = 'kBXH'
};
typedef enum IllustratorEFBT IllustratorEFBT;

enum IllustratorELib {
	IllustratorELibBrushesLibrary = 'e197',
	IllustratorELibGraphicStylesLibrary = 'e198',
	IllustratorELibIllustratorArtwork = 'e195',
	IllustratorELibSwatchesLibrary = 'e196',
	IllustratorELibSymbolsLibrary = 'e199'
};
typedef enum IllustratorELib IllustratorELib;

enum IllustratorEDCt {
	IllustratorEDCtEps = 'e192',
	IllustratorEDCtFxg = 'e194',
	IllustratorEDCtIllustrator = 'e191',
	IllustratorEDCtPdf = 'e193'
};
typedef enum IllustratorEDCt IllustratorEDCt;

enum IllustratorEEST {
	IllustratorEESTScaleByFactor = 'e260',
	IllustratorEESTScaleByHeight = 'e262',
	IllustratorEESTScaleByResolution = 'e263',
	IllustratorEESTScaleByWidth = 'e261'
};
typedef enum IllustratorEEST IllustratorEEST;

enum IllustratorEEFT {
	IllustratorEEFTSe_jpeg100 = 'e246',
	IllustratorEEFTSe_jpeg20 = 'e249',
	IllustratorEEFTSe_jpeg50 = 'e248',
	IllustratorEEFTSe_jpeg80 = 'e247',
	IllustratorEEFTSe_pdf = 'e253',
	IllustratorEEFTSe_png24 = 'e252',
	IllustratorEEFTSe_png8 = 'e251',
	IllustratorEEFTSe_svg = 'e250'
};
typedef enum IllustratorEEFT IllustratorEEFT;

enum IllustratorCEFT {
	IllustratorCEFTAutoCAD = 'e337',
	IllustratorCEFTFlash = 'e336',
	IllustratorCEFTGIF = 'e335',
	IllustratorCEFTJPEG = 'e330',
	IllustratorCEFTPhotoshop = 'e331',
	IllustratorCEFTPNG24 = 'e334',
	IllustratorCEFTPNG8 = 'e333',
	IllustratorCEFTSVG = 'e332',
	IllustratorCEFTTIFF = 'e338',
	IllustratorCEFTWOSVG = 'e339'
};
typedef enum IllustratorCEFT IllustratorCEFT;

enum IllustratorCCRM {
	IllustratorCCRMAdaptive = 'e350',
	IllustratorCCRMPerceptual = 'e352',
	IllustratorCCRMSelective = 'e351',
	IllustratorCCRMWeb = 'e353'
};
typedef enum IllustratorCCRM IllustratorCCRM;

enum IllustratorCDtM {
	IllustratorCDtMDiffusion = 'e360',
	IllustratorCDtMNoise = 'e363',
	IllustratorCDtMNone = 'ge01',
	IllustratorCDtMPatternDither = 'e361'
};
typedef enum IllustratorCDtM IllustratorCDtM;

enum IllustratorEPAD {
	IllustratorEPADAllLayers = 'e463',
	IllustratorEPADVisibleLayers = 'e462',
	IllustratorEPADVisiblePrintableLayers = 'e461'
};
typedef enum IllustratorEPAD IllustratorEPAD;

enum IllustratorEPBD {
	IllustratorEPBDArtboardBounds = 'e471',
	IllustratorEPBDArtworkBounds = 'e472',
	IllustratorEPBDCropBounds = 'e473'
};
typedef enum IllustratorEPBD IllustratorEPBD;

enum IllustratorEPCS {
	IllustratorEPCSComposite = 'e481',
	IllustratorEPCSHostBasedSeparation = 'e482',
	IllustratorEPCSInRIPSeparation = 'e483'
};
typedef enum IllustratorEPCS IllustratorEPCS;

enum IllustratorEPOR {
	IllustratorEPORAutoRotate = 'e495',
	IllustratorEPORLandscape = 'e492',
	IllustratorEPORPortrait = 'e491',
	IllustratorEPORReverseLandscape = 'e494',
	IllustratorEPORReversePortrait = 'e493'
};
typedef enum IllustratorEPOR IllustratorEPOR;

enum IllustratorEPPO {
	IllustratorEPPOBottom = 'e177',
	IllustratorEPPOBottomLeft = 'e174',
	IllustratorEPPOBottomRight = 'e17A',
	IllustratorEPPOCenter = 'e122',
	IllustratorEPPOLeft = 'e121',
	IllustratorEPPORight = 'e123',
	IllustratorEPPOTop = 'e175',
	IllustratorEPPOTopLeft = 'e172',
	IllustratorEPPOTopRight = 'e178'
};
typedef enum IllustratorEPPO IllustratorEPPO;

enum IllustratorEPTL {
	IllustratorEPTLFullPages = 'e4a1',
	IllustratorEPTLImageableAreas = 'e4a2',
	IllustratorEPTLSingleFullPage = 'e4a0'
};
typedef enum IllustratorEPTL IllustratorEPTL;

enum IllustratorEPMS {
	IllustratorEPMSJapaneseStyle = 'e081',
	IllustratorEPMSRoman = 'eAE2'
};
typedef enum IllustratorEPMS IllustratorEPMS;

enum IllustratorEPFD {
	IllustratorEPFDComplete = 'e4c2',
	IllustratorEPFDNone = 'ge01',
	IllustratorEPFDSubset = 'e4c1'
};
typedef enum IllustratorEPFD IllustratorEPFD;

enum IllustratorEPFS {
	IllustratorEPFSDeviceSubstitution = 'e4d3',
	IllustratorEPFSObliqueSubstitution = 'e4d1',
	IllustratorEPFSTintSubstitution = 'e4d2'
};
typedef enum IllustratorEPFS IllustratorEPFS;

enum IllustratorEPIC {
	IllustratorEPICJPEG = 'e330',
	IllustratorEPICNone = 'ge01',
	IllustratorEPICRLE = 'e4e1'
};
typedef enum IllustratorEPIC IllustratorEPIC;

enum IllustratorEPCP {
	IllustratorEPCPCustomProfile = 'e4f4',
	IllustratorEPCPOldstyleProfile = 'e4f1',
	IllustratorEPCPPrinterProfile = 'e4f3',
	IllustratorEPCPSourceProfile = 'e4f2'
};
typedef enum IllustratorEPCP IllustratorEPCP;

enum IllustratorEPCI {
	IllustratorEPCIAbsoluteColorimetric = 'e4g3',
	IllustratorEPCIPerceptual = 'e352',
	IllustratorEPCIRelativeColorimetric = 'e4g2',
	IllustratorEPCISaturation = 'e4g1'
};
typedef enum IllustratorEPCI IllustratorEPCI;

enum IllustratorEPTY {
	IllustratorEPTYNonPostScriptPrinter = 'e4h2',
	IllustratorEPTYPostScriptPrinter = 'e4h1',
	IllustratorEPTYUnknown = 'e120'
};
typedef enum IllustratorEPTY IllustratorEPTY;

enum IllustratorEPCM {
	IllustratorEPCMBlackAndWhiteOutput = 'e4i3',
	IllustratorEPCMColorOutput = 'e4i1',
	IllustratorEPCMGrayscaleOutput = 'e4i2'
};
typedef enum IllustratorEPCM IllustratorEPCM;

enum IllustratorEPST {
	IllustratorEPSTConvertInk = 'e4j3',
	IllustratorEPSTDisableInk = 'e4j1',
	IllustratorEPSTEnableInk = 'e4j2'
};
typedef enum IllustratorEPST IllustratorEPST;

enum IllustratorEPIK {
	IllustratorEPIKBlackInk = 'pPmb',
	IllustratorEPIKCustomInk = 'pPmc',
	IllustratorEPIKCyanInk = 'pPm8',
	IllustratorEPIKMagentaInk = 'pPm9',
	IllustratorEPIKYellowInk = 'pPma'
};
typedef enum IllustratorEPIK IllustratorEPIK;

enum IllustratorEPTT {
	IllustratorEPTTIgnoreOpaque = 'e4l3',
	IllustratorEPTTNormal = 'e110',
	IllustratorEPTTOpaque = 'e4l2',
	IllustratorEPTTTransparent = 'e4l1'
};
typedef enum IllustratorEPTT IllustratorEPTT;

enum IllustratorETet {
	IllustratorETetAbuttingTracingMethod = 'eTMa',
	IllustratorETetOverlappingTracingMethod = 'eTMo'
};
typedef enum IllustratorETet IllustratorETet;

enum IllustratorETMt {
	IllustratorETMtBwTracingMode = 'eTMb',
	IllustratorETMtColorTracingMode = 'eTMc',
	IllustratorETMtGrayTracingMode = 'eTMg'
};
typedef enum IllustratorETMt IllustratorETMt;

enum IllustratorETCt {
	IllustratorETCtUseFullColors = 'eTCf',
	IllustratorETCtUseLimitedColors = 'eTCl'
};
typedef enum IllustratorETCt IllustratorETCt;

enum IllustratorETvv {
	IllustratorETvvViewOutlines = 'eTv3',
	IllustratorETvvViewOutlinesWithTracing = 'eTv2',
	IllustratorETvvViewOutlinesWithTransparentImage = 'eTv4',
	IllustratorETvvViewSourceImage = 'eTv5',
	IllustratorETvvViewTracingResult = 'eTv1'
};
typedef enum IllustratorETvv IllustratorETvv;

@protocol IllustratorGenericMethods

- (void) delete;  // Remove an element from an object
- (SBObject *) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Duplicate one or more object(s)
- (BOOL) exists;  // Verify if an object exists
- (SBObject *) moveTo:(SBObject *)to;  // Move object(s) to a new location

@end



/*
 * Core Suite
 */

// The Adobe Illustrator application
@interface IllustratorApplication : SBApplication

- (SBElementArray<IllustratorDocument *> *) documents;

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (readonly) BOOL browserAvailable;  // is a web browser available?
@property (copy, readonly) NSString *buildNumber;  // the build number of the Adobe Illustrator application
@property (copy, readonly) NSArray<NSURL *> *colorSettings;  // the list of color settings files currently available for use
@property IllustratorECoS coordinateSystem;  // Coordinate System used by script
@property (copy, readonly) NSString *currentAdobeId;  // The current users adobe id
@property (copy) IllustratorDocument *currentDocument;  // The active document
@property (copy, readonly) NSString *currentUserGuid;  // The current user's GUID
@property (copy, readonly) NSURL *defaultColorSettings;  // the default color settings file for the current application locale.
@property (copy, readonly) NSArray<NSString *> *flattenerPresets;  // the list of flattener style names currently available for use
@property (readonly) NSInteger freeMemory;  // the amount of unused memory within the Adobe Illustrator partition
@property (readonly) BOOL frontmost;  // Is this the frontmost application?
@property (copy, readonly) NSString *locale;  // the Locale of the Adobe Illustrator application
@property (copy, readonly) NSString *name;  // The application's name
@property BOOL pasteRemembersLayers;  // does paste operation remember layers structure?
@property (copy, readonly) NSArray<NSString *> *PDFPresets;  // the list of PDF preset names currently available for use
@property (copy, readonly) NSArray<IllustratorPPDFile *> *PPDs;  // the list of PPD files currently available for use. For performance reasons, the PPDFile entry only contains the model name and file spec of each PPD file.
@property (copy, readonly) NSArray<NSString *> *printPresets;  // the list of print preset names currently available for use
@property (copy, readonly) NSArray<IllustratorPrinter *> *printers;  // the list of installed printers
@property (copy, readonly) NSString *scriptingVersion;  // the version of the Scripting plugin
@property (copy) id selection;  // the selection visible to the user
@property (copy, readonly) IllustratorIllustratorPreferences *settings;  // preferences for Illustrator
@property (copy, readonly) NSArray<NSString *> *startupPresets;  // the list of presets available for creating a new document
@property (copy, readonly) NSArray<NSString *> *tracingPresets;  // the list of tracing preset names currently available for use
@property IllustratorEMUI userInteractionLevel;  // what level of interaction with the user should be allowed when handling script commands
@property (copy, readonly) NSString *version;  // the version of the Adobe Illustrator application

- (void) executeAATFileFile:(NSURL *)file;  // executes the active session in the sequencer
- (IllustratorPPDProperties *) getPPDInfoFor:(NSString *)for_;  // get detailed info from the specified PPD file
- (void) loadColorSettingsFrom:(NSURL *)from;  // load the color settings from the file. If the file is an empty file spec, the color management will be turned off.
- (void) open:(id)x forcing:(IllustratorECCS)forcing dialogs:(BOOL)dialogs withOptions:(id)withOptions;  // Open the specified document file(s)
- (void) print:(id)x options:(IllustratorPrintOptions *)options;  // Print the specified document(s) or file(s)
- (void) quit;  // Quit the application
- (NSArray<NSString *> *) showPresetsFrom:(NSURL *)from;  // get presets from the file
- (BOOL) ISInTouchWorkspace;  // Is In Touch Workspace
- (BOOL) deleteWorkspaceWorkspaceName:(NSString *)workspaceName;  // Deletes an existing workspace
- (id) getScriptableHelpGroup;  // Get the scriptable help group object that represents the search widget in the app bar
- (BOOL) isusersharingappusagedata;  // Is user sharing the application usage data
- (void) redraw;  // Force Illustrator to redraw its window(s)
- (void) reflectCsawTo:(NSURL *)to;  // generate Creative Suite ActionScript Wrappers in specified directory
- (BOOL) resetWorkspace;  // Resets the current workspace
- (BOOL) saveWorkspaceWorkspaceName:(NSString *)workspaceName;  // Saves a new workspace
- (BOOL) switchWorkspaceWorkspaceName:(NSString *)workspaceName;  // Switches between workspaces
- (NSArray<NSNumber *> *) convertSampleColorSourceColorSpace:(IllustratorECLS)sourceColorSpace sourceColor:(NSArray<NSNumber *> *)sourceColor destinationColorSpace:(IllustratorECLS)destinationColorSpace colorConversionPurpose:(IllustratorECCP)colorConversionPurpose sourceHasAlpha:(BOOL)sourceHasAlpha destinationHasAlpha:(BOOL)destinationHasAlpha;  // Converts a sample-component color from one color space to another.
- (NSString *) translatePlaceholderText:(NSString *)x;  // translate the placeholder text to regular text. A method to enter unicode points in hex values.
- (IllustratorMatrix *) getIdentityMatrix;  // Returns an identity matrix
- (IllustratorMatrix *) getRotationMatrixAngle:(double)angle;  // Returns a rotation transformation matrix
- (IllustratorMatrix *) getScaleMatrixHorizontalScale:(double)horizontalScale verticalScale:(double)verticalScale;  // Returns a scale transformation matrix
- (IllustratorMatrix *) getTranslationMatrixDeltaX:(double)deltaX deltaY:(double)deltaY;  // Returns a translation matrix
- (void) copy NS_RETURNS_NOT_RETAINED;  // Copy current selection to the clipboard
- (void) cut;  // Cut current selection to the clipboard
- (NSString *) doJavascript:(id)x withArguments:(NSArray<id> *)withArguments showDebugger:(IllustratorE940)showDebugger;  // execute a javascript
- (void) doScript:(NSString *)x from:(NSString *)from dialogs:(BOOL)dialogs;  // Play an action from the Actions Palette
- (void) executeMenuCommandMenuCommandString:(NSString *)menuCommandString;  // executes a menu command using the menu shortcut string
- (NSURL *) getPresetFileOfPresetType:(IllustratorEDPT)presetType;  // given a preset type, returns the full path to the application's default document profile for the type
- (IllustratorDocumentPreset *) getPresetSettingsPreset:(NSString *)preset;  // given a preset name, tries and retrieves the settings from the preset template
- (BOOL) isFillActive;  // Checks if fill is active or not
- (BOOL) isStrokeActive;  // Checks if stroke is active or not
- (void) loadActionActionFilePath:(NSURL *)actionFilePath;  // Load an action into action palette
- (IllustratorDocument *) openCloudLibraryAssetForEditingAsseturl:(NSURL *)asseturl thumbnailurl:(NSURL *)thumbnailurl assettype:(NSString *)assettype options:(id)options;  // For Internal Use
- (void) paste;  // Paste clipboard into the current document
- (void) redo;  // Redo the last transaction
- (void) setThumbnailOptionsForCloudLibraryOptions:(id)options;  // For Internal Use
- (void) undo;  // Undo the last transaction
- (void) unloadActionActionFilePath:(NSString *)actionFilePath actionFilePath:(NSString *)actionFilePath;  // unloads an action into action palette

@end

// A document
@interface IllustratorDocument : SBObject <IllustratorGenericMethods>

- (SBElementArray<IllustratorArtboard *> *) artboards;
- (SBElementArray<IllustratorAsset *> *) Assets;
- (SBElementArray<IllustratorBrush *> *) brushes;
- (SBElementArray<IllustratorCharacterStyle *> *) characterStyles;
- (SBElementArray<IllustratorCompoundPathItem *> *) compoundPathItems;
- (SBElementArray<IllustratorDataset *> *) datasets;
- (SBElementArray<IllustratorEmbeddedItem *> *) embededItems;
- (SBElementArray<IllustratorGradient *> *) gradients;
- (SBElementArray<IllustratorGraphicStyle *> *) graphicStyles;
- (SBElementArray<IllustratorGraphItem *> *) graphItems;
- (SBElementArray<IllustratorGroupItem *> *) groupItems;
- (SBElementArray<IllustratorLayer *> *) layers;
- (SBElementArray<IllustratorLegacyTextItem *> *) legacyTextItems;
- (SBElementArray<IllustratorMeshItem *> *) meshItems;
- (SBElementArray<IllustratorNonNativeItem *> *) nonNativeItems;
- (SBElementArray<IllustratorPageItem *> *) pageItems;
- (SBElementArray<IllustratorParagraphStyle *> *) paragraphStyles;
- (SBElementArray<IllustratorPathItem *> *) pathItems;
- (SBElementArray<IllustratorPattern *> *) patterns;
- (SBElementArray<IllustratorPlacedItem *> *) placedItems;
- (SBElementArray<IllustratorPluginItem *> *) pluginItems;
- (SBElementArray<IllustratorRasterItem *> *) rasterItems;
- (SBElementArray<IllustratorSpot *> *) spots;
- (SBElementArray<IllustratorStory *> *) stories;
- (SBElementArray<IllustratorSwatch *> *) swatches;
- (SBElementArray<IllustratorSwatchgroup *> *) swatchgroups;
- (SBElementArray<IllustratorSymbolItem *> *) symbolItems;
- (SBElementArray<IllustratorSymbol *> *) symbols;
- (SBElementArray<IllustratorTag *> *) tags;
- (SBElementArray<IllustratorTextFrame *> *) textFrames;
- (SBElementArray<IllustratorVariable *> *) variables;
- (SBElementArray<IllustratorView *> *) views;

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy, readonly) NSString *colorProfileName;  // The name of the color profile of the document
@property (readonly) IllustratorECCS colorSpace;  // the color space used for the document
@property (copy) NSArray *cropMarks;
@property IllustratorECRs cropStyle;
@property (copy) IllustratorDataset *currentDataset;  // The active data set
@property (copy) IllustratorLayer *currentLayer;  // The active layer
@property (copy, readonly) IllustratorView *currentView;  // the document's current view
@property (copy) IllustratorColorInfo *defaultFillColor;  // default fill color
@property BOOL defaultFillOverprint;  // will art beneath a filled object be overprinted by default?
@property BOOL defaultFilled;  // should a new path be filled?
@property IllustratorESTc defaultStrokeCap;  // default type of line capping
@property (copy) IllustratorColorInfo *defaultStrokeColor;  // default stroke color
@property double defaultStrokeDashOffset;  // the default distance into the dash pattern at which the pattern should be started
@property (copy) NSArray<NSNumber *> *defaultStrokeDashes;  // default dash lengths (set to {} for a solid line)
@property IllustratorESTj defaultStrokeJoin;  // default type of joints
@property double defaultStrokeMiterLimit;  // specifies whether a join is mitered (pointed) or beveled (squared-off) by default
@property BOOL defaultStrokeOverprint;  // will art beneath a stroked object be overprinted by default?
@property double defaultStrokeWidth;  // default width of stroke
@property BOOL defaultStroked;  // should a new path be stroked?
@property (copy, readonly) NSURL *filePath;  // the file associated with the document
@property (copy, readonly) NSArray *geometricBounds;  // the bounds of the illustration excluding stroke width
@property (readonly) double height;
@property (copy, readonly) NSArray<IllustratorInk *> *inks;  // the list of inks in this document
@property (copy, readonly) NSArray<NSString *> *KinsokuSet;  // the Kinsoku set
@property BOOL modified;  // Has the document been modified since the last save?
@property (copy, readonly) NSArray<NSString *> *MojikumiSet;  // the Mojikumi set
@property (copy, readonly) NSString *name;  // The document's name
@property (readonly) double outputResolution;
@property (copy) NSArray *pageOrigin;
@property (readonly) BOOL printTiles;
@property (copy) IllustratorRasterEffectOptions *rasterEffectSettings;  // The document raster effects settings
@property (copy) NSArray *rulerOrigin;
@property (readonly) IllustratorERUt rulerUnits;
@property (copy) id selection;  // the selection within the document
@property (readonly) BOOL showPlacedImages;
@property (readonly) BOOL splitLongPaths;
@property (readonly) BOOL stationery;  // Is the file a stationery file?
@property (readonly) BOOL tileFullPages;
@property (readonly) BOOL useDefaultScreen;
@property BOOL variablesLocked;  // The locked variables
@property (copy, readonly) NSArray *visibleBounds;  // the visible bounds of the illustration including stroke width
@property (readonly) double width;
@property (copy) NSString *XMPString;  // The XMP packet string associated with the document

- (void) closeSaving:(IllustratorSavo)saving;  // Close the specified document(s)
- (IllustratorDocument *) saveIn:(NSURL *)in_ as:(IllustratorEDCt)as withOptions:(id)withOptions;  // Save the specified document(s)
- (void) captureTo:(NSURL *)to size:(NSArray *)size;  // capture the current document window to the target TIFF image file.
- (NSArray *) convertcoordinateCoordinate:(NSArray *)coordinate source:(IllustratorECoS)source destination:(IllustratorECoS)destination;  // Converts the coordinate system of a single point from one coordinate system to another.
- (void) exportTo:(NSURL *)to as:(IllustratorCEFT)as withOptions:(id)withOptions;  // Export the specified document(s)
- (void) exportPerspectiveGridPresetTo:(NSURL *)to;  // saves all perspective grid presets to a file
- (void) exportSelectedArtworkTo:(NSURL *)to;  // Export the selection as Ai file
- (void) exportSelectionTo:(NSURL *)to withPNG24Options:(id)withPNG24Options;  // Export the selection as PNG file
- (void) exportforscreensToFolder:(NSURL *)toFolder as:(IllustratorEEFT)as withOptions:(id)withOptions itemtoexport:(IllustratorItemToExport *)itemtoexport filenameprefix:(NSString *)filenameprefix;  // Export the specified document/asset(s)/artboard(s)
- (BOOL) fitartboardtoselectedartIndex:(NSInteger)index;  // Change the artboard to selected art bounds.
- (IllustratorEPPt) getPerspectiveActivePlane;  // Gets the active plane of the active perspective grid of the document
- (BOOL) hidePerspectiveGrid;  // Hides the current active perspective grid for the document, if there is visible perspective grid.
- (void) importPerspectiveGridPresetFrom:(NSURL *)from perspectivePreset:(NSString *)perspectivePreset;  // loads mentioned perspective grid preset, if preset name is specified, else loads all(if no preset name is specified) presets, from the specified file
- (void) importFileFrom:(NSURL *)from isLinked:(BOOL)isLinked libraryName:(NSString *)libraryName itemName:(NSString *)itemName elementRef:(NSString *)elementRef modifiedTime:(double)modifiedTime creationTime:(double)creationTime adobeStockId:(NSString *)adobeStockId adobeStockLicense:(NSString *)adobeStockLicense shouldLoadToPlacegun:(BOOL)shouldLoadToPlacegun;  // Import the file into current Ai document
- (IllustratorPageItem *) rasterizeSourceArt:(id)sourceArt inside:(NSArray *)inside withOptions:(IllustratorRasterizeOptions *)withOptions;  // rasterize the source art(s) within the specified clip bounds. The source art(s) are disposed as a result of the rasterization.
- (BOOL) rearrangeartboardsArtboardLayout:(IllustratorEDAL)artboardLayout artboardRowsOrCols:(NSInteger)artboardRowsOrCols artboardSpacing:(double)artboardSpacing artboardMoveArtwork:(BOOL)artboardMoveArtwork;  // Rearrange Artboards in the document
- (BOOL) selectPerspectivePresetPerspectivePreset:(NSString *)perspectivePreset;  // Selects a predefined preset to define grid for the current document.
- (BOOL) selectobjectsonactiveartboard;  // Select art objects in active artboard.
- (BOOL) setPerspectiveActivePlanePerspectiveGridPlane:(IllustratorEPPt)perspectiveGridPlane;  // Sets the active perspective plane for the active grid of the document.
- (BOOL) showPerspectiveGrid;  // Shows the current active perspective grid for the document, if no active perspective grid then shows the default perspective grid for the document
- (void) importCharacterStylesFrom:(NSURL *)from;  // load the character styles from the Illustrator file
- (void) importParagraphStylesFrom:(NSURL *)from;  // load the paragraph styles from the Illustrator file
- (void) exportPDFPresetTo:(NSURL *)to;  // save all PDF presets to a file
- (void) importPDFPresetFrom:(NSURL *)from replacingPreset:(BOOL)replacingPreset;  // load all PDF presets from a file
- (void) exportVariablesTo:(NSURL *)to;  // Save datasets into an XML library. The datasets contain variables and their associated dynamic data
- (void) importVariablesFrom:(NSURL *)from;  // Import a library containing datasets, variables and their associated dynamic data. Importing variables will overwrite existing variables and datasets
- (void) exportPrintPresetTo:(NSURL *)to;  // export the current print setting to the preset file
- (void) importPrintPresetPrintPreset:(NSString *)printPreset from:(NSURL *)from;  // apply the named print preset from the file to the current print setting

@end

// create a document from the preset with option to throw dialog to customize present settings
@interface IllustratorArtwork : SBObject <IllustratorGenericMethods>

@property (copy) NSString *startupPreset;  // the name of startup document preset
@property BOOL presetSettingsDialogOption;  // argument controls if options Dialog is shown or not


@end



/*
 * Adobe Illustrator Suite
 */

// an artboard object
@interface IllustratorArtboard : SBObject <IllustratorGenericMethods>

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy) NSArray *artboardRectangle;  // size and position of artboard
@property (copy, readonly) SBObject *container;  // the object's container
@property (copy) NSString *name;  // The name of the artboard
@property (copy) NSArray *rulerOrigin;  // Ruler origin of artboard.It is relative to left-bottom corner of the Artboard.
@property double rulerPAR;  // Pixel aspect ratio, used in ruler visualization if the units are pixels ( 0.1 - 10.0 )
@property BOOL showCenter;  // Show center mark
@property BOOL showCrossHairs;  // Show cross hairs
@property BOOL showSafeAreas;  // Show title and action safe areas (for video)


@end

// A brush
@interface IllustratorBrush : SBObject <IllustratorGenericMethods>

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy, readonly) SBObject *container;  // the object's container
@property (copy) NSString *name;  // The brush's name


@end

// Dimensions (height and width)
@interface IllustratorDimensionsInfo : SBObject <IllustratorGenericMethods>

@property double width;  // the Width parameter ( minimum 0.0 )
@property double height;  // the Height parameter ( minimum 0.0 )


@end

// the new document preset to use for creating a new document
@interface IllustratorDocumentPreset : SBObject <IllustratorGenericMethods>

@property IllustratorEDAL artboardLayout;  // layout for artboards ( default: grid by row )
@property NSInteger artboardRowsOrCols;  // Number of rows (for rows layout) OR column(for column layouts)of artboards.Range is 1 to (docNumArtboards - 1) or 1 for single row or column layouts ( default: 1 )
@property double artboardSpacing;  // spacing between artboards ( default: 20.0 )
@property IllustratorECCS colorMode;  // the color mode for the new document ( default: CMYK )
@property BOOL documentBleedLink;  // document link for bleed values ( default: true )
@property (copy) NSArray *documentBleedOffset;  // document bleed offset rect
@property IllustratorERUt documentUnits;  // the units for the new document ( default: points )
@property double height;  // the height for the new document ( default: 792.0 )
@property NSInteger numArtboards;  // number of artboards for new document.Range (1:100). ( default: 1 )
@property IllustratorEDPM previewMode;  // the preview mode for the new document ( default: default preview )
@property IllustratorEDCR rasterResolution;  // the raster resolution for the new document ( default: screen resolution )
@property (copy) NSString *title;  // the title for the new document ( default: Untitled )
@property IllustratorEDGR transparencyGrid;  // the transparency grid for the new document ( default: hide transparency grids )
@property double width;  // the width for the new document ( default: 612.0 )


@end

// A gradient
@interface IllustratorGradient : SBObject <IllustratorGenericMethods>

- (SBElementArray<IllustratorGradientStop *> *) gradientStops;

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy, readonly) SBObject *container;  // the object's container
@property (copy) NSArray<IllustratorGradientStopInfo *> *entireGradient;  // all the gradient stops in the gradient
@property IllustratorEGDt gradientType;  // the gradient type
@property (copy) NSString *name;  // the gradient's name


@end

// A gradient stop
@interface IllustratorGradientStop : SBObject <IllustratorGenericMethods>

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy) IllustratorColorInfo *color;  // the color linked to this gradient stop
@property (copy, readonly) SBObject *container;  // the object's container
@property double midpoint;  // midpoint key value in percent ( 13.0 - 87.0 )
@property double rampPoint;  // location of color in the blend (in percent) ( 0.0 - 100.0 )
@property double stopOpacity;  // The opacity (between 0.0 and 100.0) value for the gradient stop ( 0.0 - 100.0 )


@end

// Gradient stop information (returned by entire gradient of gradient class)
@interface IllustratorGradientStopInfo : SBObject <IllustratorGenericMethods>

@property (copy) IllustratorColorInfo *color;  // the color linked to this gradient stop
@property double midpoint;  // midpoint value in percent ( 13.0 - 87.0; default: 50.0 )
@property double rampPoint;  // location of color in the blend in percent ( 0.0 - 100.0; default: 0.0 )
@property double stopOpacity;  // The opacity value for the gradient stop ( 0.0 - 100.0; default: 1.0 )


@end

// An art style
@interface IllustratorGraphicStyle : SBObject <IllustratorGenericMethods>

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy, readonly) SBObject *container;  // the object's container
@property (copy) NSString *name;  // The art style's name

- (void) applyTo:(id)to;  // Apply a brush or art style to object(s)
- (void) mergeTo:(id)to;  // Merge an art style to object(s) current style(s)

@end

// Preferences for Illustrator
@interface IllustratorIllustratorPreferences : SBObject <IllustratorGenericMethods>

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy, readonly) IllustratorAutoCADOptions *AutoCADFileOptions;  // options to use when opening or placing a AutoCAD file
@property (copy, readonly) IllustratorPDFOptions *PDFFileOptions;  // options to use when opening or placing a PDF file
@property (copy, readonly) IllustratorPhotoshopOptions *PhotoshopFileOptions;  // options to use when opening or placing a Photoshop file

- (BOOL) checkPreferenceExistsKey:(NSString *)key;  // checks whether the application preference key exists
- (void) deletePreferenceKey:(NSString *)key;  // delete the application preference key
- (BOOL) getBooleanPreferenceKey:(NSString *)key;  // retrieve the value of the application preference key as boolean
- (NSInteger) getIntegerPreferenceKey:(NSString *)key;  // retrieve the value of the application preference key as integer
- (double) getRealPreferenceKey:(NSString *)key;  // retrieve the value of the application preference key as real number
- (NSString *) getStringPreferenceKey:(NSString *)key;  // retrieve the value of the application preference key as string type
- (void) setBooleanPreferenceKey:(NSString *)key to:(BOOL)to;  // set the value of the application preference key as boolean
- (void) setIntegerPreferenceKey:(NSString *)key to:(NSInteger)to;  // set the value of the application preference key as integer
- (void) setRealPreferenceKey:(NSString *)key to:(double)to;  // set the value of the application preference key as real number
- (void) setStringPreferenceKey:(NSString *)key to:(NSString *)to;  // set the value of the application preference key as string type

@end

// A layer
@interface IllustratorLayer : SBObject <IllustratorGenericMethods>

- (SBElementArray<IllustratorCompoundPathItem *> *) compoundPathItems;
- (SBElementArray<IllustratorGraphItem *> *) graphItems;
- (SBElementArray<IllustratorGroupItem *> *) groupItems;
- (SBElementArray<IllustratorLayer *> *) layers;
- (SBElementArray<IllustratorLegacyTextItem *> *) legacyTextItems;
- (SBElementArray<IllustratorMeshItem *> *) meshItems;
- (SBElementArray<IllustratorNonNativeItem *> *) nonNativeItems;
- (SBElementArray<IllustratorPageItem *> *) pageItems;
- (SBElementArray<IllustratorPathItem *> *) pathItems;
- (SBElementArray<IllustratorPlacedItem *> *) placedItems;
- (SBElementArray<IllustratorPluginItem *> *) pluginItems;
- (SBElementArray<IllustratorRasterItem *> *) rasterItems;
- (SBElementArray<IllustratorSymbolItem *> *) symbolItems;
- (SBElementArray<IllustratorTextFrame *> *) textFrames;

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property IllustratorCBlM blendMode;  // the mode used when compositing an object
@property (copy) IllustratorRGBColorInfo *color;  // color used when outlining artwork in this layer
@property (copy, readonly) SBObject *container;  // the object's container
@property BOOL dimPlacedImages;  // Is rendered as dimmed in this layer?
@property BOOL hasSelectedArtwork;  // Is any artwork in this layer selected? Setting this property to false deselects all artwork in the layer.
@property BOOL isolated;  // is the artwork isolated
@property IllustratorCKOS knockout;  // is the artwork used to create a knockout
@property BOOL locked;  // Is the layer editable?
@property (copy) NSString *name;  // The layer's name
@property double opacity;  // The layer's opacity (between 0.0 and 100.0)
@property BOOL preview;  // Is the layer rendered in preview mode?
@property BOOL printable;  // Is the layer printable?
@property BOOL sliced;  // Is the layer sliced (default: false)
@property BOOL visible;  // Is the layer visible?


@end

// A page item object
@interface IllustratorPageItem : SBObject <IllustratorGenericMethods>

- (SBElementArray<IllustratorTag *> *) tags;

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property IllustratorCBlM blendMode;  // the mode used when compositing an object
@property (copy, readonly) SBObject *container;  // the object's container
@property (copy, readonly) NSArray *controlBounds;  // the bounds of the artwork including stroke width and controls
@property (readonly) BOOL editable;  // can the art item be modified
@property (copy, readonly) NSArray *geometricBounds;  // the bounds of the artwork excluding stroke width
@property double height;  // the height of the art item ( 0.0 - 16348.0 )
@property BOOL hidden;  // is this artwork item hidden?
@property BOOL isolated;  // is the artwork isolated
@property IllustratorCKOS knockout;  // is the artwork used to create a knockout
@property (copy, readonly) IllustratorLayer *layer;  // the layer to which this artwork belongs
@property BOOL locked;  // is this artwork item locked?
@property (copy) NSString *name;  // The item's name
@property (copy) NSString *note;  // the note assigned to this artwork item
@property double opacity;  // the object's opacity (between 0.0 and 100.0) ( 0.0 - 100.0 )
@property BOOL pixelAligned;  // is this artwork item aligned to Pixel Grid?
@property (copy) NSArray *position;  // the position of the top left corner of the art item
@property BOOL selected;  // is this artwork item selected?
@property BOOL sliced;  // is the art item sliced (default: false)
@property (copy) NSString *URL;  // the value of the Adobe URL tag assigned to this artwork item
@property (copy) id visibilityVariable;  // the visibility variable bound to this page item
@property (copy, readonly) NSArray *visibleBounds;  // the visible bounds of the artwork including stroke width
@property double width;  // the width of the art item ( 0.0 - 16348.0 )
@property BOOL wrapInside;  // should the text frame object be wrapped inside this object?
@property double wrapOffset;  // use this offset when wrapping text around this object
@property BOOL wrapped;  // wrap text frame objects around this object (text frame must be above the object)

- (void) applyeffectLiveeffectxml:(NSString *)liveeffectxml;  // Apply effect to selected artItem
- (void) bringInPerspectivePositionX:(double)positionX positionY:(double)positionY perspectiveGridPlane:(IllustratorEPPt)perspectiveGridPlane;  // Place art object(s)in perspective grid at spedified perspective plane and coordinate
- (void) rotateAngle:(double)angle transformingObjects:(BOOL)transformingObjects transformingFillPatterns:(BOOL)transformingFillPatterns transformingFillGradients:(BOOL)transformingFillGradients transformingStrokePatterns:(BOOL)transformingStrokePatterns about:(IllustratorETRt)about;  // Rotate art object(s)
- (void) scaleHorizontalScale:(double)horizontalScale verticalScale:(double)verticalScale transformingObjects:(BOOL)transformingObjects transformingFillPatterns:(BOOL)transformingFillPatterns transformingFillGradients:(BOOL)transformingFillGradients transformingStrokePatterns:(BOOL)transformingStrokePatterns lineScale:(double)lineScale about:(IllustratorETRt)about;  // Scale art object(s)
- (void) translateDeltaX:(double)deltaX deltaY:(double)deltaY transformingObjects:(BOOL)transformingObjects transformingFillPatterns:(BOOL)transformingFillPatterns transformingFillGradients:(BOOL)transformingFillGradients transformingStrokePatterns:(BOOL)transformingStrokePatterns;  // Reposition art object(s)
- (void) transformUsing:(IllustratorMatrix *)using_ transformingObjects:(BOOL)transformingObjects transformingFillPatterns:(BOOL)transformingFillPatterns transformingFillGradients:(BOOL)transformingFillGradients transformingStrokePatterns:(BOOL)transformingStrokePatterns lineScale:(double)lineScale about:(IllustratorETRt)about;  // Transform art object(s) using a transformation matrix
- (NSString *) SendScriptMessageActionPluginName:(NSString *)pluginName messageSelector:(NSString *)messageSelector parameterString:(NSString *)parameterString;  // sends the script message to the required plugin

@end

// Compound path artwork item
@interface IllustratorCompoundPathItem : IllustratorPageItem

- (SBElementArray<IllustratorPathItem *> *) pathItems;

@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record


@end

// Embedded artwork item
@interface IllustratorEmbeddedItem : IllustratorPageItem

@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy) NSURL *filePath;  // the file containing the placed artwork


@end

// Graph artwork item
@interface IllustratorGraphItem : IllustratorPageItem

@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy) id contentVariable;  // the content variable bound to this graph


@end

// An artwork group item
@interface IllustratorGroupItem : IllustratorPageItem

- (SBElementArray<IllustratorCompoundPathItem *> *) compoundPathItems;
- (SBElementArray<IllustratorGraphItem *> *) graphItems;
- (SBElementArray<IllustratorGroupItem *> *) groupItems;
- (SBElementArray<IllustratorLegacyTextItem *> *) legacyTextItems;
- (SBElementArray<IllustratorMeshItem *> *) meshItems;
- (SBElementArray<IllustratorNonNativeItem *> *) nonNativeItems;
- (SBElementArray<IllustratorPageItem *> *) pageItems;
- (SBElementArray<IllustratorPathItem *> *) pathItems;
- (SBElementArray<IllustratorPlacedItem *> *) placedItems;
- (SBElementArray<IllustratorPluginItem *> *) pluginItems;
- (SBElementArray<IllustratorRasterItem *> *) rasterItems;
- (SBElementArray<IllustratorSymbolItem *> *) symbolItems;
- (SBElementArray<IllustratorTextFrame *> *) textFrames;

@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property BOOL clipped;  // are the group elements clipped to the clipping path?


@end

// unconverted legacy text items from documents in pre-version 11 formats
@interface IllustratorLegacyTextItem : IllustratorPageItem

@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (readonly) BOOL converted;  // has the legacy text item been updated to a native text frame item?

- (IllustratorGroupItem *) convert;  // create a native text frame from a legacy text item. The original legacy text item is deleted.

@end

// Mesh artwork item
@interface IllustratorMeshItem : IllustratorPageItem

@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record


@end

// Non-native artwork item
@interface IllustratorNonNativeItem : IllustratorPageItem

@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record


@end

// An artwork path item
@interface IllustratorPathItem : IllustratorPageItem

- (SBElementArray<IllustratorPathPoint *> *) pathPoints;

@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (readonly) double area;  // the area of this path in square points
@property BOOL clipping;  // should this be used as a clipping path?
@property BOOL closed;  // is this path closed?
@property (copy) NSArray<IllustratorPathPointInfo *> *entirePath;  // all the path item's path points
@property BOOL evenodd;  // should the even-odd rule be used to determine insideness?
@property (copy) IllustratorColorInfo *fillColor;  // fill color
@property BOOL fillOverprint;  // will art beneath a filled object be overprinted?
@property BOOL filled;  // should the path be filled?
@property BOOL guides;  // is this path a guide object?
@property (readonly) double length;  // the length of this path in points
@property IllustratorEPVu polarity;  // the polarity the path
@property double resolution;  // The resolution of the path
@property (copy, readonly) NSArray<SBObject *> *selectedPathPoints;  // all the selected points in the path
@property IllustratorESTc strokeCap;  // type of line capping
@property (copy) IllustratorColorInfo *strokeColor;  // stroke color
@property double strokeDashOffset;  // the default distance into the dash pattern at which the pattern should be started
@property (copy) NSArray<NSNumber *> *strokeDashes;  // dash lengths (set to {} for a solid line)
@property IllustratorESTj strokeJoin;  // type of joints
@property double strokeMiterLimit;  // whether a join is mitered (pointed) or beveled (squared-off)
@property BOOL strokeOverprint;  // will art beneath a stroked object be overprinted?
@property double strokeWidth;  // width of stroke
@property BOOL stroked;  // should the path be stroked?


@end

// A point on a path
@interface IllustratorPathPoint : SBObject <IllustratorGenericMethods>

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy) NSArray *anchor;  // the position (coordinates) of the anchor point
@property (copy, readonly) SBObject *container;  // the object's container
@property (copy) NSArray *leftDirection;  // location of the left direction point (in position)
@property IllustratorEPTy pointType;  // the type of point: smooth/corner
@property (copy) NSArray *rightDirection;  // location of the right direction point (out position)
@property IllustratorESGs selected;  // the path point selected state


@end

// Path point information (returned by entire path dataClassProperty of path item class)
@interface IllustratorPathPointInfo : SBObject <IllustratorGenericMethods>

@property (copy) NSArray *anchor;  // the position of the anchor (in coordinates)
@property (copy) NSArray *leftDirection;  // location of the left direction point (in position)
@property IllustratorEPTy pointType;  // the point type, smooth/corner ( default: smooth )
@property (copy) NSArray *rightDirection;  // location of the left direction point (out position)


@end

// Placed artwork item
@interface IllustratorPlacedItem : IllustratorPageItem

@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy, readonly) NSArray *boundingBox;  // dimensions of placed art object, regardless of transformations
@property (copy) id contentVariable;  // the content variable bound to this placed art object
@property (copy) NSURL *filePath;  // the file containing the placed artwork
@property (copy) IllustratorMatrix *matrix;  // The transformation matrix of the placed art object

- (void) embed;  // Embed the placed art within the illustration
- (void) relinkFrom:(NSURL *)from;  // Relink the placed art with supplied art from file
- (IllustratorPluginItem *) tracePlaced;  // Trace this raster object using default options.  Reorders this placed to the source art.

@end

// Plugin artwork item
@interface IllustratorPluginItem : IllustratorPageItem

@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (readonly) BOOL isTracing;  // is the plugin group a tracing?
@property (copy, readonly) IllustratorTracingobject *tracing;  // the tracing object associated with this plugin item.


@end

// The document raster effects settings
@interface IllustratorRasterEffectOptions : SBObject <IllustratorGenericMethods>

@property BOOL antialiasing;  // should the resulting image be antialiased ( default: false )
@property BOOL clippingMask;  // should a clipping mask be created for the resulting image ( default: false )
@property IllustratorERAS colorModel;  // The color model for the rasterization ( default: default rasterization )
@property BOOL convertSpotColors;  // whether to convert all spot colors to process colors in the resulting image ( default: false )
@property double padding;  // the amount of white space (in points) to be added around the object during rasterization ( default: 0.0 )
@property double resolution;  // The rasterization resolution in dots-per-inch (dpi) ( 72.0 - 2400.0; default: 300.0 )
@property BOOL transparency;  // should the resulting image use transparency ( default: false )


@end

// Raster artwork item
@interface IllustratorRasterItem : IllustratorPageItem

@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (readonly) NSInteger bitsPerChannel;  // the number of bits per channel
@property (copy) NSArray *boundingBox;  // dimensions of raster art object regardless of transformations
@property (readonly) NSInteger channels;  // the number of image channels
@property (readonly) IllustratorECLS colorSpace;  // the color space of the raster image
@property (copy, readonly) NSArray<NSString *> *colorants;  // list of colorant names
@property (readonly) BOOL colorized;  // is the raster art a colorized grayscale image?
@property (copy) id contentVariable;  // the content variable bound to this raster art object
@property BOOL embedded;  // is the raster art embedded within the illustration?
@property (copy, readonly) NSURL *filePath;  // the file containing the raster artwork
@property (copy) IllustratorMatrix *matrix;  // The transformation matrix of the raster art object
@property BOOL overprint;  // is the raster art overprinting?
@property (readonly) IllustratorERLt status;  // status of the linked image
@property (readonly) BOOL transparent;  // is the raster art transparent?

- (void) colorizeRasterColor:(IllustratorColorInfo *)rasterColor;  // Colorize the RasterItem with a CMYK or RGB Color
- (IllustratorPluginItem *) traceRaster;  // Trace this raster object using default options.  Reorders this raster to the source art.

@end

// Options which may be supplied when rasterizing the artwork
@interface IllustratorRasterizeOptions : SBObject <IllustratorGenericMethods>

@property IllustratorEALS antialiasingMethod;  // the type of antialiasing method ( default: art optimized )
@property BOOL backgroundBlack;  // should rasterize against a black background instead of white ( default: false )
@property BOOL clippingMask;  // should a clipping mask be created for the resulting image ( default: false )
@property IllustratorERAS colorModel;  // The color model for the rasterization ( default: default rasterization )
@property BOOL convertSpotColors;  // whether to convert all spot colors to process colors in the resulting image ( default: false )
@property BOOL convertTextToOutlines;  // should all text be converted to outlines before rasterization ( default: false )
@property BOOL includeLayers;  // should the resulting image incorporates the layer attributes (such as opacity and blend mode) ( default: false )
@property double padding;  // the amount of white space (in points) to be added around the object during rasterization ( default: 0.0 )
@property double resolution;  // The rasterization resolution in dots-per-inch (dpi) ( 72.0 - 2400.0; default: 300.0 )
@property BOOL transparency;  // should the resulting image use transparency ( default: false )


@end

// A symbol
@interface IllustratorSymbol : SBObject <IllustratorGenericMethods>

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy, readonly) SBObject *container;  // the object's container
@property (copy) NSString *name;  // The symbol's name
@property (copy, readonly) id sourceArt;  // The source art is only used when creating a new symbol


@end

// An instance of a Symbol
@interface IllustratorSymbolItem : IllustratorPageItem

@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy) IllustratorSymbol *symbol;  // The symbol that was used to create this symbol item


@end

// Tab stop information (returned by tab stops from a paragraph object)
@interface IllustratorTabStopInfo : SBObject <IllustratorGenericMethods>

@property IllustratorETBa alignment;  // the alignment of the tab stop ( default: left )
@property (copy) NSString *decimalCharacter;  // the character used for decimal tab stops ( default: . )
@property (copy) NSString *leader;  // the leader dot
@property double position;  // the position of the tab stop expressed in points ( default: 0.0 )


@end

// A tag associated with a piece of artwork
@interface IllustratorTag : SBObject <IllustratorGenericMethods>

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy, readonly) SBObject *container;  // the object's container
@property (copy) NSString *name;  // The tag's name
@property (copy) NSString *value;  // the data stored in this tag


@end

// Text frame item
@interface IllustratorTextFrame : IllustratorPageItem

- (SBElementArray<IllustratorCharacter *> *) characters;
- (SBElementArray<IllustratorInsertionPoint *> *) insertionPoints;
- (SBElementArray<IllustratorLine *> *) lines;
- (SBElementArray<IllustratorParagraph *> *) paragraphs;
- (SBElementArray<IllustratorText *> *) text;
- (SBElementArray<IllustratorWord *> *) words;

@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy) NSArray *anchor;  // the position of the anchor point (start of base line for point text)
@property IllustratorETAa antialias;  // the type of a text anti-aliasing on text frame item
@property NSInteger columnCount;  // the column count in the text frame (area text only)
@property double columnGutter;  // the column gutter in the text frame (area text only)
@property (copy) id contentVariable;  // the content variable bound to this text art item
@property (copy) NSString *contents;  // the text contents of this text frame
@property double endTValue;  // the end position of text along a path, as a value relative to the path's segments (path text only)
@property IllustratorEFBT firstBaseline;  // the first baseline offset type for text frame item (for Area Text only)
@property double firstBaselineMin;  // the first baseline offset minimum value for text frame item (for Area Text only)
@property BOOL flowLinksHorizontally;  // Flow text between linked frame horizontally first. (area text only)
@property (readonly) IllustratorETXt kind;  // the type of a text frame item
@property (copy, readonly) IllustratorMatrix *matrix;  // The transformation matrix of the text frame object
@property (copy) IllustratorTextFrame *nextFrame;  // the linked text frame following this one
@property BOOL opticalAlignment;  // is the optical alignment active?
@property (copy) IllustratorTextFrame *previousFrame;  // the linked text frame preceding this one
@property NSInteger rowCount;  // the row count in the text frame (area text only)
@property double rowGutter;  // the row gutter in the text frame (area text only)
@property (copy, readonly) NSArray<IllustratorText *> *selection;  // the selected text (ranges) in the story
@property double spacing;  // the amount of spacing (path text only)
@property double startTValue;  // the start position of text along a path, as a value relative to the path's segments (path text only)
@property (copy, readonly) IllustratorStory *story;  // the story of the text frame
@property IllustratorETXo textOrientation;  // the orientation of the text in the frame
@property (copy, readonly) IllustratorTextPath *textPath;  // the path for the text frame (area and path text)
@property (copy, readonly) IllustratorText *textRange;  // the text range of the text frame

- (IllustratorTextFrame *) convertAreaObjectToPointObject;  // Convert Area Type Text Object To Point Type Object
- (IllustratorTextFrame *) convertPointObjectToAreaObject;  // Convert Point Type Text Object To Area Type Object
- (IllustratorGroupItem *) convertToPaths;  // Convert text item to path items
- (void) generateThumbnailWithTextFramePropertiesTextString:(NSString *)textString fontSize:(double)fontSize textColor:(IllustratorColorInfo *)textColor destinationPath:(NSURL *)destinationPath;  // Generates the thumbnail with the properties of first character in the text frame

@end

// A view
@interface IllustratorView : SBObject <IllustratorGenericMethods>

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy, readonly) NSArray *bounds;  // the bounding rectangle of this view
@property (copy) NSArray *centerPoint;  // the center point of this view
@property (copy, readonly) SBObject *container;  // the object's container
@property IllustratorESCM screenMode;  // the mode of display
@property double zoom;  // the zoom factor of this view


@end



/*
 * Color Suite
 */

// The parent class for all color values used in Illustrator.  See the specific color classes for more information
@interface IllustratorColorInfo : SBObject <IllustratorGenericMethods>

- (IllustratorColorInfo *) showColorPicker;  // Invokes application's color picker

@end

// A CMYK color specification
@interface IllustratorCMYKColorInfo : IllustratorColorInfo

@property double cyan;  // the cyan color value (between 0.0 and 100.0) ( 0.0 - 100.0; default: 0.0 )
@property double magenta;  // the magenta color value (between 0.0 and 100.0) ( 0.0 - 100.0; default: 0.0 )
@property double yellow;  // the yellow color value (between 0.0 and 100.0) ( 0.0 - 100.0; default: 0.0 )
@property double black;  // the black color value (between 0.0 and 100.0) ( 0.0 - 100.0; default: 0.0 )


@end

// A Gradient color specification
@interface IllustratorGradientColorInfo : IllustratorColorInfo

@property double angle;  // the gradient vector angle ( default: 0.0 )
@property (copy) IllustratorGradient *gradient;  // reference to the object defining the gradient
@property double hiliteAngle;  // the gradient hilite vector angle ( default: 0.0 )
@property double hiliteLength;  // the gradient hilite vector length ( default: 0.0 )
@property double length;  // the gradient vector length ( default: 0.0 )
@property (copy) IllustratorMatrix *matrix;  // additional transformation arising from manipulating the path
@property (copy) NSArray *origin;  // the gradient vector origin


@end

// A gray color specification
@interface IllustratorGrayColorInfo : IllustratorColorInfo

@property double grayValue;  // the gray value (between 0.0 and 100.0) ( 0.0 - 100.0; default: 0.0 )


@end

// An Lab color specification
@interface IllustratorLabColorInfo : IllustratorColorInfo

@property double l;  // the L color value (between 0.0 and 100.0) ( 0.0 - 100.0; default: 0.0 )
@property double a;  // the a color value (between -128.0 and 127.0) ( -128.0 - 127.0; default: 0.0 )
@property double b;  // the b color value (between -128.0 and 127.0) ( -128.0 - 127.0; default: 0.0 )


@end

// represents the 'none' color
@interface IllustratorNoColorInfo : IllustratorColorInfo


@end

// A pattern
@interface IllustratorPattern : SBObject <IllustratorGenericMethods>

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy, readonly) SBObject *container;  // the object's container
@property (copy) NSString *name;  // The pattern's name


@end

// A Pattern color specification
@interface IllustratorPatternColorInfo : IllustratorColorInfo

@property (copy) IllustratorMatrix *matrix;  // additional transformation arising from manipulating the path
@property (copy) IllustratorPattern *pattern;
@property BOOL reflect;  // whether or not the prototype is reflected before filling ( default: false )
@property double reflectAngle;  // the axis around which to reflect ( default: 0.0 )
@property double rotation;  // the angle to rotate the before filling ( default: 0.0 )
@property (copy) NSArray *scaleFactor;  // the fraction to scale the prototype before filling
@property double shearAngle;  // the angle to slant the shear by ( default: 0.0 )
@property double shearAxis;  // the axis to shear with respect to ( default: 0.0 )
@property double shiftAngle;  // the angle to translate the (unscaled) prototype before filling ( default: 0.0 )
@property double shiftDistance;  // the distance to translate the (unscaled) prototype before filling ( default: 0.0 )


@end

// An RGB color specification
@interface IllustratorRGBColorInfo : IllustratorColorInfo

@property double red;  // the red color value (between 0.0 and 255.0) ( 0.0 - 255.0; default: 0.0 )
@property double green;  // the green color value (between 0.0 and 255.0) ( 0.0 - 255.0; default: 0.0 )
@property double blue;  // the blue color value (between 0.0 and 255.0) ( 0.0 - 255.0; default: 0.0 )


@end

// A custom color
@interface IllustratorSpot : SBObject <IllustratorGenericMethods>

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy) IllustratorColorInfo *color;
@property IllustratorECMd colorType;  // Type of the custom color
@property (copy, readonly) SBObject *container;  // the object's container
@property (copy) NSString *name;  // The custom color's name
@property (readonly) IllustratorESCk spotKind;  // Kind of the spot color (i.e. RGB, CMYK or LAB), it is the name of color kind contained in spot

- (NSArray<NSNumber *> *) getInternalColor;  // Gets the internal color of a spot.

@end

// Information about the spot color
@interface IllustratorSpotColorInfo : IllustratorColorInfo

@property (copy) IllustratorSpot *spot;
@property double tint;  // percentage level of tint to be applied to the spot color ( 0.0 - 100.0; default: 100.0 )


@end

// A color swatch
@interface IllustratorSwatch : SBObject <IllustratorGenericMethods>

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy) IllustratorColorInfo *color;  // the color information of the swatch
@property (copy, readonly) SBObject *container;  // the object's container
@property (copy) NSString *name;  // The swatch's name


@end

// A Swatch group
@interface IllustratorSwatchgroup : SBObject <IllustratorGenericMethods>

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy, readonly) SBObject *container;  // the object's container
@property (copy) NSString *name;  // Name of the swatch group

- (void) addSpotSpot:(IllustratorSpot *)spot;  // Add a spot swatch to the group
- (void) addSwatchSwatch:(IllustratorSwatch *)swatch;  // Add a swatch to the group
- (NSArray<IllustratorSwatch *> *) getAllSwatches;  // get all swatches in the swatch group

@end



/*
 * Text Suite
 */

@interface IllustratorCharacter : SBObject <IllustratorGenericMethods>

- (SBElementArray<IllustratorCharacterStyle *> *) characterStyles;
- (SBElementArray<IllustratorCharacter *> *) characters;
- (SBElementArray<IllustratorInsertionPoint *> *) insertionPoints;
- (SBElementArray<IllustratorLine *> *) lines;
- (SBElementArray<IllustratorParagraphStyle *> *) paragraphStyles;
- (SBElementArray<IllustratorParagraph *> *) paragraphs;
- (SBElementArray<IllustratorText *> *) text;
- (SBElementArray<IllustratorWord *> *) words;

@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property IllustratorCOTP OpenTypePosition;  // the OpenType baseline position
@property NSInteger TCYHorizontal;  // the Tate-Chu-Yoko horizontal adjustment in points
@property NSInteger TCYVertical;  // the Tate-Chu-Yoko vertical adjustment in points
@property double Tsume;  // the percentage of space reduction around a Japanese character (100 = 100%)
@property double akiLeft;  // the em amount of left aki
@property double akiRight;  // the em amount of right aki amount
@property IllustratorESRA alignment;  // the character alignment type
@property IllustratorEAGF alternateGlyphs;  // the alternate glyphs form
@property BOOL autoLeading;  // whether to use automatic leading
@property IllustratorEBSD baselineDirection;  // the Japanese text baseline direction
@property IllustratorEFBO baselinePosition;  // the baseline position of text
@property double baselineShift;  // the amount of shift (in points) of the text baseline
@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property IllustratorEFCO capitalization;  // the case of text
@property NSInteger characterOffset;  // offset of the first character of the range from the beginning of the story, in characters.
@property BOOL connectionForms;  // whether the OpenType connection forms should be used
@property (copy, readonly) SBObject *container;  // the object's container
@property (copy) NSString *contents;  // the text string
@property BOOL contextualLigature;  // whether the contextual ligature should be used
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property double diacXOffset;  // diacritics x offset attribute
@property double diacYOffset;  // diacritics y offset attribute
@property IllustratorEDVP diacriticsPositioning;  // diacritics positioning attribute
@property IllustratorEDgS digitSet;  // digit set attribute
@property IllustratorEDOT directionOverride;  // direction override attribute
@property BOOL discretionaryLigature;  // whether the discretionary ligature should be used
@property NSInteger end;  // end index of the text range
@property IllustratorCFST figureStyle;  // which figure style to use in OpenType font
@property (copy) IllustratorColorInfo *fillColor;  // the color of the text fill
@property BOOL fractions;  // whether the OpenType fractions should be used
@property double horizontalScale;  // character horizontal scaling factor expressed as a percentage (100 = 100%)
@property (readonly) NSInteger index;  // the index of this instance of the object
@property BOOL italics;  // does the Japanese OpenType support italics?
@property BOOL justificationAlternates;  // justification alternates attribute
@property BOOL kana;  // does the Japanese OpenType support kana?
@property IllustratorEKas kashidas;  // kashidas attribute
@property NSInteger kerning;  // controls the spacing between two characters (in milli-ems)
@property IllustratorEATK kerningMethod;  // the automatic kerning method to use
@property IllustratorELNG language;  // the language of text
@property double leading;  // the amount of space between two lines of text (in points)
@property NSInteger length;  // length of text range ( minimum 0 )
@property BOOL ligature;  // whether the ligature should be used
@property BOOL noBreak;  // whether line breaks are allowed
@property BOOL ordinals;  // whether the OpenType ordinals should be used
@property BOOL ornaments;  // whether the OpenType ornaments should be used
@property BOOL overprintFill;  // whether to overprint the fill of the text
@property BOOL overprintStroke;  // whether to overprint the stroke of the text
@property BOOL proportionalMetrics;  // does the Japanese OpenType support proportional font?
@property double rotation;  // the character rotation angle (in degrees)
@property (copy, readonly) NSArray<IllustratorText *> *selection;  // the selected text (ranges) in the text range
@property double size;  // font size in points
@property NSInteger start;  // start index of the text range
@property (copy, readonly) IllustratorStory *story;  // the story of the text range
@property BOOL strikeThrough;  // whether to draw a strike through line over the text
@property (copy) IllustratorColorInfo *strokeColor;  // the color of the text stroke
@property double strokeWeight;  // line width of stroke
@property BOOL stylisticAlternates;  // whether the OpenType stylistic alternates should be used
@property NSInteger stylisticSets;  // stylistic sets attribute
@property BOOL swash;  // whether the OpenType swash should be used
@property (copy) id textFont;  // the text font
@property BOOL titling;  // whether the OpenType titling alternates should be used
@property NSInteger tracking;  // the tracking or range kerning amount in thousands of an em
@property BOOL underline;  // whether to underline the text
@property double verticalScale;  // character vertical scaling factor expressed as a percentage (100 = 100%)
@property NSInteger warichuCharactersAfterBreak;
@property NSInteger warichuCharactersBeforeBreak;
@property BOOL warichuEnabled;  // whether WariChu is enabled
@property NSInteger warichuGap;  // the Wari-Chu line gap
@property IllustratorEWCJ warichuJustification;
@property NSInteger warichuLines;  // the number of Wari-Chu (multiple text lines fit into a space meant for one) lines
@property double warichuScale;  // the Wari-Chu scale


@end

// a named style that remembers character attributes
@interface IllustratorCharacterStyle : SBObject <IllustratorGenericMethods>

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property double akiLeft;  // the em amount of left aki
@property double akiRight;  // the em amount of right aki amount
@property IllustratorESRA alignment;  // the character alignment type
@property IllustratorEAGF alternateGlyphs;  // the alternate glyphs form
@property BOOL autoLeading;  // whether to use automatic leading
@property IllustratorEBSD baselineDirection;  // the Japanese text baseline direction
@property IllustratorEFBO baselinePosition;  // the baseline position of text
@property double baselineShift;  // the amount of shift (in points) of the text baseline
@property IllustratorEFCO capitalization;  // the case of text
@property BOOL connectionForms;  // whether the OpenType connection forms should be used
@property (copy, readonly) SBObject *container;  // the object's container
@property BOOL contextualLigature;  // whether the contextual ligature should be used
@property double diacXOffset;  // diacritics x offset attribute
@property double diacYOffset;  // diacritics y offset attribute
@property IllustratorEDVP diacriticsPositioning;  // diacritics positioning attribute
@property IllustratorEDgS digitSet;  // digit set attribute
@property IllustratorEDOT directionOverride;  // direction override attribute
@property BOOL discretionaryLigature;  // whether the discretionary ligature should be used
@property IllustratorCFST figureStyle;  // which figure style to use in OpenType font
@property (copy) IllustratorColorInfo *fillColor;  // the color of the text fill
@property BOOL fractions;  // whether the OpenType fractions should be used
@property double horizontalScale;  // character horizontal scaling factor expressed as a percentage (100 = 100%)
@property BOOL italics;  // does the Japanese OpenType support italics?
@property BOOL justificationAlternates;  // justification alternates attribute
@property BOOL kana;  // does the Japanese OpenType support kana?
@property IllustratorEKas kashidas;  // kashidas attribute
@property IllustratorEATK kerningMethod;  // the automatic kerning method to use
@property IllustratorELNG language;  // the language of text
@property double leading;  // the amount of space between two lines of text (in points)
@property BOOL ligature;  // whether the ligature should be used
@property (copy) NSString *name;  // the character style's name
@property BOOL noBreak;  // whether line breaks are allowed
@property IllustratorCOTP OpenTypePosition;  // the OpenType baseline position
@property BOOL ordinals;  // whether the OpenType ordinals should be used
@property BOOL ornaments;  // whether the OpenType ornaments should be used
@property BOOL overprintFill;  // whether to overprint the fill of the text
@property BOOL overprintStroke;  // whether to overprint the stroke of the text
@property BOOL proportionalMetrics;  // does the Japanese OpenType support proportional font?
@property double rotation;  // the character rotation angle (in degrees)
@property double size;  // font size in points
@property BOOL strikeThrough;  // whether to draw a strike through line over the text
@property (copy) IllustratorColorInfo *strokeColor;  // the color of the text stroke
@property double strokeWeight;  // line width of stroke
@property BOOL stylisticAlternates;  // whether the OpenType stylistic alternates should be used
@property NSInteger stylisticSets;  // stylistic sets attribute
@property BOOL swash;  // whether the OpenType swash should be used
@property NSInteger TCYHorizontal;  // the Tate-Chu-Yoko horizontal adjustment in points
@property NSInteger TCYVertical;  // the Tate-Chu-Yoko vertical adjustment in points
@property (copy) id textFont;  // the text font
@property BOOL titling;  // whether the OpenType titling alternates should be used
@property NSInteger tracking;  // the tracking or range kerning amount in thousands of an em
@property double Tsume;  // the percentage of space reduction around a Japanese character (100 = 100%)
@property BOOL underline;  // whether to underline the text
@property double verticalScale;  // character vertical scaling factor expressed as a percentage (100 = 100%)
@property NSInteger warichuCharactersAfterBreak;
@property NSInteger warichuCharactersBeforeBreak;
@property BOOL warichuEnabled;  // whether WariChu is enabled
@property NSInteger warichuGap;  // the Wari-Chu line gap
@property IllustratorEWCJ warichuJustification;
@property NSInteger warichuLines;  // the number of Wari-Chu (multiple text lines fit into a space meant for one) lines
@property double warichuScale;  // the Wari-Chu scale

- (void) applyCharacterStyleTo:(id)to clearingOverrides:(BOOL)clearingOverrides;  // Apply the character style to text object(s)

@end

// a location between characters, used to insert new text objects
@interface IllustratorInsertionPoint : SBObject <IllustratorGenericMethods>

- (SBElementArray<IllustratorCharacter *> *) characters;
- (SBElementArray<IllustratorLine *> *) lines;
- (SBElementArray<IllustratorParagraph *> *) paragraphs;
- (SBElementArray<IllustratorText *> *) text;
- (SBElementArray<IllustratorWord *> *) words;

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy, readonly) SBObject *container;  // the object's container
@property (copy, readonly) IllustratorStory *story;  // the story of the text range


@end

@interface IllustratorLine : SBObject <IllustratorGenericMethods>

- (SBElementArray<IllustratorCharacterStyle *> *) characterStyles;
- (SBElementArray<IllustratorCharacter *> *) characters;
- (SBElementArray<IllustratorInsertionPoint *> *) insertionPoints;
- (SBElementArray<IllustratorLine *> *) lines;
- (SBElementArray<IllustratorParagraphStyle *> *) paragraphStyles;
- (SBElementArray<IllustratorParagraph *> *) paragraphs;
- (SBElementArray<IllustratorText *> *) text;
- (SBElementArray<IllustratorWord *> *) words;

@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property IllustratorCOTP OpenTypePosition;  // the OpenType baseline position
@property NSInteger TCYHorizontal;  // the Tate-Chu-Yoko horizontal adjustment in points
@property NSInteger TCYVertical;  // the Tate-Chu-Yoko vertical adjustment in points
@property double Tsume;  // the percentage of space reduction around a Japanese character (100 = 100%)
@property double akiLeft;  // the em amount of left aki
@property double akiRight;  // the em amount of right aki amount
@property IllustratorESRA alignment;  // the character alignment type
@property IllustratorEAGF alternateGlyphs;  // the alternate glyphs form
@property BOOL autoLeading;  // whether to use automatic leading
@property IllustratorEBSD baselineDirection;  // the Japanese text baseline direction
@property IllustratorEFBO baselinePosition;  // the baseline position of text
@property double baselineShift;  // the amount of shift (in points) of the text baseline
@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property IllustratorEFCO capitalization;  // the case of text
@property NSInteger characterOffset;  // offset of the first character of the range from the beginning of the story, in characters.
@property BOOL connectionForms;  // whether the OpenType connection forms should be used
@property (copy, readonly) SBObject *container;  // the object's container
@property (copy) NSString *contents;  // the text string
@property BOOL contextualLigature;  // whether the contextual ligature should be used
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property double diacXOffset;  // diacritics x offset attribute
@property double diacYOffset;  // diacritics y offset attribute
@property IllustratorEDVP diacriticsPositioning;  // diacritics positioning attribute
@property IllustratorEDgS digitSet;  // digit set attribute
@property IllustratorEDOT directionOverride;  // direction override attribute
@property BOOL discretionaryLigature;  // whether the discretionary ligature should be used
@property NSInteger end;  // end index of the text range
@property IllustratorCFST figureStyle;  // which figure style to use in OpenType font
@property (copy) IllustratorColorInfo *fillColor;  // the color of the text fill
@property BOOL fractions;  // whether the OpenType fractions should be used
@property double horizontalScale;  // character horizontal scaling factor expressed as a percentage (100 = 100%)
@property (readonly) NSInteger index;  // the index of this instance of the object
@property BOOL italics;  // does the Japanese OpenType support italics?
@property BOOL justificationAlternates;  // justification alternates attribute
@property BOOL kana;  // does the Japanese OpenType support kana?
@property IllustratorEKas kashidas;  // kashidas attribute
@property NSInteger kerning;  // controls the spacing between two characters (in milli-ems)
@property IllustratorEATK kerningMethod;  // the automatic kerning method to use
@property IllustratorELNG language;  // the language of text
@property double leading;  // the amount of space between two lines of text (in points)
@property NSInteger length;  // length of text range ( minimum 0 )
@property BOOL ligature;  // whether the ligature should be used
@property BOOL noBreak;  // whether line breaks are allowed
@property BOOL ordinals;  // whether the OpenType ordinals should be used
@property BOOL ornaments;  // whether the OpenType ornaments should be used
@property BOOL overprintFill;  // whether to overprint the fill of the text
@property BOOL overprintStroke;  // whether to overprint the stroke of the text
@property BOOL proportionalMetrics;  // does the Japanese OpenType support proportional font?
@property double rotation;  // the character rotation angle (in degrees)
@property (copy, readonly) NSArray<IllustratorText *> *selection;  // the selected text (ranges) in the text range
@property double size;  // font size in points
@property NSInteger start;  // start index of the text range
@property (copy, readonly) IllustratorStory *story;  // the story of the text range
@property BOOL strikeThrough;  // whether to draw a strike through line over the text
@property (copy) IllustratorColorInfo *strokeColor;  // the color of the text stroke
@property double strokeWeight;  // line width of stroke
@property BOOL stylisticAlternates;  // whether the OpenType stylistic alternates should be used
@property NSInteger stylisticSets;  // stylistic sets attribute
@property BOOL swash;  // whether the OpenType swash should be used
@property (copy) id textFont;  // the text font
@property BOOL titling;  // whether the OpenType titling alternates should be used
@property NSInteger tracking;  // the tracking or range kerning amount in thousands of an em
@property BOOL underline;  // whether to underline the text
@property double verticalScale;  // character vertical scaling factor expressed as a percentage (100 = 100%)
@property NSInteger warichuCharactersAfterBreak;
@property NSInteger warichuCharactersBeforeBreak;
@property BOOL warichuEnabled;  // whether WariChu is enabled
@property NSInteger warichuGap;  // the Wari-Chu line gap
@property IllustratorEWCJ warichuJustification;
@property NSInteger warichuLines;  // the number of Wari-Chu (multiple text lines fit into a space meant for one) lines
@property double warichuScale;  // the Wari-Chu scale


@end

@interface IllustratorParagraph : SBObject <IllustratorGenericMethods>

- (SBElementArray<IllustratorCharacterStyle *> *) characterStyles;
- (SBElementArray<IllustratorCharacter *> *) characters;
- (SBElementArray<IllustratorInsertionPoint *> *) insertionPoints;
- (SBElementArray<IllustratorLine *> *) lines;
- (SBElementArray<IllustratorParagraphStyle *> *) paragraphStyles;
- (SBElementArray<IllustratorParagraph *> *) paragraphs;
- (SBElementArray<IllustratorText *> *) text;
- (SBElementArray<IllustratorWord *> *) words;

@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property BOOL BunriKinshi;  // is BunriKinshi enabled?
@property IllustratorEPJ0 BurasagariType;  // the Burasagari type
@property IllustratorECET ComposerEngine;  // composer engine attribute
@property IllustratorEKWT KashidaWidth;  // the Kashida Width attribute
@property (copy) NSString *Kinsoku;  // the Kinsoku Shori name
@property IllustratorEPJ2 KinsokuOrder;  // the preferred Kinsoku order
@property BOOL KurikaeshiMojiShori;  // is KurikaeshiMojiShori enabled?
@property (copy) NSString *Mojikumi;  // the Mojikumi name
@property IllustratorCOTP OpenTypePosition;  // the OpenType baseline position
@property IllustratorEPDT ParagraphDirection;  // main writing direction attribute
@property NSInteger TCYHorizontal;  // the Tate-Chu-Yoko horizontal adjustment in points
@property NSInteger TCYVertical;  // the Tate-Chu-Yoko vertical adjustment in points
@property double Tsume;  // the percentage of space reduction around a Japanese character (100 = 100%)
@property double akiLeft;  // the em amount of left aki
@property double akiRight;  // the em amount of right aki amount
@property IllustratorESRA alignment;  // the character alignment type
@property IllustratorEAGF alternateGlyphs;  // the alternate glyphs form
@property BOOL autoLeading;  // whether to use automatic leading
@property double autoLeadingAmount;  // auto leading amount (in percentage)
@property IllustratorEBSD baselineDirection;  // the Japanese text baseline direction
@property IllustratorEFBO baselinePosition;  // the baseline position of text
@property double baselineShift;  // the amount of shift (in points) of the text baseline
@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property IllustratorEFCO capitalization;  // the case of text
@property NSInteger characterOffset;  // offset of the first character of the range from the beginning of the story, in characters.
@property BOOL connectionForms;  // whether the OpenType connection forms should be used
@property (copy, readonly) SBObject *container;  // the object's container
@property (copy) NSString *contents;  // the text string
@property BOOL contextualLigature;  // whether the contextual ligature should be used
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property double desiredGlyphScaling;  // desired glyph scaling expressed as a percentage
@property double desiredLetterSpacing;  // desired letter spacing expressed as a percentage
@property double desiredWordSpacing;  // desired word spacing expressed as a percentage
@property double diacXOffset;  // diacritics x offset attribute
@property double diacYOffset;  // diacritics y offset attribute
@property IllustratorEDVP diacriticsPositioning;  // diacritics positioning attribute
@property IllustratorEDgS digitSet;  // digit set attribute
@property IllustratorEDOT directionOverride;  // direction override attribute
@property BOOL discretionaryLigature;  // whether the discretionary ligature should be used
@property NSInteger end;  // end index of the text range
@property BOOL everyLineComposer;  // whether to enable every line composer (as opposed to single line composer)?
@property IllustratorCFST figureStyle;  // which figure style to use in OpenType font
@property (copy) IllustratorColorInfo *fillColor;  // the color of the text fill
@property double firstLineIndent;  // first line left indent expressed in points
@property BOOL fractions;  // whether the OpenType fractions should be used
@property double horizontalScale;  // character horizontal scaling factor expressed as a percentage (100 = 100%)
@property BOOL hyphenateCapitalizedWords;  // is hyphenation enabled for the capitalized words?
@property BOOL hyphenation;  // is hyphenation enabled for the paragraph?
@property double hyphenationPreference;  // hyphenation preference scale for better spacing (0) or fewer hyphens (1) ( 0.0 - 1.0 )
@property double hyphenationZone;  // size of the hyphenation zone
@property (readonly) NSInteger index;  // the index of this instance of the object
@property BOOL italics;  // does the Japanese OpenType support italics?
@property IllustratorEPRa justification;  // paragraph justification
@property BOOL justificationAlternates;  // justification alternates attribute
@property BOOL kana;  // does the Japanese OpenType support kana?
@property IllustratorEKas kashidas;  // kashidas attribute
@property NSInteger kerning;  // controls the spacing between two characters (in milli-ems)
@property IllustratorEATK kerningMethod;  // the automatic kerning method to use
@property IllustratorELNG language;  // the language of text
@property double leading;  // the amount of space between two lines of text (in points)
@property IllustratorEALD leadingType;  // auto leading type
@property double leftIndent;  // left indent of margin expressed in points
@property NSInteger length;  // length of text range ( minimum 0 )
@property BOOL ligature;  // whether the ligature should be used
@property NSInteger maximumConsecutiveHyphens;  // maximum number of consecutive hypenated lines
@property double maximumGlyphScaling;  // maximum glyph scaling expressed as a percentage
@property double maximumLetterSpacing;  // maximum letter spacing expressed as a percentage
@property double maximumWordSpacing;  // maximum word spacing expressed as a percentage
@property NSInteger minimumAfterHyphen;  // minimum number of characters after a hyphen
@property NSInteger minimumBeforeHyphen;  // minimum number of characters before a hyphen
@property double minimumGlyphScaling;  // minimum glyph scaling expressed as a percentage
@property NSInteger minimumHyphenatedWordSize;  // minimum hyphenated word size
@property double minimumLetterSpacing;  // minimum letter spacing expressed as a percentage
@property double minimumWordSpacing;  // minimum word spacing expressed as a percentage
@property BOOL noBreak;  // whether line breaks are allowed
@property BOOL ordinals;  // whether the OpenType ordinals should be used
@property BOOL ornaments;  // whether the OpenType ornaments should be used
@property BOOL overprintFill;  // whether to overprint the fill of the text
@property BOOL overprintStroke;  // whether to overprint the stroke of the text
@property BOOL proportionalMetrics;  // does the Japanese OpenType support proportional font?
@property double rightIndent;  // right indent of margin expressed in points
@property BOOL romanHanging;  // is Roman hanging punctuation enabled?
@property double rotation;  // the character rotation angle (in degrees)
@property (copy, readonly) NSArray<IllustratorText *> *selection;  // the selected text (ranges) in the text range
@property IllustratorEPRa singleWordJustification;  // single word justification
@property double size;  // font size in points
@property double spaceAfter;  // spacing after paragraph in points
@property double spaceBefore;  // spacing before paragraph in points
@property NSInteger start;  // start index of the text range
@property (copy, readonly) IllustratorStory *story;  // the story of the text range
@property BOOL strikeThrough;  // whether to draw a strike through line over the text
@property (copy) IllustratorColorInfo *strokeColor;  // the color of the text stroke
@property double strokeWeight;  // line width of stroke
@property BOOL stylisticAlternates;  // whether the OpenType stylistic alternates should be used
@property NSInteger stylisticSets;  // stylistic sets attribute
@property BOOL swash;  // whether the OpenType swash should be used
@property (copy) NSArray<IllustratorTabStopInfo *> *tabStops;  // tab stop settings
@property (copy) id textFont;  // the text font
@property BOOL titling;  // whether the OpenType titling alternates should be used
@property NSInteger tracking;  // the tracking or range kerning amount in thousands of an em
@property BOOL underline;  // whether to underline the text
@property double verticalScale;  // character vertical scaling factor expressed as a percentage (100 = 100%)
@property NSInteger warichuCharactersAfterBreak;
@property NSInteger warichuCharactersBeforeBreak;
@property BOOL warichuEnabled;  // whether WariChu is enabled
@property NSInteger warichuGap;  // the Wari-Chu line gap
@property IllustratorEWCJ warichuJustification;
@property NSInteger warichuLines;  // the number of Wari-Chu (multiple text lines fit into a space meant for one) lines
@property double warichuScale;  // the Wari-Chu scale


@end

// a named style that remembers paragraph attributes
@interface IllustratorParagraphStyle : SBObject <IllustratorGenericMethods>

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property double akiLeft;  // the em amount of left aki
@property double akiRight;  // the em amount of right aki amount
@property IllustratorESRA alignment;  // the character alignment type
@property IllustratorEAGF alternateGlyphs;  // the alternate glyphs form
@property BOOL autoLeading;  // whether to use automatic leading
@property double autoLeadingAmount;  // auto leading amount (in percentage)
@property IllustratorEBSD baselineDirection;  // the Japanese text baseline direction
@property IllustratorEFBO baselinePosition;  // the baseline position of text
@property double baselineShift;  // the amount of shift (in points) of the text baseline
@property BOOL BunriKinshi;  // is BunriKinshi enabled?
@property IllustratorEPJ0 BurasagariType;  // the Burasagari type
@property IllustratorEFCO capitalization;  // the case of text
@property IllustratorECET ComposerEngine;  // composer engine attribute
@property BOOL connectionForms;  // whether the OpenType connection forms should be used
@property (copy, readonly) SBObject *container;  // the object's container
@property BOOL contextualLigature;  // whether the contextual ligature should be used
@property double desiredGlyphScaling;  // desired glyph scaling expressed as a percentage
@property double desiredLetterSpacing;  // desired letter spacing expressed as a percentage
@property double desiredWordSpacing;  // desired word spacing expressed as a percentage
@property double diacXOffset;  // diacritics x offset attribute
@property double diacYOffset;  // diacritics y offset attribute
@property IllustratorEDVP diacriticsPositioning;  // diacritics positioning attribute
@property IllustratorEDgS digitSet;  // digit set attribute
@property IllustratorEDOT directionOverride;  // direction override attribute
@property BOOL discretionaryLigature;  // whether the discretionary ligature should be used
@property BOOL everyLineComposer;  // whether to enable every line composer (as opposed to single line composer)?
@property IllustratorCFST figureStyle;  // which figure style to use in OpenType font
@property (copy) IllustratorColorInfo *fillColor;  // the color of the text fill
@property double firstLineIndent;  // first line left indent expressed in points
@property BOOL fractions;  // whether the OpenType fractions should be used
@property double horizontalScale;  // character horizontal scaling factor expressed as a percentage (100 = 100%)
@property BOOL hyphenateCapitalizedWords;  // is hyphenation enabled for the capitalized words?
@property BOOL hyphenation;  // is hyphenation enabled for the paragraph?
@property double hyphenationPreference;  // hyphenation preference scale for better spacing (0) or fewer hyphens (1) ( 0.0 - 1.0 )
@property double hyphenationZone;  // size of the hyphenation zone
@property BOOL italics;  // does the Japanese OpenType support italics?
@property IllustratorEPRa justification;  // paragraph justification
@property BOOL justificationAlternates;  // justification alternates attribute
@property BOOL kana;  // does the Japanese OpenType support kana?
@property IllustratorEKas kashidas;  // kashidas attribute
@property IllustratorEKWT KashidaWidth;  // the Kashida Width attribute
@property IllustratorEATK kerningMethod;  // the automatic kerning method to use
@property (copy) NSString *Kinsoku;  // the Kinsoku Shori name
@property IllustratorEPJ2 KinsokuOrder;  // the preferred Kinsoku order
@property BOOL KurikaeshiMojiShori;  // is KurikaeshiMojiShori enabled?
@property IllustratorELNG language;  // the language of text
@property double leading;  // the amount of space between two lines of text (in points)
@property IllustratorEALD leadingType;  // auto leading type
@property double leftIndent;  // left indent of margin expressed in points
@property BOOL ligature;  // whether the ligature should be used
@property NSInteger maximumConsecutiveHyphens;  // maximum number of consecutive hypenated lines
@property double maximumGlyphScaling;  // maximum glyph scaling expressed as a percentage
@property double maximumLetterSpacing;  // maximum letter spacing expressed as a percentage
@property double maximumWordSpacing;  // maximum word spacing expressed as a percentage
@property NSInteger minimumAfterHyphen;  // minimum number of characters after a hyphen
@property NSInteger minimumBeforeHyphen;  // minimum number of characters before a hyphen
@property double minimumGlyphScaling;  // minimum glyph scaling expressed as a percentage
@property NSInteger minimumHyphenatedWordSize;  // minimum hyphenated word size
@property double minimumLetterSpacing;  // minimum letter spacing expressed as a percentage
@property double minimumWordSpacing;  // minimum word spacing expressed as a percentage
@property (copy) NSString *Mojikumi;  // the Mojikumi name
@property (copy) NSString *name;  // the paragraph style's name
@property BOOL noBreak;  // whether line breaks are allowed
@property IllustratorCOTP OpenTypePosition;  // the OpenType baseline position
@property BOOL ordinals;  // whether the OpenType ordinals should be used
@property BOOL ornaments;  // whether the OpenType ornaments should be used
@property BOOL overprintFill;  // whether to overprint the fill of the text
@property BOOL overprintStroke;  // whether to overprint the stroke of the text
@property IllustratorEPDT ParagraphDirection;  // main writing direction attribute
@property BOOL proportionalMetrics;  // does the Japanese OpenType support proportional font?
@property double rightIndent;  // right indent of margin expressed in points
@property BOOL romanHanging;  // is Roman hanging punctuation enabled?
@property double rotation;  // the character rotation angle (in degrees)
@property IllustratorEPRa singleWordJustification;  // single word justification
@property double size;  // font size in points
@property double spaceAfter;  // spacing after paragraph in points
@property double spaceBefore;  // spacing before paragraph in points
@property BOOL strikeThrough;  // whether to draw a strike through line over the text
@property (copy) IllustratorColorInfo *strokeColor;  // the color of the text stroke
@property double strokeWeight;  // line width of stroke
@property BOOL stylisticAlternates;  // whether the OpenType stylistic alternates should be used
@property NSInteger stylisticSets;  // stylistic sets attribute
@property BOOL swash;  // whether the OpenType swash should be used
@property (copy) NSArray<IllustratorTabStopInfo *> *tabStops;  // tab stop settings
@property NSInteger TCYHorizontal;  // the Tate-Chu-Yoko horizontal adjustment in points
@property NSInteger TCYVertical;  // the Tate-Chu-Yoko vertical adjustment in points
@property (copy) id textFont;  // the text font
@property BOOL titling;  // whether the OpenType titling alternates should be used
@property NSInteger tracking;  // the tracking or range kerning amount in thousands of an em
@property double Tsume;  // the percentage of space reduction around a Japanese character (100 = 100%)
@property BOOL underline;  // whether to underline the text
@property double verticalScale;  // character vertical scaling factor expressed as a percentage (100 = 100%)
@property NSInteger warichuCharactersAfterBreak;
@property NSInteger warichuCharactersBeforeBreak;
@property BOOL warichuEnabled;  // whether WariChu is enabled
@property NSInteger warichuGap;  // the Wari-Chu line gap
@property IllustratorEWCJ warichuJustification;
@property NSInteger warichuLines;  // the number of Wari-Chu (multiple text lines fit into a space meant for one) lines
@property double warichuScale;  // the Wari-Chu scale

- (void) applyParagraphStyleTo:(id)to clearingOverrides:(BOOL)clearingOverrides;  // Apply the paragraph style to text object(s)
- (void) clearStyle;  // Remove all the attributes from this paragraph style

@end

// a contiguous block of text
@interface IllustratorStory : SBObject <IllustratorGenericMethods>

- (SBElementArray<IllustratorCharacter *> *) characters;
- (SBElementArray<IllustratorInsertionPoint *> *) insertionPoints;
- (SBElementArray<IllustratorLine *> *) lines;
- (SBElementArray<IllustratorParagraph *> *) paragraphs;
- (SBElementArray<IllustratorTextFrame *> *) textFrames;
- (SBElementArray<IllustratorText *> *) text;
- (SBElementArray<IllustratorWord *> *) words;

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy, readonly) SBObject *container;  // the object's container
@property (readonly) NSInteger length;  // the number of characters in the story
@property (copy, readonly) NSArray<IllustratorText *> *selection;  // the selected text (ranges) in the story
@property (copy, readonly) IllustratorText *textRange;  // the text range of the story


@end

// a range of characters from a text item
@interface IllustratorText : SBObject <IllustratorGenericMethods>

- (SBElementArray<IllustratorCharacterStyle *> *) characterStyles;
- (SBElementArray<IllustratorCharacter *> *) characters;
- (SBElementArray<IllustratorInsertionPoint *> *) insertionPoints;
- (SBElementArray<IllustratorLine *> *) lines;
- (SBElementArray<IllustratorParagraphStyle *> *) paragraphStyles;
- (SBElementArray<IllustratorParagraph *> *) paragraphs;
- (SBElementArray<IllustratorText *> *) text;
- (SBElementArray<IllustratorWord *> *) words;

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property NSInteger characterOffset;  // offset of the first character of the range from the beginning of the story, in characters.
@property (copy, readonly) SBObject *container;  // the object's container
@property (copy) NSString *contents;  // the text string
@property NSInteger end;  // end index of the text range
@property NSInteger kerning;  // controls the spacing between two characters (in milli-ems)
@property NSInteger length;  // length of text range ( minimum 0 )
@property (copy, readonly) NSArray<IllustratorText *> *selection;  // the selected text (ranges) in the text range
@property NSInteger start;  // start index of the text range
@property (copy, readonly) IllustratorStory *story;  // the story of the text range

- (NSString *) translatePlaceholderText;  // translate the placeholder text to regular text. A method to enter unicode points in hex values.
- (void) doScriptFrom:(NSString *)from dialogs:(BOOL)dialogs;  // Play an action from the Actions Palette

@end

// A text path item
@interface IllustratorTextPath : SBObject <IllustratorGenericMethods>

- (SBElementArray<IllustratorPathPoint *> *) pathPoints;

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (readonly) double area;  // the area of this path in square points
@property IllustratorCBlM blendMode;  // the mode used when compositing an object
@property BOOL clipping;  // should this be used as a clipping path?
@property BOOL closed;  // is this path closed?
@property (copy, readonly) SBObject *container;  // the object's container
@property (readonly) BOOL editable;  // can the text path be modified
@property (copy) NSArray<IllustratorPathPointInfo *> *entirePath;  // all the path item's path points
@property BOOL evenodd;  // should the even-odd rule be used to determine insideness?
@property (copy) IllustratorColorInfo *fillColor;  // fill color
@property BOOL fillOverprint;  // will art beneath a filled object be overprinted?
@property BOOL filled;  // should the path be filled?
@property BOOL guides;  // is this path a guide object?
@property double height;  // the height of the text path ( 0.0 - 16348.0 )
@property (copy) NSString *note;  // Note assigned to the path
@property double opacity;  // the object's opacity (between 0.0 and 100.0) ( 0.0 - 100.0 )
@property IllustratorEPVu polarity;  // the polarity the path
@property (copy) NSArray *position;  // the position of the top left corner of the text path
@property double resolution;  // The resolution of the path
@property (copy, readonly) NSArray<SBObject *> *selectedPathPoints;  // all the selected points in the path
@property IllustratorESTc strokeCap;  // type of line capping
@property (copy) IllustratorColorInfo *strokeColor;  // stroke color
@property double strokeDashOffset;  // the default distance into the dash pattern at which the pattern should be started
@property (copy) NSArray<NSNumber *> *strokeDashes;  // dash lengths (set to {} for a solid line)
@property IllustratorESTj strokeJoin;  // type of joints
@property double strokeMiterLimit;  // whether a join is mitered (pointed) or beveled (squared-off)
@property BOOL strokeOverprint;  // will art beneath a stroked object be overprinted?
@property double strokeWidth;  // width of stroke
@property BOOL stroked;  // should the path be stroked?
@property double width;  // the width of the text path ( 0.0 - 16348.0 )


@end

@interface IllustratorWord : SBObject <IllustratorGenericMethods>

- (SBElementArray<IllustratorCharacterStyle *> *) characterStyles;
- (SBElementArray<IllustratorCharacter *> *) characters;
- (SBElementArray<IllustratorInsertionPoint *> *) insertionPoints;
- (SBElementArray<IllustratorLine *> *) lines;
- (SBElementArray<IllustratorParagraphStyle *> *) paragraphStyles;
- (SBElementArray<IllustratorParagraph *> *) paragraphs;
- (SBElementArray<IllustratorText *> *) text;
- (SBElementArray<IllustratorWord *> *) words;

@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property IllustratorCOTP OpenTypePosition;  // the OpenType baseline position
@property NSInteger TCYHorizontal;  // the Tate-Chu-Yoko horizontal adjustment in points
@property NSInteger TCYVertical;  // the Tate-Chu-Yoko vertical adjustment in points
@property double Tsume;  // the percentage of space reduction around a Japanese character (100 = 100%)
@property double akiLeft;  // the em amount of left aki
@property double akiRight;  // the em amount of right aki amount
@property IllustratorESRA alignment;  // the character alignment type
@property IllustratorEAGF alternateGlyphs;  // the alternate glyphs form
@property BOOL autoLeading;  // whether to use automatic leading
@property IllustratorEBSD baselineDirection;  // the Japanese text baseline direction
@property IllustratorEFBO baselinePosition;  // the baseline position of text
@property double baselineShift;  // the amount of shift (in points) of the text baseline
@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property IllustratorEFCO capitalization;  // the case of text
@property NSInteger characterOffset;  // offset of the first character of the range from the beginning of the story, in characters.
@property BOOL connectionForms;  // whether the OpenType connection forms should be used
@property (copy, readonly) SBObject *container;  // the object's container
@property (copy) NSString *contents;  // the text string
@property BOOL contextualLigature;  // whether the contextual ligature should be used
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property double diacXOffset;  // diacritics x offset attribute
@property double diacYOffset;  // diacritics y offset attribute
@property IllustratorEDVP diacriticsPositioning;  // diacritics positioning attribute
@property IllustratorEDgS digitSet;  // digit set attribute
@property IllustratorEDOT directionOverride;  // direction override attribute
@property BOOL discretionaryLigature;  // whether the discretionary ligature should be used
@property NSInteger end;  // end index of the text range
@property IllustratorCFST figureStyle;  // which figure style to use in OpenType font
@property (copy) IllustratorColorInfo *fillColor;  // the color of the text fill
@property BOOL fractions;  // whether the OpenType fractions should be used
@property double horizontalScale;  // character horizontal scaling factor expressed as a percentage (100 = 100%)
@property (readonly) NSInteger index;  // the index of this instance of the object
@property BOOL italics;  // does the Japanese OpenType support italics?
@property BOOL justificationAlternates;  // justification alternates attribute
@property BOOL kana;  // does the Japanese OpenType support kana?
@property IllustratorEKas kashidas;  // kashidas attribute
@property NSInteger kerning;  // controls the spacing between two characters (in milli-ems)
@property IllustratorEATK kerningMethod;  // the automatic kerning method to use
@property IllustratorELNG language;  // the language of text
@property double leading;  // the amount of space between two lines of text (in points)
@property NSInteger length;  // length of text range ( minimum 0 )
@property BOOL ligature;  // whether the ligature should be used
@property BOOL noBreak;  // whether line breaks are allowed
@property BOOL ordinals;  // whether the OpenType ordinals should be used
@property BOOL ornaments;  // whether the OpenType ornaments should be used
@property BOOL overprintFill;  // whether to overprint the fill of the text
@property BOOL overprintStroke;  // whether to overprint the stroke of the text
@property BOOL proportionalMetrics;  // does the Japanese OpenType support proportional font?
@property double rotation;  // the character rotation angle (in degrees)
@property (copy, readonly) NSArray<IllustratorText *> *selection;  // the selected text (ranges) in the text range
@property double size;  // font size in points
@property NSInteger start;  // start index of the text range
@property (copy, readonly) IllustratorStory *story;  // the story of the text range
@property BOOL strikeThrough;  // whether to draw a strike through line over the text
@property (copy) IllustratorColorInfo *strokeColor;  // the color of the text stroke
@property double strokeWeight;  // line width of stroke
@property BOOL stylisticAlternates;  // whether the OpenType stylistic alternates should be used
@property NSInteger stylisticSets;  // stylistic sets attribute
@property BOOL swash;  // whether the OpenType swash should be used
@property (copy) id textFont;  // the text font
@property BOOL titling;  // whether the OpenType titling alternates should be used
@property NSInteger tracking;  // the tracking or range kerning amount in thousands of an em
@property BOOL underline;  // whether to underline the text
@property double verticalScale;  // character vertical scaling factor expressed as a percentage (100 = 100%)
@property NSInteger warichuCharactersAfterBreak;
@property NSInteger warichuCharactersBeforeBreak;
@property BOOL warichuEnabled;  // whether WariChu is enabled
@property NSInteger warichuGap;  // the Wari-Chu line gap
@property IllustratorEWCJ warichuJustification;
@property NSInteger warichuLines;  // the number of Wari-Chu (multiple text lines fit into a space meant for one) lines
@property double warichuScale;  // the Wari-Chu scale


@end



/*
 * Matrix Suite
 */

@interface IllustratorMatrix : SBObject <IllustratorGenericMethods>

@property double mvalue_a;
@property double mvalue_b;
@property double mvalue_c;
@property double mvalue_d;
@property double mvalue_tx;
@property double mvalue_ty;

- (IllustratorMatrix *) concatenateMatrixWith:(IllustratorMatrix *)with;  // Concatenate two transformation matrices
- (IllustratorMatrix *) concatenateRotationMatrixAngle:(double)angle;  // Concatenate a rotation matrix to a transformation matrix
- (IllustratorMatrix *) concatenateScaleMatrixHorizontalScale:(double)horizontalScale verticalScale:(double)verticalScale;  // Concatenate a scale matrix to a transformation matrix
- (IllustratorMatrix *) concatenateTranslationMatrixDeltaX:(double)deltaX deltaY:(double)deltaY;  // Concatenate a translation to a transformation matrix
- (BOOL) equalMatricesWith:(IllustratorMatrix *)with;  // Compares two matrices for equality
- (IllustratorMatrix *) invertMatrix;  // Invert a matrix
- (BOOL) singularMatrix;  // Tests if a matrix is singular (cannot be inverted)

@end



/*
 * Shape Creation Suite
 */

// Used to create an elliptical path item. Not for path item access.
@interface IllustratorEllipse : SBObject <IllustratorGenericMethods>

@property (copy) NSArray *bounds;  // the ellipse's bounds
@property BOOL reversed;  // is the ellipse path reversed? ( default: false )
@property BOOL inscribed;  // is the ellipse path inscribed? ( default: true )


@end

// Used to create a rectangular path item. Not for path item access.
@interface IllustratorRectangle : SBObject <IllustratorGenericMethods>

@property (copy) NSArray *bounds;  // the rectangle bounds
@property BOOL reversed;  // is the rectangle path reversed? ( default: false )


@end

// Used to create a rounded-corner rectangular path item. Not for path item access.
@interface IllustratorRoundedRectangle : SBObject <IllustratorGenericMethods>

@property (copy) NSArray *bounds;  // the rectangle bounds
@property double horizontalRadius;  // horizontal corner radius ( default: 15.0 )
@property double verticalRadius;  // vertical corner radius ( default: 20.0 )
@property BOOL reversed;  // is the rectangle path reversed? ( default: false )


@end

// Used to create a regular polygon path item. Not for path item access.
@interface IllustratorPolygon : SBObject <IllustratorGenericMethods>

@property (copy) NSArray *centerPoint;  // the center point of the polygon
@property double radius;  // the radius of the polygon points ( default: 50.0 )
@property NSInteger sides;  // the number of sides on the polygon ( default: 8 )
@property BOOL reversed;  // is the polygon path reversed? ( default: false )


@end

// Used to create a star-shaped path item. Not for path item access.
@interface IllustratorStar : SBObject <IllustratorGenericMethods>

@property (copy) NSArray *centerPoint;  // the center point of the rectangle
@property double radius;  // the outside radius of the star points ( default: 50.0 )
@property double innerRadius;  // the inside radius of the star points ( default: 20.0 )
@property NSInteger pointCount;  // the number of points on the star ( default: 5 )
@property BOOL reversed;  // is the star path reversed? ( default: false )


@end



/*
 * Open Options Suite
 */

// Options which may be supplied when opening a AutoCAD file
@interface IllustratorAutoCADOptions : SBObject <IllustratorGenericMethods>

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property BOOL centerArtwork;  // to center the created artwork on the artboard (default: true)
@property (copy, readonly) SBObject *container;  // the object's container
@property IllustratorEGSO globalScaleOptions;  // how to scale the AutoCAD drawing on import (default: Fit Artboard)
@property double globalScalePercent;  // percentage scaling to apply globally on the AutoCAD drawing (default: 1.0)
@property BOOL mergeLayers;  // to merge the layers of the artwork (default: false)
@property BOOL scaleLineweights;  // to scale lineweights by the same amount as rest of the drawing (default: false)
@property double scaleRatio;  // ratio by which to scale while mapping the units (default: 1.0)
@property IllustratorEASU scaleUnit;  // units to which to map (default: Millimeters)
@property (copy) NSString *selectedLayoutName;  // name of layout in the AutoCAD drawing to import


@end

// Options which may be supplied when opening a file
@interface IllustratorOpenOptions : SBObject <IllustratorGenericMethods>

@property BOOL addToRecentFiles;  // Add this file to the list of recently opened files. ( default: true )
@property IllustratorELib as;  // open the file as library ( default: Illustrator artwork )
@property BOOL convertCropAreaToArtboard;  // Convert crop area to Artboard when opening legacy document (pre-Illustrator CS4) in CS4 or later. If false then crop areas are discarded. ( default: true )
@property BOOL convertTilesToArtboard;  // Convert print tiles to Artboard when opening legacy document (pre-Illustrator CS4) in CS4 or later. ( default: false )
@property BOOL createArtboardWithArtworkBoundingBox;  // Create Artboard with dimentions of artwork bounding box when opening legacy document (pre-Illustrator CS4) in CS4 or later. ( default: false )
@property BOOL preserveLegacyArtboard;  // Preserve Legacy Artboard (pre-Illustrator CS4) when opening in CS4 or later. ( default: true )
@property BOOL updateLegacyGradientMesh;  // choose to preserve the spot colors in the gradient mesh objects for legacy documents (pre-Illustrator CS3) ( default: true )
@property BOOL updateLegacyText;  // choose to update all text objects for documents saved with legacy texts (pre-Illustrator 11) ( default: false )


@end

// Options which may be supplied when opening a PDF file
@interface IllustratorPDFOptions : SBObject <IllustratorGenericMethods>

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy, readonly) SBObject *container;  // the object's container
@property NSInteger page;  // what page should be used when opening a multipage document (default: 1)
@property IllustratorEPBX PDFCropBounds;  // what box should be used when placing a multipage document (default: PDF media box)


@end

// Options which are applied when opening or placing a Photoshop file
@interface IllustratorPhotoshopOptions : SBObject <IllustratorGenericMethods>

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy, readonly) SBObject *container;  // the object's container
@property (copy) NSString *layerComp;  // Should use the specified LayerComp
@property BOOL preserveHiddenLayers;  // should hidden layers be preserved when the document is converted (default: false)
@property BOOL preserveImageMaps;  // should image maps be preserved when the document is converted (default: true)
@property BOOL preserveLayers;  // should layers be Preserve when the document is converted (default: true)
@property BOOL preserveSlices;  // should slices be preserved when the document is converted (default: true)


@end



/*
 * Save Options Suite
 */

// Options which may be supplied when saving a document as an Illustrator EPS file
@interface IllustratorEPSSaveOptions : SBObject <IllustratorGenericMethods>

@property (copy) NSString *artboardRange;  // If SaveMultipleArtboards is true,this will be considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
@property BOOL CMYKPostScript;  // use CMYK PostScript ( default: true )
@property IllustratorEDCc compatibility;  // what Illustrator file format version to create ( default: Illustrator 17 )
@property BOOL compatibleGradientPrinting;  // create a raster item of the gradient or gradient mesh so that PostScript Level 2 printers can print the object ( default: false )
@property BOOL embedAllFonts;  // embed all fonts used by the document in the saved file (version 7 or later) ( default: false )
@property BOOL embedLinkedFiles;  // are linked image files to be included in the saved document ( default: false )
@property IllustratorEOFl flattenOutput;  // how should transparency be flattened for older file format versions (pre-version 9) ( default: preserve appearance )
@property BOOL includeDocumentThumbnails;  // include thumbnail image of the EPS artwork ( default: true )
@property IllustratorCPoP overprint;  // ( default: preserve )
@property IllustratorEPSt PostScript;  // PostScript level to use (level 1 valid for file format version 8 or older) ( default: level 2 )
@property IllustratorEEPV preview;  // EPS preview format
@property BOOL saveMultipleArtboards;  // All the artboards or range of the artboards will be saved ( default: false )


@end

// Options which may be supplied when saving a document as an FXG file
@interface IllustratorFXGSaveOptions : SBObject <IllustratorGenericMethods>

@property (copy) NSString *artboardRange;  // If SaveMultipleArtboards is true,this will be considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
@property IllustratorEFBp blendsPolicy;  // the policy used by FXG to expand blends ( default: autoConvert blends )
@property BOOL downsampleLinkedImages;  // choose to downsample the linked images(72ppi) ( default: false )
@property IllustratorEFFp filtersPolicy;  // the policy used by FXG to preserve filters ( default: keep filters editable )
@property IllustratorEFxV fxgVersion;  // the version of the FXG file format to create ( default: version 2.0 )
@property IllustratorEFGp gradientsPolicy;  // the policy used by FXG to preserve gradients ( default: autoConvert gradients )
@property BOOL includeMetadata;  // choose to include metadata (XMP) ( default: false )
@property BOOL includeUnusedSymbols;  // choose to include unused symbols ( default: false )
@property BOOL preserveEditingCapabilities;  // choose to preserve the editing capabilities of FXG ( default: true )
@property BOOL saveMultipleArtboards;  // All the artboards or range of the artboards will be saved ( default: false )
@property IllustratorEFTp textPolicy;  // the policy used by FXG to preserve text ( default: autoConvert text )


@end

// Options which may be supplied when saving a document as an Illustrator file
@interface IllustratorIllustratorSaveOptions : SBObject <IllustratorGenericMethods>

@property (copy) NSString *artboardRange;  // If SaveMultipleArtboards is true ,this will be considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
@property IllustratorEDCc compatibility;  // what Illustrator file format version to create ( default: Illustrator 17 )
@property BOOL compressed;  // should the saved file be compressed (version 10 or later) ( default: true )
@property BOOL embedICCProfile;  // embed the document's ICC profile in the saved file (version 9 or later) ( default: false )
@property BOOL embedLinkedFiles;  // are linked image files to be included in the saved document (versions 7 or later) ( default: false )
@property IllustratorEOFl flattenOutput;  // how should transparency be flattened for older file format versions (pre-version 9) ( default: preserve appearance )
@property double fontSubsetThreshold;  // include a subset of fonts when less than this percentage of characters are used (version 9 or later) ( 0.0 - 100.0; default: 100.0 )
@property BOOL PDFCompatible;  // save as a PDF compatible file (version 10 or later) ( default: true )
@property BOOL saveMultipleArtboards;  // All the artboards or range of the artboards will be saved ( default: false )


@end

// Options which may be supplied when saving a document as a PDF file
@interface IllustratorPDFSaveOptions : SBObject <IllustratorGenericMethods>

@property BOOL acrobatLayers;  // create acrobat layers from top-level layers - acrobat 6 only option ( default: false )
@property IllustratorCPpA allowPrinting;  // PDF security printing permission ( default: pdf 128 print high res )
@property (copy) NSString *artboardRange;  // Considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
@property BOOL bleedLink;  // link 4 bleed values ( default: true )
@property (copy) NSArray *bleedOffset;  // the bleed offset rect
@property IllustratorCPcA changesAllowed;  // PDF security changes allowed ( default: pdf 128 any changes )
@property BOOL colorBars;  // draw color bars ( default: false )
@property IllustratorCCcT colorCompression;  // how should color bitmap images be compressed ( default: none )
@property IllustratorEPcC colorConversionId;  // PDF color conversion policy. Three choices are available: (1)No Color Conversion (2) Repurpose (3) Convert to Destination ( default: none )
@property IllustratorEDcD colorDestinationId;  // When NoColorConversion is specified for Color Conversion, NoColorDestination is set ( default: none )
@property double colorDownsampling;  // if zero, no downsampling, otherwise, the resolution to downsample color bitmap images to ( default: 150.0 )
@property double colorDownsamplingThreshold;  // downsample if the image's resolution is above this value ( default: 225.0 )
@property IllustratorEDpC colorProfileId;  // If CMS is off, Don't Include Profiles is set ( default: none )
@property IllustratorCRsT colorResample;  // how should color bitmap images be resampled ( default: nodownsample )
@property NSInteger colorTileSize;  // tile size when compressing with JPEG2000 ( default: 256 )
@property IllustratorEPDc compatibility;  // the version of the Acrobat file format to create ( default: Acrobat 5 )
@property BOOL compressArt;  // should line art and text be compressed? ( default: true )
@property (copy) NSString *documentPassword;  // a password string to open the document ( default:  )
@property BOOL enableAccess;  // enable accessing 128-bit ( default: true )
@property BOOL enableCopy;  // enable copying of text 128-bit ( default: true )
@property BOOL enableCopyAndAccess;  // enable copying and accessing 40-bit ( default: true )
@property BOOL enablePlaintext;  // enable plaintext metadata 128-bit - available only for acrobat 6 ( default: false )
@property (copy) NSString *flattenerPreset;  // the transparency flattener preset name
@property (copy) IllustratorFlatteningOptions *flattenerSettings;  // the printing flattener options
@property double fontSubsetThreshold;  // include a subset of fonts when less than this percentage of characters are used ( 0.0 - 100.0; default: 100.0 )
@property BOOL generateThumbnails;  // generate thumbnails for the saved document ( default: true )
@property IllustratorCCcT grayscaleCompression;  // how should grayscale bitmap images be compressed ( default: none )
@property double grayscaleDownsampling;  // if zero, no downsampling, otherwise, the resolution to downsample grayscale images to ( default: 150.0 )
@property double grayscaleDownsamplingThreshold;  // downsample if the image's resolution is above this value ( default: 225.0 )
@property IllustratorCRsT grayscaleResample;  // how should grayscale bitmap images be resampled ( default: nodownsample )
@property NSInteger grayscaleTileSize;  // tile size when compressing with JPEG2000 ( default: 256 )
@property IllustratorCMcQ monochromeCompression;  // how should monochrome bitmap images be compressed ( default: none )
@property double monochromeDownsampling;  // If zero, no downsampling, otherwise, the resolution to downsample images to ( default: 300.0 )
@property double monochromeDownsamplingThreshold;  // downsample if the image's resolution is above this value ( default: 450.0 )
@property IllustratorCRsT monochromeResample;  // how should monochrome bitmap images be resampled ( default: nodownsample )
@property double offset;  // custom offset (in points) for using the custom paper ( default: 0.0 )
@property BOOL optimization;  // should the PDF document be optimized for fast web viewing ( default: false )
@property (copy) NSString *outputCondition;  // This is an optional comment which, if present, is added to the PDF file and describes the intended printing condition ( default:  )
@property (copy) NSString *outputConditionId;  // If selected for Output Intent Profile Name, you can set the name of a registered printing condition ( default:  )
@property (copy) NSString *outputIntentProfile;  // When CMS is on, the output intent profile is the same profile selected for Destination in the Color group box ( default:  )
@property BOOL pageInfo;  // draw page information ( default: false )
@property IllustratorEPMS pageMarksStyle;  // the page marks style ( default: Roman )
@property (copy) NSString *PDFPreset;  // The max string length is 255 bytes. Name of PDF preset to use.
@property IllustratorEPdX pdfXstandard;  // This control includes the None option for when the user is not complying with any PDF standard ( default: PDFX None )
@property (copy) NSString *pdfXstandardDescripton;  // This displays the description from the selected preset
@property (copy) NSString *permissionPassword;  // a password string to restrict editing security settings ( default:  )
@property BOOL preserveEditability;  // preserve Illustrator editing capabilities when saving the document ( default: true )
@property double printerResolution;  // flattening printer resolution ( default: 800.0 )
@property BOOL registrationMarks;  // draw registration marks ( default: false )
@property (copy) NSString *registryName;  // URL to the site where the specified output condition is registered. No validation is performed on the URL ( default:  )
@property BOOL requireDocPassword;  // require a password to open the document ( default: false )
@property BOOL requirePermPassword;  // use a password to restrict editing security settings ( default: false )
@property BOOL trapped;  // This indicates if manual trapping has been prepared in the document ( default: false )
@property IllustratorCPtW trimMarkWeight;  // trim mark weight ( default: trimmarkweight0125 )
@property BOOL trimMarks;  // draw trim marks ( default: false )
@property BOOL viewPdf;  // view PDF after saving ( default: false )


@end



/*
 * Export Options Suite
 */

// Options which may be supplied when exporting a document to AutoCAD formats (.dwg or .dxf)
@interface IllustratorAutoCADExportOptions : SBObject <IllustratorGenericMethods>

@property BOOL alterPathsForAppearance;  // alter paths for appearance ( default: false )
@property IllustratorEAVS AutoCADVersion;  // release of AutoCAD to export to ( default: AutoCAD release 24 )
@property IllustratorEACL colors;  // number of colors to export into the AutoCAD file ( default: true colors )
@property BOOL convertTextToOutlines;  // whether to convert text to outlines ( default: false )
@property IllustratorEAFF exportFileFormat;  // which format to export the file as ( default: dwg )
@property IllustratorEExO exportOption;  // whether to preserve appearance or editability during export ( default: maximize editability )
@property BOOL exportSelectedArtOnly;  // export selected art only ( default: false )
@property IllustratorEARF rasterFormat;  // raster format in which to export raster art ( default: PNG raster )
@property BOOL scaleLineweights;  // whether to scale lineweights by the same amount as rest of the drawing ( default: false )
@property double scaleRatio;  // ratio by which to scale the output ( default: 1.0 )
@property IllustratorEASU scaleUnit;  // units from which to map ( default: autocad millimeters )


@end

// Options which may be supplied when exporting a document as an Flash (.SWF) file
@interface IllustratorFlashExportOptions : SBObject <IllustratorGenericMethods>

@property IllustratorEFOS artClipping;  // how should the arts be clipped during the output ( default: output art bounds )
@property (copy) NSString *artboardRange;  // If SaveMultipleArtboards is true,this will be considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
@property (copy) IllustratorRGBColorInfo *backgroundColor;  // the background color
@property (copy) NSArray<IllustratorLayer *> *backgroundLayers;  // a list of layers to be included as the static background in all exported Flash frames
@property IllustratorEFBA blendAnimation;  // controls how the blend art objects are animated when export to Flash frames ( default: none )
@property BOOL compressed;  // should the exported file be compressed ( default: false )
@property BOOL convertTextToOutlines;  // should all text be converted to outlines ( default: false )
@property NSInteger curveQuality;  // how much curve information should be preserved ( 0 - 10; default: 7 )
@property BOOL exportAllSymbols;  // should all symbol definitions in the palette be exported to the SWF File ( default: false )
@property IllustratorEFXS exportStyle;  // how should the Flash file be created ( default: Flash file )
@property IllustratorEFXV exportVersion;  // which version of SWF to export ( default: SWF version 9 )
@property IllustratorEFPS FlashPlaybackSecurity;  // what access should the SWF file have - local or network access ( default: flash playback local access )
@property double frameRate;  // when exporting layers to Flash frames ( 0.01 - 120.0; default: 12.0 )
@property IllustratorEFCS imageFormat;  // how should the images in the exported Flash file be compressed ( default: lossless )
@property BOOL includeMetadata;  // If true, include minimal XMP metadata in the exported file ( default: false )
@property IllustratorEFJM JPEGMethod;  // what method to use ( default: standard )
@property NSInteger JPEGQuality;  // level of compression ( 0 - 10; default: 3 )
@property IllustratorEFOT layerOrder;  // the order in which the layers will be exported to Flash frames ( default: bottom up )
@property BOOL looping;  // should the Flash file be set to loop when run ( default: false )
@property BOOL preserveAppearance;  // choose whether to preserve artwork appearance or editability (default) during export ( default: false )
@property BOOL readOnly;  // prevent the exported file from being imported by other applications ( default: false )
@property IllustratorSavo replacing;  // if a file with the same name already exists, should it be replaced? ( default: ask )
@property double resolution;  // pixels per inch ( 72.0 - 2400.0; default: 72.0 )
@property BOOL saveMultipleArtboards;  // All the artboards or range of the artboards will be exported ( default: false )
@property BOOL textkerning;  // should the kerning information for text objects be ignored ( default: false )


@end

// Options which may be supplied when exporting a document as a GIF file
@interface IllustratorGIFExportOptions : SBObject <IllustratorGenericMethods>

@property BOOL antialiasing;  // should the resulting image be antialiased ( default: true )
@property BOOL artboardClipping;  // should the resulting image be clipped to the artboard ( default: false )
@property NSInteger colorCount;  // number of colors in exported color table ( 2 - 256; default: 128 )
@property IllustratorCDtM colorDither;  // method used to dither colors ( default: diffusion )
@property IllustratorCCRM colorReduction;  // method used to reduce the number of colors ( default: selective )
@property NSInteger ditherPercent;  // how much should the colors be dithered ( 0 - 100; default: 88 )
@property double horizontalScaling;  // horizontal scaling factor ( default: 100.0 )
@property NSInteger informationLoss;  // level of information loss during compression ( 0 - 100; default: 0 )
@property BOOL interlaced;  // should the resulting image be interlaced ( default: false )
@property BOOL matte;  // should the artboard be matted with a color ( default: true )
@property (copy) IllustratorRGBColorInfo *matteColor;  // the color to use when matting the artboard (default: white)
@property BOOL savingAsHTML;  // should the resulting image be saved as HTML ( default: false )
@property BOOL transparency;  // should the resulting image use transparency ( default: true )
@property double verticalScaling;  // vertical scaling factor ( default: 100.0 )
@property NSInteger webSnap;  // how much should the color table be changed to match the web pallet ( 0 - 100; default: 0 )


@end

// Options which may be supplied when capturing a portion of the artwork as an 24 bit PNG file
@interface IllustratorImageCaptureOptions : SBObject <IllustratorGenericMethods>

@property BOOL antialiasing;  // should the resulting image be antialiased ( default: false )
@property BOOL matte;  // should the artboard be matted with a color ( default: false )
@property (copy) IllustratorRGBColorInfo *matteColor;  // the color to use when matting the artboard (default: white)
@property double resolution;  // The resolution of the captured image file ( 72.0 - 2400.0; default: 150.0 )
@property BOOL transparency;  // should the resulting image use transparency ( default: false )


@end

// An item that needs to be exported; for example, a document, artboard, or asset
@interface IllustratorItemToExport : SBObject <IllustratorGenericMethods>

@property BOOL document;  // Whether to export the document or not ( default: false )
@property (copy) NSString *rangeOfArtboards;  // Range of artboards to export [possible values: '', 'all'(default), range] ( default: all )
@property (copy) NSArray<NSNumber *> *rangeOfAssets;  // Array of asset id to export (default:empty)


@end

// Options which may be supplied when exporting a document as a JPEG file
@interface IllustratorJPEGExportOptions : SBObject <IllustratorGenericMethods>

@property BOOL antialiasing;  // should the resulting image be antialiased ( default: true )
@property BOOL artboardClipping;  // should the resulting image be clipped to the artboard ( default: false )
@property double blur;  // blur the resulting image this much ( 0.0 - 2.0; default: 0.0 )
@property double horizontalScaling;  // horizontal scaling factor ( 0.0 - 776.19; default: 100.0 )
@property BOOL matte;  // should the artboard be matted with a color ( default: true )
@property (copy) IllustratorRGBColorInfo *matteColor;  // the color to use when matting the artboard (default: white)
@property BOOL optimization;  // should the image be optimized for web viewing ( default: true )
@property NSInteger quality;  // quality of resulting image ( 0 - 100; default: 30 )
@property BOOL savingAsHTML;  // should the resulting image be saved as HTML ( default: false )
@property double verticalScaling;  // vertical scaling factor ( 0.0 - 776.19; default: 100.0 )


@end

// Options which may be provided when exporting a document as a PDF file.
@interface IllustratorPDFExportOptions : SBObject <IllustratorGenericMethods>

@property (copy) NSString *PDFPreset;  // The max string length is 255 bytes. Name of PDF preset to use. ( default: [Smallest File Size] )


@end

// Options which may be supplied when exporting a document as a Photoshop file
@interface IllustratorPhotoshopExportOptions : SBObject <IllustratorGenericMethods>

@property BOOL antialiasing;  // should the resulting image be antialiased ( default: true )
@property (copy) NSString *artboardRange;  // If SaveMultipleArtboards is true,this will be considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
@property IllustratorECLS colorSpace;  // the color space of the exported file ( default: RGB )
@property BOOL editableText;  // export text objects as editable text layers ( default: true )
@property BOOL embedICCProfile;  // embed an ICC profile when exporting ( default: false )
@property BOOL maximumEditability;  // preserve as much of the original document's structure as possible when exporting ( default: true )
@property double resolution;  // The resolution of the exported file ( 72.0 - 2400.0; default: 150.0 )
@property BOOL saveMultipleArtboards;  // All the artboards or range of the artboards will be exported ( default: false )
@property BOOL warnings;  // should a warning dialog be displayed because of conflicts in the export settings ( default: true )
@property BOOL writeLayers;  // preserve document layers when exporting ( default: true )


@end

// Options which may be supplied when exporting a document as an 24 bit PNG file
@interface IllustratorPNG24ExportOptions : SBObject <IllustratorGenericMethods>

@property BOOL antialiasing;  // should the resulting image be antialiased ( default: true )
@property BOOL artboardClipping;  // should the resulting image be clipped to the artboard ( default: false )
@property (copy) IllustratorDimensionsInfo *dimensionsOfPNG;  // Dimensions in which to contain the resulting raster
@property double horizontalScaling;  // horizontal scaling factor ( default: 100.0 )
@property BOOL matte;  // should the artboard be matted with a color ( default: true )
@property (copy) IllustratorRGBColorInfo *matteColor;  // the color to use when matting the artboard (default: white)
@property BOOL savingAsHTML;  // should the resulting image be saved as HTML ( default: false )
@property BOOL transparency;  // should the resulting image use transparency ( default: true )
@property double verticalScaling;  // vertical scaling factor ( default: 100.0 )


@end

// Options which may be supplied when exporting a document as an 8 bit PNG file
@interface IllustratorPNG8ExportOptions : SBObject <IllustratorGenericMethods>

@property BOOL antialiasing;  // should the resulting image be antialiased ( default: true )
@property BOOL artboardClipping;  // should the resulting image be clipped to the artboard ( default: false )
@property NSInteger colorCount;  // number of colors in exported color table ( 2 - 256; default: 128 )
@property IllustratorCDtM colorDither;  // method used to dither colors ( default: diffusion )
@property IllustratorCCRM colorReduction;  // method used to reduce the number of colors ( default: selective )
@property NSInteger ditherPercent;  // how much should the colors be dithered ( 0 - 100; default: 88 )
@property double horizontalScaling;  // horizontal scaling factor ( default: 100.0 )
@property BOOL interlaced;  // should the resulting image be interlaced ( default: false )
@property BOOL matte;  // should the artboard be matted with a color ( default: true )
@property (copy) IllustratorRGBColorInfo *matteColor;  // the color to use when matting the artboard (default: white)
@property BOOL savingAsHTML;  // should the resulting image be saved as HTML ( default: false )
@property BOOL transparency;  // should the resulting image use transparency ( default: true )
@property double verticalScaling;  // vertical scaling factor ( default: 100.0 )
@property NSInteger webSnap;  // how much should the color table be changed to match the web palette ( 0 - 100; default: 0 )


@end

// Options which may be supplied when exporting a document as a Web optimized SVG file
@interface IllustratorSVGExportOptions : SBObject <IllustratorGenericMethods>

@property (copy) NSString *artboardRange;  // If SaveMultipleArtboards is true,this will be considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
@property NSInteger coordinatePrecision;  // decimal precision for element coordinate values ( 1 - 7; default: 3 )
@property IllustratorESCS CSSProperties;  // how should the CSS properties of the document be included in the document ( default: style attributes )
@property IllustratorESFT fontType;  // the type of font that should be included in the exported file ( default: SVG font )
@property BOOL minifySvg;  // Reduces the size of the svg ( default: false )
@property IllustratorERIL rasterImageLocation;  // should the raster images in the exported file be included ( default: preserve )
@property BOOL responsiveSvg;  // Makes the SVG Responsive ( default: true )
@property BOOL saveMultipleArtboards;  // All the artboards or range of the artboards will be saved ( default: false )
@property IllustratorESIT setTypeOfSVG;  // how object names (IDs) are generated in exported SVG ( default: regular svg )


@end

// Options which may be supplied when exporting a document as a TIFF file
@interface IllustratorTIFFExportOptions : SBObject <IllustratorGenericMethods>

@property IllustratorEALS antialiasing;  // should the resulting image be antialiased ( default: art optimized )
@property (copy) NSString *artboardRange;  // If SaveMultipleArtboards is true,this will be considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
@property IllustratorETbo ByteOrder;  // Mac or PC byte order when exporting ( default: IBM PC )
@property IllustratorECLS colorSpace;  // the color space of the exported file ( default: RGB )
@property BOOL embedICCProfile;  // embed an ICC profile when exporting ( default: false )
@property BOOL LZWCompression;  // compress TIFF file with LZW Compression when exporting ( default: false )
@property double resolution;  // The resolution of the exported file ( 72.0 - 2400.0; default: 150.0 )
@property BOOL saveMultipleArtboards;  // All the artboards or range of the artboards will be exported ( default: false )


@end



/*
 * Dynamic Publishing Suite
 */

// A set of variables and their associated dynamic data which will be used for dynamic publishing
@interface IllustratorDataset : SBObject <IllustratorGenericMethods>

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy, readonly) SBObject *container;  // the object's container
@property (copy) NSString *name;  // the name of this dataset

- (void) display;  // displays the dynamic data that has been captured in the dataset.
- (void) update;  // re-apply the dynamic data of the active dataset to the artboard

@end

// Dynamic object used to create data-driven graphics.
@interface IllustratorVariable : SBObject <IllustratorGenericMethods>

- (SBElementArray<IllustratorPageItem *> *) pageItems;

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (copy, readonly) SBObject *container;  // the object's container
@property IllustratorEVKd kind;  // the variable's type
@property (copy) NSString *name;  // the name of this variable


@end



/*
 * Print Suite
 */

// the color management options
@interface IllustratorColorManagementOptions : SBObject <IllustratorGenericMethods>

@property IllustratorEPCI intent;  // the color management intent type ( default: relative colorimetric )
@property (copy) NSString *name;  // the color management profile name
@property IllustratorEPCP profileKind;  // the color management profile mode ( default: source profile )


@end

// Print color separation options
@interface IllustratorColorSeparationOptions : SBObject <IllustratorGenericMethods>

@property BOOL convertSpotColors;  // whether to convert all spot colors to process colors ( default: false )
@property (copy) NSArray<IllustratorInk *> *inks;  // the list of inks for color separation
@property BOOL overPrintBlack;  // whether to overprint in black ( default: false )
@property IllustratorEPCS separationMode;  // the color separation type ( default: composite )


@end

// the print coordinate options
@interface IllustratorCoordinateOptions : SBObject <IllustratorGenericMethods>

@property BOOL emulsion;  // whether to flip artwork horizontally ( default: false )
@property BOOL fitToPage;  // whether to proportionally scale the artwork to fit on the page ( default: false )
@property double horizontalScale;  // the horizontal scaling factor expressed as a percentage (100 = 100%) ( 1.0 - 10000.0; default: 100.0 )
@property IllustratorEPOR orientation;  // the artwork orientation ( default: portrait )
@property IllustratorEPPO position;  // the artwork position on media ( default: center )
@property IllustratorEPTL tiling;  // the page tiling mode ( default: single full page )
@property double verticalScale;  // the vertical scaling factor expressed as a percentage (100 = 100%) ( 1.0 - 10000.0; default: 100.0 )


@end

// the transparency flattening options
@interface IllustratorFlatteningOptions : SBObject <IllustratorGenericMethods>

@property BOOL clipComplexRegions;  // whether to clip complex regions ( default: false )
@property BOOL convertStrokesToOutlines;  // whether to convert all strokes to outlines ( default: false )
@property BOOL convertTextToOutlines;  // whether to convert all text to outlines ( default: false )
@property NSInteger flatteningBalance;  // the flattening balance ( 0 - 100; default: 100 )
@property double gradientResolution;  // the gradient resolution ( 1.0 - 9600.0; default: 300.0 )
@property IllustratorCPoP overprint;  // overprint ( default: preserve )
@property double rasterizationResolution;  // the rasterization resolution ( 1.0 - 9600.0; default: 300.0 )


@end

// the font options for printing
@interface IllustratorFontOptions : SBObject <IllustratorGenericMethods>

@property IllustratorEPFD downloadFonts;  // the font download mode ( default: subset )
@property IllustratorEPFS fontSubstitutionKind;  // the font substitution policy ( default: oblique substitution )


@end

// printer's ink
@interface IllustratorInk : SBObject <IllustratorGenericMethods>

@property (copy) NSString *name;  // the ink's name
@property (copy) IllustratorInkProperties *properties;  // the ink information


@end

// Ink information
@interface IllustratorInkProperties : SBObject <IllustratorGenericMethods>

@property double angle;  // the ink's screen angle (in degrees)
@property (copy) IllustratorColorInfo *customColor;  // the color of the custom ink
@property double density;  // the neutral density ( minimum 0.0 )
@property (copy) NSString *dotShape;  // the dot shape name
@property double frequency;  // the ink's frequency ( minimum 0.0 )
@property IllustratorEPIK kind;  // the ink type
@property IllustratorEPST printingStatus;  // the ink printing status
@property IllustratorEPTT trapping;  // the trapping type
@property NSInteger trappingOrder;  // the order of trapping for the ink ( minimum 1 )


@end

// the print job options
@interface IllustratorJobOptions : SBObject <IllustratorGenericMethods>

@property (copy) NSString *artboardRange;  // Artboard Range to be printed if PrintAllArtboards is false ( default: 1- )
@property double bitmapResolution;  // the bitmap resolution ( minimum 0.0; default: 0.0 )
@property BOOL collate;  // whether to collate print pages ( default: false )
@property NSInteger copies;  // the number of copies to print ( minimum 1; default: 1 )
@property IllustratorEPAD designation;  // the layers/objects to be printed ( default: visible printable layers )
@property (copy) NSURL *filePath;  // the file to be printed to
@property (copy) NSString *name;  // the print job name
@property BOOL printAllArtboards;  // whether to print all artboards ( default: true )
@property IllustratorEPBD printArea;  // the printing bounds ( default: artboard bounds )
@property BOOL printAsBitmap;  // whether to print as bitmap ( default: false )
@property BOOL reversePages;  // print pages in reverse order ( default: false )


@end

// the page marks options
@interface IllustratorPageMarksOptions : SBObject <IllustratorGenericMethods>

@property (copy) NSArray *bleedOffset;  // the bleed offset rect
@property BOOL colorBars;  // whether to enable color bars printing ( default: false )
@property (copy) NSArray *marksOffset;  // the page marks offset rect
@property BOOL pageInfoMarks;  // whether to enable page info marks printing ( default: false )
@property IllustratorEPMS pageMarksStyle;  // the page marks style ( default: Roman )
@property BOOL registrationMarks;  // whether to enable registration marks printing ( default: false )
@property BOOL trimMarks;  // whether to enable trim marks printing ( default: false )
@property double trimMarksWeight;  // stroke weight of trim marks ( minimum 0.0; default: 0.125 )


@end

// paper size
@interface IllustratorPaper : SBObject <IllustratorGenericMethods>

@property (copy) NSString *name;  // the paper name
@property (copy) IllustratorPaperProperties *properties;  // the paper information


@end

// the paper options
@interface IllustratorPaperOptions : SBObject <IllustratorGenericMethods>

@property double height;  // the custom height (in points) for using the custom paper ( default: 0.0 )
@property (copy) NSString *name;  // the paper's name
@property double offset;  // custom offset (in points) for using the custom paper ( default: 0.0 )
@property BOOL transverse;  // whether to transverse the artwork (rotate 90 degrees) on the custom paper ( default: false )
@property double width;  // the custom width (in points) for using the custom paper ( default: 0.0 )


@end

// Paper information
@interface IllustratorPaperProperties : SBObject <IllustratorGenericMethods>

@property BOOL customPaper;  // Is it a custom paper?
@property double height;  // the paper's height (in points)
@property (copy) NSArray *imageableArea;  // the imageable area
@property double width;  // the paper's width (in points)


@end

// the PostScript options
@interface IllustratorPostscriptOptions : SBObject <IllustratorGenericMethods>

@property BOOL binaryPrinting;  // whether to print in binary mode ( default: false )
@property BOOL compatibleShading;  // use PostScript level 1 compatible gradient and gradient mesh printing ( default: false )
@property BOOL forceContinuousTone;  // whether to force continuous tone ( default: false )
@property IllustratorEPIC imageCompression;  // the image compression type ( default: none )
@property BOOL negativePrinting;  // whether to print in negative mode ( default: false )
@property IllustratorEPPS PostScript;  // the PostScript language level ( default: level 2 )
@property double shadingResolution;  // the shading resolution ( 1.0 - 9600.0; default: 300.0 )


@end

// a PPD file
@interface IllustratorPPDFile : SBObject <IllustratorGenericMethods>

@property (copy) NSString *name;  // the PPD model name
@property (copy) IllustratorPPDProperties *properties;  // the PPD file information


@end

// PPD file information
@interface IllustratorPPDProperties : SBObject <IllustratorGenericMethods>

@property (copy) NSURL *filePath;  // path specification for the PPD file
@property (copy) NSString *languageLevel;  // the PostScript language level
@property (copy) NSArray<IllustratorSeparationScreen *> *screens;  // list of color separation screens
@property (copy) NSArray<IllustratorScreenSpotFunction *> *spotFunctions;  // list of color separation screen spot functions


@end

// the print options
@interface IllustratorPrintOptions : SBObject <IllustratorGenericMethods>

@property (copy) IllustratorColorManagementOptions *colorManagementSettings;  // the printing color management options
@property (copy) IllustratorColorSeparationOptions *colorSeparationSettings;  // the printing color separation options
@property (copy) IllustratorCoordinateOptions *coordinateSettings;  // the printing coordinate options
@property (copy) NSString *flattenerPreset;  // the transparency flattener preset name
@property (copy) IllustratorFlatteningOptions *flattenerSettings;  // the printing flattener options
@property (copy) IllustratorFontOptions *fontSettings;  // the printing font options
@property (copy) IllustratorJobOptions *jobSettings;  // the printing job options
@property (copy) IllustratorPageMarksOptions *pageMarksSettings;  // the printing page marks options
@property (copy) IllustratorPaperOptions *paperSettings;  // the paper options
@property (copy) IllustratorPostscriptOptions *postscriptSettings;  // the printing PostScript options
@property (copy) NSString *PPDName;  // the name of the PPD to use
@property (copy) NSString *printPreset;  // the name of a print preset to use
@property (copy) NSString *printerName;  // the name of the printer to print to


@end

// an installed printer
@interface IllustratorPrinter : SBObject <IllustratorGenericMethods>

@property (copy) NSString *name;  // the printer name
@property (copy) IllustratorPrinterProperties *properties;  // the printer information


@end

// printer information
@interface IllustratorPrinterProperties : SBObject <IllustratorGenericMethods>

@property BOOL binaryPrinting;  // does the printer support binary printing?
@property IllustratorEPCM colorSupport;  // the printer color capability
@property BOOL customPaperSizes;  // does the printer support custom paper size?
@property BOOL customPaperTransverse;  // does the printer support custom paper transverse?
@property double defaultResolution;  // the printer default resolution
@property BOOL InRIPSeparationSupport;  // does the printer support InRIP color separation?
@property double maximumHeightOffset;  // custom paper's maximum height offset
@property double maximumPaperHeight;  // custom paper's maximum height
@property double maximumPaperWidth;  // custom paper's maximum width
@property double maximumResolution;  // the printer maximum device resolution
@property double maximumWidthOffset;  // custom paper's maximum width offset
@property double minimumHeightOffset;  // custom paper's minimum height offset
@property double minimumPaperHeight;  // custom paper's minimum height
@property double minimumPaperWidth;  // custom paper's minimum width
@property double minimumWidthOffset;  // custom paper's minimum width offset
@property (copy) NSArray<IllustratorPaper *> *paperSizes;  // the list of supported paper sizes
@property IllustratorEPPS PostScript;  // the PostScript level
@property IllustratorEPTY printerType;  // the printer type


@end

// Screen information
@interface IllustratorScreenProperties : SBObject <IllustratorGenericMethods>

@property double angle;  // the screen's angle (in degrees)
@property BOOL defaultScreen;  // Is it the default screen?
@property double frequency;  // the screen's frequency


@end

// color separation screen spot function
@interface IllustratorScreenSpotFunction : SBObject <IllustratorGenericMethods>

@property (copy) NSString *name;  // the color separation screen spot function name
@property (copy) NSString *spotFunction;  // the spot function in terms of the PostScript commands


@end

// color separation screen
@interface IllustratorSeparationScreen : SBObject <IllustratorGenericMethods>

@property (copy) NSString *name;  // the color separation screen name
@property (copy) IllustratorScreenProperties *properties;  // the color separation screen information


@end



/*
 * Tracing Suite
 */

// A tracing object.
@interface IllustratorTracingobject : SBObject <IllustratorGenericMethods>

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (readonly) NSInteger anchorCount;  // The number of anchors in the tracing result.
@property (copy, readonly) SBObject *container;  // the object's container
@property (copy, readonly) IllustratorPageItem *originalArt;  // The source art used when creating a new tracing object.
@property (readonly) NSInteger pathCount;  // The number of paths in the tracing result.
@property (copy, readonly) IllustratorTracingoptions *tracingOptions;  // The options used when tracing the artwork.
@property (readonly) NSInteger usedColorCount;  // The number of colors used in the tracing result.

- (IllustratorGroupItem *) expandTracingViewed:(BOOL)viewed;  // Expand the tracing to paths.  Deletes this tracing object.
- (IllustratorPageItem *) releaseTracing;  // Release the source artwork for the tracing object.  Deletes this tracing object.

@end

// Tracing options that guide the tracing process.
@interface IllustratorTracingoptions : SBObject <IllustratorGenericMethods>

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property double colorFidelity;  // ColorFidelity when TracingColorTypeValue is TracingFullColor.
@property (copy) NSString *colorgroup;  // The color group name used for tracing. Use 'All' or any color group name available in color Palette (library).
@property (copy, readonly) SBObject *container;  // the object's container
@property double CornerFidelity;  // Corner fidelity for tracing.
@property BOOL fills;  // Tracing with fills. Fills, Strokes or both must be on.
@property NSInteger grayLevels;  // The gray levels for a grayscale mode tracing.. ( 1 - 256 )
@property BOOL ignoreWhite;  // Controls whether to ignore white fill color. Works only if TracingMethod is TracingMethodAbutting and mode is Black and white.
@property NSInteger maximumColors;  // Maximum number of colors allowed for tracing when TracingColorTypeValue is TracingLimitedColor.
@property double maximumStrokeWeight;  // Maximum stroke weight (stroke only).
@property double NoiseFidelity;  // Specifies minimum area of pixels to be vectorized.
@property (copy) NSString *palette;  // The color palette (Library) name used for tracing. Use 'Document Library' or any other imported library name.
@property double PathFidelity;  // Path fidelity for tracing.
@property (copy, readonly) NSString *preset;  // The name of the preset in use.  Read-only.
@property BOOL snapCurveToLines;  // Controls whether to snap curve to lines.
@property BOOL strokes;  // Tracing with strokes.  Fills, Strokes or both must be on.
@property NSInteger threshold;  // The threshold value for a black and white mode tracing. ( 1 - 256 )
@property IllustratorETCt TracingColorTypeValue;  // Color Type used for tracing, TracingLimitedColor or TracingFullColor .
@property IllustratorETet TracingMethod;  // Method for tracing, either abutting or adjoining paths.
@property IllustratorETMt tracingMode;  // The tracing mode: color, gray, black and white.
@property IllustratorETvv viewMode;  // The visualization mode.

- (BOOL) loadPresetPresetname:(NSString *)presetname;  // Load options from preset.
- (BOOL) storePresetPresetname:(NSString *)presetname;  // Store options to a preset kAiVectorizeSuite.  Will overwrite an existing (unlocked) preset if names match.

@end



/*
 * Asset Suite
 */

// An (exportable) asset
@interface IllustratorAsset : SBObject <IllustratorGenericMethods>

@property (copy, readonly) NSNumber *bestType;  // the best type for the object's value
@property (copy, readonly) NSNumber *defaultType;  // the default type for the object's value
@property (readonly) NSInteger index;  // the index of this instance of the object
@property (copy) NSDictionary *properties;  // all of this object's properties returned in a single record
@property (readonly) NSInteger assetid;  // The UID for the asset which is unique within a document
@property (copy) NSString *assetname;  // Name of the asset
@property (copy, readonly) SBObject *container;  // the object's container

- (NSString *) normalizedName;  // Gets the normalized name without special characters, such that it can be used as a file name

@end

// Creates an asset from the selected arts
@interface IllustratorAddfromselection : SBObject <IllustratorGenericMethods>


@end

// Creates an asset from the given art(s)
@interface IllustratorAdd : SBObject <IllustratorGenericMethods>

@property (copy) id sourceArt;  // The page item(s) to apply to


@end

