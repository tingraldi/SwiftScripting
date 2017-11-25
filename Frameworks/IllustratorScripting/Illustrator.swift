import AppKit
import ScriptingBridge

@objc public protocol SBObjectProtocol: NSObjectProtocol {
    func get() -> Any!
}

@objc public protocol SBApplicationProtocol: SBObjectProtocol {
    func activate()
    var delegate: SBApplicationDelegate! { get set }
    var isRunning: Bool { get }
}

// MARK: IllustratorESCM
@objc public enum IllustratorESCM : AEKeyword {
    case desktop = 0x65303032 /* 'e002' */
    case fullScreen = 0x65303033 /* 'e003' */
    case multiwindow = 0x65303031 /* 'e001' */
}

// MARK: IllustratorECCS
@objc public enum IllustratorECCS : AEKeyword {
    case cmyk = 0x6543794d /* 'eCyM' */
    case rgb = 0x6552624d /* 'eRbM' */
}

// MARK: IllustratorEDPT
@objc public enum IllustratorEDPT : AEKeyword {
    case basicCMYKDocument = 0x70435052 /* 'pCPR' */
    case basicRGBDocument = 0x70525052 /* 'pRPR' */
    case mobileDocumentPreset = 0x704d5052 /* 'pMPR' */
    case printDocumentPreset = 0x70505052 /* 'pPPR' */
    case videoDocumentPreset = 0x70565052 /* 'pVPR' */
    case webDocumentPreset = 0x70575052 /* 'pWPR' */
}

// MARK: IllustratorEDCR
@objc public enum IllustratorEDCR : AEKeyword {
    case highResolution = 0x70485252 /* 'pHRR' */
    case mediumResolution = 0x704d5252 /* 'pMRR' */
    case screenResolution = 0x70535252 /* 'pSRR' */
}

// MARK: IllustratorEDGR
@objc public enum IllustratorEDGR : AEKeyword {
    case blueTransparencyGrids = 0x70544742 /* 'pTGB' */
    case darkColorTransparencyGrids = 0x70544744 /* 'pTGD' */
    case greenTransparencyGrids = 0x70544747 /* 'pTGG' */
    case hideTransparencyGrids = 0x7054474e /* 'pTGN' */
    case lightColorTransparencyGrids = 0x7054474c /* 'pTGL' */
    case mediumColorTransparencyGrids = 0x7054474d /* 'pTGM' */
    case orangeTransparencyGrids = 0x7054474f /* 'pTGO' */
    case purpleTransparencyGrids = 0x70544750 /* 'pTGP' */
    case redColorTransparencyGrids = 0x70544752 /* 'pTGR' */
}

// MARK: IllustratorEDPM
@objc public enum IllustratorEDPM : AEKeyword {
    case defaultPreview = 0x7044504d /* 'pDPM' */
    case overprintPreview = 0x704f5050 /* 'pOPP' */
    case pixelPreview = 0x7050504d /* 'pPPM' */
}

// MARK: IllustratorEDAL
@objc public enum IllustratorEDAL : AEKeyword {
    case column = 0x70436f6c /* 'pCol' */
    case gridByColumn = 0x70477243 /* 'pGrC' */
    case gridByRow = 0x70477252 /* 'pGrR' */
    case rlGridByCol = 0x70524743 /* 'pRGC' */
    case rlGridByRow = 0x70524752 /* 'pRGR' */
    case rlRow = 0x70525277 /* 'pRRw' */
    case row = 0x70526f77 /* 'pRow' */
}

// MARK: IllustratorECLS
@objc public enum IllustratorECLS : AEKeyword {
    case cmyk = 0x6543794d /* 'eCyM' */
    case deviceN = 0x6530444e /* 'e0DN' */
    case gray = 0x6530474d /* 'e0GM' */
    case indexed = 0x65304944 /* 'e0ID' */
    case lab = 0x65304c62 /* 'e0Lb' */
    case rgb = 0x6552624d /* 'eRbM' */
    case separation = 0x65305350 /* 'e0SP' */
}

// MARK: IllustratorESTc
@objc public enum IllustratorESTc : AEKeyword {
    case butted = 0x65303230 /* 'e020' */
    case projecting = 0x65303232 /* 'e022' */
    case rounded = 0x65303231 /* 'e021' */
}

// MARK: IllustratorESTj
@objc public enum IllustratorESTj : AEKeyword {
    case beveled = 0x65303331 /* 'e031' */
    case mitered = 0x65303330 /* 'e030' */
    case rounded = 0x65303231 /* 'e021' */
}

// MARK: IllustratorESGs
@objc public enum IllustratorESGs : AEKeyword {
    case anchorSelected = 0x65303530 /* 'e050' */
    case leftRightSelected = 0x65303533 /* 'e053' */
    case leftSelected = 0x65303531 /* 'e051' */
    case none = 0x67653031 /* 'ge01' */
    case rightSelected = 0x65303532 /* 'e052' */
}

// MARK: IllustratorEPTy
@objc public enum IllustratorEPTy : AEKeyword {
    case corner = 0x65303537 /* 'e057' */
    case smooth = 0x65303536 /* 'e056' */
}

// MARK: IllustratorETXt
@objc public enum IllustratorETXt : AEKeyword {
    case areaText = 0x65303632 /* 'e062' */
    case pathText = 0x65303631 /* 'e061' */
    case pointText = 0x65303630 /* 'e060' */
}

// MARK: IllustratorETAa
@objc public enum IllustratorETAa : AEKeyword {
    case crisp = 0x65303634 /* 'e064' */
    case none = 0x67653031 /* 'ge01' */
    case sharp = 0x65303633 /* 'e063' */
    case strong = 0x65303635 /* 'e065' */
}

// MARK: IllustratorEGDt
@objc public enum IllustratorEGDt : AEKeyword {
    case linear = 0x65303430 /* 'e040' */
    case radial = 0x65303431 /* 'e041' */
}

// MARK: IllustratorETXo
@objc public enum IllustratorETXo : AEKeyword {
    case horizontal = 0x65303730 /* 'e070' */
    case vertical = 0x65303731 /* 'e071' */
}

// MARK: IllustratorECRs
@objc public enum IllustratorECRs : AEKeyword {
    case japaneseStyle = 0x65303831 /* 'e081' */
    case standard = 0x65303830 /* 'e080' */
}

// MARK: IllustratorERLt
@objc public enum IllustratorERLt : AEKeyword {
    case dataFromFile = 0x65303931 /* 'e091' */
    case modifiedData = 0x65303932 /* 'e092' */
    case noData = 0x65303930 /* 'e090' */
}

// MARK: IllustratorETBa
@objc public enum IllustratorETBa : AEKeyword {
    case center = 0x65313232 /* 'e122' */
    case decimal = 0x65313234 /* 'e124' */
    case left = 0x65313231 /* 'e121' */
    case right = 0x65313233 /* 'e123' */
}

// MARK: IllustratorEPRa
@objc public enum IllustratorEPRa : AEKeyword {
    case center = 0x65313232 /* 'e122' */
    case fullJustify = 0x65313238 /* 'e128' */
    case fullJustifyLastLineCenter = 0x65313237 /* 'e127' */
    case fullJustifyLastLineLeft = 0x65313235 /* 'e125' */
    case fullJustifyLastLineRight = 0x65313236 /* 'e126' */
    case left = 0x65313231 /* 'e121' */
    case right = 0x65313233 /* 'e123' */
}

// MARK: IllustratorETRt
@objc public enum IllustratorETRt : AEKeyword {
    case bottom = 0x65313737 /* 'e177' */
    case bottomLeft = 0x65313734 /* 'e174' */
    case bottomRight = 0x65313741 /* 'e17A' */
    case center = 0x65313232 /* 'e122' */
    case documentOrigin = 0x65313731 /* 'e171' */
    case left = 0x65313231 /* 'e121' */
    case right = 0x65313233 /* 'e123' */
    case top = 0x65313735 /* 'e175' */
    case topLeft = 0x65313732 /* 'e172' */
    case topRight = 0x65313738 /* 'e178' */
}

// MARK: IllustratorEDCc
@objc public enum IllustratorEDCc : AEKeyword {
    case illustrator10 = 0x65323039 /* 'e209' */
    case illustrator11 = 0x65323061 /* 'e20a' */
    case illustrator12 = 0x65323062 /* 'e20b' */
    case illustrator13 = 0x65323063 /* 'e20c' */
    case illustrator14 = 0x65323064 /* 'e20d' */
    case illustrator15 = 0x65323065 /* 'e20e' */
    case illustrator16 = 0x65323066 /* 'e20f' */
    case illustrator17 = 0x65323067 /* 'e20g' */
    case illustrator3 = 0x65327832 /* 'e2x2' */
    case illustrator8 = 0x65323037 /* 'e207' */
    case illustrator9 = 0x65323038 /* 'e208' */
    case japanese3 = 0x65323032 /* 'e202' */
}

// MARK: IllustratorEPdX
@objc public enum IllustratorEPdX : AEKeyword {
    case pdfx1a2001 = 0x65506431 /* 'ePd1' */
    case pdfx1a2003 = 0x65506432 /* 'ePd2' */
    case pdfx32001 = 0x65506433 /* 'ePd3' */
    case pdfx32002 = 0x65506445 /* 'ePdE' */
    case pdfx32003 = 0x65506434 /* 'ePd4' */
    case pdfx42007 = 0x65506435 /* 'ePd5' */
    case pdfxNone = 0x65506430 /* 'ePd0' */
}

// MARK: IllustratorEPDc
@objc public enum IllustratorEPDc : AEKeyword {
    case acrobat4 = 0x65323331 /* 'e231' */
    case acrobat5 = 0x65323332 /* 'e232' */
    case acrobat6 = 0x65323333 /* 'e233' */
    case acrobat7 = 0x65323334 /* 'e234' */
    case acrobat8 = 0x65323335 /* 'e235' */
}

// MARK: IllustratorEPSc
@objc public enum IllustratorEPSc : AEKeyword {
    case photoshop6 = 0x65323431 /* 'e241' */
    case photoshop8 = 0x65323432 /* 'e242' */
}

// MARK: IllustratorCCcT
@objc public enum IllustratorCCcT : AEKeyword {
    case automaticJPEGHigh = 0x65353034 /* 'e504' */
    case automaticJPEGLow = 0x65353032 /* 'e502' */
    case automaticJPEGMaximum = 0x65353035 /* 'e505' */
    case automaticJPEGMedium = 0x65353033 /* 'e503' */
    case automaticJPEGMinimum = 0x65353031 /* 'e501' */
    case automaticJPEG2000High = 0x65353065 /* 'e50e' */
    case automaticJPEG2000Lossless = 0x65353131 /* 'e511' */
    case automaticJPEG2000Low = 0x65353063 /* 'e50c' */
    case automaticJPEG2000Maximum = 0x65353130 /* 'e510' */
    case automaticJPEG2000Medium = 0x65353064 /* 'e50d' */
    case automaticJPEG2000Minimum = 0x65353062 /* 'e50b' */
    case jpegHigh = 0x65323538 /* 'e258' */
    case jpegLow = 0x65323536 /* 'e256' */
    case jpegMaximum = 0x65323539 /* 'e259' */
    case jpegMedium = 0x65323537 /* 'e257' */
    case jpegMinimum = 0x65323535 /* 'e255' */
    case jpeg2000High = 0x65353135 /* 'e515' */
    case jpeg2000Lossless = 0x65353137 /* 'e517' */
    case jpeg2000Low = 0x65353133 /* 'e513' */
    case jpeg2000Maximum = 0x65353136 /* 'e516' */
    case jpeg2000Medium = 0x65353134 /* 'e514' */
    case jpeg2000Minimum = 0x65353132 /* 'e512' */
    case none = 0x67653031 /* 'ge01' */
    case zip4bit = 0x65323561 /* 'e25a' */
    case zip8bit = 0x65323562 /* 'e25b' */
}

// MARK: IllustratorEPcC
@objc public enum IllustratorEPcC : AEKeyword {
    case colorConversionRepurpose = 0x65506333 /* 'ePc3' */
    case colorConversionToDest = 0x65506332 /* 'ePc2' */
    case none = 0x67653031 /* 'ge01' */
}

// MARK: IllustratorEDcD
@objc public enum IllustratorEDcD : AEKeyword {
    case colorDestDocCmyk = 0x65446332 /* 'eDc2' */
    case colorDestDocRgb = 0x65446334 /* 'eDc4' */
    case colorDestProfile = 0x65446336 /* 'eDc6' */
    case colorDestWorkingCmyk = 0x65446333 /* 'eDc3' */
    case colorDestWorkingRgb = 0x65446335 /* 'eDc5' */
    case none = 0x67653031 /* 'ge01' */
}

// MARK: IllustratorEDpC
@objc public enum IllustratorEDpC : AEKeyword {
    case includeAllProfiles = 0x65447032 /* 'eDp2' */
    case includeAllRgb = 0x65447034 /* 'eDp4' */
    case includeDestProfile = 0x65447035 /* 'eDp5' */
    case leaveProfileUnchanged = 0x65447033 /* 'eDp3' */
    case none = 0x67653031 /* 'ge01' */
}

// MARK: IllustratorCMcQ
@objc public enum IllustratorCMcQ : AEKeyword {
    case ccit3 = 0x65323732 /* 'e272' */
    case ccit4 = 0x65323731 /* 'e271' */
    case none = 0x67653031 /* 'ge01' */
    case runLength = 0x65323734 /* 'e274' */
    case zip = 0x65323733 /* 'e273' */
}

// MARK: IllustratorCPtW
@objc public enum IllustratorCPtW : AEKeyword {
    case trimmarkweight0125 = 0x65353730 /* 'e570' */
    case trimmarkweight025 = 0x65353731 /* 'e571' */
    case trimmarkweight05 = 0x65353732 /* 'e572' */
}

// MARK: IllustratorCPoP
@objc public enum IllustratorCPoP : AEKeyword {
    case discard = 0x65353431 /* 'e541' */
    case preserve = 0x65353430 /* 'e540' */
}

// MARK: IllustratorCPpA
@objc public enum IllustratorCPpA : AEKeyword {
    case pdf128PrintHighRes = 0x65353532 /* 'e552' */
    case pdf128PrintLowRes = 0x65353531 /* 'e551' */
    case pdf128PrintNone = 0x65353530 /* 'e550' */
    case pdf40PrintHighRes = 0x65353534 /* 'e554' */
    case pdf40PrintNone = 0x65353533 /* 'e553' */
}

// MARK: IllustratorCPcA
@objc public enum IllustratorCPcA : AEKeyword {
    case pdf128AnyChanges = 0x65353634 /* 'e564' */
    case pdf128CommentingAllowed = 0x65353633 /* 'e563' */
    case pdf128EditPageAllowed = 0x65353631 /* 'e561' */
    case pdf128FillFormAllowed = 0x65353632 /* 'e562' */
    case pdf128NoChanges = 0x65353630 /* 'e560' */
    case pdf40AnyChanges = 0x65353638 /* 'e568' */
    case pdf40CommentingAllowed = 0x65353636 /* 'e566' */
    case pdf40NoChanges = 0x65353635 /* 'e565' */
    case pdf40PageLayoutAllowed = 0x65353637 /* 'e567' */
}

// MARK: IllustratorCRsT
@objc public enum IllustratorCRsT : AEKeyword {
    case averageDownsampling = 0x65323931 /* 'e291' */
    case bicubicDownsample = 0x65323933 /* 'e293' */
    case nodownsample = 0x65323930 /* 'e290' */
    case subsampling = 0x65323932 /* 'e292' */
}

// MARK: IllustratorEEPV
@objc public enum IllustratorEEPV : AEKeyword {
    case bwMacintosh = 0x65323131 /* 'e211' */
    case bwtiff = 0x65323133 /* 'e213' */
    case colorMacintosh = 0x65323132 /* 'e212' */
    case colorTIFF = 0x65323134 /* 'e214' */
    case none = 0x67653031 /* 'ge01' */
    case transparentColorTIFF = 0x65323135 /* 'e215' */
}

// MARK: IllustratorEPSt
@objc public enum IllustratorEPSt : AEKeyword {
    case level2 = 0x65323231 /* 'e221' */
    case level3 = 0x65323232 /* 'e222' */
}

// MARK: IllustratorEPPS
@objc public enum IllustratorEPPS : AEKeyword {
    case level1 = 0x65323230 /* 'e220' */
    case level2 = 0x65323231 /* 'e221' */
    case level3 = 0x65323232 /* 'e222' */
}

// MARK: IllustratorSavo
@objc public enum IllustratorSavo : AEKeyword {
    case ask = 0x61736b20 /* 'ask ' */
    case no = 0x6e6f2020 /* 'no  ' */
    case yes = 0x79657320 /* 'yes ' */
}

// MARK: IllustratorERUt
@objc public enum IllustratorERUt : AEKeyword {
    case centimeters = 0x65313833 /* 'e183' */
    case inches = 0x65313832 /* 'e182' */
    case millimeters = 0x65313836 /* 'e186' */
    case picas = 0x65313835 /* 'e185' */
    case pixels = 0x65313838 /* 'e188' */
    case points = 0x65313834 /* 'e184' */
    case qs = 0x65313837 /* 'e187' */
    case unknown = 0x65313230 /* 'e120' */
}

// MARK: IllustratorCBlM
@objc public enum IllustratorCBlM : AEKeyword {
    case colorBlend = 0x65333134 /* 'e314' */
    case colorBurn = 0x65333037 /* 'e307' */
    case colorDodge = 0x65333036 /* 'e306' */
    case darken = 0x65333038 /* 'e308' */
    case difference = 0x65333130 /* 'e310' */
    case exclusion = 0x65333131 /* 'e311' */
    case hardLight = 0x65333035 /* 'e305' */
    case hue = 0x65333132 /* 'e312' */
    case lighten = 0x65333039 /* 'e309' */
    case luminosity = 0x65333135 /* 'e315' */
    case multiply = 0x65333031 /* 'e301' */
    case normal = 0x65313130 /* 'e110' */
    case overlay = 0x65333033 /* 'e303' */
    case saturationBlend = 0x65333133 /* 'e313' */
    case screen = 0x65333032 /* 'e302' */
    case softLight = 0x65333034 /* 'e304' */
}

// MARK: IllustratorCKOS
@objc public enum IllustratorCKOS : AEKeyword {
    case disabled = 0x65333231 /* 'e321' */
    case enabled = 0x65333232 /* 'e322' */
    case inherited = 0x65333233 /* 'e323' */
    case unknown = 0x65313230 /* 'e120' */
}

// MARK: IllustratorEZOR
@objc public enum IllustratorEZOR : AEKeyword {
    case moveBackward = 0x65333732 /* 'e372' */
    case moveForward = 0x65333731 /* 'e371' */
    case moveToBack = 0x65333733 /* 'e373' */
    case moveToFront = 0x65333730 /* 'e370' */
}

// MARK: IllustratorEDTD
@objc public enum IllustratorEDTD : AEKeyword {
    case svg10 = 0x65334230 /* 'e3B0' */
    case svg11 = 0x65334231 /* 'e3B1' */
    case svgBasic11 = 0x65334234 /* 'e3B4' */
    case svgTiny11 = 0x65334232 /* 'e3B2' */
    case svgTiny11Plus = 0x65334233 /* 'e3B3' */
    case svgTiny12 = 0x65334235 /* 'e3B5' */
}

// MARK: IllustratorESFT
@objc public enum IllustratorESFT : AEKeyword {
    case outlineFont = 0x65334132 /* 'e3A2' */
    case svgFont = 0x65334131 /* 'e3A1' */
}

// MARK: IllustratorESFS
@objc public enum IllustratorESFS : AEKeyword {
    case allGlyphs = 0x65333835 /* 'e385' */
    case commonEnglish = 0x65333831 /* 'e381' */
    case commonRoman = 0x65333833 /* 'e383' */
    case glyphsUsed = 0x65333830 /* 'e380' */
    case glyphsUsedPlusEnglish = 0x65333832 /* 'e382' */
    case glyphsUsedPlusRoman = 0x65333834 /* 'e384' */
    case none = 0x67653031 /* 'ge01' */
}

// MARK: IllustratorESDE
@objc public enum IllustratorESDE : AEKeyword {
    case ascii = 0x65343030 /* 'e400' */
    case utf16 = 0x65343032 /* 'e402' */
    case utf8 = 0x65343031 /* 'e401' */
}

// MARK: IllustratorESCS
@objc public enum IllustratorESCS : AEKeyword {
    case entities = 0x65343130 /* 'e410' */
    case presentationAttributes = 0x65343133 /* 'e413' */
    case styleAttributes = 0x65343131 /* 'e411' */
    case styleElements = 0x65343132 /* 'e412' */
}

// MARK: IllustratorESIT
@objc public enum IllustratorESIT : AEKeyword {
    case minimalSvg = 0x65334330 /* 'e3C0' */
    case regularSvg = 0x65334331 /* 'e3C1' */
    case uniqueSvg = 0x65334332 /* 'e3C2' */
}

// MARK: IllustratorERIL
@objc public enum IllustratorERIL : AEKeyword {
    case embed = 0x65334430 /* 'e3D0' */
    case link = 0x65334431 /* 'e3D1' */
    case preserve = 0x65334432 /* 'e3D2' */
}

// MARK: IllustratorEOFl
@objc public enum IllustratorEOFl : AEKeyword {
    case preserveAppearance = 0x65343231 /* 'e421' */
    case preservePaths = 0x65343230 /* 'e420' */
}

// MARK: IllustratorECMd
@objc public enum IllustratorECMd : AEKeyword {
    case processColor = 0x65343236 /* 'e426' */
    case registrationColor = 0x65343235 /* 'e425' */
    case spotColor = 0x65343237 /* 'e427' */
}

// MARK: IllustratorESCk
@objc public enum IllustratorESCk : AEKeyword {
    case spotCmykColor = 0x6b434d59 /* 'kCMY' */
    case spotLabColor = 0x6b4c4142 /* 'kLAB' */
    case spotRgbColor = 0x6b524742 /* 'kRGB' */
}

// MARK: IllustratorEFXS
@objc public enum IllustratorEFXS : AEKeyword {
    case artboardsToFiles = 0x65343334 /* 'e434' */
    case flashFile = 0x65343330 /* 'e430' */
    case layersToFiles = 0x65343332 /* 'e432' */
    case layersToFrames = 0x65343331 /* 'e431' */
    case layersToSymbols = 0x65343333 /* 'e433' */
}

// MARK: IllustratorEFOS
@objc public enum IllustratorEFOS : AEKeyword {
    case outputArtBounds = 0x65343335 /* 'e435' */
    case outputArtboardBounds = 0x65343336 /* 'e436' */
    case outputCroprectBounds = 0x65343337 /* 'e437' */
}

// MARK: IllustratorEFXV
@objc public enum IllustratorEFXV : AEKeyword {
    case swfVersion1 = 0x65465631 /* 'eFV1' */
    case swfVersion2 = 0x65465632 /* 'eFV2' */
    case swfVersion3 = 0x65465633 /* 'eFV3' */
    case swfVersion4 = 0x65465634 /* 'eFV4' */
    case swfVersion5 = 0x65465635 /* 'eFV5' */
    case swfVersion6 = 0x65465636 /* 'eFV6' */
    case swfVersion7 = 0x65465637 /* 'eFV7' */
    case swfVersion8 = 0x65465638 /* 'eFV8' */
    case swfVersion9 = 0x65465639 /* 'eFV9' */
}

// MARK: IllustratorEFCS
@objc public enum IllustratorEFCS : AEKeyword {
    case lossless = 0x65343361 /* 'e43a' */
    case lossy = 0x65343362 /* 'e43b' */
}

// MARK: IllustratorEFOT
@objc public enum IllustratorEFOT : AEKeyword {
    case bottomUp = 0x65344130 /* 'e4A0' */
    case topDown = 0x65344131 /* 'e4A1' */
}

// MARK: IllustratorEFBA
@objc public enum IllustratorEFBA : AEKeyword {
    case inBuild = 0x65344231 /* 'e4B1' */
    case inSequence = 0x65344230 /* 'e4B0' */
    case none = 0x67653031 /* 'ge01' */
}

// MARK: IllustratorEFJM
@objc public enum IllustratorEFJM : AEKeyword {
    case optimized = 0x65343365 /* 'e43e' */
    case standard = 0x65303830 /* 'e080' */
}

// MARK: IllustratorEFPS
@objc public enum IllustratorEFPS : AEKeyword {
    case flashPlaybackLocalAccess = 0x6546504c /* 'eFPL' */
    case flashPlaybackNetworkAccess = 0x6546504e /* 'eFPN' */
}

// MARK: IllustratorEVKd
@objc public enum IllustratorEVKd : AEKeyword {
    case graph = 0x65343434 /* 'e444' */
    case image = 0x65343433 /* 'e443' */
    case textual = 0x65343432 /* 'e442' */
    case unknown = 0x65313230 /* 'e120' */
    case visibility = 0x65343431 /* 'e441' */
}

// MARK: IllustratorEAFF
@objc public enum IllustratorEAFF : AEKeyword {
    case dwg = 0x65414631 /* 'eAF1' */
    case dxf = 0x65414630 /* 'eAF0' */
}

// MARK: IllustratorEAVS
@objc public enum IllustratorEAVS : AEKeyword {
    case autoCADRelease13 = 0x65415630 /* 'eAV0' */
    case autoCADRelease14 = 0x65415631 /* 'eAV1' */
    case autoCADRelease15 = 0x65415632 /* 'eAV2' */
    case autoCADRelease18 = 0x65415633 /* 'eAV3' */
    case autoCADRelease21 = 0x65415634 /* 'eAV4' */
    case autoCADRelease24 = 0x65415635 /* 'eAV5' */
}

// MARK: IllustratorEASU
@objc public enum IllustratorEASU : AEKeyword {
    case autocadCentimeters = 0x65415534 /* 'eAU4' */
    case autocadInches = 0x65415532 /* 'eAU2' */
    case autocadMillimeters = 0x65415533 /* 'eAU3' */
    case autocadPicas = 0x65415531 /* 'eAU1' */
    case autocadPixels = 0x65415535 /* 'eAU5' */
    case autocadPoints = 0x65415530 /* 'eAU0' */
}

// MARK: IllustratorEACL
@objc public enum IllustratorEACL : AEKeyword {
    case max16Colors = 0x65414331 /* 'eAC1' */
    case max256Colors = 0x65414332 /* 'eAC2' */
    case max8Colors = 0x65414330 /* 'eAC0' */
    case trueColors = 0x65414333 /* 'eAC3' */
}

// MARK: IllustratorEARF
@objc public enum IllustratorEARF : AEKeyword {
    case jpegRaster = 0x65415231 /* 'eAR1' */
    case pngRaster = 0x65415230 /* 'eAR0' */
}

// MARK: IllustratorEExO
@objc public enum IllustratorEExO : AEKeyword {
    case maintainAppearance = 0x65457830 /* 'eEx0' */
    case maximizeEditability = 0x65457831 /* 'eEx1' */
}

// MARK: IllustratorEGSO
@objc public enum IllustratorEGSO : AEKeyword {
    case fitArtboard = 0x65415331 /* 'eAS1' */
    case originalSize = 0x65415330 /* 'eAS0' */
    case scaleByValue = 0x65415332 /* 'eAS2' */
}

// MARK: IllustratorETbo
@objc public enum IllustratorETbo : AEKeyword {
    case ibmpc = 0x6b544250 /* 'kTBP' */
    case macintosh = 0x6b54424d /* 'kTBM' */
}

// MARK: IllustratorEMUI
@objc public enum IllustratorEMUI : AEKeyword {
    case interactWithAll = 0x65343564 /* 'e45d' */
    case interactWithLocal = 0x65343563 /* 'e45c' */
    case interactWithSelf = 0x65343562 /* 'e45b' */
    case neverInteract = 0x65343561 /* 'e45a' */
}

// MARK: IllustratorEPVu
@objc public enum IllustratorEPVu : AEKeyword {
    case negative = 0x65616f32 /* 'eao2' */
    case positive = 0x65613031 /* 'ea01' */
}

// MARK: IllustratorE940
@objc public enum IllustratorE940 : AEKeyword {
    case beforeRunning = 0x61393432 /* 'a942' */
    case never = 0x4e657672 /* 'Nevr' */
    case onRuntimeError = 0x65393431 /* 'e941' */
}

// MARK: IllustratorECHd
@objc public enum IllustratorECHd : AEKeyword {
    case kumiMoji = 0x65313132 /* 'e112' */
    case normal = 0x65313130 /* 'e110' */
    case rotated = 0x65313131 /* 'e111' */
}

// MARK: IllustratorEPBX
@objc public enum IllustratorEPBX : AEKeyword {
    case pdfArtBox = 0x65504f31 /* 'ePO1' */
    case pdfBleedBox = 0x65503034 /* 'eP04' */
    case pdfBoundingBox = 0x65503036 /* 'eP06' */
    case pdfCropBox = 0x65503032 /* 'eP02' */
    case pdfMediaBox = 0x65503035 /* 'eP05' */
    case pdfTrimBox = 0x65503033 /* 'eP03' */
}

// MARK: IllustratorERAS
@objc public enum IllustratorERAS : AEKeyword {
    case bitmapRasterization = 0x6b525362 /* 'kRSb' */
    case defaultRasterization = 0x6b525364 /* 'kRSd' */
    case grayscaleRasterization = 0x6b525367 /* 'kRSg' */
}

// MARK: IllustratorEALS
@objc public enum IllustratorEALS : AEKeyword {
    case artOptimized = 0x614f5054 /* 'aOPT' */
    case none = 0x67653031 /* 'ge01' */
    case typeOptimized = 0x744f5054 /* 'tOPT' */
}

// MARK: IllustratorEFxV
@objc public enum IllustratorEFxV : AEKeyword {
    case version10 = 0x65353831 /* 'e581' */
    case version20 = 0x65353832 /* 'e582' */
}

// MARK: IllustratorEFFp
@objc public enum IllustratorEFFp : AEKeyword {
    case expandFilters = 0x65353931 /* 'e591' */
    case keepFiltersEditable = 0x65353933 /* 'e593' */
    case rasterizeFilters = 0x65353932 /* 'e592' */
}

// MARK: IllustratorEFTp
@objc public enum IllustratorEFTp : AEKeyword {
    case autoConvertText = 0x65356134 /* 'e5a4' */
    case keepTextEditable = 0x65356133 /* 'e5a3' */
    case outlineText = 0x65356131 /* 'e5a1' */
    case rasterizeText = 0x65356132 /* 'e5a2' */
}

// MARK: IllustratorEFGp
@objc public enum IllustratorEFGp : AEKeyword {
    case autoConvertGradients = 0x65356234 /* 'e5b4' */
    case keepGradientsEditable = 0x65356233 /* 'e5b3' */
}

// MARK: IllustratorEFBp
@objc public enum IllustratorEFBp : AEKeyword {
    case autoConvertBlends = 0x65356331 /* 'e5c1' */
    case rasterizeBlends = 0x65356332 /* 'e5c2' */
}

// MARK: IllustratorECoS
@objc public enum IllustratorECoS : AEKeyword {
    case artboardCoordinateSystem = 0x65436f32 /* 'eCo2' */
    case documentCoordinateSystem = 0x65436f31 /* 'eCo1' */
}

// MARK: IllustratorESRp
@objc public enum IllustratorESRp : AEKeyword {
    case symbolBottomleftPoint = 0x65535237 /* 'eSR7' */
    case symbolBottommiddlePoint = 0x65535238 /* 'eSR8' */
    case symbolBottomrightPoint = 0x65535239 /* 'eSR9' */
    case symbolCenterPoint = 0x65535235 /* 'eSR5' */
    case symbolMiddleleftPoint = 0x65535234 /* 'eSR4' */
    case symbolMiddlerightPoint = 0x65535236 /* 'eSR6' */
    case symbolTopleftPoint = 0x65535231 /* 'eSR1' */
    case symbolTopmiddlePoint = 0x65535232 /* 'eSR2' */
    case symbolToprightPoint = 0x65535233 /* 'eSR3' */
}

// MARK: IllustratorEPPt
@objc public enum IllustratorEPPt : AEKeyword {
    case floorplane = 0x65505034 /* 'ePP4' */
    case leftplane = 0x65505032 /* 'ePP2' */
    case noplane = 0x65505031 /* 'ePP1' */
    case rightplane = 0x65505033 /* 'ePP3' */
}

// MARK: IllustratorEDST
@objc public enum IllustratorEDST : AEKeyword {
    case cascade = 0x6b414364 /* 'kACd' */
    case consolidateAll = 0x6b414341 /* 'kACA' */
    case floatAll = 0x6b414641 /* 'kAFA' */
    case horizontalTile = 0x6b414854 /* 'kAHT' */
    case verticalTile = 0x6b415654 /* 'kAVT' */
}

// MARK: IllustratorEJCT
@objc public enum IllustratorEJCT : AEKeyword {
    case baselineOptimized = 0x65323637 /* 'e267' */
    case baselineStandard = 0x65323636 /* 'e266' */
    case progressive = 0x65323638 /* 'e268' */
}

// MARK: IllustratorECCP
@objc public enum IllustratorECCP : AEKeyword {
    case defaultPurpose = 0x6b445055 /* 'kDPU' */
    case dummyPurposeOption = 0x6b44554d /* 'kDUM' */
    case exportPurpose = 0x6b455055 /* 'kEPU' */
    case previewPurpose = 0x6b505055 /* 'kPPU' */
}

// MARK: IllustratorEATK
@objc public enum IllustratorEATK : AEKeyword {
    case auto = 0x65414530 /* 'eAE0' */
    case metricsromanonly = 0x65414573 /* 'eAEs' */
    case none = 0x67653031 /* 'ge01' */
    case optical = 0x65414531 /* 'eAE1' */
}

// MARK: IllustratorEALD
@objc public enum IllustratorEALD : AEKeyword {
    case bottomToBottom = 0x65427442 /* 'eBtB' */
    case topToTop = 0x65547454 /* 'eTtT' */
}

// MARK: IllustratorECCT
@objc public enum IllustratorECCT : AEKeyword {
    case lowerCase = 0x65414534 /* 'eAE4' */
    case sentenceCase = 0x65414536 /* 'eAE6' */
    case titleCase = 0x65414535 /* 'eAE5' */
    case upperCase = 0x65414533 /* 'eAE3' */
}

// MARK: IllustratorEFCO
@objc public enum IllustratorEFCO : AEKeyword {
    case allCaps = 0x65414538 /* 'eAE8' */
    case allSmallCaps = 0x65414539 /* 'eAE9' */
    case normal = 0x65313130 /* 'e110' */
    case smallCaps = 0x65414537 /* 'eAE7' */
}

// MARK: IllustratorEFBO
@objc public enum IllustratorEFBO : AEKeyword {
    case normal = 0x65313130 /* 'e110' */
    case `subscript` = 0x704f5438 /* 'pOT8' */
    case superscript = 0x704f5439 /* 'pOT9' */
}

// MARK: IllustratorCOTP
@objc public enum IllustratorCOTP : AEKeyword {
    case `default` = 0x70465330 /* 'pFS0' */
    case denominator = 0x704f5437 /* 'pOT7' */
    case numerator = 0x704f5436 /* 'pOT6' */
    case `subscript` = 0x704f5438 /* 'pOT8' */
    case superscript = 0x704f5439 /* 'pOT9' */
}

// MARK: IllustratorCFST
@objc public enum IllustratorCFST : AEKeyword {
    case `default` = 0x70465330 /* 'pFS0' */
    case proportional = 0x70465333 /* 'pFS3' */
    case proportionalOldstyle = 0x70465332 /* 'pFS2' */
    case tabular = 0x70465331 /* 'pFS1' */
    case tabularOldstyle = 0x70465334 /* 'pFS4' */
}

// MARK: IllustratorEBSD
@objc public enum IllustratorEBSD : AEKeyword {
    case standard = 0x65303830 /* 'e080' */
    case tateChuYoko = 0x65414564 /* 'eAEd' */
    case verticalRotated = 0x65414563 /* 'eAEc' */
}

// MARK: IllustratorELNG
@objc public enum IllustratorELNG : AEKeyword {
    case arabic = 0x654c3339 /* 'eL39' */
    case bengaliIndia = 0x654c3531 /* 'eL51' */
    case bokmalNorwegian = 0x654c3039 /* 'eL09' */
    case brazillianPortuguese = 0x654c3132 /* 'eL12' */
    case bulgarian = 0x654c3231 /* 'eL21' */
    case canadianFrench = 0x654c3034 /* 'eL04' */
    case catalan = 0x654c3138 /* 'eL18' */
    case chinese = 0x654c3330 /* 'eL30' */
    case czech = 0x654c3233 /* 'eL23' */
    case danish = 0x654c3137 /* 'eL17' */
    case dutch = 0x654c3136 /* 'eL16' */
    case dutch2005Reform = 0x654c3433 /* 'eL43' */
    case english = 0x654c3031 /* 'eL01' */
    case farsi = 0x654c3431 /* 'eL41' */
    case finnish = 0x654c3032 /* 'eL02' */
    case german2006Reform = 0x654c3432 /* 'eL42' */
    case greek = 0x654c3236 /* 'eL26' */
    case gujarati = 0x654c3533 /* 'eL53' */
    case hindi = 0x654c3439 /* 'eL49' */
    case hungarian = 0x654c3239 /* 'eL29' */
    case icelandic = 0x654c3238 /* 'eL28' */
    case italian = 0x654c3038 /* 'eL08' */
    case japanese = 0x654c3331 /* 'eL31' */
    case kannada = 0x654c3537 /* 'eL57' */
    case malayalam = 0x654c3538 /* 'eL58' */
    case marathi = 0x654c3530 /* 'eL50' */
    case nynorskNorwegian = 0x654c3130 /* 'eL10' */
    case oldGerman = 0x654c3036 /* 'eL06' */
    case oriya = 0x654c3534 /* 'eL54' */
    case polish = 0x654c3234 /* 'eL24' */
    case punjabi = 0x654c3532 /* 'eL52' */
    case romanian = 0x654c3235 /* 'eL25' */
    case russian = 0x654c3139 /* 'eL19' */
    case serbian = 0x654c3232 /* 'eL22' */
    case spanish = 0x654c3133 /* 'eL13' */
    case standardFrench = 0x654c3033 /* 'eL03' */
    case standardGerman = 0x654c3035 /* 'eL05' */
    case standardPortuguese = 0x654c3131 /* 'eL11' */
    case swedish = 0x654c3134 /* 'eL14' */
    case swissGerman = 0x654c3037 /* 'eL07' */
    case swissGerman2006Reform = 0x654c3434 /* 'eL44' */
    case tamil = 0x654c3535 /* 'eL55' */
    case telugu = 0x654c3536 /* 'eL56' */
    case turkish = 0x654c3237 /* 'eL27' */
    case ukEnglish = 0x654c3135 /* 'eL15' */
    case ukranian = 0x654c3230 /* 'eL20' */
}

// MARK: IllustratorEAGF
@objc public enum IllustratorEAGF : AEKeyword {
    case `default` = 0x70465330 /* 'pFS0' */
    case expert = 0x65414566 /* 'eAEf' */
    case fullWidth = 0x6541456f /* 'eAEo' */
    case halfWidth = 0x65414569 /* 'eAEi' */
    case jis04 = 0x65414572 /* 'eAEr' */
    case jis78 = 0x65414567 /* 'eAEg' */
    case jis83 = 0x65414568 /* 'eAEh' */
    case jis90 = 0x65414571 /* 'eAEq' */
    case proportionalWidth = 0x65414570 /* 'eAEp' */
    case quarterWidth = 0x6541456b /* 'eAEk' */
    case thirdWidth = 0x6541456a /* 'eAEj' */
    case traditional = 0x65414565 /* 'eAEe' */
}

// MARK: IllustratorESRA
@objc public enum IllustratorESRA : AEKeyword {
    case bottom = 0x65313737 /* 'e177' */
    case center = 0x65313232 /* 'e122' */
    case icfBottom = 0x6541456c /* 'eAEl' */
    case icfTop = 0x6541456e /* 'eAEn' */
    case romanBaseline = 0x6541456d /* 'eAEm' */
    case top = 0x65313735 /* 'e175' */
}

// MARK: IllustratorEWCJ
@objc public enum IllustratorEWCJ : AEKeyword {
    case autoJustify = 0x65313239 /* 'e129' */
    case center = 0x65313232 /* 'e122' */
    case fullJustify = 0x65313238 /* 'e128' */
    case fullJustifyLastLineCenter = 0x65313237 /* 'e127' */
    case fullJustifyLastLineLeft = 0x65313235 /* 'e125' */
    case fullJustifyLastLineRight = 0x65313236 /* 'e126' */
    case left = 0x65313231 /* 'e121' */
    case right = 0x65313233 /* 'e123' */
}

// MARK: IllustratorEKas
@objc public enum IllustratorEKas : AEKeyword {
    case kashidaDefault = 0x6b4b6444 /* 'kKdD' */
    case kashidaOff = 0x6b4b4f66 /* 'kKOf' */
    case kashidaOn = 0x6b4b4f6e /* 'kKOn' */
}

// MARK: IllustratorEDOT
@objc public enum IllustratorEDOT : AEKeyword {
    case diroverrideDefault = 0x6b446f44 /* 'kDoD' */
    case diroverrideLtr = 0x6b444c52 /* 'kDLR' */
    case diroverrideRtl = 0x6b44524c /* 'kDRL' */
}

// MARK: IllustratorEDgS
@objc public enum IllustratorEDgS : AEKeyword {
    case arabicDigits = 0x6b414474 /* 'kADt' */
    case defaultDigits = 0x6b444474 /* 'kDDt' */
    case farsiDigits = 0x6b464474 /* 'kFDt' */
    case hindiDigits = 0x6b484474 /* 'kHDt' */
}

// MARK: IllustratorEDVP
@objc public enum IllustratorEDVP : AEKeyword {
    case diacVposLoose = 0x6b44506c /* 'kDPl' */
    case diacVposMedium = 0x6b44506d /* 'kDPm' */
    case diacVposOff = 0x6b44506f /* 'kDPo' */
    //case diacVposOpentype = 0x6b44506f /* 'kDPo' */
    case diacVposTight = 0x6b445074 /* 'kDPt' */
}

// MARK: IllustratorEKWT
@objc public enum IllustratorEKWT : AEKeyword {
    case kashidaLong = 0x6b4b614c /* 'kKaL' */
    case kashidaMedium = 0x6b4b614d /* 'kKaM' */
    case kashidaNone = 0x6b4b614e /* 'kKaN' */
    case kashidaSmall = 0x6b4b6153 /* 'kKaS' */
    case kashidaStylistic = 0x6b4b5379 /* 'kKSy' */
}

// MARK: IllustratorECET
@objc public enum IllustratorECET : AEKeyword {
    case adornment = 0x6b41436f /* 'kACo' */
    case latinCJKComposer = 0x6b4c436f /* 'kLCo' */
    case optycaComposer = 0x6b4f436f /* 'kOCo' */
}

// MARK: IllustratorEPDT
@objc public enum IllustratorEPDT : AEKeyword {
    case leftToRight = 0x6b4c7452 /* 'kLtR' */
    case rightToLeft = 0x6b52744c /* 'kRtL' */
}

// MARK: IllustratorEPJ0
@objc public enum IllustratorEPJ0 : AEKeyword {
    case forced = 0x65504a31 /* 'ePJ1' */
    case none = 0x67653031 /* 'ge01' */
    case standard = 0x65303830 /* 'e080' */
}

// MARK: IllustratorEPJ2
@objc public enum IllustratorEPJ2 : AEKeyword {
    case pushIn = 0x65504a33 /* 'ePJ3' */
    case pushOutFirst = 0x65504a34 /* 'ePJ4' */
    case pushOutOnly = 0x65504a35 /* 'ePJ5' */
}

// MARK: IllustratorEFBT
@objc public enum IllustratorEFBT : AEKeyword {
    case baselineAscent = 0x6b424153 /* 'kBAS' */
    case baselineCapHeight = 0x6b424348 /* 'kBCH' */
    case baselineEmBoxHeight = 0x6b424548 /* 'kBEH' */
    case baselineFixed = 0x6b424658 /* 'kBFX' */
    case baselineLeading = 0x6b424c47 /* 'kBLG' */
    case baselineLegacy = 0x6b424c59 /* 'kBLY' */
    case baselineXHeight = 0x6b425848 /* 'kBXH' */
}

// MARK: IllustratorELib
@objc public enum IllustratorELib : AEKeyword {
    case brushesLibrary = 0x65313937 /* 'e197' */
    case graphicStylesLibrary = 0x65313938 /* 'e198' */
    case illustratorArtwork = 0x65313935 /* 'e195' */
    case swatchesLibrary = 0x65313936 /* 'e196' */
    case symbolsLibrary = 0x65313939 /* 'e199' */
}

// MARK: IllustratorEDCt
@objc public enum IllustratorEDCt : AEKeyword {
    case eps = 0x65313932 /* 'e192' */
    case fxg = 0x65313934 /* 'e194' */
    case illustrator = 0x65313931 /* 'e191' */
    case pdf = 0x65313933 /* 'e193' */
}

// MARK: IllustratorEEST
@objc public enum IllustratorEEST : AEKeyword {
    case scaleByFactor = 0x65323630 /* 'e260' */
    case scaleByHeight = 0x65323632 /* 'e262' */
    case scaleByResolution = 0x65323633 /* 'e263' */
    case scaleByWidth = 0x65323631 /* 'e261' */
}

// MARK: IllustratorEEFT
@objc public enum IllustratorEEFT : AEKeyword {
    case se_jpeg100 = 0x65323436 /* 'e246' */
    case se_jpeg20 = 0x65323439 /* 'e249' */
    case se_jpeg50 = 0x65323438 /* 'e248' */
    case se_jpeg80 = 0x65323437 /* 'e247' */
    case se_pdf = 0x65323533 /* 'e253' */
    case se_png24 = 0x65323532 /* 'e252' */
    case se_png8 = 0x65323531 /* 'e251' */
    case se_svg = 0x65323530 /* 'e250' */
}

// MARK: IllustratorCEFT
@objc public enum IllustratorCEFT : AEKeyword {
    case autoCAD = 0x65333337 /* 'e337' */
    case flash = 0x65333336 /* 'e336' */
    case gif = 0x65333335 /* 'e335' */
    case jpeg = 0x65333330 /* 'e330' */
    case photoshop = 0x65333331 /* 'e331' */
    case png24 = 0x65333334 /* 'e334' */
    case png8 = 0x65333333 /* 'e333' */
    case svg = 0x65333332 /* 'e332' */
    case tiff = 0x65333338 /* 'e338' */
    case wosvg = 0x65333339 /* 'e339' */
}

// MARK: IllustratorCCRM
@objc public enum IllustratorCCRM : AEKeyword {
    case adaptive = 0x65333530 /* 'e350' */
    case perceptual = 0x65333532 /* 'e352' */
    case selective = 0x65333531 /* 'e351' */
    case web = 0x65333533 /* 'e353' */
}

// MARK: IllustratorCDtM
@objc public enum IllustratorCDtM : AEKeyword {
    case diffusion = 0x65333630 /* 'e360' */
    case noise = 0x65333633 /* 'e363' */
    case none = 0x67653031 /* 'ge01' */
    case patternDither = 0x65333631 /* 'e361' */
}

// MARK: IllustratorEPAD
@objc public enum IllustratorEPAD : AEKeyword {
    case allLayers = 0x65343633 /* 'e463' */
    case visibleLayers = 0x65343632 /* 'e462' */
    case visiblePrintableLayers = 0x65343631 /* 'e461' */
}

// MARK: IllustratorEPBD
@objc public enum IllustratorEPBD : AEKeyword {
    case artboardBounds = 0x65343731 /* 'e471' */
    case artworkBounds = 0x65343732 /* 'e472' */
    case cropBounds = 0x65343733 /* 'e473' */
}

// MARK: IllustratorEPCS
@objc public enum IllustratorEPCS : AEKeyword {
    case composite = 0x65343831 /* 'e481' */
    case hostBasedSeparation = 0x65343832 /* 'e482' */
    case inRIPSeparation = 0x65343833 /* 'e483' */
}

// MARK: IllustratorEPOR
@objc public enum IllustratorEPOR : AEKeyword {
    case autoRotate = 0x65343935 /* 'e495' */
    case landscape = 0x65343932 /* 'e492' */
    case portrait = 0x65343931 /* 'e491' */
    case reverseLandscape = 0x65343934 /* 'e494' */
    case reversePortrait = 0x65343933 /* 'e493' */
}

// MARK: IllustratorEPPO
@objc public enum IllustratorEPPO : AEKeyword {
    case bottom = 0x65313737 /* 'e177' */
    case bottomLeft = 0x65313734 /* 'e174' */
    case bottomRight = 0x65313741 /* 'e17A' */
    case center = 0x65313232 /* 'e122' */
    case left = 0x65313231 /* 'e121' */
    case right = 0x65313233 /* 'e123' */
    case top = 0x65313735 /* 'e175' */
    case topLeft = 0x65313732 /* 'e172' */
    case topRight = 0x65313738 /* 'e178' */
}

// MARK: IllustratorEPTL
@objc public enum IllustratorEPTL : AEKeyword {
    case fullPages = 0x65346131 /* 'e4a1' */
    case imageableAreas = 0x65346132 /* 'e4a2' */
    case singleFullPage = 0x65346130 /* 'e4a0' */
}

// MARK: IllustratorEPMS
@objc public enum IllustratorEPMS : AEKeyword {
    case japaneseStyle = 0x65303831 /* 'e081' */
    case roman = 0x65414532 /* 'eAE2' */
}

// MARK: IllustratorEPFD
@objc public enum IllustratorEPFD : AEKeyword {
    case complete = 0x65346332 /* 'e4c2' */
    case none = 0x67653031 /* 'ge01' */
    case subset = 0x65346331 /* 'e4c1' */
}

// MARK: IllustratorEPFS
@objc public enum IllustratorEPFS : AEKeyword {
    case deviceSubstitution = 0x65346433 /* 'e4d3' */
    case obliqueSubstitution = 0x65346431 /* 'e4d1' */
    case tintSubstitution = 0x65346432 /* 'e4d2' */
}

// MARK: IllustratorEPIC
@objc public enum IllustratorEPIC : AEKeyword {
    case jpeg = 0x65333330 /* 'e330' */
    case none = 0x67653031 /* 'ge01' */
    case rle = 0x65346531 /* 'e4e1' */
}

// MARK: IllustratorEPCP
@objc public enum IllustratorEPCP : AEKeyword {
    case customProfile = 0x65346634 /* 'e4f4' */
    case oldstyleProfile = 0x65346631 /* 'e4f1' */
    case printerProfile = 0x65346633 /* 'e4f3' */
    case sourceProfile = 0x65346632 /* 'e4f2' */
}

// MARK: IllustratorEPCI
@objc public enum IllustratorEPCI : AEKeyword {
    case absoluteColorimetric = 0x65346733 /* 'e4g3' */
    case perceptual = 0x65333532 /* 'e352' */
    case relativeColorimetric = 0x65346732 /* 'e4g2' */
    case saturation = 0x65346731 /* 'e4g1' */
}

// MARK: IllustratorEPTY
@objc public enum IllustratorEPTY : AEKeyword {
    case nonPostScriptPrinter = 0x65346832 /* 'e4h2' */
    case postScriptPrinter = 0x65346831 /* 'e4h1' */
    case unknown = 0x65313230 /* 'e120' */
}

// MARK: IllustratorEPCM
@objc public enum IllustratorEPCM : AEKeyword {
    case blackAndWhiteOutput = 0x65346933 /* 'e4i3' */
    case colorOutput = 0x65346931 /* 'e4i1' */
    case grayscaleOutput = 0x65346932 /* 'e4i2' */
}

// MARK: IllustratorEPST
@objc public enum IllustratorEPST : AEKeyword {
    case convertInk = 0x65346a33 /* 'e4j3' */
    case disableInk = 0x65346a31 /* 'e4j1' */
    case enableInk = 0x65346a32 /* 'e4j2' */
}

// MARK: IllustratorEPIK
@objc public enum IllustratorEPIK : AEKeyword {
    case blackInk = 0x70506d62 /* 'pPmb' */
    case customInk = 0x70506d63 /* 'pPmc' */
    case cyanInk = 0x70506d38 /* 'pPm8' */
    case magentaInk = 0x70506d39 /* 'pPm9' */
    case yellowInk = 0x70506d61 /* 'pPma' */
}

// MARK: IllustratorEPTT
@objc public enum IllustratorEPTT : AEKeyword {
    case ignoreOpaque = 0x65346c33 /* 'e4l3' */
    case normal = 0x65313130 /* 'e110' */
    case opaque = 0x65346c32 /* 'e4l2' */
    case transparent = 0x65346c31 /* 'e4l1' */
}

// MARK: IllustratorETet
@objc public enum IllustratorETet : AEKeyword {
    case abuttingTracingMethod = 0x65544d61 /* 'eTMa' */
    case overlappingTracingMethod = 0x65544d6f /* 'eTMo' */
}

// MARK: IllustratorETMt
@objc public enum IllustratorETMt : AEKeyword {
    case bwTracingMode = 0x65544d62 /* 'eTMb' */
    case colorTracingMode = 0x65544d63 /* 'eTMc' */
    case grayTracingMode = 0x65544d67 /* 'eTMg' */
}

// MARK: IllustratorETCt
@objc public enum IllustratorETCt : AEKeyword {
    case useFullColors = 0x65544366 /* 'eTCf' */
    case useLimitedColors = 0x6554436c /* 'eTCl' */
}

// MARK: IllustratorETvv
@objc public enum IllustratorETvv : AEKeyword {
    case viewOutlines = 0x65547633 /* 'eTv3' */
    case viewOutlinesWithTracing = 0x65547632 /* 'eTv2' */
    case viewOutlinesWithTransparentImage = 0x65547634 /* 'eTv4' */
    case viewSourceImage = 0x65547635 /* 'eTv5' */
    case viewTracingResult = 0x65547631 /* 'eTv1' */
}

// MARK: IllustratorGenericMethods
@objc public protocol IllustratorGenericMethods {
    @objc optional func delete() // Remove an element from an object
    @objc optional func duplicateTo(_ to: SBObject!, withProperties: [AnyHashable : Any]!) -> SBObject // Duplicate one or more object(s)
    @objc optional func exists() -> Bool // Verify if an object exists
    @objc optional func moveTo(_ to: SBObject!) -> SBObject // Move object(s) to a new location
}

// MARK: IllustratorApplication
@objc public protocol IllustratorApplication: SBApplicationProtocol {
    @objc optional func documents() -> SBElementArray
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var browserAvailable: Bool { get } // is a web browser available?
    @objc optional var buildNumber: String { get } // the build number of the Adobe Illustrator application
    @objc optional var colorSettings: [URL] { get } // the list of color settings files currently available for use
    @objc optional var coordinateSystem: IllustratorECoS { get } // Coordinate System used by script
    @objc optional var currentAdobeId: String { get } // The current users adobe id
    @objc optional var currentDocument: IllustratorDocument { get } // The active document
    @objc optional var currentUserGuid: String { get } // The current user's GUID
    @objc optional var defaultColorSettings: URL { get } // the default color settings file for the current application locale.
    @objc optional var flattenerPresets: [String] { get } // the list of flattener style names currently available for use
    @objc optional var freeMemory: Int { get } // the amount of unused memory within the Adobe Illustrator partition
    @objc optional var frontmost: Bool { get } // Is this the frontmost application?
    @objc optional var locale: String { get } // the Locale of the Adobe Illustrator application
    @objc optional var name: String { get } // The application's name
    @objc optional var pasteRemembersLayers: Bool { get } // does paste operation remember layers structure?
    @objc optional var PDFPresets: [String] { get } // the list of PDF preset names currently available for use
    @objc optional var PPDs: [IllustratorPPDFile] { get } // the list of PPD files currently available for use. For performance reasons, the PPDFile entry only contains the model name and file spec of each PPD file.
    @objc optional var printPresets: [String] { get } // the list of print preset names currently available for use
    @objc optional var printers: [IllustratorPrinter] { get } // the list of installed printers
    @objc optional var scriptingVersion: String { get } // the version of the Scripting plugin
    @objc optional var selection: Any { get } // the selection visible to the user
    @objc optional var settings: IllustratorIllustratorPreferences { get } // preferences for Illustrator
    @objc optional var startupPresets: [String] { get } // the list of presets available for creating a new document
    @objc optional var tracingPresets: [String] { get } // the list of tracing preset names currently available for use
    @objc optional var userInteractionLevel: IllustratorEMUI { get } // what level of interaction with the user should be allowed when handling script commands
    @objc optional var version: String { get } // the version of the Adobe Illustrator application
    @objc optional func executeAATFileFile(_ file: URL!) // executes the active session in the sequencer
    @objc optional func getPPDInfoFor(_ for_: String!) -> IllustratorPPDProperties // get detailed info from the specified PPD file
    @objc optional func loadColorSettingsFrom(_ from: URL!) // load the color settings from the file. If the file is an empty file spec, the color management will be turned off.
    @objc optional func `open`(_ x: Any!, forcing: IllustratorECCS, dialogs: Bool, withOptions: Any!) // Open the specified document file(s)
    @objc optional func print(_ x: Any!, options: IllustratorPrintOptions!) // Print the specified document(s) or file(s)
    @objc optional func quit() // Quit the application
    @objc optional func showPresetsFrom(_ from: URL!) -> [Any] // get presets from the file
    @objc optional func ISInTouchWorkspace() -> Bool // Is In Touch Workspace
    @objc optional func deleteWorkspaceWorkspaceName(_ workspaceName: String!) -> Bool // Deletes an existing workspace
    @objc optional func getScriptableHelpGroup() -> Any // Get the scriptable help group object that represents the search widget in the app bar
    @objc optional func isusersharingappusagedata() -> Bool // Is user sharing the application usage data
    @objc optional func redraw() // Force Illustrator to redraw its window(s)
    @objc optional func reflectCsawTo(_ to: URL!) // generate Creative Suite ActionScript Wrappers in specified directory
    @objc optional func resetWorkspace() -> Bool // Resets the current workspace
    @objc optional func saveWorkspaceWorkspaceName(_ workspaceName: String!) -> Bool // Saves a new workspace
    @objc optional func switchWorkspaceWorkspaceName(_ workspaceName: String!) -> Bool // Switches between workspaces
    @objc optional func convertSampleColorSourceColorSpace(_ sourceColorSpace: IllustratorECLS, sourceColor: [NSNumber]!, destinationColorSpace: IllustratorECLS, colorConversionPurpose: IllustratorECCP, sourceHasAlpha: Bool, destinationHasAlpha: Bool) -> [Any] // Converts a sample-component color from one color space to another.
    @objc optional func translatePlaceholderText(_ x: String!) -> String // translate the placeholder text to regular text. A method to enter unicode points in hex values.
    @objc optional func getIdentityMatrix() -> IllustratorMatrix // Returns an identity matrix
    @objc optional func getRotationMatrixAngle(_ angle: Double) -> IllustratorMatrix // Returns a rotation transformation matrix
    @objc optional func getScaleMatrixHorizontalScale(_ horizontalScale: Double, verticalScale: Double) -> IllustratorMatrix // Returns a scale transformation matrix
    @objc optional func getTranslationMatrixDeltaX(_ deltaX: Double, deltaY: Double) -> IllustratorMatrix // Returns a translation matrix
    @objc optional func copy() // Copy current selection to the clipboard
    @objc optional func cut() // Cut current selection to the clipboard
    @objc optional func doJavascript(_ x: Any!, withArguments: [Any]!, showDebugger: IllustratorE940) -> String // execute a javascript
    @objc optional func doScript(_ x: String!, from: String!, dialogs: Bool) // Play an action from the Actions Palette
    @objc optional func executeMenuCommandMenuCommandString(_ menuCommandString: String!) // executes a menu command using the menu shortcut string
    @objc optional func getPresetFileOfPresetType(_ presetType: IllustratorEDPT) -> URL // given a preset type, returns the full path to the application's default document profile for the type
    @objc optional func getPresetSettingsPreset(_ preset: String!) -> IllustratorDocumentPreset // given a preset name, tries and retrieves the settings from the preset template
    @objc optional func isFillActive() -> Bool // Checks if fill is active or not
    @objc optional func isStrokeActive() -> Bool // Checks if stroke is active or not
    @objc optional func loadActionActionFilePath(_ actionFilePath: URL!) // Load an action into action palette
    @objc optional func openCloudLibraryAssetForEditingAsseturl(_ asseturl: URL!, thumbnailurl: URL!, assettype: String!, options: Any!) -> IllustratorDocument // For Internal Use
    @objc optional func paste() // Paste clipboard into the current document
    @objc optional func redo() // Redo the last transaction
    @objc optional func setThumbnailOptionsForCloudLibraryOptions(_ options: Any!) // For Internal Use
    @objc optional func undo() // Undo the last transaction
    @objc optional func unloadActionActionFilePath(_ _actionFilePath: String!, actionFilePath: String!) // unloads an action into action palette
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setCoordinateSystem(_ coordinateSystem: IllustratorECoS) // Coordinate System used by script
    @objc optional func setCurrentDocument(_ currentDocument: IllustratorDocument!) // The active document
    @objc optional func setPasteRemembersLayers(_ pasteRemembersLayers: Bool) // does paste operation remember layers structure?
    @objc optional func setSelection(_ selection: Any!) // the selection visible to the user
    @objc optional func setUserInteractionLevel(_ userInteractionLevel: IllustratorEMUI) // what level of interaction with the user should be allowed when handling script commands
}
extension SBApplication: IllustratorApplication {}

// MARK: IllustratorDocument
@objc public protocol IllustratorDocument: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional func artboards() -> SBElementArray
    @objc optional func Assets() -> SBElementArray
    @objc optional func brushes() -> SBElementArray
    @objc optional func characterStyles() -> SBElementArray
    @objc optional func compoundPathItems() -> SBElementArray
    @objc optional func datasets() -> SBElementArray
    @objc optional func embededItems() -> SBElementArray
    @objc optional func gradients() -> SBElementArray
    @objc optional func graphicStyles() -> SBElementArray
    @objc optional func graphItems() -> SBElementArray
    @objc optional func groupItems() -> SBElementArray
    @objc optional func layers() -> SBElementArray
    @objc optional func legacyTextItems() -> SBElementArray
    @objc optional func meshItems() -> SBElementArray
    @objc optional func nonNativeItems() -> SBElementArray
    @objc optional func pageItems() -> SBElementArray
    @objc optional func paragraphStyles() -> SBElementArray
    @objc optional func pathItems() -> SBElementArray
    @objc optional func patterns() -> SBElementArray
    @objc optional func placedItems() -> SBElementArray
    @objc optional func pluginItems() -> SBElementArray
    @objc optional func rasterItems() -> SBElementArray
    @objc optional func spots() -> SBElementArray
    @objc optional func stories() -> SBElementArray
    @objc optional func swatches() -> SBElementArray
    @objc optional func swatchgroups() -> SBElementArray
    @objc optional func symbolItems() -> SBElementArray
    @objc optional func symbols() -> SBElementArray
    @objc optional func tags() -> SBElementArray
    @objc optional func textFrames() -> SBElementArray
    @objc optional func variables() -> SBElementArray
    @objc optional func views() -> SBElementArray
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var colorProfileName: String { get } // The name of the color profile of the document
    @objc optional var colorSpace: IllustratorECCS { get } // the color space used for the document
    @objc optional var cropMarks: [Any] { get }
    @objc optional var cropStyle: IllustratorECRs { get }
    @objc optional var currentDataset: IllustratorDataset { get } // The active data set
    @objc optional var currentLayer: IllustratorLayer { get } // The active layer
    @objc optional var currentView: IllustratorView { get } // the document's current view
    @objc optional var defaultFillColor: IllustratorColorInfo { get } // default fill color
    @objc optional var defaultFillOverprint: Bool { get } // will art beneath a filled object be overprinted by default?
    @objc optional var defaultFilled: Bool { get } // should a new path be filled?
    @objc optional var defaultStrokeCap: IllustratorESTc { get } // default type of line capping
    @objc optional var defaultStrokeColor: IllustratorColorInfo { get } // default stroke color
    @objc optional var defaultStrokeDashOffset: Double { get } // the default distance into the dash pattern at which the pattern should be started
    @objc optional var defaultStrokeDashes: [NSNumber] { get } // default dash lengths (set to {} for a solid line)
    @objc optional var defaultStrokeJoin: IllustratorESTj { get } // default type of joints
    @objc optional var defaultStrokeMiterLimit: Double { get } // specifies whether a join is mitered (pointed) or beveled (squared-off) by default
    @objc optional var defaultStrokeOverprint: Bool { get } // will art beneath a stroked object be overprinted by default?
    @objc optional var defaultStrokeWidth: Double { get } // default width of stroke
    @objc optional var defaultStroked: Bool { get } // should a new path be stroked?
    @objc optional var filePath: URL { get } // the file associated with the document
    @objc optional var geometricBounds: [Any] { get } // the bounds of the illustration excluding stroke width
    @objc optional var height: Double { get }
    @objc optional var inks: [IllustratorInk] { get } // the list of inks in this document
    @objc optional var KinsokuSet: [String] { get } // the Kinsoku set
    @objc optional var modified: Bool { get } // Has the document been modified since the last save?
    @objc optional var MojikumiSet: [String] { get } // the Mojikumi set
    @objc optional var name: String { get } // The document's name
    @objc optional var outputResolution: Double { get }
    @objc optional var pageOrigin: [Any] { get }
    @objc optional var printTiles: Bool { get }
    @objc optional var rasterEffectSettings: IllustratorRasterEffectOptions { get } // The document raster effects settings
    @objc optional var rulerOrigin: [Any] { get }
    @objc optional var rulerUnits: IllustratorERUt { get }
    @objc optional var selection: Any { get } // the selection within the document
    @objc optional var showPlacedImages: Bool { get }
    @objc optional var splitLongPaths: Bool { get }
    @objc optional var stationery: Bool { get } // Is the file a stationery file?
    @objc optional var tileFullPages: Bool { get }
    @objc optional var useDefaultScreen: Bool { get }
    @objc optional var variablesLocked: Bool { get } // The locked variables
    @objc optional var visibleBounds: [Any] { get } // the visible bounds of the illustration including stroke width
    @objc optional var width: Double { get }
    @objc optional var XMPString: String { get } // The XMP packet string associated with the document
    @objc optional func closeSaving(_ saving: IllustratorSavo) // Close the specified document(s)
    @objc optional func saveIn(_ in_: URL!, as: IllustratorEDCt, withOptions: Any!) -> IllustratorDocument // Save the specified document(s)
    @objc optional func captureTo(_ to: URL!, size: [Any]!) // capture the current document window to the target TIFF image file.
    @objc optional func convertcoordinateCoordinate(_ coordinate: [Any]!, source: IllustratorECoS, destination: IllustratorECoS) -> [Any] // Converts the coordinate system of a single point from one coordinate system to another.
    @objc optional func exportTo(_ to: URL!, as: IllustratorCEFT, withOptions: Any!) // Export the specified document(s)
    @objc optional func exportPerspectiveGridPresetTo(_ to: URL!) // saves all perspective grid presets to a file
    @objc optional func exportSelectedArtworkTo(_ to: URL!) // Export the selection as Ai file
    @objc optional func exportSelectionTo(_ to: URL!, withPNG24Options: Any!) // Export the selection as PNG file
    @objc optional func exportforscreensToFolder(_ toFolder: URL!, as: IllustratorEEFT, withOptions: Any!, itemtoexport: IllustratorItemToExport!, filenameprefix: String!) // Export the specified document/asset(s)/artboard(s)
    @objc optional func fitartboardtoselectedartIndex(_ index: Int) -> Bool // Change the artboard to selected art bounds.
    @objc optional func getPerspectiveActivePlane() -> IllustratorEPPt // Gets the active plane of the active perspective grid of the document
    @objc optional func hidePerspectiveGrid() -> Bool // Hides the current active perspective grid for the document, if there is visible perspective grid.
    @objc optional func importPerspectiveGridPresetFrom(_ from: URL!, perspectivePreset: String!) // loads mentioned perspective grid preset, if preset name is specified, else loads all(if no preset name is specified) presets, from the specified file
    @objc optional func importFileFrom(_ from: URL!, isLinked: Bool, libraryName: String!, itemName: String!, elementRef: String!, modifiedTime: Double, creationTime: Double, adobeStockId: String!, adobeStockLicense: String!, shouldLoadToPlacegun: Bool) // Import the file into current Ai document
    @objc optional func rasterizeSourceArt(_ sourceArt: Any!, inside: [Any]!, withOptions: IllustratorRasterizeOptions!) -> IllustratorPageItem // rasterize the source art(s) within the specified clip bounds. The source art(s) are disposed as a result of the rasterization.
    @objc optional func rearrangeartboardsArtboardLayout(_ artboardLayout: IllustratorEDAL, artboardRowsOrCols: Int, artboardSpacing: Double, artboardMoveArtwork: Bool) -> Bool // Rearrange Artboards in the document
    @objc optional func selectPerspectivePresetPerspectivePreset(_ perspectivePreset: String!) -> Bool // Selects a predefined preset to define grid for the current document.
    @objc optional func selectobjectsonactiveartboard() -> Bool // Select art objects in active artboard.
    @objc optional func setPerspectiveActivePlanePerspectiveGridPlane(_ perspectiveGridPlane: IllustratorEPPt) -> Bool // Sets the active perspective plane for the active grid of the document.
    @objc optional func showPerspectiveGrid() -> Bool // Shows the current active perspective grid for the document, if no active perspective grid then shows the default perspective grid for the document
    @objc optional func importCharacterStylesFrom(_ from: URL!) // load the character styles from the Illustrator file
    @objc optional func importParagraphStylesFrom(_ from: URL!) // load the paragraph styles from the Illustrator file
    @objc optional func exportPDFPresetTo(_ to: URL!) // save all PDF presets to a file
    @objc optional func importPDFPresetFrom(_ from: URL!, replacingPreset: Bool) // load all PDF presets from a file
    @objc optional func exportVariablesTo(_ to: URL!) // Save datasets into an XML library. The datasets contain variables and their associated dynamic data
    @objc optional func importVariablesFrom(_ from: URL!) // Import a library containing datasets, variables and their associated dynamic data. Importing variables will overwrite existing variables and datasets
    @objc optional func exportPrintPresetTo(_ to: URL!) // export the current print setting to the preset file
    @objc optional func importPrintPresetPrintPreset(_ printPreset: String!, from: URL!) // apply the named print preset from the file to the current print setting
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setCropMarks(_ cropMarks: [Any]!)
    @objc optional func setCropStyle(_ cropStyle: IllustratorECRs)
    @objc optional func setCurrentDataset(_ currentDataset: IllustratorDataset!) // The active data set
    @objc optional func setCurrentLayer(_ currentLayer: IllustratorLayer!) // The active layer
    @objc optional func setDefaultFillColor(_ defaultFillColor: IllustratorColorInfo!) // default fill color
    @objc optional func setDefaultFillOverprint(_ defaultFillOverprint: Bool) // will art beneath a filled object be overprinted by default?
    @objc optional func setDefaultFilled(_ defaultFilled: Bool) // should a new path be filled?
    @objc optional func setDefaultStrokeCap(_ defaultStrokeCap: IllustratorESTc) // default type of line capping
    @objc optional func setDefaultStrokeColor(_ defaultStrokeColor: IllustratorColorInfo!) // default stroke color
    @objc optional func setDefaultStrokeDashOffset(_ defaultStrokeDashOffset: Double) // the default distance into the dash pattern at which the pattern should be started
    @objc optional func setDefaultStrokeDashes(_ defaultStrokeDashes: [NSNumber]!) // default dash lengths (set to {} for a solid line)
    @objc optional func setDefaultStrokeJoin(_ defaultStrokeJoin: IllustratorESTj) // default type of joints
    @objc optional func setDefaultStrokeMiterLimit(_ defaultStrokeMiterLimit: Double) // specifies whether a join is mitered (pointed) or beveled (squared-off) by default
    @objc optional func setDefaultStrokeOverprint(_ defaultStrokeOverprint: Bool) // will art beneath a stroked object be overprinted by default?
    @objc optional func setDefaultStrokeWidth(_ defaultStrokeWidth: Double) // default width of stroke
    @objc optional func setDefaultStroked(_ defaultStroked: Bool) // should a new path be stroked?
    @objc optional func setModified(_ modified: Bool) // Has the document been modified since the last save?
    @objc optional func setPageOrigin(_ pageOrigin: [Any]!)
    @objc optional func setRasterEffectSettings(_ rasterEffectSettings: IllustratorRasterEffectOptions!) // The document raster effects settings
    @objc optional func setRulerOrigin(_ rulerOrigin: [Any]!)
    @objc optional func setSelection(_ selection: Any!) // the selection within the document
    @objc optional func setVariablesLocked(_ variablesLocked: Bool) // The locked variables
    @objc optional func setXMPString(_ XMPString: String!) // The XMP packet string associated with the document
}
extension SBObject: IllustratorDocument {}

// MARK: IllustratorArtwork
@objc public protocol IllustratorArtwork: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var startupPreset: String { get } // the name of startup document preset
    @objc optional var presetSettingsDialogOption: Bool { get } // argument controls if options Dialog is shown or not
    @objc optional func setStartupPreset(_ startupPreset: String!) // the name of startup document preset
    @objc optional func setPresetSettingsDialogOption(_ presetSettingsDialogOption: Bool) // argument controls if options Dialog is shown or not
}
extension SBObject: IllustratorArtwork {}

// MARK: IllustratorArtboard
@objc public protocol IllustratorArtboard: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var artboardRectangle: [Any] { get } // size and position of artboard
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var name: String { get } // The name of the artboard
    @objc optional var rulerOrigin: [Any] { get } // Ruler origin of artboard.It is relative to left-bottom corner of the Artboard.
    @objc optional var rulerPAR: Double { get } // Pixel aspect ratio, used in ruler visualization if the units are pixels ( 0.1 - 10.0 )
    @objc optional var showCenter: Bool { get } // Show center mark
    @objc optional var showCrossHairs: Bool { get } // Show cross hairs
    @objc optional var showSafeAreas: Bool { get } // Show title and action safe areas (for video)
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setArtboardRectangle(_ artboardRectangle: [Any]!) // size and position of artboard
    @objc optional func setName(_ name: String!) // The name of the artboard
    @objc optional func setRulerOrigin(_ rulerOrigin: [Any]!) // Ruler origin of artboard.It is relative to left-bottom corner of the Artboard.
    @objc optional func setRulerPAR(_ rulerPAR: Double) // Pixel aspect ratio, used in ruler visualization if the units are pixels ( 0.1 - 10.0 )
    @objc optional func setShowCenter(_ showCenter: Bool) // Show center mark
    @objc optional func setShowCrossHairs(_ showCrossHairs: Bool) // Show cross hairs
    @objc optional func setShowSafeAreas(_ showSafeAreas: Bool) // Show title and action safe areas (for video)
}
extension SBObject: IllustratorArtboard {}

// MARK: IllustratorBrush
@objc public protocol IllustratorBrush: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var name: String { get } // The brush's name
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setName(_ name: String!) // The brush's name
}
extension SBObject: IllustratorBrush {}

// MARK: IllustratorDimensionsInfo
@objc public protocol IllustratorDimensionsInfo: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var width: Double { get } // the Width parameter ( minimum 0.0 )
    @objc optional var height: Double { get } // the Height parameter ( minimum 0.0 )
    @objc optional func setWidth(_ width: Double) // the Width parameter ( minimum 0.0 )
    @objc optional func setHeight(_ height: Double) // the Height parameter ( minimum 0.0 )
}
extension SBObject: IllustratorDimensionsInfo {}

// MARK: IllustratorDocumentPreset
@objc public protocol IllustratorDocumentPreset: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var artboardLayout: IllustratorEDAL { get } // layout for artboards ( default: grid by row )
    @objc optional var artboardRowsOrCols: Int { get } // Number of rows (for rows layout) OR column(for column layouts)of artboards.Range is 1 to (docNumArtboards - 1) or 1 for single row or column layouts ( default: 1 )
    @objc optional var artboardSpacing: Double { get } // spacing between artboards ( default: 20.0 )
    @objc optional var colorMode: IllustratorECCS { get } // the color mode for the new document ( default: CMYK )
    @objc optional var documentBleedLink: Bool { get } // document link for bleed values ( default: true )
    @objc optional var documentBleedOffset: [Any] { get } // document bleed offset rect
    @objc optional var documentUnits: IllustratorERUt { get } // the units for the new document ( default: points )
    @objc optional var height: Double { get } // the height for the new document ( default: 792.0 )
    @objc optional var numArtboards: Int { get } // number of artboards for new document.Range (1:100). ( default: 1 )
    @objc optional var previewMode: IllustratorEDPM { get } // the preview mode for the new document ( default: default preview )
    @objc optional var rasterResolution: IllustratorEDCR { get } // the raster resolution for the new document ( default: screen resolution )
    @objc optional var title: String { get } // the title for the new document ( default: Untitled )
    @objc optional var transparencyGrid: IllustratorEDGR { get } // the transparency grid for the new document ( default: hide transparency grids )
    @objc optional var width: Double { get } // the width for the new document ( default: 612.0 )
    @objc optional func setArtboardLayout(_ artboardLayout: IllustratorEDAL) // layout for artboards ( default: grid by row )
    @objc optional func setArtboardRowsOrCols(_ artboardRowsOrCols: Int) // Number of rows (for rows layout) OR column(for column layouts)of artboards.Range is 1 to (docNumArtboards - 1) or 1 for single row or column layouts ( default: 1 )
    @objc optional func setArtboardSpacing(_ artboardSpacing: Double) // spacing between artboards ( default: 20.0 )
    @objc optional func setColorMode(_ colorMode: IllustratorECCS) // the color mode for the new document ( default: CMYK )
    @objc optional func setDocumentBleedLink(_ documentBleedLink: Bool) // document link for bleed values ( default: true )
    @objc optional func setDocumentBleedOffset(_ documentBleedOffset: [Any]!) // document bleed offset rect
    @objc optional func setDocumentUnits(_ documentUnits: IllustratorERUt) // the units for the new document ( default: points )
    @objc optional func setHeight(_ height: Double) // the height for the new document ( default: 792.0 )
    @objc optional func setNumArtboards(_ numArtboards: Int) // number of artboards for new document.Range (1:100). ( default: 1 )
    @objc optional func setPreviewMode(_ previewMode: IllustratorEDPM) // the preview mode for the new document ( default: default preview )
    @objc optional func setRasterResolution(_ rasterResolution: IllustratorEDCR) // the raster resolution for the new document ( default: screen resolution )
    @objc optional func setTitle(_ title: String!) // the title for the new document ( default: Untitled )
    @objc optional func setTransparencyGrid(_ transparencyGrid: IllustratorEDGR) // the transparency grid for the new document ( default: hide transparency grids )
    @objc optional func setWidth(_ width: Double) // the width for the new document ( default: 612.0 )
}
extension SBObject: IllustratorDocumentPreset {}

// MARK: IllustratorGradient
@objc public protocol IllustratorGradient: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional func gradientStops() -> SBElementArray
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var entireGradient: [IllustratorGradientStopInfo] { get } // all the gradient stops in the gradient
    @objc optional var gradientType: IllustratorEGDt { get } // the gradient type
    @objc optional var name: String { get } // the gradient's name
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setEntireGradient(_ entireGradient: [IllustratorGradientStopInfo]!) // all the gradient stops in the gradient
    @objc optional func setGradientType(_ gradientType: IllustratorEGDt) // the gradient type
    @objc optional func setName(_ name: String!) // the gradient's name
}
extension SBObject: IllustratorGradient {}

// MARK: IllustratorGradientStop
@objc public protocol IllustratorGradientStop: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var color: IllustratorColorInfo { get } // the color linked to this gradient stop
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var midpoint: Double { get } // midpoint key value in percent ( 13.0 - 87.0 )
    @objc optional var rampPoint: Double { get } // location of color in the blend (in percent) ( 0.0 - 100.0 )
    @objc optional var stopOpacity: Double { get } // The opacity (between 0.0 and 100.0) value for the gradient stop ( 0.0 - 100.0 )
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setColor(_ color: IllustratorColorInfo!) // the color linked to this gradient stop
    @objc optional func setMidpoint(_ midpoint: Double) // midpoint key value in percent ( 13.0 - 87.0 )
    @objc optional func setRampPoint(_ rampPoint: Double) // location of color in the blend (in percent) ( 0.0 - 100.0 )
    @objc optional func setStopOpacity(_ stopOpacity: Double) // The opacity (between 0.0 and 100.0) value for the gradient stop ( 0.0 - 100.0 )
}
extension SBObject: IllustratorGradientStop {}

// MARK: IllustratorGradientStopInfo
@objc public protocol IllustratorGradientStopInfo: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var color: IllustratorColorInfo { get } // the color linked to this gradient stop
    @objc optional var midpoint: Double { get } // midpoint value in percent ( 13.0 - 87.0; default: 50.0 )
    @objc optional var rampPoint: Double { get } // location of color in the blend in percent ( 0.0 - 100.0; default: 0.0 )
    @objc optional var stopOpacity: Double { get } // The opacity value for the gradient stop ( 0.0 - 100.0; default: 1.0 )
    @objc optional func setColor(_ color: IllustratorColorInfo!) // the color linked to this gradient stop
    @objc optional func setMidpoint(_ midpoint: Double) // midpoint value in percent ( 13.0 - 87.0; default: 50.0 )
    @objc optional func setRampPoint(_ rampPoint: Double) // location of color in the blend in percent ( 0.0 - 100.0; default: 0.0 )
    @objc optional func setStopOpacity(_ stopOpacity: Double) // The opacity value for the gradient stop ( 0.0 - 100.0; default: 1.0 )
}
extension SBObject: IllustratorGradientStopInfo {}

// MARK: IllustratorGraphicStyle
@objc public protocol IllustratorGraphicStyle: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var name: String { get } // The art style's name
    @objc optional func applyTo(_ to: Any!) // Apply a brush or art style to object(s)
    @objc optional func mergeTo(_ to: Any!) // Merge an art style to object(s) current style(s)
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setName(_ name: String!) // The art style's name
}
extension SBObject: IllustratorGraphicStyle {}

// MARK: IllustratorIllustratorPreferences
@objc public protocol IllustratorIllustratorPreferences: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var AutoCADFileOptions: IllustratorAutoCADOptions { get } // options to use when opening or placing a AutoCAD file
    @objc optional var PDFFileOptions: IllustratorPDFOptions { get } // options to use when opening or placing a PDF file
    @objc optional var PhotoshopFileOptions: IllustratorPhotoshopOptions { get } // options to use when opening or placing a Photoshop file
    @objc optional func checkPreferenceExistsKey(_ key: String!) -> Bool // checks whether the application preference key exists
    @objc optional func deletePreferenceKey(_ key: String!) // delete the application preference key
    @objc optional func getBooleanPreferenceKey(_ key: String!) -> Bool // retrieve the value of the application preference key as boolean
    @objc optional func getIntegerPreferenceKey(_ key: String!) -> Int // retrieve the value of the application preference key as integer
    @objc optional func getRealPreferenceKey(_ key: String!) // retrieve the value of the application preference key as real number
    @objc optional func getStringPreferenceKey(_ key: String!) -> String // retrieve the value of the application preference key as string type
    @objc optional func setBooleanPreferenceKey(_ key: String!, to: Bool) // set the value of the application preference key as boolean
    @objc optional func setIntegerPreferenceKey(_ key: String!, to: Int) // set the value of the application preference key as integer
    @objc optional func setRealPreferenceKey(_ key: String!, to: Double) // set the value of the application preference key as real number
    @objc optional func setStringPreferenceKey(_ key: String!, to: String!) // set the value of the application preference key as string type
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
}
extension SBObject: IllustratorIllustratorPreferences {}

// MARK: IllustratorLayer
@objc public protocol IllustratorLayer: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional func compoundPathItems() -> SBElementArray
    @objc optional func graphItems() -> SBElementArray
    @objc optional func groupItems() -> SBElementArray
    @objc optional func layers() -> SBElementArray
    @objc optional func legacyTextItems() -> SBElementArray
    @objc optional func meshItems() -> SBElementArray
    @objc optional func nonNativeItems() -> SBElementArray
    @objc optional func pageItems() -> SBElementArray
    @objc optional func pathItems() -> SBElementArray
    @objc optional func placedItems() -> SBElementArray
    @objc optional func pluginItems() -> SBElementArray
    @objc optional func rasterItems() -> SBElementArray
    @objc optional func symbolItems() -> SBElementArray
    @objc optional func textFrames() -> SBElementArray
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var blendMode: IllustratorCBlM { get } // the mode used when compositing an object
    @objc optional var color: IllustratorRGBColorInfo { get } // color used when outlining artwork in this layer
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var dimPlacedImages: Bool { get } // Is rendered as dimmed in this layer?
    @objc optional var hasSelectedArtwork: Bool { get } // Is any artwork in this layer selected? Setting this property to false deselects all artwork in the layer.
    @objc optional var isolated: Bool { get } // is the artwork isolated
    @objc optional var knockout: IllustratorCKOS { get } // is the artwork used to create a knockout
    @objc optional var locked: Bool { get } // Is the layer editable?
    @objc optional var name: String { get } // The layer's name
    @objc optional var opacity: Double { get } // The layer's opacity (between 0.0 and 100.0)
    @objc optional var preview: Bool { get } // Is the layer rendered in preview mode?
    @objc optional var printable: Bool { get } // Is the layer printable?
    @objc optional var sliced: Bool { get } // Is the layer sliced (default: false)
    @objc optional var visible: Bool { get } // Is the layer visible?
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setBlendMode(_ blendMode: IllustratorCBlM) // the mode used when compositing an object
    @objc optional func setColor(_ color: IllustratorRGBColorInfo!) // color used when outlining artwork in this layer
    @objc optional func setDimPlacedImages(_ dimPlacedImages: Bool) // Is rendered as dimmed in this layer?
    @objc optional func setHasSelectedArtwork(_ hasSelectedArtwork: Bool) // Is any artwork in this layer selected? Setting this property to false deselects all artwork in the layer.
    @objc optional func setIsolated(_ isolated: Bool) // is the artwork isolated
    @objc optional func setKnockout(_ knockout: IllustratorCKOS) // is the artwork used to create a knockout
    @objc optional func setLocked(_ locked: Bool) // Is the layer editable?
    @objc optional func setName(_ name: String!) // The layer's name
    @objc optional func setOpacity(_ opacity: Double) // The layer's opacity (between 0.0 and 100.0)
    @objc optional func setPreview(_ preview: Bool) // Is the layer rendered in preview mode?
    @objc optional func setPrintable(_ printable: Bool) // Is the layer printable?
    @objc optional func setSliced(_ sliced: Bool) // Is the layer sliced (default: false)
    @objc optional func setVisible(_ visible: Bool) // Is the layer visible?
}
extension SBObject: IllustratorLayer {}

// MARK: IllustratorPageItem
@objc public protocol IllustratorPageItem: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional func tags() -> SBElementArray
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var blendMode: IllustratorCBlM { get } // the mode used when compositing an object
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var controlBounds: [Any] { get } // the bounds of the artwork including stroke width and controls
    @objc optional var editable: Bool { get } // can the art item be modified
    @objc optional var geometricBounds: [Any] { get } // the bounds of the artwork excluding stroke width
    @objc optional var height: Double { get } // the height of the art item ( 0.0 - 16348.0 )
    @objc optional var hidden: Bool { get } // is this artwork item hidden?
    @objc optional var isolated: Bool { get } // is the artwork isolated
    @objc optional var knockout: IllustratorCKOS { get } // is the artwork used to create a knockout
    @objc optional var layer: IllustratorLayer { get } // the layer to which this artwork belongs
    @objc optional var locked: Bool { get } // is this artwork item locked?
    @objc optional var name: String { get } // The item's name
    @objc optional var note: String { get } // the note assigned to this artwork item
    @objc optional var opacity: Double { get } // the object's opacity (between 0.0 and 100.0) ( 0.0 - 100.0 )
    @objc optional var pixelAligned: Bool { get } // is this artwork item aligned to Pixel Grid?
    @objc optional var position: [Any] { get } // the position of the top left corner of the art item
    @objc optional var selected: Bool { get } // is this artwork item selected?
    @objc optional var sliced: Bool { get } // is the art item sliced (default: false)
    @objc optional var URL: String { get } // the value of the Adobe URL tag assigned to this artwork item
    @objc optional var visibilityVariable: Any { get } // the visibility variable bound to this page item
    @objc optional var visibleBounds: [Any] { get } // the visible bounds of the artwork including stroke width
    @objc optional var width: Double { get } // the width of the art item ( 0.0 - 16348.0 )
    @objc optional var wrapInside: Bool { get } // should the text frame object be wrapped inside this object?
    @objc optional var wrapOffset: Double { get } // use this offset when wrapping text around this object
    @objc optional var wrapped: Bool { get } // wrap text frame objects around this object (text frame must be above the object)
    @objc optional func applyeffectLiveeffectxml(_ liveeffectxml: String!) // Apply effect to selected artItem
    @objc optional func bringInPerspectivePositionX(_ positionX: Double, positionY: Double, perspectiveGridPlane: IllustratorEPPt) // Place art object(s)in perspective grid at spedified perspective plane and coordinate
    @objc optional func rotateAngle(_ angle: Double, transformingObjects: Bool, transformingFillPatterns: Bool, transformingFillGradients: Bool, transformingStrokePatterns: Bool, about: IllustratorETRt) // Rotate art object(s)
    @objc optional func scaleHorizontalScale(_ horizontalScale: Double, verticalScale: Double, transformingObjects: Bool, transformingFillPatterns: Bool, transformingFillGradients: Bool, transformingStrokePatterns: Bool, lineScale: Double, about: IllustratorETRt) // Scale art object(s)
    @objc optional func translateDeltaX(_ deltaX: Double, deltaY: Double, transformingObjects: Bool, transformingFillPatterns: Bool, transformingFillGradients: Bool, transformingStrokePatterns: Bool) // Reposition art object(s)
    @objc optional func transformUsing(_ using_: IllustratorMatrix!, transformingObjects: Bool, transformingFillPatterns: Bool, transformingFillGradients: Bool, transformingStrokePatterns: Bool, lineScale: Double, about: IllustratorETRt) // Transform art object(s) using a transformation matrix
    @objc optional func SendScriptMessageActionPluginName(_ pluginName: String!, messageSelector: String!, parameterString: String!) -> String // sends the script message to the required plugin
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setBlendMode(_ blendMode: IllustratorCBlM) // the mode used when compositing an object
    @objc optional func setHeight(_ height: Double) // the height of the art item ( 0.0 - 16348.0 )
    @objc optional func setHidden(_ hidden: Bool) // is this artwork item hidden?
    @objc optional func setIsolated(_ isolated: Bool) // is the artwork isolated
    @objc optional func setKnockout(_ knockout: IllustratorCKOS) // is the artwork used to create a knockout
    @objc optional func setLocked(_ locked: Bool) // is this artwork item locked?
    @objc optional func setName(_ name: String!) // The item's name
    @objc optional func setNote(_ note: String!) // the note assigned to this artwork item
    @objc optional func setOpacity(_ opacity: Double) // the object's opacity (between 0.0 and 100.0) ( 0.0 - 100.0 )
    @objc optional func setPixelAligned(_ pixelAligned: Bool) // is this artwork item aligned to Pixel Grid?
    @objc optional func setPosition(_ position: [Any]!) // the position of the top left corner of the art item
    @objc optional func setSelected(_ selected: Bool) // is this artwork item selected?
    @objc optional func setSliced(_ sliced: Bool) // is the art item sliced (default: false)
    @objc optional func setURL(_ URL: String!) // the value of the Adobe URL tag assigned to this artwork item
    @objc optional func setVisibilityVariable(_ visibilityVariable: Any!) // the visibility variable bound to this page item
    @objc optional func setWidth(_ width: Double) // the width of the art item ( 0.0 - 16348.0 )
    @objc optional func setWrapInside(_ wrapInside: Bool) // should the text frame object be wrapped inside this object?
    @objc optional func setWrapOffset(_ wrapOffset: Double) // use this offset when wrapping text around this object
    @objc optional func setWrapped(_ wrapped: Bool) // wrap text frame objects around this object (text frame must be above the object)
}
extension SBObject: IllustratorPageItem {}

// MARK: IllustratorCompoundPathItem
@objc public protocol IllustratorCompoundPathItem: IllustratorPageItem {
    @objc optional func pathItems() -> SBElementArray
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
}
extension SBObject: IllustratorCompoundPathItem {}

// MARK: IllustratorEmbeddedItem
@objc public protocol IllustratorEmbeddedItem: IllustratorPageItem {
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var filePath: URL { get } // the file containing the placed artwork
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setFilePath(_ filePath: URL!) // the file containing the placed artwork
}
extension SBObject: IllustratorEmbeddedItem {}

// MARK: IllustratorGraphItem
@objc public protocol IllustratorGraphItem: IllustratorPageItem {
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var contentVariable: Any { get } // the content variable bound to this graph
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setContentVariable(_ contentVariable: Any!) // the content variable bound to this graph
}
extension SBObject: IllustratorGraphItem {}

// MARK: IllustratorGroupItem
@objc public protocol IllustratorGroupItem: IllustratorPageItem {
    @objc optional func compoundPathItems() -> SBElementArray
    @objc optional func graphItems() -> SBElementArray
    @objc optional func groupItems() -> SBElementArray
    @objc optional func legacyTextItems() -> SBElementArray
    @objc optional func meshItems() -> SBElementArray
    @objc optional func nonNativeItems() -> SBElementArray
    @objc optional func pageItems() -> SBElementArray
    @objc optional func pathItems() -> SBElementArray
    @objc optional func placedItems() -> SBElementArray
    @objc optional func pluginItems() -> SBElementArray
    @objc optional func rasterItems() -> SBElementArray
    @objc optional func symbolItems() -> SBElementArray
    @objc optional func textFrames() -> SBElementArray
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var clipped: Bool { get } // are the group elements clipped to the clipping path?
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setClipped(_ clipped: Bool) // are the group elements clipped to the clipping path?
}
extension SBObject: IllustratorGroupItem {}

// MARK: IllustratorLegacyTextItem
@objc public protocol IllustratorLegacyTextItem: IllustratorPageItem {
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var converted: Bool { get } // has the legacy text item been updated to a native text frame item?
    @objc optional func convert() -> IllustratorGroupItem // create a native text frame from a legacy text item. The original legacy text item is deleted.
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
}
extension SBObject: IllustratorLegacyTextItem {}

// MARK: IllustratorMeshItem
@objc public protocol IllustratorMeshItem: IllustratorPageItem {
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
}
extension SBObject: IllustratorMeshItem {}

// MARK: IllustratorNonNativeItem
@objc public protocol IllustratorNonNativeItem: IllustratorPageItem {
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
}
extension SBObject: IllustratorNonNativeItem {}

// MARK: IllustratorPathItem
@objc public protocol IllustratorPathItem: IllustratorPageItem {
    @objc optional func pathPoints() -> SBElementArray
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var area: Double { get } // the area of this path in square points
    @objc optional var clipping: Bool { get } // should this be used as a clipping path?
    @objc optional var closed: Bool { get } // is this path closed?
    @objc optional var entirePath: [IllustratorPathPointInfo] { get } // all the path item's path points
    @objc optional var evenodd: Bool { get } // should the even-odd rule be used to determine insideness?
    @objc optional var fillColor: IllustratorColorInfo { get } // fill color
    @objc optional var fillOverprint: Bool { get } // will art beneath a filled object be overprinted?
    @objc optional var filled: Bool { get } // should the path be filled?
    @objc optional var guides: Bool { get } // is this path a guide object?
    @objc optional var length: Double { get } // the length of this path in points
    @objc optional var polarity: IllustratorEPVu { get } // the polarity the path
    @objc optional var resolution: Double { get } // The resolution of the path
    @objc optional var selectedPathPoints: [SBObject] { get } // all the selected points in the path
    @objc optional var strokeCap: IllustratorESTc { get } // type of line capping
    @objc optional var strokeColor: IllustratorColorInfo { get } // stroke color
    @objc optional var strokeDashOffset: Double { get } // the default distance into the dash pattern at which the pattern should be started
    @objc optional var strokeDashes: [NSNumber] { get } // dash lengths (set to {} for a solid line)
    @objc optional var strokeJoin: IllustratorESTj { get } // type of joints
    @objc optional var strokeMiterLimit: Double { get } // whether a join is mitered (pointed) or beveled (squared-off)
    @objc optional var strokeOverprint: Bool { get } // will art beneath a stroked object be overprinted?
    @objc optional var strokeWidth: Double { get } // width of stroke
    @objc optional var stroked: Bool { get } // should the path be stroked?
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setClipping(_ clipping: Bool) // should this be used as a clipping path?
    @objc optional func setClosed(_ closed: Bool) // is this path closed?
    @objc optional func setEntirePath(_ entirePath: [IllustratorPathPointInfo]!) // all the path item's path points
    @objc optional func setEvenodd(_ evenodd: Bool) // should the even-odd rule be used to determine insideness?
    @objc optional func setFillColor(_ fillColor: IllustratorColorInfo!) // fill color
    @objc optional func setFillOverprint(_ fillOverprint: Bool) // will art beneath a filled object be overprinted?
    @objc optional func setFilled(_ filled: Bool) // should the path be filled?
    @objc optional func setGuides(_ guides: Bool) // is this path a guide object?
    @objc optional func setPolarity(_ polarity: IllustratorEPVu) // the polarity the path
    @objc optional func setResolution(_ resolution: Double) // The resolution of the path
    @objc optional func setStrokeCap(_ strokeCap: IllustratorESTc) // type of line capping
    @objc optional func setStrokeColor(_ strokeColor: IllustratorColorInfo!) // stroke color
    @objc optional func setStrokeDashOffset(_ strokeDashOffset: Double) // the default distance into the dash pattern at which the pattern should be started
    @objc optional func setStrokeDashes(_ strokeDashes: [NSNumber]!) // dash lengths (set to {} for a solid line)
    @objc optional func setStrokeJoin(_ strokeJoin: IllustratorESTj) // type of joints
    @objc optional func setStrokeMiterLimit(_ strokeMiterLimit: Double) // whether a join is mitered (pointed) or beveled (squared-off)
    @objc optional func setStrokeOverprint(_ strokeOverprint: Bool) // will art beneath a stroked object be overprinted?
    @objc optional func setStrokeWidth(_ strokeWidth: Double) // width of stroke
    @objc optional func setStroked(_ stroked: Bool) // should the path be stroked?
}
extension SBObject: IllustratorPathItem {}

// MARK: IllustratorPathPoint
@objc public protocol IllustratorPathPoint: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var anchor: [Any] { get } // the position (coordinates) of the anchor point
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var leftDirection: [Any] { get } // location of the left direction point (in position)
    @objc optional var pointType: IllustratorEPTy { get } // the type of point: smooth/corner
    @objc optional var rightDirection: [Any] { get } // location of the right direction point (out position)
    @objc optional var selected: IllustratorESGs { get } // the path point selected state
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setAnchor(_ anchor: [Any]!) // the position (coordinates) of the anchor point
    @objc optional func setLeftDirection(_ leftDirection: [Any]!) // location of the left direction point (in position)
    @objc optional func setPointType(_ pointType: IllustratorEPTy) // the type of point: smooth/corner
    @objc optional func setRightDirection(_ rightDirection: [Any]!) // location of the right direction point (out position)
    @objc optional func setSelected(_ selected: IllustratorESGs) // the path point selected state
}
extension SBObject: IllustratorPathPoint {}

// MARK: IllustratorPathPointInfo
@objc public protocol IllustratorPathPointInfo: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var anchor: [Any] { get } // the position of the anchor (in coordinates)
    @objc optional var leftDirection: [Any] { get } // location of the left direction point (in position)
    @objc optional var pointType: IllustratorEPTy { get } // the point type, smooth/corner ( default: smooth )
    @objc optional var rightDirection: [Any] { get } // location of the left direction point (out position)
    @objc optional func setAnchor(_ anchor: [Any]!) // the position of the anchor (in coordinates)
    @objc optional func setLeftDirection(_ leftDirection: [Any]!) // location of the left direction point (in position)
    @objc optional func setPointType(_ pointType: IllustratorEPTy) // the point type, smooth/corner ( default: smooth )
    @objc optional func setRightDirection(_ rightDirection: [Any]!) // location of the left direction point (out position)
}
extension SBObject: IllustratorPathPointInfo {}

// MARK: IllustratorPlacedItem
@objc public protocol IllustratorPlacedItem: IllustratorPageItem {
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var boundingBox: [Any] { get } // dimensions of placed art object, regardless of transformations
    @objc optional var contentVariable: Any { get } // the content variable bound to this placed art object
    @objc optional var filePath: URL { get } // the file containing the placed artwork
    @objc optional var matrix: IllustratorMatrix { get } // The transformation matrix of the placed art object
    @objc optional func embed() // Embed the placed art within the illustration
    @objc optional func relinkFrom(_ from: URL!) // Relink the placed art with supplied art from file
    @objc optional func tracePlaced() -> IllustratorPluginItem // Trace this raster object using default options.  Reorders this placed to the source art.
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setContentVariable(_ contentVariable: Any!) // the content variable bound to this placed art object
    @objc optional func setFilePath(_ filePath: URL!) // the file containing the placed artwork
    @objc optional func setMatrix(_ matrix: IllustratorMatrix!) // The transformation matrix of the placed art object
}
extension SBObject: IllustratorPlacedItem {}

// MARK: IllustratorPluginItem
@objc public protocol IllustratorPluginItem: IllustratorPageItem {
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var isTracing: Bool { get } // is the plugin group a tracing?
    @objc optional var tracing: IllustratorTracingobject { get } // the tracing object associated with this plugin item.
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
}
extension SBObject: IllustratorPluginItem {}

// MARK: IllustratorRasterEffectOptions
@objc public protocol IllustratorRasterEffectOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var antialiasing: Bool { get } // should the resulting image be antialiased ( default: false )
    @objc optional var clippingMask: Bool { get } // should a clipping mask be created for the resulting image ( default: false )
    @objc optional var colorModel: IllustratorERAS { get } // The color model for the rasterization ( default: default rasterization )
    @objc optional var convertSpotColors: Bool { get } // whether to convert all spot colors to process colors in the resulting image ( default: false )
    @objc optional var padding: Double { get } // the amount of white space (in points) to be added around the object during rasterization ( default: 0.0 )
    @objc optional var resolution: Double { get } // The rasterization resolution in dots-per-inch (dpi) ( 72.0 - 2400.0; default: 300.0 )
    @objc optional var transparency: Bool { get } // should the resulting image use transparency ( default: false )
    @objc optional func setAntialiasing(_ antialiasing: Bool) // should the resulting image be antialiased ( default: false )
    @objc optional func setClippingMask(_ clippingMask: Bool) // should a clipping mask be created for the resulting image ( default: false )
    @objc optional func setColorModel(_ colorModel: IllustratorERAS) // The color model for the rasterization ( default: default rasterization )
    @objc optional func setConvertSpotColors(_ convertSpotColors: Bool) // whether to convert all spot colors to process colors in the resulting image ( default: false )
    @objc optional func setPadding(_ padding: Double) // the amount of white space (in points) to be added around the object during rasterization ( default: 0.0 )
    @objc optional func setResolution(_ resolution: Double) // The rasterization resolution in dots-per-inch (dpi) ( 72.0 - 2400.0; default: 300.0 )
    @objc optional func setTransparency(_ transparency: Bool) // should the resulting image use transparency ( default: false )
}
extension SBObject: IllustratorRasterEffectOptions {}

// MARK: IllustratorRasterItem
@objc public protocol IllustratorRasterItem: IllustratorPageItem {
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var bitsPerChannel: Int { get } // the number of bits per channel
    @objc optional var boundingBox: [Any] { get } // dimensions of raster art object regardless of transformations
    @objc optional var channels: Int { get } // the number of image channels
    @objc optional var colorSpace: IllustratorECLS { get } // the color space of the raster image
    @objc optional var colorants: [String] { get } // list of colorant names
    @objc optional var colorized: Bool { get } // is the raster art a colorized grayscale image?
    @objc optional var contentVariable: Any { get } // the content variable bound to this raster art object
    @objc optional var embedded: Bool { get } // is the raster art embedded within the illustration?
    @objc optional var filePath: URL { get } // the file containing the raster artwork
    @objc optional var matrix: IllustratorMatrix { get } // The transformation matrix of the raster art object
    @objc optional var overprint: Bool { get } // is the raster art overprinting?
    @objc optional var status: IllustratorERLt { get } // status of the linked image
    @objc optional var transparent: Bool { get } // is the raster art transparent?
    @objc optional func colorizeRasterColor(_ rasterColor: IllustratorColorInfo!) // Colorize the RasterItem with a CMYK or RGB Color
    @objc optional func traceRaster() -> IllustratorPluginItem // Trace this raster object using default options.  Reorders this raster to the source art.
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setBoundingBox(_ boundingBox: [Any]!) // dimensions of raster art object regardless of transformations
    @objc optional func setContentVariable(_ contentVariable: Any!) // the content variable bound to this raster art object
    @objc optional func setEmbedded(_ embedded: Bool) // is the raster art embedded within the illustration?
    @objc optional func setMatrix(_ matrix: IllustratorMatrix!) // The transformation matrix of the raster art object
    @objc optional func setOverprint(_ overprint: Bool) // is the raster art overprinting?
}
extension SBObject: IllustratorRasterItem {}

// MARK: IllustratorRasterizeOptions
@objc public protocol IllustratorRasterizeOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var antialiasingMethod: IllustratorEALS { get } // the type of antialiasing method ( default: art optimized )
    @objc optional var backgroundBlack: Bool { get } // should rasterize against a black background instead of white ( default: false )
    @objc optional var clippingMask: Bool { get } // should a clipping mask be created for the resulting image ( default: false )
    @objc optional var colorModel: IllustratorERAS { get } // The color model for the rasterization ( default: default rasterization )
    @objc optional var convertSpotColors: Bool { get } // whether to convert all spot colors to process colors in the resulting image ( default: false )
    @objc optional var convertTextToOutlines: Bool { get } // should all text be converted to outlines before rasterization ( default: false )
    @objc optional var includeLayers: Bool { get } // should the resulting image incorporates the layer attributes (such as opacity and blend mode) ( default: false )
    @objc optional var padding: Double { get } // the amount of white space (in points) to be added around the object during rasterization ( default: 0.0 )
    @objc optional var resolution: Double { get } // The rasterization resolution in dots-per-inch (dpi) ( 72.0 - 2400.0; default: 300.0 )
    @objc optional var transparency: Bool { get } // should the resulting image use transparency ( default: false )
    @objc optional func setAntialiasingMethod(_ antialiasingMethod: IllustratorEALS) // the type of antialiasing method ( default: art optimized )
    @objc optional func setBackgroundBlack(_ backgroundBlack: Bool) // should rasterize against a black background instead of white ( default: false )
    @objc optional func setClippingMask(_ clippingMask: Bool) // should a clipping mask be created for the resulting image ( default: false )
    @objc optional func setColorModel(_ colorModel: IllustratorERAS) // The color model for the rasterization ( default: default rasterization )
    @objc optional func setConvertSpotColors(_ convertSpotColors: Bool) // whether to convert all spot colors to process colors in the resulting image ( default: false )
    @objc optional func setConvertTextToOutlines(_ convertTextToOutlines: Bool) // should all text be converted to outlines before rasterization ( default: false )
    @objc optional func setIncludeLayers(_ includeLayers: Bool) // should the resulting image incorporates the layer attributes (such as opacity and blend mode) ( default: false )
    @objc optional func setPadding(_ padding: Double) // the amount of white space (in points) to be added around the object during rasterization ( default: 0.0 )
    @objc optional func setResolution(_ resolution: Double) // The rasterization resolution in dots-per-inch (dpi) ( 72.0 - 2400.0; default: 300.0 )
    @objc optional func setTransparency(_ transparency: Bool) // should the resulting image use transparency ( default: false )
}
extension SBObject: IllustratorRasterizeOptions {}

// MARK: IllustratorSymbol
@objc public protocol IllustratorSymbol: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var name: String { get } // The symbol's name
    @objc optional var sourceArt: Any { get } // The source art is only used when creating a new symbol
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setName(_ name: String!) // The symbol's name
}
extension SBObject: IllustratorSymbol {}

// MARK: IllustratorSymbolItem
@objc public protocol IllustratorSymbolItem: IllustratorPageItem {
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var symbol: IllustratorSymbol { get } // The symbol that was used to create this symbol item
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setSymbol(_ symbol: IllustratorSymbol!) // The symbol that was used to create this symbol item
}
extension SBObject: IllustratorSymbolItem {}

// MARK: IllustratorTabStopInfo
@objc public protocol IllustratorTabStopInfo: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var alignment: IllustratorETBa { get } // the alignment of the tab stop ( default: left )
    @objc optional var decimalCharacter: String { get } // the character used for decimal tab stops ( default: . )
    @objc optional var leader: String { get } // the leader dot
    @objc optional var position: Double { get } // the position of the tab stop expressed in points ( default: 0.0 )
    @objc optional func setAlignment(_ alignment: IllustratorETBa) // the alignment of the tab stop ( default: left )
    @objc optional func setDecimalCharacter(_ decimalCharacter: String!) // the character used for decimal tab stops ( default: . )
    @objc optional func setLeader(_ leader: String!) // the leader dot
    @objc optional func setPosition(_ position: Double) // the position of the tab stop expressed in points ( default: 0.0 )
}
extension SBObject: IllustratorTabStopInfo {}

// MARK: IllustratorTag
@objc public protocol IllustratorTag: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var name: String { get } // The tag's name
    @objc optional var value: String { get } // the data stored in this tag
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setName(_ name: String!) // The tag's name
    @objc optional func setValue(_ value: String!) // the data stored in this tag
}
extension SBObject: IllustratorTag {}

// MARK: IllustratorTextFrame
@objc public protocol IllustratorTextFrame: IllustratorPageItem {
    @objc optional func characters() -> SBElementArray
    @objc optional func insertionPoints() -> SBElementArray
    @objc optional func lines() -> SBElementArray
    @objc optional func paragraphs() -> SBElementArray
    @objc optional func text() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var anchor: [Any] { get } // the position of the anchor point (start of base line for point text)
    @objc optional var antialias: IllustratorETAa { get } // the type of a text anti-aliasing on text frame item
    @objc optional var columnCount: Int { get } // the column count in the text frame (area text only)
    @objc optional var columnGutter: Double { get } // the column gutter in the text frame (area text only)
    @objc optional var contentVariable: Any { get } // the content variable bound to this text art item
    @objc optional var contents: String { get } // the text contents of this text frame
    @objc optional var endTValue: Double { get } // the end position of text along a path, as a value relative to the path's segments (path text only)
    @objc optional var firstBaseline: IllustratorEFBT { get } // the first baseline offset type for text frame item (for Area Text only)
    @objc optional var firstBaselineMin: Double { get } // the first baseline offset minimum value for text frame item (for Area Text only)
    @objc optional var flowLinksHorizontally: Bool { get } // Flow text between linked frame horizontally first. (area text only)
    @objc optional var kind: IllustratorETXt { get } // the type of a text frame item
    @objc optional var matrix: IllustratorMatrix { get } // The transformation matrix of the text frame object
    @objc optional var nextFrame: IllustratorTextFrame { get } // the linked text frame following this one
    @objc optional var opticalAlignment: Bool { get } // is the optical alignment active?
    @objc optional var previousFrame: IllustratorTextFrame { get } // the linked text frame preceding this one
    @objc optional var rowCount: Int { get } // the row count in the text frame (area text only)
    @objc optional var rowGutter: Double { get } // the row gutter in the text frame (area text only)
    @objc optional var selection: [IllustratorText] { get } // the selected text (ranges) in the story
    @objc optional var spacing: Double { get } // the amount of spacing (path text only)
    @objc optional var startTValue: Double { get } // the start position of text along a path, as a value relative to the path's segments (path text only)
    @objc optional var story: IllustratorStory { get } // the story of the text frame
    @objc optional var textOrientation: IllustratorETXo { get } // the orientation of the text in the frame
    @objc optional var textPath: IllustratorTextPath { get } // the path for the text frame (area and path text)
    @objc optional var textRange: IllustratorText { get } // the text range of the text frame
    @objc optional func convertAreaObjectToPointObject() -> IllustratorTextFrame // Convert Area Type Text Object To Point Type Object
    @objc optional func convertPointObjectToAreaObject() -> IllustratorTextFrame // Convert Point Type Text Object To Area Type Object
    @objc optional func convertToPaths() -> IllustratorGroupItem // Convert text item to path items
    @objc optional func generateThumbnailWithTextFramePropertiesTextString(_ textString: String!, fontSize: Double, textColor: IllustratorColorInfo!, destinationPath: URL!) // Generates the thumbnail with the properties of first character in the text frame
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setAnchor(_ anchor: [Any]!) // the position of the anchor point (start of base line for point text)
    @objc optional func setAntialias(_ antialias: IllustratorETAa) // the type of a text anti-aliasing on text frame item
    @objc optional func setColumnCount(_ columnCount: Int) // the column count in the text frame (area text only)
    @objc optional func setColumnGutter(_ columnGutter: Double) // the column gutter in the text frame (area text only)
    @objc optional func setContentVariable(_ contentVariable: Any!) // the content variable bound to this text art item
    @objc optional func setContents(_ contents: String!) // the text contents of this text frame
    @objc optional func setEndTValue(_ endTValue: Double) // the end position of text along a path, as a value relative to the path's segments (path text only)
    @objc optional func setFirstBaseline(_ firstBaseline: IllustratorEFBT) // the first baseline offset type for text frame item (for Area Text only)
    @objc optional func setFirstBaselineMin(_ firstBaselineMin: Double) // the first baseline offset minimum value for text frame item (for Area Text only)
    @objc optional func setFlowLinksHorizontally(_ flowLinksHorizontally: Bool) // Flow text between linked frame horizontally first. (area text only)
    @objc optional func setNextFrame(_ nextFrame: IllustratorTextFrame!) // the linked text frame following this one
    @objc optional func setOpticalAlignment(_ opticalAlignment: Bool) // is the optical alignment active?
    @objc optional func setPreviousFrame(_ previousFrame: IllustratorTextFrame!) // the linked text frame preceding this one
    @objc optional func setRowCount(_ rowCount: Int) // the row count in the text frame (area text only)
    @objc optional func setRowGutter(_ rowGutter: Double) // the row gutter in the text frame (area text only)
    @objc optional func setSpacing(_ spacing: Double) // the amount of spacing (path text only)
    @objc optional func setStartTValue(_ startTValue: Double) // the start position of text along a path, as a value relative to the path's segments (path text only)
    @objc optional func setTextOrientation(_ textOrientation: IllustratorETXo) // the orientation of the text in the frame
}
extension SBObject: IllustratorTextFrame {}

// MARK: IllustratorView
@objc public protocol IllustratorView: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var bounds: [Any] { get } // the bounding rectangle of this view
    @objc optional var centerPoint: [Any] { get } // the center point of this view
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var screenMode: IllustratorESCM { get } // the mode of display
    @objc optional var zoom: Double { get } // the zoom factor of this view
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setCenterPoint(_ centerPoint: [Any]!) // the center point of this view
    @objc optional func setScreenMode(_ screenMode: IllustratorESCM) // the mode of display
    @objc optional func setZoom(_ zoom: Double) // the zoom factor of this view
}
extension SBObject: IllustratorView {}

// MARK: IllustratorColorInfo
@objc public protocol IllustratorColorInfo: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional func showColorPicker() -> IllustratorColorInfo // Invokes application's color picker
}
extension SBObject: IllustratorColorInfo {}

// MARK: IllustratorCMYKColorInfo
@objc public protocol IllustratorCMYKColorInfo: IllustratorColorInfo {
    @objc optional var cyan: Double { get } // the cyan color value (between 0.0 and 100.0) ( 0.0 - 100.0; default: 0.0 )
    @objc optional var magenta: Double { get } // the magenta color value (between 0.0 and 100.0) ( 0.0 - 100.0; default: 0.0 )
    @objc optional var yellow: Double { get } // the yellow color value (between 0.0 and 100.0) ( 0.0 - 100.0; default: 0.0 )
    @objc optional var black: Double { get } // the black color value (between 0.0 and 100.0) ( 0.0 - 100.0; default: 0.0 )
    @objc optional func setCyan(_ cyan: Double) // the cyan color value (between 0.0 and 100.0) ( 0.0 - 100.0; default: 0.0 )
    @objc optional func setMagenta(_ magenta: Double) // the magenta color value (between 0.0 and 100.0) ( 0.0 - 100.0; default: 0.0 )
    @objc optional func setYellow(_ yellow: Double) // the yellow color value (between 0.0 and 100.0) ( 0.0 - 100.0; default: 0.0 )
    @objc optional func setBlack(_ black: Double) // the black color value (between 0.0 and 100.0) ( 0.0 - 100.0; default: 0.0 )
}
extension SBObject: IllustratorCMYKColorInfo {}

// MARK: IllustratorGradientColorInfo
@objc public protocol IllustratorGradientColorInfo: IllustratorColorInfo {
    @objc optional var angle: Double { get } // the gradient vector angle ( default: 0.0 )
    @objc optional var gradient: IllustratorGradient { get } // reference to the object defining the gradient
    @objc optional var hiliteAngle: Double { get } // the gradient hilite vector angle ( default: 0.0 )
    @objc optional var hiliteLength: Double { get } // the gradient hilite vector length ( default: 0.0 )
    @objc optional var length: Double { get } // the gradient vector length ( default: 0.0 )
    @objc optional var matrix: IllustratorMatrix { get } // additional transformation arising from manipulating the path
    @objc optional var origin: [Any] { get } // the gradient vector origin
    @objc optional func setAngle(_ angle: Double) // the gradient vector angle ( default: 0.0 )
    @objc optional func setGradient(_ gradient: IllustratorGradient!) // reference to the object defining the gradient
    @objc optional func setHiliteAngle(_ hiliteAngle: Double) // the gradient hilite vector angle ( default: 0.0 )
    @objc optional func setHiliteLength(_ hiliteLength: Double) // the gradient hilite vector length ( default: 0.0 )
    @objc optional func setLength(_ length: Double) // the gradient vector length ( default: 0.0 )
    @objc optional func setMatrix(_ matrix: IllustratorMatrix!) // additional transformation arising from manipulating the path
    @objc optional func setOrigin(_ origin: [Any]!) // the gradient vector origin
}
extension SBObject: IllustratorGradientColorInfo {}

// MARK: IllustratorGrayColorInfo
@objc public protocol IllustratorGrayColorInfo: IllustratorColorInfo {
    @objc optional var grayValue: Double { get } // the gray value (between 0.0 and 100.0) ( 0.0 - 100.0; default: 0.0 )
    @objc optional func setGrayValue(_ grayValue: Double) // the gray value (between 0.0 and 100.0) ( 0.0 - 100.0; default: 0.0 )
}
extension SBObject: IllustratorGrayColorInfo {}

// MARK: IllustratorLabColorInfo
@objc public protocol IllustratorLabColorInfo: IllustratorColorInfo {
    @objc optional var l: Double { get } // the L color value (between 0.0 and 100.0) ( 0.0 - 100.0; default: 0.0 )
    @objc optional var a: Double { get } // the a color value (between -128.0 and 127.0) ( -128.0 - 127.0; default: 0.0 )
    @objc optional var b: Double { get } // the b color value (between -128.0 and 127.0) ( -128.0 - 127.0; default: 0.0 )
    @objc optional func setL(_ l: Double) // the L color value (between 0.0 and 100.0) ( 0.0 - 100.0; default: 0.0 )
    @objc optional func setA(_ a: Double) // the a color value (between -128.0 and 127.0) ( -128.0 - 127.0; default: 0.0 )
    @objc optional func setB(_ b: Double) // the b color value (between -128.0 and 127.0) ( -128.0 - 127.0; default: 0.0 )
}
extension SBObject: IllustratorLabColorInfo {}

// MARK: IllustratorNoColorInfo
@objc public protocol IllustratorNoColorInfo: IllustratorColorInfo {
}
extension SBObject: IllustratorNoColorInfo {}

// MARK: IllustratorPattern
@objc public protocol IllustratorPattern: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var name: String { get } // The pattern's name
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setName(_ name: String!) // The pattern's name
}
extension SBObject: IllustratorPattern {}

// MARK: IllustratorPatternColorInfo
@objc public protocol IllustratorPatternColorInfo: IllustratorColorInfo {
    @objc optional var matrix: IllustratorMatrix { get } // additional transformation arising from manipulating the path
    @objc optional var pattern: IllustratorPattern { get }
    @objc optional var reflect: Bool { get } // whether or not the prototype is reflected before filling ( default: false )
    @objc optional var reflectAngle: Double { get } // the axis around which to reflect ( default: 0.0 )
    @objc optional var rotation: Double { get } // the angle to rotate the before filling ( default: 0.0 )
    @objc optional var scaleFactor: [Any] { get } // the fraction to scale the prototype before filling
    @objc optional var shearAngle: Double { get } // the angle to slant the shear by ( default: 0.0 )
    @objc optional var shearAxis: Double { get } // the axis to shear with respect to ( default: 0.0 )
    @objc optional var shiftAngle: Double { get } // the angle to translate the (unscaled) prototype before filling ( default: 0.0 )
    @objc optional var shiftDistance: Double { get } // the distance to translate the (unscaled) prototype before filling ( default: 0.0 )
    @objc optional func setMatrix(_ matrix: IllustratorMatrix!) // additional transformation arising from manipulating the path
    @objc optional func setPattern(_ pattern: IllustratorPattern!)
    @objc optional func setReflect(_ reflect: Bool) // whether or not the prototype is reflected before filling ( default: false )
    @objc optional func setReflectAngle(_ reflectAngle: Double) // the axis around which to reflect ( default: 0.0 )
    @objc optional func setRotation(_ rotation: Double) // the angle to rotate the before filling ( default: 0.0 )
    @objc optional func setScaleFactor(_ scaleFactor: [Any]!) // the fraction to scale the prototype before filling
    @objc optional func setShearAngle(_ shearAngle: Double) // the angle to slant the shear by ( default: 0.0 )
    @objc optional func setShearAxis(_ shearAxis: Double) // the axis to shear with respect to ( default: 0.0 )
    @objc optional func setShiftAngle(_ shiftAngle: Double) // the angle to translate the (unscaled) prototype before filling ( default: 0.0 )
    @objc optional func setShiftDistance(_ shiftDistance: Double) // the distance to translate the (unscaled) prototype before filling ( default: 0.0 )
}
extension SBObject: IllustratorPatternColorInfo {}

// MARK: IllustratorRGBColorInfo
@objc public protocol IllustratorRGBColorInfo: IllustratorColorInfo {
    @objc optional var red: Double { get } // the red color value (between 0.0 and 255.0) ( 0.0 - 255.0; default: 0.0 )
    @objc optional var green: Double { get } // the green color value (between 0.0 and 255.0) ( 0.0 - 255.0; default: 0.0 )
    @objc optional var blue: Double { get } // the blue color value (between 0.0 and 255.0) ( 0.0 - 255.0; default: 0.0 )
    @objc optional func setRed(_ red: Double) // the red color value (between 0.0 and 255.0) ( 0.0 - 255.0; default: 0.0 )
    @objc optional func setGreen(_ green: Double) // the green color value (between 0.0 and 255.0) ( 0.0 - 255.0; default: 0.0 )
    @objc optional func setBlue(_ blue: Double) // the blue color value (between 0.0 and 255.0) ( 0.0 - 255.0; default: 0.0 )
}
extension SBObject: IllustratorRGBColorInfo {}

// MARK: IllustratorSpot
@objc public protocol IllustratorSpot: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var color: IllustratorColorInfo { get }
    @objc optional var colorType: IllustratorECMd { get } // Type of the custom color
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var name: String { get } // The custom color's name
    @objc optional var spotKind: IllustratorESCk { get } // Kind of the spot color (i.e. RGB, CMYK or LAB), it is the name of color kind contained in spot
    @objc optional func getInternalColor() -> [Any] // Gets the internal color of a spot.
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setColor(_ color: IllustratorColorInfo!)
    @objc optional func setColorType(_ colorType: IllustratorECMd) // Type of the custom color
    @objc optional func setName(_ name: String!) // The custom color's name
}
extension SBObject: IllustratorSpot {}

// MARK: IllustratorSpotColorInfo
@objc public protocol IllustratorSpotColorInfo: IllustratorColorInfo {
    @objc optional var spot: IllustratorSpot { get }
    @objc optional var tint: Double { get } // percentage level of tint to be applied to the spot color ( 0.0 - 100.0; default: 100.0 )
    @objc optional func setSpot(_ spot: IllustratorSpot!)
    @objc optional func setTint(_ tint: Double) // percentage level of tint to be applied to the spot color ( 0.0 - 100.0; default: 100.0 )
}
extension SBObject: IllustratorSpotColorInfo {}

// MARK: IllustratorSwatch
@objc public protocol IllustratorSwatch: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var color: IllustratorColorInfo { get } // the color information of the swatch
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var name: String { get } // The swatch's name
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setColor(_ color: IllustratorColorInfo!) // the color information of the swatch
    @objc optional func setName(_ name: String!) // The swatch's name
}
extension SBObject: IllustratorSwatch {}

// MARK: IllustratorSwatchgroup
@objc public protocol IllustratorSwatchgroup: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var name: String { get } // Name of the swatch group
    @objc optional func addSpotSpot(_ spot: IllustratorSpot!) // Add a spot swatch to the group
    @objc optional func addSwatchSwatch(_ swatch: IllustratorSwatch!) // Add a swatch to the group
    @objc optional func getAllSwatches() -> [Any] // get all swatches in the swatch group
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setName(_ name: String!) // Name of the swatch group
}
extension SBObject: IllustratorSwatchgroup {}

// MARK: IllustratorCharacter
@objc public protocol IllustratorCharacter: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional func characterStyles() -> SBElementArray
    @objc optional func characters() -> SBElementArray
    @objc optional func insertionPoints() -> SBElementArray
    @objc optional func lines() -> SBElementArray
    @objc optional func paragraphStyles() -> SBElementArray
    @objc optional func paragraphs() -> SBElementArray
    @objc optional func text() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var OpenTypePosition: IllustratorCOTP { get } // the OpenType baseline position
    @objc optional var TCYHorizontal: Int { get } // the Tate-Chu-Yoko horizontal adjustment in points
    @objc optional var TCYVertical: Int { get } // the Tate-Chu-Yoko vertical adjustment in points
    @objc optional var Tsume: Double { get } // the percentage of space reduction around a Japanese character (100 = 100%)
    @objc optional var akiLeft: Double { get } // the em amount of left aki
    @objc optional var akiRight: Double { get } // the em amount of right aki amount
    @objc optional var alignment: IllustratorESRA { get } // the character alignment type
    @objc optional var alternateGlyphs: IllustratorEAGF { get } // the alternate glyphs form
    @objc optional var autoLeading: Bool { get } // whether to use automatic leading
    @objc optional var baselineDirection: IllustratorEBSD { get } // the Japanese text baseline direction
    @objc optional var baselinePosition: IllustratorEFBO { get } // the baseline position of text
    @objc optional var baselineShift: Double { get } // the amount of shift (in points) of the text baseline
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var capitalization: IllustratorEFCO { get } // the case of text
    @objc optional var characterOffset: Int { get } // offset of the first character of the range from the beginning of the story, in characters.
    @objc optional var connectionForms: Bool { get } // whether the OpenType connection forms should be used
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var contents: String { get } // the text string
    @objc optional var contextualLigature: Bool { get } // whether the contextual ligature should be used
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var diacXOffset: Double { get } // diacritics x offset attribute
    @objc optional var diacYOffset: Double { get } // diacritics y offset attribute
    @objc optional var diacriticsPositioning: IllustratorEDVP { get } // diacritics positioning attribute
    @objc optional var digitSet: IllustratorEDgS { get } // digit set attribute
    @objc optional var directionOverride: IllustratorEDOT { get } // direction override attribute
    @objc optional var discretionaryLigature: Bool { get } // whether the discretionary ligature should be used
    @objc optional var end: Int { get } // end index of the text range
    @objc optional var figureStyle: IllustratorCFST { get } // which figure style to use in OpenType font
    @objc optional var fillColor: IllustratorColorInfo { get } // the color of the text fill
    @objc optional var fractions: Bool { get } // whether the OpenType fractions should be used
    @objc optional var horizontalScale: Double { get } // character horizontal scaling factor expressed as a percentage (100 = 100%)
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var italics: Bool { get } // does the Japanese OpenType support italics?
    @objc optional var justificationAlternates: Bool { get } // justification alternates attribute
    @objc optional var kana: Bool { get } // does the Japanese OpenType support kana?
    @objc optional var kashidas: IllustratorEKas { get } // kashidas attribute
    @objc optional var kerning: Int { get } // controls the spacing between two characters (in milli-ems)
    @objc optional var kerningMethod: IllustratorEATK { get } // the automatic kerning method to use
    @objc optional var language: IllustratorELNG { get } // the language of text
    @objc optional var leading: Double { get } // the amount of space between two lines of text (in points)
    @objc optional var length: Int { get } // length of text range ( minimum 0 )
    @objc optional var ligature: Bool { get } // whether the ligature should be used
    @objc optional var noBreak: Bool { get } // whether line breaks are allowed
    @objc optional var ordinals: Bool { get } // whether the OpenType ordinals should be used
    @objc optional var ornaments: Bool { get } // whether the OpenType ornaments should be used
    @objc optional var overprintFill: Bool { get } // whether to overprint the fill of the text
    @objc optional var overprintStroke: Bool { get } // whether to overprint the stroke of the text
    @objc optional var proportionalMetrics: Bool { get } // does the Japanese OpenType support proportional font?
    @objc optional var rotation: Double { get } // the character rotation angle (in degrees)
    @objc optional var selection: [IllustratorText] { get } // the selected text (ranges) in the text range
    @objc optional var size: Double { get } // font size in points
    @objc optional var start: Int { get } // start index of the text range
    @objc optional var story: IllustratorStory { get } // the story of the text range
    @objc optional var strikeThrough: Bool { get } // whether to draw a strike through line over the text
    @objc optional var strokeColor: IllustratorColorInfo { get } // the color of the text stroke
    @objc optional var strokeWeight: Double { get } // line width of stroke
    @objc optional var stylisticAlternates: Bool { get } // whether the OpenType stylistic alternates should be used
    @objc optional var stylisticSets: Int { get } // stylistic sets attribute
    @objc optional var swash: Bool { get } // whether the OpenType swash should be used
    @objc optional var textFont: Any { get } // the text font
    @objc optional var titling: Bool { get } // whether the OpenType titling alternates should be used
    @objc optional var tracking: Int { get } // the tracking or range kerning amount in thousands of an em
    @objc optional var underline: Bool { get } // whether to underline the text
    @objc optional var verticalScale: Double { get } // character vertical scaling factor expressed as a percentage (100 = 100%)
    @objc optional var warichuCharactersAfterBreak: Int { get }
    @objc optional var warichuCharactersBeforeBreak: Int { get }
    @objc optional var warichuEnabled: Bool { get } // whether WariChu is enabled
    @objc optional var warichuGap: Int { get } // the Wari-Chu line gap
    @objc optional var warichuJustification: IllustratorEWCJ { get }
    @objc optional var warichuLines: Int { get } // the number of Wari-Chu (multiple text lines fit into a space meant for one) lines
    @objc optional var warichuScale: Double { get } // the Wari-Chu scale
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setOpenTypePosition(_ OpenTypePosition: IllustratorCOTP) // the OpenType baseline position
    @objc optional func setTCYHorizontal(_ TCYHorizontal: Int) // the Tate-Chu-Yoko horizontal adjustment in points
    @objc optional func setTCYVertical(_ TCYVertical: Int) // the Tate-Chu-Yoko vertical adjustment in points
    @objc optional func setTsume(_ Tsume: Double) // the percentage of space reduction around a Japanese character (100 = 100%)
    @objc optional func setAkiLeft(_ akiLeft: Double) // the em amount of left aki
    @objc optional func setAkiRight(_ akiRight: Double) // the em amount of right aki amount
    @objc optional func setAlignment(_ alignment: IllustratorESRA) // the character alignment type
    @objc optional func setAlternateGlyphs(_ alternateGlyphs: IllustratorEAGF) // the alternate glyphs form
    @objc optional func setAutoLeading(_ autoLeading: Bool) // whether to use automatic leading
    @objc optional func setBaselineDirection(_ baselineDirection: IllustratorEBSD) // the Japanese text baseline direction
    @objc optional func setBaselinePosition(_ baselinePosition: IllustratorEFBO) // the baseline position of text
    @objc optional func setBaselineShift(_ baselineShift: Double) // the amount of shift (in points) of the text baseline
    @objc optional func setCapitalization(_ capitalization: IllustratorEFCO) // the case of text
    @objc optional func setCharacterOffset(_ characterOffset: Int) // offset of the first character of the range from the beginning of the story, in characters.
    @objc optional func setConnectionForms(_ connectionForms: Bool) // whether the OpenType connection forms should be used
    @objc optional func setContents(_ contents: String!) // the text string
    @objc optional func setContextualLigature(_ contextualLigature: Bool) // whether the contextual ligature should be used
    @objc optional func setDiacXOffset(_ diacXOffset: Double) // diacritics x offset attribute
    @objc optional func setDiacYOffset(_ diacYOffset: Double) // diacritics y offset attribute
    @objc optional func setDiacriticsPositioning(_ diacriticsPositioning: IllustratorEDVP) // diacritics positioning attribute
    @objc optional func setDigitSet(_ digitSet: IllustratorEDgS) // digit set attribute
    @objc optional func setDirectionOverride(_ directionOverride: IllustratorEDOT) // direction override attribute
    @objc optional func setDiscretionaryLigature(_ discretionaryLigature: Bool) // whether the discretionary ligature should be used
    @objc optional func setEnd(_ end: Int) // end index of the text range
    @objc optional func setFigureStyle(_ figureStyle: IllustratorCFST) // which figure style to use in OpenType font
    @objc optional func setFillColor(_ fillColor: IllustratorColorInfo!) // the color of the text fill
    @objc optional func setFractions(_ fractions: Bool) // whether the OpenType fractions should be used
    @objc optional func setHorizontalScale(_ horizontalScale: Double) // character horizontal scaling factor expressed as a percentage (100 = 100%)
    @objc optional func setItalics(_ italics: Bool) // does the Japanese OpenType support italics?
    @objc optional func setJustificationAlternates(_ justificationAlternates: Bool) // justification alternates attribute
    @objc optional func setKana(_ kana: Bool) // does the Japanese OpenType support kana?
    @objc optional func setKashidas(_ kashidas: IllustratorEKas) // kashidas attribute
    @objc optional func setKerning(_ kerning: Int) // controls the spacing between two characters (in milli-ems)
    @objc optional func setKerningMethod(_ kerningMethod: IllustratorEATK) // the automatic kerning method to use
    @objc optional func setLanguage(_ language: IllustratorELNG) // the language of text
    @objc optional func setLeading(_ leading: Double) // the amount of space between two lines of text (in points)
    @objc optional func setLength(_ length: Int) // length of text range ( minimum 0 )
    @objc optional func setLigature(_ ligature: Bool) // whether the ligature should be used
    @objc optional func setNoBreak(_ noBreak: Bool) // whether line breaks are allowed
    @objc optional func setOrdinals(_ ordinals: Bool) // whether the OpenType ordinals should be used
    @objc optional func setOrnaments(_ ornaments: Bool) // whether the OpenType ornaments should be used
    @objc optional func setOverprintFill(_ overprintFill: Bool) // whether to overprint the fill of the text
    @objc optional func setOverprintStroke(_ overprintStroke: Bool) // whether to overprint the stroke of the text
    @objc optional func setProportionalMetrics(_ proportionalMetrics: Bool) // does the Japanese OpenType support proportional font?
    @objc optional func setRotation(_ rotation: Double) // the character rotation angle (in degrees)
    @objc optional func setSize(_ size: Double) // font size in points
    @objc optional func setStart(_ start: Int) // start index of the text range
    @objc optional func setStrikeThrough(_ strikeThrough: Bool) // whether to draw a strike through line over the text
    @objc optional func setStrokeColor(_ strokeColor: IllustratorColorInfo!) // the color of the text stroke
    @objc optional func setStrokeWeight(_ strokeWeight: Double) // line width of stroke
    @objc optional func setStylisticAlternates(_ stylisticAlternates: Bool) // whether the OpenType stylistic alternates should be used
    @objc optional func setStylisticSets(_ stylisticSets: Int) // stylistic sets attribute
    @objc optional func setSwash(_ swash: Bool) // whether the OpenType swash should be used
    @objc optional func setTextFont(_ textFont: Any!) // the text font
    @objc optional func setTitling(_ titling: Bool) // whether the OpenType titling alternates should be used
    @objc optional func setTracking(_ tracking: Int) // the tracking or range kerning amount in thousands of an em
    @objc optional func setUnderline(_ underline: Bool) // whether to underline the text
    @objc optional func setVerticalScale(_ verticalScale: Double) // character vertical scaling factor expressed as a percentage (100 = 100%)
    @objc optional func setWarichuCharactersAfterBreak(_ warichuCharactersAfterBreak: Int)
    @objc optional func setWarichuCharactersBeforeBreak(_ warichuCharactersBeforeBreak: Int)
    @objc optional func setWarichuEnabled(_ warichuEnabled: Bool) // whether WariChu is enabled
    @objc optional func setWarichuGap(_ warichuGap: Int) // the Wari-Chu line gap
    @objc optional func setWarichuJustification(_ warichuJustification: IllustratorEWCJ)
    @objc optional func setWarichuLines(_ warichuLines: Int) // the number of Wari-Chu (multiple text lines fit into a space meant for one) lines
    @objc optional func setWarichuScale(_ warichuScale: Double) // the Wari-Chu scale
}
extension SBObject: IllustratorCharacter {}

// MARK: IllustratorCharacterStyle
@objc public protocol IllustratorCharacterStyle: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var akiLeft: Double { get } // the em amount of left aki
    @objc optional var akiRight: Double { get } // the em amount of right aki amount
    @objc optional var alignment: IllustratorESRA { get } // the character alignment type
    @objc optional var alternateGlyphs: IllustratorEAGF { get } // the alternate glyphs form
    @objc optional var autoLeading: Bool { get } // whether to use automatic leading
    @objc optional var baselineDirection: IllustratorEBSD { get } // the Japanese text baseline direction
    @objc optional var baselinePosition: IllustratorEFBO { get } // the baseline position of text
    @objc optional var baselineShift: Double { get } // the amount of shift (in points) of the text baseline
    @objc optional var capitalization: IllustratorEFCO { get } // the case of text
    @objc optional var connectionForms: Bool { get } // whether the OpenType connection forms should be used
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var contextualLigature: Bool { get } // whether the contextual ligature should be used
    @objc optional var diacXOffset: Double { get } // diacritics x offset attribute
    @objc optional var diacYOffset: Double { get } // diacritics y offset attribute
    @objc optional var diacriticsPositioning: IllustratorEDVP { get } // diacritics positioning attribute
    @objc optional var digitSet: IllustratorEDgS { get } // digit set attribute
    @objc optional var directionOverride: IllustratorEDOT { get } // direction override attribute
    @objc optional var discretionaryLigature: Bool { get } // whether the discretionary ligature should be used
    @objc optional var figureStyle: IllustratorCFST { get } // which figure style to use in OpenType font
    @objc optional var fillColor: IllustratorColorInfo { get } // the color of the text fill
    @objc optional var fractions: Bool { get } // whether the OpenType fractions should be used
    @objc optional var horizontalScale: Double { get } // character horizontal scaling factor expressed as a percentage (100 = 100%)
    @objc optional var italics: Bool { get } // does the Japanese OpenType support italics?
    @objc optional var justificationAlternates: Bool { get } // justification alternates attribute
    @objc optional var kana: Bool { get } // does the Japanese OpenType support kana?
    @objc optional var kashidas: IllustratorEKas { get } // kashidas attribute
    @objc optional var kerningMethod: IllustratorEATK { get } // the automatic kerning method to use
    @objc optional var language: IllustratorELNG { get } // the language of text
    @objc optional var leading: Double { get } // the amount of space between two lines of text (in points)
    @objc optional var ligature: Bool { get } // whether the ligature should be used
    @objc optional var name: String { get } // the character style's name
    @objc optional var noBreak: Bool { get } // whether line breaks are allowed
    @objc optional var OpenTypePosition: IllustratorCOTP { get } // the OpenType baseline position
    @objc optional var ordinals: Bool { get } // whether the OpenType ordinals should be used
    @objc optional var ornaments: Bool { get } // whether the OpenType ornaments should be used
    @objc optional var overprintFill: Bool { get } // whether to overprint the fill of the text
    @objc optional var overprintStroke: Bool { get } // whether to overprint the stroke of the text
    @objc optional var proportionalMetrics: Bool { get } // does the Japanese OpenType support proportional font?
    @objc optional var rotation: Double { get } // the character rotation angle (in degrees)
    @objc optional var size: Double { get } // font size in points
    @objc optional var strikeThrough: Bool { get } // whether to draw a strike through line over the text
    @objc optional var strokeColor: IllustratorColorInfo { get } // the color of the text stroke
    @objc optional var strokeWeight: Double { get } // line width of stroke
    @objc optional var stylisticAlternates: Bool { get } // whether the OpenType stylistic alternates should be used
    @objc optional var stylisticSets: Int { get } // stylistic sets attribute
    @objc optional var swash: Bool { get } // whether the OpenType swash should be used
    @objc optional var TCYHorizontal: Int { get } // the Tate-Chu-Yoko horizontal adjustment in points
    @objc optional var TCYVertical: Int { get } // the Tate-Chu-Yoko vertical adjustment in points
    @objc optional var textFont: Any { get } // the text font
    @objc optional var titling: Bool { get } // whether the OpenType titling alternates should be used
    @objc optional var tracking: Int { get } // the tracking or range kerning amount in thousands of an em
    @objc optional var Tsume: Double { get } // the percentage of space reduction around a Japanese character (100 = 100%)
    @objc optional var underline: Bool { get } // whether to underline the text
    @objc optional var verticalScale: Double { get } // character vertical scaling factor expressed as a percentage (100 = 100%)
    @objc optional var warichuCharactersAfterBreak: Int { get }
    @objc optional var warichuCharactersBeforeBreak: Int { get }
    @objc optional var warichuEnabled: Bool { get } // whether WariChu is enabled
    @objc optional var warichuGap: Int { get } // the Wari-Chu line gap
    @objc optional var warichuJustification: IllustratorEWCJ { get }
    @objc optional var warichuLines: Int { get } // the number of Wari-Chu (multiple text lines fit into a space meant for one) lines
    @objc optional var warichuScale: Double { get } // the Wari-Chu scale
    @objc optional func applyCharacterStyleTo(_ to: Any!, clearingOverrides: Bool) // Apply the character style to text object(s)
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setAkiLeft(_ akiLeft: Double) // the em amount of left aki
    @objc optional func setAkiRight(_ akiRight: Double) // the em amount of right aki amount
    @objc optional func setAlignment(_ alignment: IllustratorESRA) // the character alignment type
    @objc optional func setAlternateGlyphs(_ alternateGlyphs: IllustratorEAGF) // the alternate glyphs form
    @objc optional func setAutoLeading(_ autoLeading: Bool) // whether to use automatic leading
    @objc optional func setBaselineDirection(_ baselineDirection: IllustratorEBSD) // the Japanese text baseline direction
    @objc optional func setBaselinePosition(_ baselinePosition: IllustratorEFBO) // the baseline position of text
    @objc optional func setBaselineShift(_ baselineShift: Double) // the amount of shift (in points) of the text baseline
    @objc optional func setCapitalization(_ capitalization: IllustratorEFCO) // the case of text
    @objc optional func setConnectionForms(_ connectionForms: Bool) // whether the OpenType connection forms should be used
    @objc optional func setContextualLigature(_ contextualLigature: Bool) // whether the contextual ligature should be used
    @objc optional func setDiacXOffset(_ diacXOffset: Double) // diacritics x offset attribute
    @objc optional func setDiacYOffset(_ diacYOffset: Double) // diacritics y offset attribute
    @objc optional func setDiacriticsPositioning(_ diacriticsPositioning: IllustratorEDVP) // diacritics positioning attribute
    @objc optional func setDigitSet(_ digitSet: IllustratorEDgS) // digit set attribute
    @objc optional func setDirectionOverride(_ directionOverride: IllustratorEDOT) // direction override attribute
    @objc optional func setDiscretionaryLigature(_ discretionaryLigature: Bool) // whether the discretionary ligature should be used
    @objc optional func setFigureStyle(_ figureStyle: IllustratorCFST) // which figure style to use in OpenType font
    @objc optional func setFillColor(_ fillColor: IllustratorColorInfo!) // the color of the text fill
    @objc optional func setFractions(_ fractions: Bool) // whether the OpenType fractions should be used
    @objc optional func setHorizontalScale(_ horizontalScale: Double) // character horizontal scaling factor expressed as a percentage (100 = 100%)
    @objc optional func setItalics(_ italics: Bool) // does the Japanese OpenType support italics?
    @objc optional func setJustificationAlternates(_ justificationAlternates: Bool) // justification alternates attribute
    @objc optional func setKana(_ kana: Bool) // does the Japanese OpenType support kana?
    @objc optional func setKashidas(_ kashidas: IllustratorEKas) // kashidas attribute
    @objc optional func setKerningMethod(_ kerningMethod: IllustratorEATK) // the automatic kerning method to use
    @objc optional func setLanguage(_ language: IllustratorELNG) // the language of text
    @objc optional func setLeading(_ leading: Double) // the amount of space between two lines of text (in points)
    @objc optional func setLigature(_ ligature: Bool) // whether the ligature should be used
    @objc optional func setName(_ name: String!) // the character style's name
    @objc optional func setNoBreak(_ noBreak: Bool) // whether line breaks are allowed
    @objc optional func setOpenTypePosition(_ OpenTypePosition: IllustratorCOTP) // the OpenType baseline position
    @objc optional func setOrdinals(_ ordinals: Bool) // whether the OpenType ordinals should be used
    @objc optional func setOrnaments(_ ornaments: Bool) // whether the OpenType ornaments should be used
    @objc optional func setOverprintFill(_ overprintFill: Bool) // whether to overprint the fill of the text
    @objc optional func setOverprintStroke(_ overprintStroke: Bool) // whether to overprint the stroke of the text
    @objc optional func setProportionalMetrics(_ proportionalMetrics: Bool) // does the Japanese OpenType support proportional font?
    @objc optional func setRotation(_ rotation: Double) // the character rotation angle (in degrees)
    @objc optional func setSize(_ size: Double) // font size in points
    @objc optional func setStrikeThrough(_ strikeThrough: Bool) // whether to draw a strike through line over the text
    @objc optional func setStrokeColor(_ strokeColor: IllustratorColorInfo!) // the color of the text stroke
    @objc optional func setStrokeWeight(_ strokeWeight: Double) // line width of stroke
    @objc optional func setStylisticAlternates(_ stylisticAlternates: Bool) // whether the OpenType stylistic alternates should be used
    @objc optional func setStylisticSets(_ stylisticSets: Int) // stylistic sets attribute
    @objc optional func setSwash(_ swash: Bool) // whether the OpenType swash should be used
    @objc optional func setTCYHorizontal(_ TCYHorizontal: Int) // the Tate-Chu-Yoko horizontal adjustment in points
    @objc optional func setTCYVertical(_ TCYVertical: Int) // the Tate-Chu-Yoko vertical adjustment in points
    @objc optional func setTextFont(_ textFont: Any!) // the text font
    @objc optional func setTitling(_ titling: Bool) // whether the OpenType titling alternates should be used
    @objc optional func setTracking(_ tracking: Int) // the tracking or range kerning amount in thousands of an em
    @objc optional func setTsume(_ Tsume: Double) // the percentage of space reduction around a Japanese character (100 = 100%)
    @objc optional func setUnderline(_ underline: Bool) // whether to underline the text
    @objc optional func setVerticalScale(_ verticalScale: Double) // character vertical scaling factor expressed as a percentage (100 = 100%)
    @objc optional func setWarichuCharactersAfterBreak(_ warichuCharactersAfterBreak: Int)
    @objc optional func setWarichuCharactersBeforeBreak(_ warichuCharactersBeforeBreak: Int)
    @objc optional func setWarichuEnabled(_ warichuEnabled: Bool) // whether WariChu is enabled
    @objc optional func setWarichuGap(_ warichuGap: Int) // the Wari-Chu line gap
    @objc optional func setWarichuJustification(_ warichuJustification: IllustratorEWCJ)
    @objc optional func setWarichuLines(_ warichuLines: Int) // the number of Wari-Chu (multiple text lines fit into a space meant for one) lines
    @objc optional func setWarichuScale(_ warichuScale: Double) // the Wari-Chu scale
}
extension SBObject: IllustratorCharacterStyle {}

// MARK: IllustratorInsertionPoint
@objc public protocol IllustratorInsertionPoint: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional func characters() -> SBElementArray
    @objc optional func lines() -> SBElementArray
    @objc optional func paragraphs() -> SBElementArray
    @objc optional func text() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var story: IllustratorStory { get } // the story of the text range
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
}
extension SBObject: IllustratorInsertionPoint {}

// MARK: IllustratorLine
@objc public protocol IllustratorLine: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional func characterStyles() -> SBElementArray
    @objc optional func characters() -> SBElementArray
    @objc optional func insertionPoints() -> SBElementArray
    @objc optional func lines() -> SBElementArray
    @objc optional func paragraphStyles() -> SBElementArray
    @objc optional func paragraphs() -> SBElementArray
    @objc optional func text() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var OpenTypePosition: IllustratorCOTP { get } // the OpenType baseline position
    @objc optional var TCYHorizontal: Int { get } // the Tate-Chu-Yoko horizontal adjustment in points
    @objc optional var TCYVertical: Int { get } // the Tate-Chu-Yoko vertical adjustment in points
    @objc optional var Tsume: Double { get } // the percentage of space reduction around a Japanese character (100 = 100%)
    @objc optional var akiLeft: Double { get } // the em amount of left aki
    @objc optional var akiRight: Double { get } // the em amount of right aki amount
    @objc optional var alignment: IllustratorESRA { get } // the character alignment type
    @objc optional var alternateGlyphs: IllustratorEAGF { get } // the alternate glyphs form
    @objc optional var autoLeading: Bool { get } // whether to use automatic leading
    @objc optional var baselineDirection: IllustratorEBSD { get } // the Japanese text baseline direction
    @objc optional var baselinePosition: IllustratorEFBO { get } // the baseline position of text
    @objc optional var baselineShift: Double { get } // the amount of shift (in points) of the text baseline
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var capitalization: IllustratorEFCO { get } // the case of text
    @objc optional var characterOffset: Int { get } // offset of the first character of the range from the beginning of the story, in characters.
    @objc optional var connectionForms: Bool { get } // whether the OpenType connection forms should be used
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var contents: String { get } // the text string
    @objc optional var contextualLigature: Bool { get } // whether the contextual ligature should be used
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var diacXOffset: Double { get } // diacritics x offset attribute
    @objc optional var diacYOffset: Double { get } // diacritics y offset attribute
    @objc optional var diacriticsPositioning: IllustratorEDVP { get } // diacritics positioning attribute
    @objc optional var digitSet: IllustratorEDgS { get } // digit set attribute
    @objc optional var directionOverride: IllustratorEDOT { get } // direction override attribute
    @objc optional var discretionaryLigature: Bool { get } // whether the discretionary ligature should be used
    @objc optional var end: Int { get } // end index of the text range
    @objc optional var figureStyle: IllustratorCFST { get } // which figure style to use in OpenType font
    @objc optional var fillColor: IllustratorColorInfo { get } // the color of the text fill
    @objc optional var fractions: Bool { get } // whether the OpenType fractions should be used
    @objc optional var horizontalScale: Double { get } // character horizontal scaling factor expressed as a percentage (100 = 100%)
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var italics: Bool { get } // does the Japanese OpenType support italics?
    @objc optional var justificationAlternates: Bool { get } // justification alternates attribute
    @objc optional var kana: Bool { get } // does the Japanese OpenType support kana?
    @objc optional var kashidas: IllustratorEKas { get } // kashidas attribute
    @objc optional var kerning: Int { get } // controls the spacing between two characters (in milli-ems)
    @objc optional var kerningMethod: IllustratorEATK { get } // the automatic kerning method to use
    @objc optional var language: IllustratorELNG { get } // the language of text
    @objc optional var leading: Double { get } // the amount of space between two lines of text (in points)
    @objc optional var length: Int { get } // length of text range ( minimum 0 )
    @objc optional var ligature: Bool { get } // whether the ligature should be used
    @objc optional var noBreak: Bool { get } // whether line breaks are allowed
    @objc optional var ordinals: Bool { get } // whether the OpenType ordinals should be used
    @objc optional var ornaments: Bool { get } // whether the OpenType ornaments should be used
    @objc optional var overprintFill: Bool { get } // whether to overprint the fill of the text
    @objc optional var overprintStroke: Bool { get } // whether to overprint the stroke of the text
    @objc optional var proportionalMetrics: Bool { get } // does the Japanese OpenType support proportional font?
    @objc optional var rotation: Double { get } // the character rotation angle (in degrees)
    @objc optional var selection: [IllustratorText] { get } // the selected text (ranges) in the text range
    @objc optional var size: Double { get } // font size in points
    @objc optional var start: Int { get } // start index of the text range
    @objc optional var story: IllustratorStory { get } // the story of the text range
    @objc optional var strikeThrough: Bool { get } // whether to draw a strike through line over the text
    @objc optional var strokeColor: IllustratorColorInfo { get } // the color of the text stroke
    @objc optional var strokeWeight: Double { get } // line width of stroke
    @objc optional var stylisticAlternates: Bool { get } // whether the OpenType stylistic alternates should be used
    @objc optional var stylisticSets: Int { get } // stylistic sets attribute
    @objc optional var swash: Bool { get } // whether the OpenType swash should be used
    @objc optional var textFont: Any { get } // the text font
    @objc optional var titling: Bool { get } // whether the OpenType titling alternates should be used
    @objc optional var tracking: Int { get } // the tracking or range kerning amount in thousands of an em
    @objc optional var underline: Bool { get } // whether to underline the text
    @objc optional var verticalScale: Double { get } // character vertical scaling factor expressed as a percentage (100 = 100%)
    @objc optional var warichuCharactersAfterBreak: Int { get }
    @objc optional var warichuCharactersBeforeBreak: Int { get }
    @objc optional var warichuEnabled: Bool { get } // whether WariChu is enabled
    @objc optional var warichuGap: Int { get } // the Wari-Chu line gap
    @objc optional var warichuJustification: IllustratorEWCJ { get }
    @objc optional var warichuLines: Int { get } // the number of Wari-Chu (multiple text lines fit into a space meant for one) lines
    @objc optional var warichuScale: Double { get } // the Wari-Chu scale
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setOpenTypePosition(_ OpenTypePosition: IllustratorCOTP) // the OpenType baseline position
    @objc optional func setTCYHorizontal(_ TCYHorizontal: Int) // the Tate-Chu-Yoko horizontal adjustment in points
    @objc optional func setTCYVertical(_ TCYVertical: Int) // the Tate-Chu-Yoko vertical adjustment in points
    @objc optional func setTsume(_ Tsume: Double) // the percentage of space reduction around a Japanese character (100 = 100%)
    @objc optional func setAkiLeft(_ akiLeft: Double) // the em amount of left aki
    @objc optional func setAkiRight(_ akiRight: Double) // the em amount of right aki amount
    @objc optional func setAlignment(_ alignment: IllustratorESRA) // the character alignment type
    @objc optional func setAlternateGlyphs(_ alternateGlyphs: IllustratorEAGF) // the alternate glyphs form
    @objc optional func setAutoLeading(_ autoLeading: Bool) // whether to use automatic leading
    @objc optional func setBaselineDirection(_ baselineDirection: IllustratorEBSD) // the Japanese text baseline direction
    @objc optional func setBaselinePosition(_ baselinePosition: IllustratorEFBO) // the baseline position of text
    @objc optional func setBaselineShift(_ baselineShift: Double) // the amount of shift (in points) of the text baseline
    @objc optional func setCapitalization(_ capitalization: IllustratorEFCO) // the case of text
    @objc optional func setCharacterOffset(_ characterOffset: Int) // offset of the first character of the range from the beginning of the story, in characters.
    @objc optional func setConnectionForms(_ connectionForms: Bool) // whether the OpenType connection forms should be used
    @objc optional func setContents(_ contents: String!) // the text string
    @objc optional func setContextualLigature(_ contextualLigature: Bool) // whether the contextual ligature should be used
    @objc optional func setDiacXOffset(_ diacXOffset: Double) // diacritics x offset attribute
    @objc optional func setDiacYOffset(_ diacYOffset: Double) // diacritics y offset attribute
    @objc optional func setDiacriticsPositioning(_ diacriticsPositioning: IllustratorEDVP) // diacritics positioning attribute
    @objc optional func setDigitSet(_ digitSet: IllustratorEDgS) // digit set attribute
    @objc optional func setDirectionOverride(_ directionOverride: IllustratorEDOT) // direction override attribute
    @objc optional func setDiscretionaryLigature(_ discretionaryLigature: Bool) // whether the discretionary ligature should be used
    @objc optional func setEnd(_ end: Int) // end index of the text range
    @objc optional func setFigureStyle(_ figureStyle: IllustratorCFST) // which figure style to use in OpenType font
    @objc optional func setFillColor(_ fillColor: IllustratorColorInfo!) // the color of the text fill
    @objc optional func setFractions(_ fractions: Bool) // whether the OpenType fractions should be used
    @objc optional func setHorizontalScale(_ horizontalScale: Double) // character horizontal scaling factor expressed as a percentage (100 = 100%)
    @objc optional func setItalics(_ italics: Bool) // does the Japanese OpenType support italics?
    @objc optional func setJustificationAlternates(_ justificationAlternates: Bool) // justification alternates attribute
    @objc optional func setKana(_ kana: Bool) // does the Japanese OpenType support kana?
    @objc optional func setKashidas(_ kashidas: IllustratorEKas) // kashidas attribute
    @objc optional func setKerning(_ kerning: Int) // controls the spacing between two characters (in milli-ems)
    @objc optional func setKerningMethod(_ kerningMethod: IllustratorEATK) // the automatic kerning method to use
    @objc optional func setLanguage(_ language: IllustratorELNG) // the language of text
    @objc optional func setLeading(_ leading: Double) // the amount of space between two lines of text (in points)
    @objc optional func setLength(_ length: Int) // length of text range ( minimum 0 )
    @objc optional func setLigature(_ ligature: Bool) // whether the ligature should be used
    @objc optional func setNoBreak(_ noBreak: Bool) // whether line breaks are allowed
    @objc optional func setOrdinals(_ ordinals: Bool) // whether the OpenType ordinals should be used
    @objc optional func setOrnaments(_ ornaments: Bool) // whether the OpenType ornaments should be used
    @objc optional func setOverprintFill(_ overprintFill: Bool) // whether to overprint the fill of the text
    @objc optional func setOverprintStroke(_ overprintStroke: Bool) // whether to overprint the stroke of the text
    @objc optional func setProportionalMetrics(_ proportionalMetrics: Bool) // does the Japanese OpenType support proportional font?
    @objc optional func setRotation(_ rotation: Double) // the character rotation angle (in degrees)
    @objc optional func setSize(_ size: Double) // font size in points
    @objc optional func setStart(_ start: Int) // start index of the text range
    @objc optional func setStrikeThrough(_ strikeThrough: Bool) // whether to draw a strike through line over the text
    @objc optional func setStrokeColor(_ strokeColor: IllustratorColorInfo!) // the color of the text stroke
    @objc optional func setStrokeWeight(_ strokeWeight: Double) // line width of stroke
    @objc optional func setStylisticAlternates(_ stylisticAlternates: Bool) // whether the OpenType stylistic alternates should be used
    @objc optional func setStylisticSets(_ stylisticSets: Int) // stylistic sets attribute
    @objc optional func setSwash(_ swash: Bool) // whether the OpenType swash should be used
    @objc optional func setTextFont(_ textFont: Any!) // the text font
    @objc optional func setTitling(_ titling: Bool) // whether the OpenType titling alternates should be used
    @objc optional func setTracking(_ tracking: Int) // the tracking or range kerning amount in thousands of an em
    @objc optional func setUnderline(_ underline: Bool) // whether to underline the text
    @objc optional func setVerticalScale(_ verticalScale: Double) // character vertical scaling factor expressed as a percentage (100 = 100%)
    @objc optional func setWarichuCharactersAfterBreak(_ warichuCharactersAfterBreak: Int)
    @objc optional func setWarichuCharactersBeforeBreak(_ warichuCharactersBeforeBreak: Int)
    @objc optional func setWarichuEnabled(_ warichuEnabled: Bool) // whether WariChu is enabled
    @objc optional func setWarichuGap(_ warichuGap: Int) // the Wari-Chu line gap
    @objc optional func setWarichuJustification(_ warichuJustification: IllustratorEWCJ)
    @objc optional func setWarichuLines(_ warichuLines: Int) // the number of Wari-Chu (multiple text lines fit into a space meant for one) lines
    @objc optional func setWarichuScale(_ warichuScale: Double) // the Wari-Chu scale
}
extension SBObject: IllustratorLine {}

// MARK: IllustratorParagraph
@objc public protocol IllustratorParagraph: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional func characterStyles() -> SBElementArray
    @objc optional func characters() -> SBElementArray
    @objc optional func insertionPoints() -> SBElementArray
    @objc optional func lines() -> SBElementArray
    @objc optional func paragraphStyles() -> SBElementArray
    @objc optional func paragraphs() -> SBElementArray
    @objc optional func text() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var BunriKinshi: Bool { get } // is BunriKinshi enabled?
    @objc optional var BurasagariType: IllustratorEPJ0 { get } // the Burasagari type
    @objc optional var ComposerEngine: IllustratorECET { get } // composer engine attribute
    @objc optional var KashidaWidth: IllustratorEKWT { get } // the Kashida Width attribute
    @objc optional var Kinsoku: String { get } // the Kinsoku Shori name
    @objc optional var KinsokuOrder: IllustratorEPJ2 { get } // the preferred Kinsoku order
    @objc optional var KurikaeshiMojiShori: Bool { get } // is KurikaeshiMojiShori enabled?
    @objc optional var Mojikumi: String { get } // the Mojikumi name
    @objc optional var OpenTypePosition: IllustratorCOTP { get } // the OpenType baseline position
    @objc optional var ParagraphDirection: IllustratorEPDT { get } // main writing direction attribute
    @objc optional var TCYHorizontal: Int { get } // the Tate-Chu-Yoko horizontal adjustment in points
    @objc optional var TCYVertical: Int { get } // the Tate-Chu-Yoko vertical adjustment in points
    @objc optional var Tsume: Double { get } // the percentage of space reduction around a Japanese character (100 = 100%)
    @objc optional var akiLeft: Double { get } // the em amount of left aki
    @objc optional var akiRight: Double { get } // the em amount of right aki amount
    @objc optional var alignment: IllustratorESRA { get } // the character alignment type
    @objc optional var alternateGlyphs: IllustratorEAGF { get } // the alternate glyphs form
    @objc optional var autoLeading: Bool { get } // whether to use automatic leading
    @objc optional var autoLeadingAmount: Double { get } // auto leading amount (in percentage)
    @objc optional var baselineDirection: IllustratorEBSD { get } // the Japanese text baseline direction
    @objc optional var baselinePosition: IllustratorEFBO { get } // the baseline position of text
    @objc optional var baselineShift: Double { get } // the amount of shift (in points) of the text baseline
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var capitalization: IllustratorEFCO { get } // the case of text
    @objc optional var characterOffset: Int { get } // offset of the first character of the range from the beginning of the story, in characters.
    @objc optional var connectionForms: Bool { get } // whether the OpenType connection forms should be used
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var contents: String { get } // the text string
    @objc optional var contextualLigature: Bool { get } // whether the contextual ligature should be used
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var desiredGlyphScaling: Double { get } // desired glyph scaling expressed as a percentage
    @objc optional var desiredLetterSpacing: Double { get } // desired letter spacing expressed as a percentage
    @objc optional var desiredWordSpacing: Double { get } // desired word spacing expressed as a percentage
    @objc optional var diacXOffset: Double { get } // diacritics x offset attribute
    @objc optional var diacYOffset: Double { get } // diacritics y offset attribute
    @objc optional var diacriticsPositioning: IllustratorEDVP { get } // diacritics positioning attribute
    @objc optional var digitSet: IllustratorEDgS { get } // digit set attribute
    @objc optional var directionOverride: IllustratorEDOT { get } // direction override attribute
    @objc optional var discretionaryLigature: Bool { get } // whether the discretionary ligature should be used
    @objc optional var end: Int { get } // end index of the text range
    @objc optional var everyLineComposer: Bool { get } // whether to enable every line composer (as opposed to single line composer)?
    @objc optional var figureStyle: IllustratorCFST { get } // which figure style to use in OpenType font
    @objc optional var fillColor: IllustratorColorInfo { get } // the color of the text fill
    @objc optional var firstLineIndent: Double { get } // first line left indent expressed in points
    @objc optional var fractions: Bool { get } // whether the OpenType fractions should be used
    @objc optional var horizontalScale: Double { get } // character horizontal scaling factor expressed as a percentage (100 = 100%)
    @objc optional var hyphenateCapitalizedWords: Bool { get } // is hyphenation enabled for the capitalized words?
    @objc optional var hyphenation: Bool { get } // is hyphenation enabled for the paragraph?
    @objc optional var hyphenationPreference: Double { get } // hyphenation preference scale for better spacing (0) or fewer hyphens (1) ( 0.0 - 1.0 )
    @objc optional var hyphenationZone: Double { get } // size of the hyphenation zone
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var italics: Bool { get } // does the Japanese OpenType support italics?
    @objc optional var justification: IllustratorEPRa { get } // paragraph justification
    @objc optional var justificationAlternates: Bool { get } // justification alternates attribute
    @objc optional var kana: Bool { get } // does the Japanese OpenType support kana?
    @objc optional var kashidas: IllustratorEKas { get } // kashidas attribute
    @objc optional var kerning: Int { get } // controls the spacing between two characters (in milli-ems)
    @objc optional var kerningMethod: IllustratorEATK { get } // the automatic kerning method to use
    @objc optional var language: IllustratorELNG { get } // the language of text
    @objc optional var leading: Double { get } // the amount of space between two lines of text (in points)
    @objc optional var leadingType: IllustratorEALD { get } // auto leading type
    @objc optional var leftIndent: Double { get } // left indent of margin expressed in points
    @objc optional var length: Int { get } // length of text range ( minimum 0 )
    @objc optional var ligature: Bool { get } // whether the ligature should be used
    @objc optional var maximumConsecutiveHyphens: Int { get } // maximum number of consecutive hypenated lines
    @objc optional var maximumGlyphScaling: Double { get } // maximum glyph scaling expressed as a percentage
    @objc optional var maximumLetterSpacing: Double { get } // maximum letter spacing expressed as a percentage
    @objc optional var maximumWordSpacing: Double { get } // maximum word spacing expressed as a percentage
    @objc optional var minimumAfterHyphen: Int { get } // minimum number of characters after a hyphen
    @objc optional var minimumBeforeHyphen: Int { get } // minimum number of characters before a hyphen
    @objc optional var minimumGlyphScaling: Double { get } // minimum glyph scaling expressed as a percentage
    @objc optional var minimumHyphenatedWordSize: Int { get } // minimum hyphenated word size
    @objc optional var minimumLetterSpacing: Double { get } // minimum letter spacing expressed as a percentage
    @objc optional var minimumWordSpacing: Double { get } // minimum word spacing expressed as a percentage
    @objc optional var noBreak: Bool { get } // whether line breaks are allowed
    @objc optional var ordinals: Bool { get } // whether the OpenType ordinals should be used
    @objc optional var ornaments: Bool { get } // whether the OpenType ornaments should be used
    @objc optional var overprintFill: Bool { get } // whether to overprint the fill of the text
    @objc optional var overprintStroke: Bool { get } // whether to overprint the stroke of the text
    @objc optional var proportionalMetrics: Bool { get } // does the Japanese OpenType support proportional font?
    @objc optional var rightIndent: Double { get } // right indent of margin expressed in points
    @objc optional var romanHanging: Bool { get } // is Roman hanging punctuation enabled?
    @objc optional var rotation: Double { get } // the character rotation angle (in degrees)
    @objc optional var selection: [IllustratorText] { get } // the selected text (ranges) in the text range
    @objc optional var singleWordJustification: IllustratorEPRa { get } // single word justification
    @objc optional var size: Double { get } // font size in points
    @objc optional var spaceAfter: Double { get } // spacing after paragraph in points
    @objc optional var spaceBefore: Double { get } // spacing before paragraph in points
    @objc optional var start: Int { get } // start index of the text range
    @objc optional var story: IllustratorStory { get } // the story of the text range
    @objc optional var strikeThrough: Bool { get } // whether to draw a strike through line over the text
    @objc optional var strokeColor: IllustratorColorInfo { get } // the color of the text stroke
    @objc optional var strokeWeight: Double { get } // line width of stroke
    @objc optional var stylisticAlternates: Bool { get } // whether the OpenType stylistic alternates should be used
    @objc optional var stylisticSets: Int { get } // stylistic sets attribute
    @objc optional var swash: Bool { get } // whether the OpenType swash should be used
    @objc optional var tabStops: [IllustratorTabStopInfo] { get } // tab stop settings
    @objc optional var textFont: Any { get } // the text font
    @objc optional var titling: Bool { get } // whether the OpenType titling alternates should be used
    @objc optional var tracking: Int { get } // the tracking or range kerning amount in thousands of an em
    @objc optional var underline: Bool { get } // whether to underline the text
    @objc optional var verticalScale: Double { get } // character vertical scaling factor expressed as a percentage (100 = 100%)
    @objc optional var warichuCharactersAfterBreak: Int { get }
    @objc optional var warichuCharactersBeforeBreak: Int { get }
    @objc optional var warichuEnabled: Bool { get } // whether WariChu is enabled
    @objc optional var warichuGap: Int { get } // the Wari-Chu line gap
    @objc optional var warichuJustification: IllustratorEWCJ { get }
    @objc optional var warichuLines: Int { get } // the number of Wari-Chu (multiple text lines fit into a space meant for one) lines
    @objc optional var warichuScale: Double { get } // the Wari-Chu scale
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setBunriKinshi(_ BunriKinshi: Bool) // is BunriKinshi enabled?
    @objc optional func setBurasagariType(_ BurasagariType: IllustratorEPJ0) // the Burasagari type
    @objc optional func setComposerEngine(_ ComposerEngine: IllustratorECET) // composer engine attribute
    @objc optional func setKashidaWidth(_ KashidaWidth: IllustratorEKWT) // the Kashida Width attribute
    @objc optional func setKinsoku(_ Kinsoku: String!) // the Kinsoku Shori name
    @objc optional func setKinsokuOrder(_ KinsokuOrder: IllustratorEPJ2) // the preferred Kinsoku order
    @objc optional func setKurikaeshiMojiShori(_ KurikaeshiMojiShori: Bool) // is KurikaeshiMojiShori enabled?
    @objc optional func setMojikumi(_ Mojikumi: String!) // the Mojikumi name
    @objc optional func setOpenTypePosition(_ OpenTypePosition: IllustratorCOTP) // the OpenType baseline position
    @objc optional func setParagraphDirection(_ ParagraphDirection: IllustratorEPDT) // main writing direction attribute
    @objc optional func setTCYHorizontal(_ TCYHorizontal: Int) // the Tate-Chu-Yoko horizontal adjustment in points
    @objc optional func setTCYVertical(_ TCYVertical: Int) // the Tate-Chu-Yoko vertical adjustment in points
    @objc optional func setTsume(_ Tsume: Double) // the percentage of space reduction around a Japanese character (100 = 100%)
    @objc optional func setAkiLeft(_ akiLeft: Double) // the em amount of left aki
    @objc optional func setAkiRight(_ akiRight: Double) // the em amount of right aki amount
    @objc optional func setAlignment(_ alignment: IllustratorESRA) // the character alignment type
    @objc optional func setAlternateGlyphs(_ alternateGlyphs: IllustratorEAGF) // the alternate glyphs form
    @objc optional func setAutoLeading(_ autoLeading: Bool) // whether to use automatic leading
    @objc optional func setAutoLeadingAmount(_ autoLeadingAmount: Double) // auto leading amount (in percentage)
    @objc optional func setBaselineDirection(_ baselineDirection: IllustratorEBSD) // the Japanese text baseline direction
    @objc optional func setBaselinePosition(_ baselinePosition: IllustratorEFBO) // the baseline position of text
    @objc optional func setBaselineShift(_ baselineShift: Double) // the amount of shift (in points) of the text baseline
    @objc optional func setCapitalization(_ capitalization: IllustratorEFCO) // the case of text
    @objc optional func setCharacterOffset(_ characterOffset: Int) // offset of the first character of the range from the beginning of the story, in characters.
    @objc optional func setConnectionForms(_ connectionForms: Bool) // whether the OpenType connection forms should be used
    @objc optional func setContents(_ contents: String!) // the text string
    @objc optional func setContextualLigature(_ contextualLigature: Bool) // whether the contextual ligature should be used
    @objc optional func setDesiredGlyphScaling(_ desiredGlyphScaling: Double) // desired glyph scaling expressed as a percentage
    @objc optional func setDesiredLetterSpacing(_ desiredLetterSpacing: Double) // desired letter spacing expressed as a percentage
    @objc optional func setDesiredWordSpacing(_ desiredWordSpacing: Double) // desired word spacing expressed as a percentage
    @objc optional func setDiacXOffset(_ diacXOffset: Double) // diacritics x offset attribute
    @objc optional func setDiacYOffset(_ diacYOffset: Double) // diacritics y offset attribute
    @objc optional func setDiacriticsPositioning(_ diacriticsPositioning: IllustratorEDVP) // diacritics positioning attribute
    @objc optional func setDigitSet(_ digitSet: IllustratorEDgS) // digit set attribute
    @objc optional func setDirectionOverride(_ directionOverride: IllustratorEDOT) // direction override attribute
    @objc optional func setDiscretionaryLigature(_ discretionaryLigature: Bool) // whether the discretionary ligature should be used
    @objc optional func setEnd(_ end: Int) // end index of the text range
    @objc optional func setEveryLineComposer(_ everyLineComposer: Bool) // whether to enable every line composer (as opposed to single line composer)?
    @objc optional func setFigureStyle(_ figureStyle: IllustratorCFST) // which figure style to use in OpenType font
    @objc optional func setFillColor(_ fillColor: IllustratorColorInfo!) // the color of the text fill
    @objc optional func setFirstLineIndent(_ firstLineIndent: Double) // first line left indent expressed in points
    @objc optional func setFractions(_ fractions: Bool) // whether the OpenType fractions should be used
    @objc optional func setHorizontalScale(_ horizontalScale: Double) // character horizontal scaling factor expressed as a percentage (100 = 100%)
    @objc optional func setHyphenateCapitalizedWords(_ hyphenateCapitalizedWords: Bool) // is hyphenation enabled for the capitalized words?
    @objc optional func setHyphenation(_ hyphenation: Bool) // is hyphenation enabled for the paragraph?
    @objc optional func setHyphenationPreference(_ hyphenationPreference: Double) // hyphenation preference scale for better spacing (0) or fewer hyphens (1) ( 0.0 - 1.0 )
    @objc optional func setHyphenationZone(_ hyphenationZone: Double) // size of the hyphenation zone
    @objc optional func setItalics(_ italics: Bool) // does the Japanese OpenType support italics?
    @objc optional func setJustification(_ justification: IllustratorEPRa) // paragraph justification
    @objc optional func setJustificationAlternates(_ justificationAlternates: Bool) // justification alternates attribute
    @objc optional func setKana(_ kana: Bool) // does the Japanese OpenType support kana?
    @objc optional func setKashidas(_ kashidas: IllustratorEKas) // kashidas attribute
    @objc optional func setKerning(_ kerning: Int) // controls the spacing between two characters (in milli-ems)
    @objc optional func setKerningMethod(_ kerningMethod: IllustratorEATK) // the automatic kerning method to use
    @objc optional func setLanguage(_ language: IllustratorELNG) // the language of text
    @objc optional func setLeading(_ leading: Double) // the amount of space between two lines of text (in points)
    @objc optional func setLeadingType(_ leadingType: IllustratorEALD) // auto leading type
    @objc optional func setLeftIndent(_ leftIndent: Double) // left indent of margin expressed in points
    @objc optional func setLength(_ length: Int) // length of text range ( minimum 0 )
    @objc optional func setLigature(_ ligature: Bool) // whether the ligature should be used
    @objc optional func setMaximumConsecutiveHyphens(_ maximumConsecutiveHyphens: Int) // maximum number of consecutive hypenated lines
    @objc optional func setMaximumGlyphScaling(_ maximumGlyphScaling: Double) // maximum glyph scaling expressed as a percentage
    @objc optional func setMaximumLetterSpacing(_ maximumLetterSpacing: Double) // maximum letter spacing expressed as a percentage
    @objc optional func setMaximumWordSpacing(_ maximumWordSpacing: Double) // maximum word spacing expressed as a percentage
    @objc optional func setMinimumAfterHyphen(_ minimumAfterHyphen: Int) // minimum number of characters after a hyphen
    @objc optional func setMinimumBeforeHyphen(_ minimumBeforeHyphen: Int) // minimum number of characters before a hyphen
    @objc optional func setMinimumGlyphScaling(_ minimumGlyphScaling: Double) // minimum glyph scaling expressed as a percentage
    @objc optional func setMinimumHyphenatedWordSize(_ minimumHyphenatedWordSize: Int) // minimum hyphenated word size
    @objc optional func setMinimumLetterSpacing(_ minimumLetterSpacing: Double) // minimum letter spacing expressed as a percentage
    @objc optional func setMinimumWordSpacing(_ minimumWordSpacing: Double) // minimum word spacing expressed as a percentage
    @objc optional func setNoBreak(_ noBreak: Bool) // whether line breaks are allowed
    @objc optional func setOrdinals(_ ordinals: Bool) // whether the OpenType ordinals should be used
    @objc optional func setOrnaments(_ ornaments: Bool) // whether the OpenType ornaments should be used
    @objc optional func setOverprintFill(_ overprintFill: Bool) // whether to overprint the fill of the text
    @objc optional func setOverprintStroke(_ overprintStroke: Bool) // whether to overprint the stroke of the text
    @objc optional func setProportionalMetrics(_ proportionalMetrics: Bool) // does the Japanese OpenType support proportional font?
    @objc optional func setRightIndent(_ rightIndent: Double) // right indent of margin expressed in points
    @objc optional func setRomanHanging(_ romanHanging: Bool) // is Roman hanging punctuation enabled?
    @objc optional func setRotation(_ rotation: Double) // the character rotation angle (in degrees)
    @objc optional func setSingleWordJustification(_ singleWordJustification: IllustratorEPRa) // single word justification
    @objc optional func setSize(_ size: Double) // font size in points
    @objc optional func setSpaceAfter(_ spaceAfter: Double) // spacing after paragraph in points
    @objc optional func setSpaceBefore(_ spaceBefore: Double) // spacing before paragraph in points
    @objc optional func setStart(_ start: Int) // start index of the text range
    @objc optional func setStrikeThrough(_ strikeThrough: Bool) // whether to draw a strike through line over the text
    @objc optional func setStrokeColor(_ strokeColor: IllustratorColorInfo!) // the color of the text stroke
    @objc optional func setStrokeWeight(_ strokeWeight: Double) // line width of stroke
    @objc optional func setStylisticAlternates(_ stylisticAlternates: Bool) // whether the OpenType stylistic alternates should be used
    @objc optional func setStylisticSets(_ stylisticSets: Int) // stylistic sets attribute
    @objc optional func setSwash(_ swash: Bool) // whether the OpenType swash should be used
    @objc optional func setTabStops(_ tabStops: [IllustratorTabStopInfo]!) // tab stop settings
    @objc optional func setTextFont(_ textFont: Any!) // the text font
    @objc optional func setTitling(_ titling: Bool) // whether the OpenType titling alternates should be used
    @objc optional func setTracking(_ tracking: Int) // the tracking or range kerning amount in thousands of an em
    @objc optional func setUnderline(_ underline: Bool) // whether to underline the text
    @objc optional func setVerticalScale(_ verticalScale: Double) // character vertical scaling factor expressed as a percentage (100 = 100%)
    @objc optional func setWarichuCharactersAfterBreak(_ warichuCharactersAfterBreak: Int)
    @objc optional func setWarichuCharactersBeforeBreak(_ warichuCharactersBeforeBreak: Int)
    @objc optional func setWarichuEnabled(_ warichuEnabled: Bool) // whether WariChu is enabled
    @objc optional func setWarichuGap(_ warichuGap: Int) // the Wari-Chu line gap
    @objc optional func setWarichuJustification(_ warichuJustification: IllustratorEWCJ)
    @objc optional func setWarichuLines(_ warichuLines: Int) // the number of Wari-Chu (multiple text lines fit into a space meant for one) lines
    @objc optional func setWarichuScale(_ warichuScale: Double) // the Wari-Chu scale
}
extension SBObject: IllustratorParagraph {}

// MARK: IllustratorParagraphStyle
@objc public protocol IllustratorParagraphStyle: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var akiLeft: Double { get } // the em amount of left aki
    @objc optional var akiRight: Double { get } // the em amount of right aki amount
    @objc optional var alignment: IllustratorESRA { get } // the character alignment type
    @objc optional var alternateGlyphs: IllustratorEAGF { get } // the alternate glyphs form
    @objc optional var autoLeading: Bool { get } // whether to use automatic leading
    @objc optional var autoLeadingAmount: Double { get } // auto leading amount (in percentage)
    @objc optional var baselineDirection: IllustratorEBSD { get } // the Japanese text baseline direction
    @objc optional var baselinePosition: IllustratorEFBO { get } // the baseline position of text
    @objc optional var baselineShift: Double { get } // the amount of shift (in points) of the text baseline
    @objc optional var BunriKinshi: Bool { get } // is BunriKinshi enabled?
    @objc optional var BurasagariType: IllustratorEPJ0 { get } // the Burasagari type
    @objc optional var capitalization: IllustratorEFCO { get } // the case of text
    @objc optional var ComposerEngine: IllustratorECET { get } // composer engine attribute
    @objc optional var connectionForms: Bool { get } // whether the OpenType connection forms should be used
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var contextualLigature: Bool { get } // whether the contextual ligature should be used
    @objc optional var desiredGlyphScaling: Double { get } // desired glyph scaling expressed as a percentage
    @objc optional var desiredLetterSpacing: Double { get } // desired letter spacing expressed as a percentage
    @objc optional var desiredWordSpacing: Double { get } // desired word spacing expressed as a percentage
    @objc optional var diacXOffset: Double { get } // diacritics x offset attribute
    @objc optional var diacYOffset: Double { get } // diacritics y offset attribute
    @objc optional var diacriticsPositioning: IllustratorEDVP { get } // diacritics positioning attribute
    @objc optional var digitSet: IllustratorEDgS { get } // digit set attribute
    @objc optional var directionOverride: IllustratorEDOT { get } // direction override attribute
    @objc optional var discretionaryLigature: Bool { get } // whether the discretionary ligature should be used
    @objc optional var everyLineComposer: Bool { get } // whether to enable every line composer (as opposed to single line composer)?
    @objc optional var figureStyle: IllustratorCFST { get } // which figure style to use in OpenType font
    @objc optional var fillColor: IllustratorColorInfo { get } // the color of the text fill
    @objc optional var firstLineIndent: Double { get } // first line left indent expressed in points
    @objc optional var fractions: Bool { get } // whether the OpenType fractions should be used
    @objc optional var horizontalScale: Double { get } // character horizontal scaling factor expressed as a percentage (100 = 100%)
    @objc optional var hyphenateCapitalizedWords: Bool { get } // is hyphenation enabled for the capitalized words?
    @objc optional var hyphenation: Bool { get } // is hyphenation enabled for the paragraph?
    @objc optional var hyphenationPreference: Double { get } // hyphenation preference scale for better spacing (0) or fewer hyphens (1) ( 0.0 - 1.0 )
    @objc optional var hyphenationZone: Double { get } // size of the hyphenation zone
    @objc optional var italics: Bool { get } // does the Japanese OpenType support italics?
    @objc optional var justification: IllustratorEPRa { get } // paragraph justification
    @objc optional var justificationAlternates: Bool { get } // justification alternates attribute
    @objc optional var kana: Bool { get } // does the Japanese OpenType support kana?
    @objc optional var kashidas: IllustratorEKas { get } // kashidas attribute
    @objc optional var KashidaWidth: IllustratorEKWT { get } // the Kashida Width attribute
    @objc optional var kerningMethod: IllustratorEATK { get } // the automatic kerning method to use
    @objc optional var Kinsoku: String { get } // the Kinsoku Shori name
    @objc optional var KinsokuOrder: IllustratorEPJ2 { get } // the preferred Kinsoku order
    @objc optional var KurikaeshiMojiShori: Bool { get } // is KurikaeshiMojiShori enabled?
    @objc optional var language: IllustratorELNG { get } // the language of text
    @objc optional var leading: Double { get } // the amount of space between two lines of text (in points)
    @objc optional var leadingType: IllustratorEALD { get } // auto leading type
    @objc optional var leftIndent: Double { get } // left indent of margin expressed in points
    @objc optional var ligature: Bool { get } // whether the ligature should be used
    @objc optional var maximumConsecutiveHyphens: Int { get } // maximum number of consecutive hypenated lines
    @objc optional var maximumGlyphScaling: Double { get } // maximum glyph scaling expressed as a percentage
    @objc optional var maximumLetterSpacing: Double { get } // maximum letter spacing expressed as a percentage
    @objc optional var maximumWordSpacing: Double { get } // maximum word spacing expressed as a percentage
    @objc optional var minimumAfterHyphen: Int { get } // minimum number of characters after a hyphen
    @objc optional var minimumBeforeHyphen: Int { get } // minimum number of characters before a hyphen
    @objc optional var minimumGlyphScaling: Double { get } // minimum glyph scaling expressed as a percentage
    @objc optional var minimumHyphenatedWordSize: Int { get } // minimum hyphenated word size
    @objc optional var minimumLetterSpacing: Double { get } // minimum letter spacing expressed as a percentage
    @objc optional var minimumWordSpacing: Double { get } // minimum word spacing expressed as a percentage
    @objc optional var Mojikumi: String { get } // the Mojikumi name
    @objc optional var name: String { get } // the paragraph style's name
    @objc optional var noBreak: Bool { get } // whether line breaks are allowed
    @objc optional var OpenTypePosition: IllustratorCOTP { get } // the OpenType baseline position
    @objc optional var ordinals: Bool { get } // whether the OpenType ordinals should be used
    @objc optional var ornaments: Bool { get } // whether the OpenType ornaments should be used
    @objc optional var overprintFill: Bool { get } // whether to overprint the fill of the text
    @objc optional var overprintStroke: Bool { get } // whether to overprint the stroke of the text
    @objc optional var ParagraphDirection: IllustratorEPDT { get } // main writing direction attribute
    @objc optional var proportionalMetrics: Bool { get } // does the Japanese OpenType support proportional font?
    @objc optional var rightIndent: Double { get } // right indent of margin expressed in points
    @objc optional var romanHanging: Bool { get } // is Roman hanging punctuation enabled?
    @objc optional var rotation: Double { get } // the character rotation angle (in degrees)
    @objc optional var singleWordJustification: IllustratorEPRa { get } // single word justification
    @objc optional var size: Double { get } // font size in points
    @objc optional var spaceAfter: Double { get } // spacing after paragraph in points
    @objc optional var spaceBefore: Double { get } // spacing before paragraph in points
    @objc optional var strikeThrough: Bool { get } // whether to draw a strike through line over the text
    @objc optional var strokeColor: IllustratorColorInfo { get } // the color of the text stroke
    @objc optional var strokeWeight: Double { get } // line width of stroke
    @objc optional var stylisticAlternates: Bool { get } // whether the OpenType stylistic alternates should be used
    @objc optional var stylisticSets: Int { get } // stylistic sets attribute
    @objc optional var swash: Bool { get } // whether the OpenType swash should be used
    @objc optional var tabStops: [IllustratorTabStopInfo] { get } // tab stop settings
    @objc optional var TCYHorizontal: Int { get } // the Tate-Chu-Yoko horizontal adjustment in points
    @objc optional var TCYVertical: Int { get } // the Tate-Chu-Yoko vertical adjustment in points
    @objc optional var textFont: Any { get } // the text font
    @objc optional var titling: Bool { get } // whether the OpenType titling alternates should be used
    @objc optional var tracking: Int { get } // the tracking or range kerning amount in thousands of an em
    @objc optional var Tsume: Double { get } // the percentage of space reduction around a Japanese character (100 = 100%)
    @objc optional var underline: Bool { get } // whether to underline the text
    @objc optional var verticalScale: Double { get } // character vertical scaling factor expressed as a percentage (100 = 100%)
    @objc optional var warichuCharactersAfterBreak: Int { get }
    @objc optional var warichuCharactersBeforeBreak: Int { get }
    @objc optional var warichuEnabled: Bool { get } // whether WariChu is enabled
    @objc optional var warichuGap: Int { get } // the Wari-Chu line gap
    @objc optional var warichuJustification: IllustratorEWCJ { get }
    @objc optional var warichuLines: Int { get } // the number of Wari-Chu (multiple text lines fit into a space meant for one) lines
    @objc optional var warichuScale: Double { get } // the Wari-Chu scale
    @objc optional func applyParagraphStyleTo(_ to: Any!, clearingOverrides: Bool) // Apply the paragraph style to text object(s)
    @objc optional func clearStyle() // Remove all the attributes from this paragraph style
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setAkiLeft(_ akiLeft: Double) // the em amount of left aki
    @objc optional func setAkiRight(_ akiRight: Double) // the em amount of right aki amount
    @objc optional func setAlignment(_ alignment: IllustratorESRA) // the character alignment type
    @objc optional func setAlternateGlyphs(_ alternateGlyphs: IllustratorEAGF) // the alternate glyphs form
    @objc optional func setAutoLeading(_ autoLeading: Bool) // whether to use automatic leading
    @objc optional func setAutoLeadingAmount(_ autoLeadingAmount: Double) // auto leading amount (in percentage)
    @objc optional func setBaselineDirection(_ baselineDirection: IllustratorEBSD) // the Japanese text baseline direction
    @objc optional func setBaselinePosition(_ baselinePosition: IllustratorEFBO) // the baseline position of text
    @objc optional func setBaselineShift(_ baselineShift: Double) // the amount of shift (in points) of the text baseline
    @objc optional func setBunriKinshi(_ BunriKinshi: Bool) // is BunriKinshi enabled?
    @objc optional func setBurasagariType(_ BurasagariType: IllustratorEPJ0) // the Burasagari type
    @objc optional func setCapitalization(_ capitalization: IllustratorEFCO) // the case of text
    @objc optional func setComposerEngine(_ ComposerEngine: IllustratorECET) // composer engine attribute
    @objc optional func setConnectionForms(_ connectionForms: Bool) // whether the OpenType connection forms should be used
    @objc optional func setContextualLigature(_ contextualLigature: Bool) // whether the contextual ligature should be used
    @objc optional func setDesiredGlyphScaling(_ desiredGlyphScaling: Double) // desired glyph scaling expressed as a percentage
    @objc optional func setDesiredLetterSpacing(_ desiredLetterSpacing: Double) // desired letter spacing expressed as a percentage
    @objc optional func setDesiredWordSpacing(_ desiredWordSpacing: Double) // desired word spacing expressed as a percentage
    @objc optional func setDiacXOffset(_ diacXOffset: Double) // diacritics x offset attribute
    @objc optional func setDiacYOffset(_ diacYOffset: Double) // diacritics y offset attribute
    @objc optional func setDiacriticsPositioning(_ diacriticsPositioning: IllustratorEDVP) // diacritics positioning attribute
    @objc optional func setDigitSet(_ digitSet: IllustratorEDgS) // digit set attribute
    @objc optional func setDirectionOverride(_ directionOverride: IllustratorEDOT) // direction override attribute
    @objc optional func setDiscretionaryLigature(_ discretionaryLigature: Bool) // whether the discretionary ligature should be used
    @objc optional func setEveryLineComposer(_ everyLineComposer: Bool) // whether to enable every line composer (as opposed to single line composer)?
    @objc optional func setFigureStyle(_ figureStyle: IllustratorCFST) // which figure style to use in OpenType font
    @objc optional func setFillColor(_ fillColor: IllustratorColorInfo!) // the color of the text fill
    @objc optional func setFirstLineIndent(_ firstLineIndent: Double) // first line left indent expressed in points
    @objc optional func setFractions(_ fractions: Bool) // whether the OpenType fractions should be used
    @objc optional func setHorizontalScale(_ horizontalScale: Double) // character horizontal scaling factor expressed as a percentage (100 = 100%)
    @objc optional func setHyphenateCapitalizedWords(_ hyphenateCapitalizedWords: Bool) // is hyphenation enabled for the capitalized words?
    @objc optional func setHyphenation(_ hyphenation: Bool) // is hyphenation enabled for the paragraph?
    @objc optional func setHyphenationPreference(_ hyphenationPreference: Double) // hyphenation preference scale for better spacing (0) or fewer hyphens (1) ( 0.0 - 1.0 )
    @objc optional func setHyphenationZone(_ hyphenationZone: Double) // size of the hyphenation zone
    @objc optional func setItalics(_ italics: Bool) // does the Japanese OpenType support italics?
    @objc optional func setJustification(_ justification: IllustratorEPRa) // paragraph justification
    @objc optional func setJustificationAlternates(_ justificationAlternates: Bool) // justification alternates attribute
    @objc optional func setKana(_ kana: Bool) // does the Japanese OpenType support kana?
    @objc optional func setKashidas(_ kashidas: IllustratorEKas) // kashidas attribute
    @objc optional func setKashidaWidth(_ KashidaWidth: IllustratorEKWT) // the Kashida Width attribute
    @objc optional func setKerningMethod(_ kerningMethod: IllustratorEATK) // the automatic kerning method to use
    @objc optional func setKinsoku(_ Kinsoku: String!) // the Kinsoku Shori name
    @objc optional func setKinsokuOrder(_ KinsokuOrder: IllustratorEPJ2) // the preferred Kinsoku order
    @objc optional func setKurikaeshiMojiShori(_ KurikaeshiMojiShori: Bool) // is KurikaeshiMojiShori enabled?
    @objc optional func setLanguage(_ language: IllustratorELNG) // the language of text
    @objc optional func setLeading(_ leading: Double) // the amount of space between two lines of text (in points)
    @objc optional func setLeadingType(_ leadingType: IllustratorEALD) // auto leading type
    @objc optional func setLeftIndent(_ leftIndent: Double) // left indent of margin expressed in points
    @objc optional func setLigature(_ ligature: Bool) // whether the ligature should be used
    @objc optional func setMaximumConsecutiveHyphens(_ maximumConsecutiveHyphens: Int) // maximum number of consecutive hypenated lines
    @objc optional func setMaximumGlyphScaling(_ maximumGlyphScaling: Double) // maximum glyph scaling expressed as a percentage
    @objc optional func setMaximumLetterSpacing(_ maximumLetterSpacing: Double) // maximum letter spacing expressed as a percentage
    @objc optional func setMaximumWordSpacing(_ maximumWordSpacing: Double) // maximum word spacing expressed as a percentage
    @objc optional func setMinimumAfterHyphen(_ minimumAfterHyphen: Int) // minimum number of characters after a hyphen
    @objc optional func setMinimumBeforeHyphen(_ minimumBeforeHyphen: Int) // minimum number of characters before a hyphen
    @objc optional func setMinimumGlyphScaling(_ minimumGlyphScaling: Double) // minimum glyph scaling expressed as a percentage
    @objc optional func setMinimumHyphenatedWordSize(_ minimumHyphenatedWordSize: Int) // minimum hyphenated word size
    @objc optional func setMinimumLetterSpacing(_ minimumLetterSpacing: Double) // minimum letter spacing expressed as a percentage
    @objc optional func setMinimumWordSpacing(_ minimumWordSpacing: Double) // minimum word spacing expressed as a percentage
    @objc optional func setMojikumi(_ Mojikumi: String!) // the Mojikumi name
    @objc optional func setName(_ name: String!) // the paragraph style's name
    @objc optional func setNoBreak(_ noBreak: Bool) // whether line breaks are allowed
    @objc optional func setOpenTypePosition(_ OpenTypePosition: IllustratorCOTP) // the OpenType baseline position
    @objc optional func setOrdinals(_ ordinals: Bool) // whether the OpenType ordinals should be used
    @objc optional func setOrnaments(_ ornaments: Bool) // whether the OpenType ornaments should be used
    @objc optional func setOverprintFill(_ overprintFill: Bool) // whether to overprint the fill of the text
    @objc optional func setOverprintStroke(_ overprintStroke: Bool) // whether to overprint the stroke of the text
    @objc optional func setParagraphDirection(_ ParagraphDirection: IllustratorEPDT) // main writing direction attribute
    @objc optional func setProportionalMetrics(_ proportionalMetrics: Bool) // does the Japanese OpenType support proportional font?
    @objc optional func setRightIndent(_ rightIndent: Double) // right indent of margin expressed in points
    @objc optional func setRomanHanging(_ romanHanging: Bool) // is Roman hanging punctuation enabled?
    @objc optional func setRotation(_ rotation: Double) // the character rotation angle (in degrees)
    @objc optional func setSingleWordJustification(_ singleWordJustification: IllustratorEPRa) // single word justification
    @objc optional func setSize(_ size: Double) // font size in points
    @objc optional func setSpaceAfter(_ spaceAfter: Double) // spacing after paragraph in points
    @objc optional func setSpaceBefore(_ spaceBefore: Double) // spacing before paragraph in points
    @objc optional func setStrikeThrough(_ strikeThrough: Bool) // whether to draw a strike through line over the text
    @objc optional func setStrokeColor(_ strokeColor: IllustratorColorInfo!) // the color of the text stroke
    @objc optional func setStrokeWeight(_ strokeWeight: Double) // line width of stroke
    @objc optional func setStylisticAlternates(_ stylisticAlternates: Bool) // whether the OpenType stylistic alternates should be used
    @objc optional func setStylisticSets(_ stylisticSets: Int) // stylistic sets attribute
    @objc optional func setSwash(_ swash: Bool) // whether the OpenType swash should be used
    @objc optional func setTabStops(_ tabStops: [IllustratorTabStopInfo]!) // tab stop settings
    @objc optional func setTCYHorizontal(_ TCYHorizontal: Int) // the Tate-Chu-Yoko horizontal adjustment in points
    @objc optional func setTCYVertical(_ TCYVertical: Int) // the Tate-Chu-Yoko vertical adjustment in points
    @objc optional func setTextFont(_ textFont: Any!) // the text font
    @objc optional func setTitling(_ titling: Bool) // whether the OpenType titling alternates should be used
    @objc optional func setTracking(_ tracking: Int) // the tracking or range kerning amount in thousands of an em
    @objc optional func setTsume(_ Tsume: Double) // the percentage of space reduction around a Japanese character (100 = 100%)
    @objc optional func setUnderline(_ underline: Bool) // whether to underline the text
    @objc optional func setVerticalScale(_ verticalScale: Double) // character vertical scaling factor expressed as a percentage (100 = 100%)
    @objc optional func setWarichuCharactersAfterBreak(_ warichuCharactersAfterBreak: Int)
    @objc optional func setWarichuCharactersBeforeBreak(_ warichuCharactersBeforeBreak: Int)
    @objc optional func setWarichuEnabled(_ warichuEnabled: Bool) // whether WariChu is enabled
    @objc optional func setWarichuGap(_ warichuGap: Int) // the Wari-Chu line gap
    @objc optional func setWarichuJustification(_ warichuJustification: IllustratorEWCJ)
    @objc optional func setWarichuLines(_ warichuLines: Int) // the number of Wari-Chu (multiple text lines fit into a space meant for one) lines
    @objc optional func setWarichuScale(_ warichuScale: Double) // the Wari-Chu scale
}
extension SBObject: IllustratorParagraphStyle {}

// MARK: IllustratorStory
@objc public protocol IllustratorStory: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional func characters() -> SBElementArray
    @objc optional func insertionPoints() -> SBElementArray
    @objc optional func lines() -> SBElementArray
    @objc optional func paragraphs() -> SBElementArray
    @objc optional func textFrames() -> SBElementArray
    @objc optional func text() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var length: Int { get } // the number of characters in the story
    @objc optional var selection: [IllustratorText] { get } // the selected text (ranges) in the story
    @objc optional var textRange: IllustratorText { get } // the text range of the story
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
}
extension SBObject: IllustratorStory {}

// MARK: IllustratorText
@objc public protocol IllustratorText: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional func characterStyles() -> SBElementArray
    @objc optional func characters() -> SBElementArray
    @objc optional func insertionPoints() -> SBElementArray
    @objc optional func lines() -> SBElementArray
    @objc optional func paragraphStyles() -> SBElementArray
    @objc optional func paragraphs() -> SBElementArray
    @objc optional func text() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var characterOffset: Int { get } // offset of the first character of the range from the beginning of the story, in characters.
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var contents: String { get } // the text string
    @objc optional var end: Int { get } // end index of the text range
    @objc optional var kerning: Int { get } // controls the spacing between two characters (in milli-ems)
    @objc optional var length: Int { get } // length of text range ( minimum 0 )
    @objc optional var selection: [IllustratorText] { get } // the selected text (ranges) in the text range
    @objc optional var start: Int { get } // start index of the text range
    @objc optional var story: IllustratorStory { get } // the story of the text range
    @objc optional func translatePlaceholderText() -> String // translate the placeholder text to regular text. A method to enter unicode points in hex values.
    @objc optional func doScriptFrom(_ from: String!, dialogs: Bool) // Play an action from the Actions Palette
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setCharacterOffset(_ characterOffset: Int) // offset of the first character of the range from the beginning of the story, in characters.
    @objc optional func setContents(_ contents: String!) // the text string
    @objc optional func setEnd(_ end: Int) // end index of the text range
    @objc optional func setKerning(_ kerning: Int) // controls the spacing between two characters (in milli-ems)
    @objc optional func setLength(_ length: Int) // length of text range ( minimum 0 )
    @objc optional func setStart(_ start: Int) // start index of the text range
}
extension SBObject: IllustratorText {}

// MARK: IllustratorTextPath
@objc public protocol IllustratorTextPath: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional func pathPoints() -> SBElementArray
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var area: Double { get } // the area of this path in square points
    @objc optional var blendMode: IllustratorCBlM { get } // the mode used when compositing an object
    @objc optional var clipping: Bool { get } // should this be used as a clipping path?
    @objc optional var closed: Bool { get } // is this path closed?
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var editable: Bool { get } // can the text path be modified
    @objc optional var entirePath: [IllustratorPathPointInfo] { get } // all the path item's path points
    @objc optional var evenodd: Bool { get } // should the even-odd rule be used to determine insideness?
    @objc optional var fillColor: IllustratorColorInfo { get } // fill color
    @objc optional var fillOverprint: Bool { get } // will art beneath a filled object be overprinted?
    @objc optional var filled: Bool { get } // should the path be filled?
    @objc optional var guides: Bool { get } // is this path a guide object?
    @objc optional var height: Double { get } // the height of the text path ( 0.0 - 16348.0 )
    @objc optional var note: String { get } // Note assigned to the path
    @objc optional var opacity: Double { get } // the object's opacity (between 0.0 and 100.0) ( 0.0 - 100.0 )
    @objc optional var polarity: IllustratorEPVu { get } // the polarity the path
    @objc optional var position: [Any] { get } // the position of the top left corner of the text path
    @objc optional var resolution: Double { get } // The resolution of the path
    @objc optional var selectedPathPoints: [SBObject] { get } // all the selected points in the path
    @objc optional var strokeCap: IllustratorESTc { get } // type of line capping
    @objc optional var strokeColor: IllustratorColorInfo { get } // stroke color
    @objc optional var strokeDashOffset: Double { get } // the default distance into the dash pattern at which the pattern should be started
    @objc optional var strokeDashes: [NSNumber] { get } // dash lengths (set to {} for a solid line)
    @objc optional var strokeJoin: IllustratorESTj { get } // type of joints
    @objc optional var strokeMiterLimit: Double { get } // whether a join is mitered (pointed) or beveled (squared-off)
    @objc optional var strokeOverprint: Bool { get } // will art beneath a stroked object be overprinted?
    @objc optional var strokeWidth: Double { get } // width of stroke
    @objc optional var stroked: Bool { get } // should the path be stroked?
    @objc optional var width: Double { get } // the width of the text path ( 0.0 - 16348.0 )
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setBlendMode(_ blendMode: IllustratorCBlM) // the mode used when compositing an object
    @objc optional func setClipping(_ clipping: Bool) // should this be used as a clipping path?
    @objc optional func setClosed(_ closed: Bool) // is this path closed?
    @objc optional func setEntirePath(_ entirePath: [IllustratorPathPointInfo]!) // all the path item's path points
    @objc optional func setEvenodd(_ evenodd: Bool) // should the even-odd rule be used to determine insideness?
    @objc optional func setFillColor(_ fillColor: IllustratorColorInfo!) // fill color
    @objc optional func setFillOverprint(_ fillOverprint: Bool) // will art beneath a filled object be overprinted?
    @objc optional func setFilled(_ filled: Bool) // should the path be filled?
    @objc optional func setGuides(_ guides: Bool) // is this path a guide object?
    @objc optional func setHeight(_ height: Double) // the height of the text path ( 0.0 - 16348.0 )
    @objc optional func setNote(_ note: String!) // Note assigned to the path
    @objc optional func setOpacity(_ opacity: Double) // the object's opacity (between 0.0 and 100.0) ( 0.0 - 100.0 )
    @objc optional func setPolarity(_ polarity: IllustratorEPVu) // the polarity the path
    @objc optional func setPosition(_ position: [Any]!) // the position of the top left corner of the text path
    @objc optional func setResolution(_ resolution: Double) // The resolution of the path
    @objc optional func setStrokeCap(_ strokeCap: IllustratorESTc) // type of line capping
    @objc optional func setStrokeColor(_ strokeColor: IllustratorColorInfo!) // stroke color
    @objc optional func setStrokeDashOffset(_ strokeDashOffset: Double) // the default distance into the dash pattern at which the pattern should be started
    @objc optional func setStrokeDashes(_ strokeDashes: [NSNumber]!) // dash lengths (set to {} for a solid line)
    @objc optional func setStrokeJoin(_ strokeJoin: IllustratorESTj) // type of joints
    @objc optional func setStrokeMiterLimit(_ strokeMiterLimit: Double) // whether a join is mitered (pointed) or beveled (squared-off)
    @objc optional func setStrokeOverprint(_ strokeOverprint: Bool) // will art beneath a stroked object be overprinted?
    @objc optional func setStrokeWidth(_ strokeWidth: Double) // width of stroke
    @objc optional func setStroked(_ stroked: Bool) // should the path be stroked?
    @objc optional func setWidth(_ width: Double) // the width of the text path ( 0.0 - 16348.0 )
}
extension SBObject: IllustratorTextPath {}

// MARK: IllustratorWord
@objc public protocol IllustratorWord: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional func characterStyles() -> SBElementArray
    @objc optional func characters() -> SBElementArray
    @objc optional func insertionPoints() -> SBElementArray
    @objc optional func lines() -> SBElementArray
    @objc optional func paragraphStyles() -> SBElementArray
    @objc optional func paragraphs() -> SBElementArray
    @objc optional func text() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var OpenTypePosition: IllustratorCOTP { get } // the OpenType baseline position
    @objc optional var TCYHorizontal: Int { get } // the Tate-Chu-Yoko horizontal adjustment in points
    @objc optional var TCYVertical: Int { get } // the Tate-Chu-Yoko vertical adjustment in points
    @objc optional var Tsume: Double { get } // the percentage of space reduction around a Japanese character (100 = 100%)
    @objc optional var akiLeft: Double { get } // the em amount of left aki
    @objc optional var akiRight: Double { get } // the em amount of right aki amount
    @objc optional var alignment: IllustratorESRA { get } // the character alignment type
    @objc optional var alternateGlyphs: IllustratorEAGF { get } // the alternate glyphs form
    @objc optional var autoLeading: Bool { get } // whether to use automatic leading
    @objc optional var baselineDirection: IllustratorEBSD { get } // the Japanese text baseline direction
    @objc optional var baselinePosition: IllustratorEFBO { get } // the baseline position of text
    @objc optional var baselineShift: Double { get } // the amount of shift (in points) of the text baseline
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var capitalization: IllustratorEFCO { get } // the case of text
    @objc optional var characterOffset: Int { get } // offset of the first character of the range from the beginning of the story, in characters.
    @objc optional var connectionForms: Bool { get } // whether the OpenType connection forms should be used
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var contents: String { get } // the text string
    @objc optional var contextualLigature: Bool { get } // whether the contextual ligature should be used
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var diacXOffset: Double { get } // diacritics x offset attribute
    @objc optional var diacYOffset: Double { get } // diacritics y offset attribute
    @objc optional var diacriticsPositioning: IllustratorEDVP { get } // diacritics positioning attribute
    @objc optional var digitSet: IllustratorEDgS { get } // digit set attribute
    @objc optional var directionOverride: IllustratorEDOT { get } // direction override attribute
    @objc optional var discretionaryLigature: Bool { get } // whether the discretionary ligature should be used
    @objc optional var end: Int { get } // end index of the text range
    @objc optional var figureStyle: IllustratorCFST { get } // which figure style to use in OpenType font
    @objc optional var fillColor: IllustratorColorInfo { get } // the color of the text fill
    @objc optional var fractions: Bool { get } // whether the OpenType fractions should be used
    @objc optional var horizontalScale: Double { get } // character horizontal scaling factor expressed as a percentage (100 = 100%)
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var italics: Bool { get } // does the Japanese OpenType support italics?
    @objc optional var justificationAlternates: Bool { get } // justification alternates attribute
    @objc optional var kana: Bool { get } // does the Japanese OpenType support kana?
    @objc optional var kashidas: IllustratorEKas { get } // kashidas attribute
    @objc optional var kerning: Int { get } // controls the spacing between two characters (in milli-ems)
    @objc optional var kerningMethod: IllustratorEATK { get } // the automatic kerning method to use
    @objc optional var language: IllustratorELNG { get } // the language of text
    @objc optional var leading: Double { get } // the amount of space between two lines of text (in points)
    @objc optional var length: Int { get } // length of text range ( minimum 0 )
    @objc optional var ligature: Bool { get } // whether the ligature should be used
    @objc optional var noBreak: Bool { get } // whether line breaks are allowed
    @objc optional var ordinals: Bool { get } // whether the OpenType ordinals should be used
    @objc optional var ornaments: Bool { get } // whether the OpenType ornaments should be used
    @objc optional var overprintFill: Bool { get } // whether to overprint the fill of the text
    @objc optional var overprintStroke: Bool { get } // whether to overprint the stroke of the text
    @objc optional var proportionalMetrics: Bool { get } // does the Japanese OpenType support proportional font?
    @objc optional var rotation: Double { get } // the character rotation angle (in degrees)
    @objc optional var selection: [IllustratorText] { get } // the selected text (ranges) in the text range
    @objc optional var size: Double { get } // font size in points
    @objc optional var start: Int { get } // start index of the text range
    @objc optional var story: IllustratorStory { get } // the story of the text range
    @objc optional var strikeThrough: Bool { get } // whether to draw a strike through line over the text
    @objc optional var strokeColor: IllustratorColorInfo { get } // the color of the text stroke
    @objc optional var strokeWeight: Double { get } // line width of stroke
    @objc optional var stylisticAlternates: Bool { get } // whether the OpenType stylistic alternates should be used
    @objc optional var stylisticSets: Int { get } // stylistic sets attribute
    @objc optional var swash: Bool { get } // whether the OpenType swash should be used
    @objc optional var textFont: Any { get } // the text font
    @objc optional var titling: Bool { get } // whether the OpenType titling alternates should be used
    @objc optional var tracking: Int { get } // the tracking or range kerning amount in thousands of an em
    @objc optional var underline: Bool { get } // whether to underline the text
    @objc optional var verticalScale: Double { get } // character vertical scaling factor expressed as a percentage (100 = 100%)
    @objc optional var warichuCharactersAfterBreak: Int { get }
    @objc optional var warichuCharactersBeforeBreak: Int { get }
    @objc optional var warichuEnabled: Bool { get } // whether WariChu is enabled
    @objc optional var warichuGap: Int { get } // the Wari-Chu line gap
    @objc optional var warichuJustification: IllustratorEWCJ { get }
    @objc optional var warichuLines: Int { get } // the number of Wari-Chu (multiple text lines fit into a space meant for one) lines
    @objc optional var warichuScale: Double { get } // the Wari-Chu scale
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setOpenTypePosition(_ OpenTypePosition: IllustratorCOTP) // the OpenType baseline position
    @objc optional func setTCYHorizontal(_ TCYHorizontal: Int) // the Tate-Chu-Yoko horizontal adjustment in points
    @objc optional func setTCYVertical(_ TCYVertical: Int) // the Tate-Chu-Yoko vertical adjustment in points
    @objc optional func setTsume(_ Tsume: Double) // the percentage of space reduction around a Japanese character (100 = 100%)
    @objc optional func setAkiLeft(_ akiLeft: Double) // the em amount of left aki
    @objc optional func setAkiRight(_ akiRight: Double) // the em amount of right aki amount
    @objc optional func setAlignment(_ alignment: IllustratorESRA) // the character alignment type
    @objc optional func setAlternateGlyphs(_ alternateGlyphs: IllustratorEAGF) // the alternate glyphs form
    @objc optional func setAutoLeading(_ autoLeading: Bool) // whether to use automatic leading
    @objc optional func setBaselineDirection(_ baselineDirection: IllustratorEBSD) // the Japanese text baseline direction
    @objc optional func setBaselinePosition(_ baselinePosition: IllustratorEFBO) // the baseline position of text
    @objc optional func setBaselineShift(_ baselineShift: Double) // the amount of shift (in points) of the text baseline
    @objc optional func setCapitalization(_ capitalization: IllustratorEFCO) // the case of text
    @objc optional func setCharacterOffset(_ characterOffset: Int) // offset of the first character of the range from the beginning of the story, in characters.
    @objc optional func setConnectionForms(_ connectionForms: Bool) // whether the OpenType connection forms should be used
    @objc optional func setContents(_ contents: String!) // the text string
    @objc optional func setContextualLigature(_ contextualLigature: Bool) // whether the contextual ligature should be used
    @objc optional func setDiacXOffset(_ diacXOffset: Double) // diacritics x offset attribute
    @objc optional func setDiacYOffset(_ diacYOffset: Double) // diacritics y offset attribute
    @objc optional func setDiacriticsPositioning(_ diacriticsPositioning: IllustratorEDVP) // diacritics positioning attribute
    @objc optional func setDigitSet(_ digitSet: IllustratorEDgS) // digit set attribute
    @objc optional func setDirectionOverride(_ directionOverride: IllustratorEDOT) // direction override attribute
    @objc optional func setDiscretionaryLigature(_ discretionaryLigature: Bool) // whether the discretionary ligature should be used
    @objc optional func setEnd(_ end: Int) // end index of the text range
    @objc optional func setFigureStyle(_ figureStyle: IllustratorCFST) // which figure style to use in OpenType font
    @objc optional func setFillColor(_ fillColor: IllustratorColorInfo!) // the color of the text fill
    @objc optional func setFractions(_ fractions: Bool) // whether the OpenType fractions should be used
    @objc optional func setHorizontalScale(_ horizontalScale: Double) // character horizontal scaling factor expressed as a percentage (100 = 100%)
    @objc optional func setItalics(_ italics: Bool) // does the Japanese OpenType support italics?
    @objc optional func setJustificationAlternates(_ justificationAlternates: Bool) // justification alternates attribute
    @objc optional func setKana(_ kana: Bool) // does the Japanese OpenType support kana?
    @objc optional func setKashidas(_ kashidas: IllustratorEKas) // kashidas attribute
    @objc optional func setKerning(_ kerning: Int) // controls the spacing between two characters (in milli-ems)
    @objc optional func setKerningMethod(_ kerningMethod: IllustratorEATK) // the automatic kerning method to use
    @objc optional func setLanguage(_ language: IllustratorELNG) // the language of text
    @objc optional func setLeading(_ leading: Double) // the amount of space between two lines of text (in points)
    @objc optional func setLength(_ length: Int) // length of text range ( minimum 0 )
    @objc optional func setLigature(_ ligature: Bool) // whether the ligature should be used
    @objc optional func setNoBreak(_ noBreak: Bool) // whether line breaks are allowed
    @objc optional func setOrdinals(_ ordinals: Bool) // whether the OpenType ordinals should be used
    @objc optional func setOrnaments(_ ornaments: Bool) // whether the OpenType ornaments should be used
    @objc optional func setOverprintFill(_ overprintFill: Bool) // whether to overprint the fill of the text
    @objc optional func setOverprintStroke(_ overprintStroke: Bool) // whether to overprint the stroke of the text
    @objc optional func setProportionalMetrics(_ proportionalMetrics: Bool) // does the Japanese OpenType support proportional font?
    @objc optional func setRotation(_ rotation: Double) // the character rotation angle (in degrees)
    @objc optional func setSize(_ size: Double) // font size in points
    @objc optional func setStart(_ start: Int) // start index of the text range
    @objc optional func setStrikeThrough(_ strikeThrough: Bool) // whether to draw a strike through line over the text
    @objc optional func setStrokeColor(_ strokeColor: IllustratorColorInfo!) // the color of the text stroke
    @objc optional func setStrokeWeight(_ strokeWeight: Double) // line width of stroke
    @objc optional func setStylisticAlternates(_ stylisticAlternates: Bool) // whether the OpenType stylistic alternates should be used
    @objc optional func setStylisticSets(_ stylisticSets: Int) // stylistic sets attribute
    @objc optional func setSwash(_ swash: Bool) // whether the OpenType swash should be used
    @objc optional func setTextFont(_ textFont: Any!) // the text font
    @objc optional func setTitling(_ titling: Bool) // whether the OpenType titling alternates should be used
    @objc optional func setTracking(_ tracking: Int) // the tracking or range kerning amount in thousands of an em
    @objc optional func setUnderline(_ underline: Bool) // whether to underline the text
    @objc optional func setVerticalScale(_ verticalScale: Double) // character vertical scaling factor expressed as a percentage (100 = 100%)
    @objc optional func setWarichuCharactersAfterBreak(_ warichuCharactersAfterBreak: Int)
    @objc optional func setWarichuCharactersBeforeBreak(_ warichuCharactersBeforeBreak: Int)
    @objc optional func setWarichuEnabled(_ warichuEnabled: Bool) // whether WariChu is enabled
    @objc optional func setWarichuGap(_ warichuGap: Int) // the Wari-Chu line gap
    @objc optional func setWarichuJustification(_ warichuJustification: IllustratorEWCJ)
    @objc optional func setWarichuLines(_ warichuLines: Int) // the number of Wari-Chu (multiple text lines fit into a space meant for one) lines
    @objc optional func setWarichuScale(_ warichuScale: Double) // the Wari-Chu scale
}
extension SBObject: IllustratorWord {}

// MARK: IllustratorMatrix
@objc public protocol IllustratorMatrix: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var mvalue_a: Double { get }
    @objc optional var mvalue_b: Double { get }
    @objc optional var mvalue_c: Double { get }
    @objc optional var mvalue_d: Double { get }
    @objc optional var mvalue_tx: Double { get }
    @objc optional var mvalue_ty: Double { get }
    @objc optional func concatenateMatrixWith(_ with: IllustratorMatrix!) -> IllustratorMatrix // Concatenate two transformation matrices
    @objc optional func concatenateRotationMatrixAngle(_ angle: Double) -> IllustratorMatrix // Concatenate a rotation matrix to a transformation matrix
    @objc optional func concatenateScaleMatrixHorizontalScale(_ horizontalScale: Double, verticalScale: Double) -> IllustratorMatrix // Concatenate a scale matrix to a transformation matrix
    @objc optional func concatenateTranslationMatrixDeltaX(_ deltaX: Double, deltaY: Double) -> IllustratorMatrix // Concatenate a translation to a transformation matrix
    @objc optional func equalMatricesWith(_ with: IllustratorMatrix!) -> Bool // Compares two matrices for equality
    @objc optional func invertMatrix() -> IllustratorMatrix // Invert a matrix
    @objc optional func singularMatrix() -> Bool // Tests if a matrix is singular (cannot be inverted)
    @objc optional func setMvalue_a(_ mvalue_a: Double)
    @objc optional func setMvalue_b(_ mvalue_b: Double)
    @objc optional func setMvalue_c(_ mvalue_c: Double)
    @objc optional func setMvalue_d(_ mvalue_d: Double)
    @objc optional func setMvalue_tx(_ mvalue_tx: Double)
    @objc optional func setMvalue_ty(_ mvalue_ty: Double)
}
extension SBObject: IllustratorMatrix {}

// MARK: IllustratorEllipse
@objc public protocol IllustratorEllipse: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bounds: [Any] { get } // the ellipse's bounds
    @objc optional var reversed: Bool { get } // is the ellipse path reversed? ( default: false )
    @objc optional var inscribed: Bool { get } // is the ellipse path inscribed? ( default: true )
    @objc optional func setBounds(_ bounds: [Any]!) // the ellipse's bounds
    @objc optional func setReversed(_ reversed: Bool) // is the ellipse path reversed? ( default: false )
    @objc optional func setInscribed(_ inscribed: Bool) // is the ellipse path inscribed? ( default: true )
}
extension SBObject: IllustratorEllipse {}

// MARK: IllustratorRectangle
@objc public protocol IllustratorRectangle: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bounds: [Any] { get } // the rectangle bounds
    @objc optional var reversed: Bool { get } // is the rectangle path reversed? ( default: false )
    @objc optional func setBounds(_ bounds: [Any]!) // the rectangle bounds
    @objc optional func setReversed(_ reversed: Bool) // is the rectangle path reversed? ( default: false )
}
extension SBObject: IllustratorRectangle {}

// MARK: IllustratorRoundedRectangle
@objc public protocol IllustratorRoundedRectangle: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bounds: [Any] { get } // the rectangle bounds
    @objc optional var horizontalRadius: Double { get } // horizontal corner radius ( default: 15.0 )
    @objc optional var verticalRadius: Double { get } // vertical corner radius ( default: 20.0 )
    @objc optional var reversed: Bool { get } // is the rectangle path reversed? ( default: false )
    @objc optional func setBounds(_ bounds: [Any]!) // the rectangle bounds
    @objc optional func setHorizontalRadius(_ horizontalRadius: Double) // horizontal corner radius ( default: 15.0 )
    @objc optional func setVerticalRadius(_ verticalRadius: Double) // vertical corner radius ( default: 20.0 )
    @objc optional func setReversed(_ reversed: Bool) // is the rectangle path reversed? ( default: false )
}
extension SBObject: IllustratorRoundedRectangle {}

// MARK: IllustratorPolygon
@objc public protocol IllustratorPolygon: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var centerPoint: [Any] { get } // the center point of the polygon
    @objc optional var radius: Double { get } // the radius of the polygon points ( default: 50.0 )
    @objc optional var sides: Int { get } // the number of sides on the polygon ( default: 8 )
    @objc optional var reversed: Bool { get } // is the polygon path reversed? ( default: false )
    @objc optional func setCenterPoint(_ centerPoint: [Any]!) // the center point of the polygon
    @objc optional func setRadius(_ radius: Double) // the radius of the polygon points ( default: 50.0 )
    @objc optional func setSides(_ sides: Int) // the number of sides on the polygon ( default: 8 )
    @objc optional func setReversed(_ reversed: Bool) // is the polygon path reversed? ( default: false )
}
extension SBObject: IllustratorPolygon {}

// MARK: IllustratorStar
@objc public protocol IllustratorStar: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var centerPoint: [Any] { get } // the center point of the rectangle
    @objc optional var radius: Double { get } // the outside radius of the star points ( default: 50.0 )
    @objc optional var innerRadius: Double { get } // the inside radius of the star points ( default: 20.0 )
    @objc optional var pointCount: Int { get } // the number of points on the star ( default: 5 )
    @objc optional var reversed: Bool { get } // is the star path reversed? ( default: false )
    @objc optional func setCenterPoint(_ centerPoint: [Any]!) // the center point of the rectangle
    @objc optional func setRadius(_ radius: Double) // the outside radius of the star points ( default: 50.0 )
    @objc optional func setInnerRadius(_ innerRadius: Double) // the inside radius of the star points ( default: 20.0 )
    @objc optional func setPointCount(_ pointCount: Int) // the number of points on the star ( default: 5 )
    @objc optional func setReversed(_ reversed: Bool) // is the star path reversed? ( default: false )
}
extension SBObject: IllustratorStar {}

// MARK: IllustratorAutoCADOptions
@objc public protocol IllustratorAutoCADOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var centerArtwork: Bool { get } // to center the created artwork on the artboard (default: true)
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var globalScaleOptions: IllustratorEGSO { get } // how to scale the AutoCAD drawing on import (default: Fit Artboard)
    @objc optional var globalScalePercent: Double { get } // percentage scaling to apply globally on the AutoCAD drawing (default: 1.0)
    @objc optional var mergeLayers: Bool { get } // to merge the layers of the artwork (default: false)
    @objc optional var scaleLineweights: Bool { get } // to scale lineweights by the same amount as rest of the drawing (default: false)
    @objc optional var scaleRatio: Double { get } // ratio by which to scale while mapping the units (default: 1.0)
    @objc optional var scaleUnit: IllustratorEASU { get } // units to which to map (default: Millimeters)
    @objc optional var selectedLayoutName: String { get } // name of layout in the AutoCAD drawing to import
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setCenterArtwork(_ centerArtwork: Bool) // to center the created artwork on the artboard (default: true)
    @objc optional func setGlobalScaleOptions(_ globalScaleOptions: IllustratorEGSO) // how to scale the AutoCAD drawing on import (default: Fit Artboard)
    @objc optional func setGlobalScalePercent(_ globalScalePercent: Double) // percentage scaling to apply globally on the AutoCAD drawing (default: 1.0)
    @objc optional func setMergeLayers(_ mergeLayers: Bool) // to merge the layers of the artwork (default: false)
    @objc optional func setScaleLineweights(_ scaleLineweights: Bool) // to scale lineweights by the same amount as rest of the drawing (default: false)
    @objc optional func setScaleRatio(_ scaleRatio: Double) // ratio by which to scale while mapping the units (default: 1.0)
    @objc optional func setScaleUnit(_ scaleUnit: IllustratorEASU) // units to which to map (default: Millimeters)
    @objc optional func setSelectedLayoutName(_ selectedLayoutName: String!) // name of layout in the AutoCAD drawing to import
}
extension SBObject: IllustratorAutoCADOptions {}

// MARK: IllustratorOpenOptions
@objc public protocol IllustratorOpenOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var addToRecentFiles: Bool { get } // Add this file to the list of recently opened files. ( default: true )
    @objc optional var `as`: IllustratorELib { get } // open the file as library ( default: Illustrator artwork )
    @objc optional var convertCropAreaToArtboard: Bool { get } // Convert crop area to Artboard when opening legacy document (pre-Illustrator CS4) in CS4 or later. If false then crop areas are discarded. ( default: true )
    @objc optional var convertTilesToArtboard: Bool { get } // Convert print tiles to Artboard when opening legacy document (pre-Illustrator CS4) in CS4 or later. ( default: false )
    @objc optional var createArtboardWithArtworkBoundingBox: Bool { get } // Create Artboard with dimentions of artwork bounding box when opening legacy document (pre-Illustrator CS4) in CS4 or later. ( default: false )
    @objc optional var preserveLegacyArtboard: Bool { get } // Preserve Legacy Artboard (pre-Illustrator CS4) when opening in CS4 or later. ( default: true )
    @objc optional var updateLegacyGradientMesh: Bool { get } // choose to preserve the spot colors in the gradient mesh objects for legacy documents (pre-Illustrator CS3) ( default: true )
    @objc optional var updateLegacyText: Bool { get } // choose to update all text objects for documents saved with legacy texts (pre-Illustrator 11) ( default: false )
    @objc optional func setAddToRecentFiles(_ addToRecentFiles: Bool) // Add this file to the list of recently opened files. ( default: true )
    @objc optional func setAs(_ as: IllustratorELib) // open the file as library ( default: Illustrator artwork )
    @objc optional func setConvertCropAreaToArtboard(_ convertCropAreaToArtboard: Bool) // Convert crop area to Artboard when opening legacy document (pre-Illustrator CS4) in CS4 or later. If false then crop areas are discarded. ( default: true )
    @objc optional func setConvertTilesToArtboard(_ convertTilesToArtboard: Bool) // Convert print tiles to Artboard when opening legacy document (pre-Illustrator CS4) in CS4 or later. ( default: false )
    @objc optional func setCreateArtboardWithArtworkBoundingBox(_ createArtboardWithArtworkBoundingBox: Bool) // Create Artboard with dimentions of artwork bounding box when opening legacy document (pre-Illustrator CS4) in CS4 or later. ( default: false )
    @objc optional func setPreserveLegacyArtboard(_ preserveLegacyArtboard: Bool) // Preserve Legacy Artboard (pre-Illustrator CS4) when opening in CS4 or later. ( default: true )
    @objc optional func setUpdateLegacyGradientMesh(_ updateLegacyGradientMesh: Bool) // choose to preserve the spot colors in the gradient mesh objects for legacy documents (pre-Illustrator CS3) ( default: true )
    @objc optional func setUpdateLegacyText(_ updateLegacyText: Bool) // choose to update all text objects for documents saved with legacy texts (pre-Illustrator 11) ( default: false )
}
extension SBObject: IllustratorOpenOptions {}

// MARK: IllustratorPDFOptions
@objc public protocol IllustratorPDFOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var page: Int { get } // what page should be used when opening a multipage document (default: 1)
    @objc optional var PDFCropBounds: IllustratorEPBX { get } // what box should be used when placing a multipage document (default: PDF media box)
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setPage(_ page: Int) // what page should be used when opening a multipage document (default: 1)
    @objc optional func setPDFCropBounds(_ PDFCropBounds: IllustratorEPBX) // what box should be used when placing a multipage document (default: PDF media box)
}
extension SBObject: IllustratorPDFOptions {}

// MARK: IllustratorPhotoshopOptions
@objc public protocol IllustratorPhotoshopOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var layerComp: String { get } // Should use the specified LayerComp
    @objc optional var preserveHiddenLayers: Bool { get } // should hidden layers be preserved when the document is converted (default: false)
    @objc optional var preserveImageMaps: Bool { get } // should image maps be preserved when the document is converted (default: true)
    @objc optional var preserveLayers: Bool { get } // should layers be Preserve when the document is converted (default: true)
    @objc optional var preserveSlices: Bool { get } // should slices be preserved when the document is converted (default: true)
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setLayerComp(_ layerComp: String!) // Should use the specified LayerComp
    @objc optional func setPreserveHiddenLayers(_ preserveHiddenLayers: Bool) // should hidden layers be preserved when the document is converted (default: false)
    @objc optional func setPreserveImageMaps(_ preserveImageMaps: Bool) // should image maps be preserved when the document is converted (default: true)
    @objc optional func setPreserveLayers(_ preserveLayers: Bool) // should layers be Preserve when the document is converted (default: true)
    @objc optional func setPreserveSlices(_ preserveSlices: Bool) // should slices be preserved when the document is converted (default: true)
}
extension SBObject: IllustratorPhotoshopOptions {}

// MARK: IllustratorEPSSaveOptions
@objc public protocol IllustratorEPSSaveOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var artboardRange: String { get } // If SaveMultipleArtboards is true,this will be considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
    @objc optional var CMYKPostScript: Bool { get } // use CMYK PostScript ( default: true )
    @objc optional var compatibility: IllustratorEDCc { get } // what Illustrator file format version to create ( default: Illustrator 17 )
    @objc optional var compatibleGradientPrinting: Bool { get } // create a raster item of the gradient or gradient mesh so that PostScript Level 2 printers can print the object ( default: false )
    @objc optional var embedAllFonts: Bool { get } // embed all fonts used by the document in the saved file (version 7 or later) ( default: false )
    @objc optional var embedLinkedFiles: Bool { get } // are linked image files to be included in the saved document ( default: false )
    @objc optional var flattenOutput: IllustratorEOFl { get } // how should transparency be flattened for older file format versions (pre-version 9) ( default: preserve appearance )
    @objc optional var includeDocumentThumbnails: Bool { get } // include thumbnail image of the EPS artwork ( default: true )
    @objc optional var overprint: IllustratorCPoP { get } // ( default: preserve )
    @objc optional var PostScript: IllustratorEPSt { get } // PostScript level to use (level 1 valid for file format version 8 or older) ( default: level 2 )
    @objc optional var preview: IllustratorEEPV { get } // EPS preview format
    @objc optional var saveMultipleArtboards: Bool { get } // All the artboards or range of the artboards will be saved ( default: false )
    @objc optional func setArtboardRange(_ artboardRange: String!) // If SaveMultipleArtboards is true,this will be considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
    @objc optional func setCMYKPostScript(_ CMYKPostScript: Bool) // use CMYK PostScript ( default: true )
    @objc optional func setCompatibility(_ compatibility: IllustratorEDCc) // what Illustrator file format version to create ( default: Illustrator 17 )
    @objc optional func setCompatibleGradientPrinting(_ compatibleGradientPrinting: Bool) // create a raster item of the gradient or gradient mesh so that PostScript Level 2 printers can print the object ( default: false )
    @objc optional func setEmbedAllFonts(_ embedAllFonts: Bool) // embed all fonts used by the document in the saved file (version 7 or later) ( default: false )
    @objc optional func setEmbedLinkedFiles(_ embedLinkedFiles: Bool) // are linked image files to be included in the saved document ( default: false )
    @objc optional func setFlattenOutput(_ flattenOutput: IllustratorEOFl) // how should transparency be flattened for older file format versions (pre-version 9) ( default: preserve appearance )
    @objc optional func setIncludeDocumentThumbnails(_ includeDocumentThumbnails: Bool) // include thumbnail image of the EPS artwork ( default: true )
    @objc optional func setOverprint(_ overprint: IllustratorCPoP) // ( default: preserve )
    @objc optional func setPostScript(_ PostScript: IllustratorEPSt) // PostScript level to use (level 1 valid for file format version 8 or older) ( default: level 2 )
    @objc optional func setPreview(_ preview: IllustratorEEPV) // EPS preview format
    @objc optional func setSaveMultipleArtboards(_ saveMultipleArtboards: Bool) // All the artboards or range of the artboards will be saved ( default: false )
}
extension SBObject: IllustratorEPSSaveOptions {}

// MARK: IllustratorFXGSaveOptions
@objc public protocol IllustratorFXGSaveOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var artboardRange: String { get } // If SaveMultipleArtboards is true,this will be considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
    @objc optional var blendsPolicy: IllustratorEFBp { get } // the policy used by FXG to expand blends ( default: autoConvert blends )
    @objc optional var downsampleLinkedImages: Bool { get } // choose to downsample the linked images(72ppi) ( default: false )
    @objc optional var filtersPolicy: IllustratorEFFp { get } // the policy used by FXG to preserve filters ( default: keep filters editable )
    @objc optional var fxgVersion: IllustratorEFxV { get } // the version of the FXG file format to create ( default: version 2.0 )
    @objc optional var gradientsPolicy: IllustratorEFGp { get } // the policy used by FXG to preserve gradients ( default: autoConvert gradients )
    @objc optional var includeMetadata: Bool { get } // choose to include metadata (XMP) ( default: false )
    @objc optional var includeUnusedSymbols: Bool { get } // choose to include unused symbols ( default: false )
    @objc optional var preserveEditingCapabilities: Bool { get } // choose to preserve the editing capabilities of FXG ( default: true )
    @objc optional var saveMultipleArtboards: Bool { get } // All the artboards or range of the artboards will be saved ( default: false )
    @objc optional var textPolicy: IllustratorEFTp { get } // the policy used by FXG to preserve text ( default: autoConvert text )
    @objc optional func setArtboardRange(_ artboardRange: String!) // If SaveMultipleArtboards is true,this will be considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
    @objc optional func setBlendsPolicy(_ blendsPolicy: IllustratorEFBp) // the policy used by FXG to expand blends ( default: autoConvert blends )
    @objc optional func setDownsampleLinkedImages(_ downsampleLinkedImages: Bool) // choose to downsample the linked images(72ppi) ( default: false )
    @objc optional func setFiltersPolicy(_ filtersPolicy: IllustratorEFFp) // the policy used by FXG to preserve filters ( default: keep filters editable )
    @objc optional func setFxgVersion(_ fxgVersion: IllustratorEFxV) // the version of the FXG file format to create ( default: version 2.0 )
    @objc optional func setGradientsPolicy(_ gradientsPolicy: IllustratorEFGp) // the policy used by FXG to preserve gradients ( default: autoConvert gradients )
    @objc optional func setIncludeMetadata(_ includeMetadata: Bool) // choose to include metadata (XMP) ( default: false )
    @objc optional func setIncludeUnusedSymbols(_ includeUnusedSymbols: Bool) // choose to include unused symbols ( default: false )
    @objc optional func setPreserveEditingCapabilities(_ preserveEditingCapabilities: Bool) // choose to preserve the editing capabilities of FXG ( default: true )
    @objc optional func setSaveMultipleArtboards(_ saveMultipleArtboards: Bool) // All the artboards or range of the artboards will be saved ( default: false )
    @objc optional func setTextPolicy(_ textPolicy: IllustratorEFTp) // the policy used by FXG to preserve text ( default: autoConvert text )
}
extension SBObject: IllustratorFXGSaveOptions {}

// MARK: IllustratorIllustratorSaveOptions
@objc public protocol IllustratorIllustratorSaveOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var artboardRange: String { get } // If SaveMultipleArtboards is true ,this will be considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
    @objc optional var compatibility: IllustratorEDCc { get } // what Illustrator file format version to create ( default: Illustrator 17 )
    @objc optional var compressed: Bool { get } // should the saved file be compressed (version 10 or later) ( default: true )
    @objc optional var embedICCProfile: Bool { get } // embed the document's ICC profile in the saved file (version 9 or later) ( default: false )
    @objc optional var embedLinkedFiles: Bool { get } // are linked image files to be included in the saved document (versions 7 or later) ( default: false )
    @objc optional var flattenOutput: IllustratorEOFl { get } // how should transparency be flattened for older file format versions (pre-version 9) ( default: preserve appearance )
    @objc optional var fontSubsetThreshold: Double { get } // include a subset of fonts when less than this percentage of characters are used (version 9 or later) ( 0.0 - 100.0; default: 100.0 )
    @objc optional var PDFCompatible: Bool { get } // save as a PDF compatible file (version 10 or later) ( default: true )
    @objc optional var saveMultipleArtboards: Bool { get } // All the artboards or range of the artboards will be saved ( default: false )
    @objc optional func setArtboardRange(_ artboardRange: String!) // If SaveMultipleArtboards is true ,this will be considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
    @objc optional func setCompatibility(_ compatibility: IllustratorEDCc) // what Illustrator file format version to create ( default: Illustrator 17 )
    @objc optional func setCompressed(_ compressed: Bool) // should the saved file be compressed (version 10 or later) ( default: true )
    @objc optional func setEmbedICCProfile(_ embedICCProfile: Bool) // embed the document's ICC profile in the saved file (version 9 or later) ( default: false )
    @objc optional func setEmbedLinkedFiles(_ embedLinkedFiles: Bool) // are linked image files to be included in the saved document (versions 7 or later) ( default: false )
    @objc optional func setFlattenOutput(_ flattenOutput: IllustratorEOFl) // how should transparency be flattened for older file format versions (pre-version 9) ( default: preserve appearance )
    @objc optional func setFontSubsetThreshold(_ fontSubsetThreshold: Double) // include a subset of fonts when less than this percentage of characters are used (version 9 or later) ( 0.0 - 100.0; default: 100.0 )
    @objc optional func setPDFCompatible(_ PDFCompatible: Bool) // save as a PDF compatible file (version 10 or later) ( default: true )
    @objc optional func setSaveMultipleArtboards(_ saveMultipleArtboards: Bool) // All the artboards or range of the artboards will be saved ( default: false )
}
extension SBObject: IllustratorIllustratorSaveOptions {}

// MARK: IllustratorPDFSaveOptions
@objc public protocol IllustratorPDFSaveOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var acrobatLayers: Bool { get } // create acrobat layers from top-level layers - acrobat 6 only option ( default: false )
    @objc optional var allowPrinting: IllustratorCPpA { get } // PDF security printing permission ( default: pdf 128 print high res )
    @objc optional var artboardRange: String { get } // Considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
    @objc optional var bleedLink: Bool { get } // link 4 bleed values ( default: true )
    @objc optional var bleedOffset: [Any] { get } // the bleed offset rect
    @objc optional var changesAllowed: IllustratorCPcA { get } // PDF security changes allowed ( default: pdf 128 any changes )
    @objc optional var colorBars: Bool { get } // draw color bars ( default: false )
    @objc optional var colorCompression: IllustratorCCcT { get } // how should color bitmap images be compressed ( default: none )
    @objc optional var colorConversionId: IllustratorEPcC { get } // PDF color conversion policy. Three choices are available: (1)No Color Conversion (2) Repurpose (3) Convert to Destination ( default: none )
    @objc optional var colorDestinationId: IllustratorEDcD { get } // When NoColorConversion is specified for Color Conversion, NoColorDestination is set ( default: none )
    @objc optional var colorDownsampling: Double { get } // if zero, no downsampling, otherwise, the resolution to downsample color bitmap images to ( default: 150.0 )
    @objc optional var colorDownsamplingThreshold: Double { get } // downsample if the image's resolution is above this value ( default: 225.0 )
    @objc optional var colorProfileId: IllustratorEDpC { get } // If CMS is off, Don't Include Profiles is set ( default: none )
    @objc optional var colorResample: IllustratorCRsT { get } // how should color bitmap images be resampled ( default: nodownsample )
    @objc optional var colorTileSize: Int { get } // tile size when compressing with JPEG2000 ( default: 256 )
    @objc optional var compatibility: IllustratorEPDc { get } // the version of the Acrobat file format to create ( default: Acrobat 5 )
    @objc optional var compressArt: Bool { get } // should line art and text be compressed? ( default: true )
    @objc optional var documentPassword: String { get } // a password string to open the document ( default:  )
    @objc optional var enableAccess: Bool { get } // enable accessing 128-bit ( default: true )
    @objc optional var enableCopy: Bool { get } // enable copying of text 128-bit ( default: true )
    @objc optional var enableCopyAndAccess: Bool { get } // enable copying and accessing 40-bit ( default: true )
    @objc optional var enablePlaintext: Bool { get } // enable plaintext metadata 128-bit - available only for acrobat 6 ( default: false )
    @objc optional var flattenerPreset: String { get } // the transparency flattener preset name
    @objc optional var flattenerSettings: IllustratorFlatteningOptions { get } // the printing flattener options
    @objc optional var fontSubsetThreshold: Double { get } // include a subset of fonts when less than this percentage of characters are used ( 0.0 - 100.0; default: 100.0 )
    @objc optional var generateThumbnails: Bool { get } // generate thumbnails for the saved document ( default: true )
    @objc optional var grayscaleCompression: IllustratorCCcT { get } // how should grayscale bitmap images be compressed ( default: none )
    @objc optional var grayscaleDownsampling: Double { get } // if zero, no downsampling, otherwise, the resolution to downsample grayscale images to ( default: 150.0 )
    @objc optional var grayscaleDownsamplingThreshold: Double { get } // downsample if the image's resolution is above this value ( default: 225.0 )
    @objc optional var grayscaleResample: IllustratorCRsT { get } // how should grayscale bitmap images be resampled ( default: nodownsample )
    @objc optional var grayscaleTileSize: Int { get } // tile size when compressing with JPEG2000 ( default: 256 )
    @objc optional var monochromeCompression: IllustratorCMcQ { get } // how should monochrome bitmap images be compressed ( default: none )
    @objc optional var monochromeDownsampling: Double { get } // If zero, no downsampling, otherwise, the resolution to downsample images to ( default: 300.0 )
    @objc optional var monochromeDownsamplingThreshold: Double { get } // downsample if the image's resolution is above this value ( default: 450.0 )
    @objc optional var monochromeResample: IllustratorCRsT { get } // how should monochrome bitmap images be resampled ( default: nodownsample )
    @objc optional var offset: Double { get } // custom offset (in points) for using the custom paper ( default: 0.0 )
    @objc optional var optimization: Bool { get } // should the PDF document be optimized for fast web viewing ( default: false )
    @objc optional var outputCondition: String { get } // This is an optional comment which, if present, is added to the PDF file and describes the intended printing condition ( default:  )
    @objc optional var outputConditionId: String { get } // If selected for Output Intent Profile Name, you can set the name of a registered printing condition ( default:  )
    @objc optional var outputIntentProfile: String { get } // When CMS is on, the output intent profile is the same profile selected for Destination in the Color group box ( default:  )
    @objc optional var pageInfo: Bool { get } // draw page information ( default: false )
    @objc optional var pageMarksStyle: IllustratorEPMS { get } // the page marks style ( default: Roman )
    @objc optional var PDFPreset: String { get } // The max string length is 255 bytes. Name of PDF preset to use.
    @objc optional var pdfXstandard: IllustratorEPdX { get } // This control includes the None option for when the user is not complying with any PDF standard ( default: PDFX None )
    @objc optional var pdfXstandardDescripton: String { get } // This displays the description from the selected preset
    @objc optional var permissionPassword: String { get } // a password string to restrict editing security settings ( default:  )
    @objc optional var preserveEditability: Bool { get } // preserve Illustrator editing capabilities when saving the document ( default: true )
    @objc optional var printerResolution: Double { get } // flattening printer resolution ( default: 800.0 )
    @objc optional var registrationMarks: Bool { get } // draw registration marks ( default: false )
    @objc optional var registryName: String { get } // URL to the site where the specified output condition is registered. No validation is performed on the URL ( default:  )
    @objc optional var requireDocPassword: Bool { get } // require a password to open the document ( default: false )
    @objc optional var requirePermPassword: Bool { get } // use a password to restrict editing security settings ( default: false )
    @objc optional var trapped: Bool { get } // This indicates if manual trapping has been prepared in the document ( default: false )
    @objc optional var trimMarkWeight: IllustratorCPtW { get } // trim mark weight ( default: trimmarkweight0125 )
    @objc optional var trimMarks: Bool { get } // draw trim marks ( default: false )
    @objc optional var viewPdf: Bool { get } // view PDF after saving ( default: false )
    @objc optional func setAcrobatLayers(_ acrobatLayers: Bool) // create acrobat layers from top-level layers - acrobat 6 only option ( default: false )
    @objc optional func setAllowPrinting(_ allowPrinting: IllustratorCPpA) // PDF security printing permission ( default: pdf 128 print high res )
    @objc optional func setArtboardRange(_ artboardRange: String!) // Considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
    @objc optional func setBleedLink(_ bleedLink: Bool) // link 4 bleed values ( default: true )
    @objc optional func setBleedOffset(_ bleedOffset: [Any]!) // the bleed offset rect
    @objc optional func setChangesAllowed(_ changesAllowed: IllustratorCPcA) // PDF security changes allowed ( default: pdf 128 any changes )
    @objc optional func setColorBars(_ colorBars: Bool) // draw color bars ( default: false )
    @objc optional func setColorCompression(_ colorCompression: IllustratorCCcT) // how should color bitmap images be compressed ( default: none )
    @objc optional func setColorConversionId(_ colorConversionId: IllustratorEPcC) // PDF color conversion policy. Three choices are available: (1)No Color Conversion (2) Repurpose (3) Convert to Destination ( default: none )
    @objc optional func setColorDestinationId(_ colorDestinationId: IllustratorEDcD) // When NoColorConversion is specified for Color Conversion, NoColorDestination is set ( default: none )
    @objc optional func setColorDownsampling(_ colorDownsampling: Double) // if zero, no downsampling, otherwise, the resolution to downsample color bitmap images to ( default: 150.0 )
    @objc optional func setColorDownsamplingThreshold(_ colorDownsamplingThreshold: Double) // downsample if the image's resolution is above this value ( default: 225.0 )
    @objc optional func setColorProfileId(_ colorProfileId: IllustratorEDpC) // If CMS is off, Don't Include Profiles is set ( default: none )
    @objc optional func setColorResample(_ colorResample: IllustratorCRsT) // how should color bitmap images be resampled ( default: nodownsample )
    @objc optional func setColorTileSize(_ colorTileSize: Int) // tile size when compressing with JPEG2000 ( default: 256 )
    @objc optional func setCompatibility(_ compatibility: IllustratorEPDc) // the version of the Acrobat file format to create ( default: Acrobat 5 )
    @objc optional func setCompressArt(_ compressArt: Bool) // should line art and text be compressed? ( default: true )
    @objc optional func setDocumentPassword(_ documentPassword: String!) // a password string to open the document ( default:  )
    @objc optional func setEnableAccess(_ enableAccess: Bool) // enable accessing 128-bit ( default: true )
    @objc optional func setEnableCopy(_ enableCopy: Bool) // enable copying of text 128-bit ( default: true )
    @objc optional func setEnableCopyAndAccess(_ enableCopyAndAccess: Bool) // enable copying and accessing 40-bit ( default: true )
    @objc optional func setEnablePlaintext(_ enablePlaintext: Bool) // enable plaintext metadata 128-bit - available only for acrobat 6 ( default: false )
    @objc optional func setFlattenerPreset(_ flattenerPreset: String!) // the transparency flattener preset name
    @objc optional func setFlattenerSettings(_ flattenerSettings: IllustratorFlatteningOptions!) // the printing flattener options
    @objc optional func setFontSubsetThreshold(_ fontSubsetThreshold: Double) // include a subset of fonts when less than this percentage of characters are used ( 0.0 - 100.0; default: 100.0 )
    @objc optional func setGenerateThumbnails(_ generateThumbnails: Bool) // generate thumbnails for the saved document ( default: true )
    @objc optional func setGrayscaleCompression(_ grayscaleCompression: IllustratorCCcT) // how should grayscale bitmap images be compressed ( default: none )
    @objc optional func setGrayscaleDownsampling(_ grayscaleDownsampling: Double) // if zero, no downsampling, otherwise, the resolution to downsample grayscale images to ( default: 150.0 )
    @objc optional func setGrayscaleDownsamplingThreshold(_ grayscaleDownsamplingThreshold: Double) // downsample if the image's resolution is above this value ( default: 225.0 )
    @objc optional func setGrayscaleResample(_ grayscaleResample: IllustratorCRsT) // how should grayscale bitmap images be resampled ( default: nodownsample )
    @objc optional func setGrayscaleTileSize(_ grayscaleTileSize: Int) // tile size when compressing with JPEG2000 ( default: 256 )
    @objc optional func setMonochromeCompression(_ monochromeCompression: IllustratorCMcQ) // how should monochrome bitmap images be compressed ( default: none )
    @objc optional func setMonochromeDownsampling(_ monochromeDownsampling: Double) // If zero, no downsampling, otherwise, the resolution to downsample images to ( default: 300.0 )
    @objc optional func setMonochromeDownsamplingThreshold(_ monochromeDownsamplingThreshold: Double) // downsample if the image's resolution is above this value ( default: 450.0 )
    @objc optional func setMonochromeResample(_ monochromeResample: IllustratorCRsT) // how should monochrome bitmap images be resampled ( default: nodownsample )
    @objc optional func setOffset(_ offset: Double) // custom offset (in points) for using the custom paper ( default: 0.0 )
    @objc optional func setOptimization(_ optimization: Bool) // should the PDF document be optimized for fast web viewing ( default: false )
    @objc optional func setOutputCondition(_ outputCondition: String!) // This is an optional comment which, if present, is added to the PDF file and describes the intended printing condition ( default:  )
    @objc optional func setOutputConditionId(_ outputConditionId: String!) // If selected for Output Intent Profile Name, you can set the name of a registered printing condition ( default:  )
    @objc optional func setOutputIntentProfile(_ outputIntentProfile: String!) // When CMS is on, the output intent profile is the same profile selected for Destination in the Color group box ( default:  )
    @objc optional func setPageInfo(_ pageInfo: Bool) // draw page information ( default: false )
    @objc optional func setPageMarksStyle(_ pageMarksStyle: IllustratorEPMS) // the page marks style ( default: Roman )
    @objc optional func setPDFPreset(_ PDFPreset: String!) // The max string length is 255 bytes. Name of PDF preset to use.
    @objc optional func setPdfXstandard(_ pdfXstandard: IllustratorEPdX) // This control includes the None option for when the user is not complying with any PDF standard ( default: PDFX None )
    @objc optional func setPdfXstandardDescripton(_ pdfXstandardDescripton: String!) // This displays the description from the selected preset
    @objc optional func setPermissionPassword(_ permissionPassword: String!) // a password string to restrict editing security settings ( default:  )
    @objc optional func setPreserveEditability(_ preserveEditability: Bool) // preserve Illustrator editing capabilities when saving the document ( default: true )
    @objc optional func setPrinterResolution(_ printerResolution: Double) // flattening printer resolution ( default: 800.0 )
    @objc optional func setRegistrationMarks(_ registrationMarks: Bool) // draw registration marks ( default: false )
    @objc optional func setRegistryName(_ registryName: String!) // URL to the site where the specified output condition is registered. No validation is performed on the URL ( default:  )
    @objc optional func setRequireDocPassword(_ requireDocPassword: Bool) // require a password to open the document ( default: false )
    @objc optional func setRequirePermPassword(_ requirePermPassword: Bool) // use a password to restrict editing security settings ( default: false )
    @objc optional func setTrapped(_ trapped: Bool) // This indicates if manual trapping has been prepared in the document ( default: false )
    @objc optional func setTrimMarkWeight(_ trimMarkWeight: IllustratorCPtW) // trim mark weight ( default: trimmarkweight0125 )
    @objc optional func setTrimMarks(_ trimMarks: Bool) // draw trim marks ( default: false )
    @objc optional func setViewPdf(_ viewPdf: Bool) // view PDF after saving ( default: false )
}
extension SBObject: IllustratorPDFSaveOptions {}

// MARK: IllustratorAutoCADExportOptions
@objc public protocol IllustratorAutoCADExportOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var alterPathsForAppearance: Bool { get } // alter paths for appearance ( default: false )
    @objc optional var AutoCADVersion: IllustratorEAVS { get } // release of AutoCAD to export to ( default: AutoCAD release 24 )
    @objc optional var colors: IllustratorEACL { get } // number of colors to export into the AutoCAD file ( default: true colors )
    @objc optional var convertTextToOutlines: Bool { get } // whether to convert text to outlines ( default: false )
    @objc optional var exportFileFormat: IllustratorEAFF { get } // which format to export the file as ( default: dwg )
    @objc optional var exportOption: IllustratorEExO { get } // whether to preserve appearance or editability during export ( default: maximize editability )
    @objc optional var exportSelectedArtOnly: Bool { get } // export selected art only ( default: false )
    @objc optional var rasterFormat: IllustratorEARF { get } // raster format in which to export raster art ( default: PNG raster )
    @objc optional var scaleLineweights: Bool { get } // whether to scale lineweights by the same amount as rest of the drawing ( default: false )
    @objc optional var scaleRatio: Double { get } // ratio by which to scale the output ( default: 1.0 )
    @objc optional var scaleUnit: IllustratorEASU { get } // units from which to map ( default: autocad millimeters )
    @objc optional func setAlterPathsForAppearance(_ alterPathsForAppearance: Bool) // alter paths for appearance ( default: false )
    @objc optional func setAutoCADVersion(_ AutoCADVersion: IllustratorEAVS) // release of AutoCAD to export to ( default: AutoCAD release 24 )
    @objc optional func setColors(_ colors: IllustratorEACL) // number of colors to export into the AutoCAD file ( default: true colors )
    @objc optional func setConvertTextToOutlines(_ convertTextToOutlines: Bool) // whether to convert text to outlines ( default: false )
    @objc optional func setExportFileFormat(_ exportFileFormat: IllustratorEAFF) // which format to export the file as ( default: dwg )
    @objc optional func setExportOption(_ exportOption: IllustratorEExO) // whether to preserve appearance or editability during export ( default: maximize editability )
    @objc optional func setExportSelectedArtOnly(_ exportSelectedArtOnly: Bool) // export selected art only ( default: false )
    @objc optional func setRasterFormat(_ rasterFormat: IllustratorEARF) // raster format in which to export raster art ( default: PNG raster )
    @objc optional func setScaleLineweights(_ scaleLineweights: Bool) // whether to scale lineweights by the same amount as rest of the drawing ( default: false )
    @objc optional func setScaleRatio(_ scaleRatio: Double) // ratio by which to scale the output ( default: 1.0 )
    @objc optional func setScaleUnit(_ scaleUnit: IllustratorEASU) // units from which to map ( default: autocad millimeters )
}
extension SBObject: IllustratorAutoCADExportOptions {}

// MARK: IllustratorFlashExportOptions
@objc public protocol IllustratorFlashExportOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var artClipping: IllustratorEFOS { get } // how should the arts be clipped during the output ( default: output art bounds )
    @objc optional var artboardRange: String { get } // If SaveMultipleArtboards is true,this will be considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
    @objc optional var backgroundColor: IllustratorRGBColorInfo { get } // the background color
    @objc optional var backgroundLayers: [IllustratorLayer] { get } // a list of layers to be included as the static background in all exported Flash frames
    @objc optional var blendAnimation: IllustratorEFBA { get } // controls how the blend art objects are animated when export to Flash frames ( default: none )
    @objc optional var compressed: Bool { get } // should the exported file be compressed ( default: false )
    @objc optional var convertTextToOutlines: Bool { get } // should all text be converted to outlines ( default: false )
    @objc optional var curveQuality: Int { get } // how much curve information should be preserved ( 0 - 10; default: 7 )
    @objc optional var exportAllSymbols: Bool { get } // should all symbol definitions in the palette be exported to the SWF File ( default: false )
    @objc optional var exportStyle: IllustratorEFXS { get } // how should the Flash file be created ( default: Flash file )
    @objc optional var exportVersion: IllustratorEFXV { get } // which version of SWF to export ( default: SWF version 9 )
    @objc optional var FlashPlaybackSecurity: IllustratorEFPS { get } // what access should the SWF file have - local or network access ( default: flash playback local access )
    @objc optional var frameRate: Double { get } // when exporting layers to Flash frames ( 0.01 - 120.0; default: 12.0 )
    @objc optional var imageFormat: IllustratorEFCS { get } // how should the images in the exported Flash file be compressed ( default: lossless )
    @objc optional var includeMetadata: Bool { get } // If true, include minimal XMP metadata in the exported file ( default: false )
    @objc optional var JPEGMethod: IllustratorEFJM { get } // what method to use ( default: standard )
    @objc optional var JPEGQuality: Int { get } // level of compression ( 0 - 10; default: 3 )
    @objc optional var layerOrder: IllustratorEFOT { get } // the order in which the layers will be exported to Flash frames ( default: bottom up )
    @objc optional var looping: Bool { get } // should the Flash file be set to loop when run ( default: false )
    @objc optional var preserveAppearance: Bool { get } // choose whether to preserve artwork appearance or editability (default) during export ( default: false )
    @objc optional var readOnly: Bool { get } // prevent the exported file from being imported by other applications ( default: false )
    @objc optional var replacing: IllustratorSavo { get } // if a file with the same name already exists, should it be replaced? ( default: ask )
    @objc optional var resolution: Double { get } // pixels per inch ( 72.0 - 2400.0; default: 72.0 )
    @objc optional var saveMultipleArtboards: Bool { get } // All the artboards or range of the artboards will be exported ( default: false )
    @objc optional var textkerning: Bool { get } // should the kerning information for text objects be ignored ( default: false )
    @objc optional func setArtClipping(_ artClipping: IllustratorEFOS) // how should the arts be clipped during the output ( default: output art bounds )
    @objc optional func setArtboardRange(_ artboardRange: String!) // If SaveMultipleArtboards is true,this will be considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
    @objc optional func setBackgroundColor(_ backgroundColor: IllustratorRGBColorInfo!) // the background color
    @objc optional func setBackgroundLayers(_ backgroundLayers: [IllustratorLayer]!) // a list of layers to be included as the static background in all exported Flash frames
    @objc optional func setBlendAnimation(_ blendAnimation: IllustratorEFBA) // controls how the blend art objects are animated when export to Flash frames ( default: none )
    @objc optional func setCompressed(_ compressed: Bool) // should the exported file be compressed ( default: false )
    @objc optional func setConvertTextToOutlines(_ convertTextToOutlines: Bool) // should all text be converted to outlines ( default: false )
    @objc optional func setCurveQuality(_ curveQuality: Int) // how much curve information should be preserved ( 0 - 10; default: 7 )
    @objc optional func setExportAllSymbols(_ exportAllSymbols: Bool) // should all symbol definitions in the palette be exported to the SWF File ( default: false )
    @objc optional func setExportStyle(_ exportStyle: IllustratorEFXS) // how should the Flash file be created ( default: Flash file )
    @objc optional func setExportVersion(_ exportVersion: IllustratorEFXV) // which version of SWF to export ( default: SWF version 9 )
    @objc optional func setFlashPlaybackSecurity(_ FlashPlaybackSecurity: IllustratorEFPS) // what access should the SWF file have - local or network access ( default: flash playback local access )
    @objc optional func setFrameRate(_ frameRate: Double) // when exporting layers to Flash frames ( 0.01 - 120.0; default: 12.0 )
    @objc optional func setImageFormat(_ imageFormat: IllustratorEFCS) // how should the images in the exported Flash file be compressed ( default: lossless )
    @objc optional func setIncludeMetadata(_ includeMetadata: Bool) // If true, include minimal XMP metadata in the exported file ( default: false )
    @objc optional func setJPEGMethod(_ JPEGMethod: IllustratorEFJM) // what method to use ( default: standard )
    @objc optional func setJPEGQuality(_ JPEGQuality: Int) // level of compression ( 0 - 10; default: 3 )
    @objc optional func setLayerOrder(_ layerOrder: IllustratorEFOT) // the order in which the layers will be exported to Flash frames ( default: bottom up )
    @objc optional func setLooping(_ looping: Bool) // should the Flash file be set to loop when run ( default: false )
    @objc optional func setPreserveAppearance(_ preserveAppearance: Bool) // choose whether to preserve artwork appearance or editability (default) during export ( default: false )
    @objc optional func setReadOnly(_ readOnly: Bool) // prevent the exported file from being imported by other applications ( default: false )
    @objc optional func setReplacing(_ replacing: IllustratorSavo) // if a file with the same name already exists, should it be replaced? ( default: ask )
    @objc optional func setResolution(_ resolution: Double) // pixels per inch ( 72.0 - 2400.0; default: 72.0 )
    @objc optional func setSaveMultipleArtboards(_ saveMultipleArtboards: Bool) // All the artboards or range of the artboards will be exported ( default: false )
    @objc optional func setTextkerning(_ textkerning: Bool) // should the kerning information for text objects be ignored ( default: false )
}
extension SBObject: IllustratorFlashExportOptions {}

// MARK: IllustratorGIFExportOptions
@objc public protocol IllustratorGIFExportOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var antialiasing: Bool { get } // should the resulting image be antialiased ( default: true )
    @objc optional var artboardClipping: Bool { get } // should the resulting image be clipped to the artboard ( default: false )
    @objc optional var colorCount: Int { get } // number of colors in exported color table ( 2 - 256; default: 128 )
    @objc optional var colorDither: IllustratorCDtM { get } // method used to dither colors ( default: diffusion )
    @objc optional var colorReduction: IllustratorCCRM { get } // method used to reduce the number of colors ( default: selective )
    @objc optional var ditherPercent: Int { get } // how much should the colors be dithered ( 0 - 100; default: 88 )
    @objc optional var horizontalScaling: Double { get } // horizontal scaling factor ( default: 100.0 )
    @objc optional var informationLoss: Int { get } // level of information loss during compression ( 0 - 100; default: 0 )
    @objc optional var interlaced: Bool { get } // should the resulting image be interlaced ( default: false )
    @objc optional var matte: Bool { get } // should the artboard be matted with a color ( default: true )
    @objc optional var matteColor: IllustratorRGBColorInfo { get } // the color to use when matting the artboard (default: white)
    @objc optional var savingAsHTML: Bool { get } // should the resulting image be saved as HTML ( default: false )
    @objc optional var transparency: Bool { get } // should the resulting image use transparency ( default: true )
    @objc optional var verticalScaling: Double { get } // vertical scaling factor ( default: 100.0 )
    @objc optional var webSnap: Int { get } // how much should the color table be changed to match the web pallet ( 0 - 100; default: 0 )
    @objc optional func setAntialiasing(_ antialiasing: Bool) // should the resulting image be antialiased ( default: true )
    @objc optional func setArtboardClipping(_ artboardClipping: Bool) // should the resulting image be clipped to the artboard ( default: false )
    @objc optional func setColorCount(_ colorCount: Int) // number of colors in exported color table ( 2 - 256; default: 128 )
    @objc optional func setColorDither(_ colorDither: IllustratorCDtM) // method used to dither colors ( default: diffusion )
    @objc optional func setColorReduction(_ colorReduction: IllustratorCCRM) // method used to reduce the number of colors ( default: selective )
    @objc optional func setDitherPercent(_ ditherPercent: Int) // how much should the colors be dithered ( 0 - 100; default: 88 )
    @objc optional func setHorizontalScaling(_ horizontalScaling: Double) // horizontal scaling factor ( default: 100.0 )
    @objc optional func setInformationLoss(_ informationLoss: Int) // level of information loss during compression ( 0 - 100; default: 0 )
    @objc optional func setInterlaced(_ interlaced: Bool) // should the resulting image be interlaced ( default: false )
    @objc optional func setMatte(_ matte: Bool) // should the artboard be matted with a color ( default: true )
    @objc optional func setMatteColor(_ matteColor: IllustratorRGBColorInfo!) // the color to use when matting the artboard (default: white)
    @objc optional func setSavingAsHTML(_ savingAsHTML: Bool) // should the resulting image be saved as HTML ( default: false )
    @objc optional func setTransparency(_ transparency: Bool) // should the resulting image use transparency ( default: true )
    @objc optional func setVerticalScaling(_ verticalScaling: Double) // vertical scaling factor ( default: 100.0 )
    @objc optional func setWebSnap(_ webSnap: Int) // how much should the color table be changed to match the web pallet ( 0 - 100; default: 0 )
}
extension SBObject: IllustratorGIFExportOptions {}

// MARK: IllustratorImageCaptureOptions
@objc public protocol IllustratorImageCaptureOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var antialiasing: Bool { get } // should the resulting image be antialiased ( default: false )
    @objc optional var matte: Bool { get } // should the artboard be matted with a color ( default: false )
    @objc optional var matteColor: IllustratorRGBColorInfo { get } // the color to use when matting the artboard (default: white)
    @objc optional var resolution: Double { get } // The resolution of the captured image file ( 72.0 - 2400.0; default: 150.0 )
    @objc optional var transparency: Bool { get } // should the resulting image use transparency ( default: false )
    @objc optional func setAntialiasing(_ antialiasing: Bool) // should the resulting image be antialiased ( default: false )
    @objc optional func setMatte(_ matte: Bool) // should the artboard be matted with a color ( default: false )
    @objc optional func setMatteColor(_ matteColor: IllustratorRGBColorInfo!) // the color to use when matting the artboard (default: white)
    @objc optional func setResolution(_ resolution: Double) // The resolution of the captured image file ( 72.0 - 2400.0; default: 150.0 )
    @objc optional func setTransparency(_ transparency: Bool) // should the resulting image use transparency ( default: false )
}
extension SBObject: IllustratorImageCaptureOptions {}

// MARK: IllustratorItemToExport
@objc public protocol IllustratorItemToExport: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var document: Bool { get } // Whether to export the document or not ( default: false )
    @objc optional var rangeOfArtboards: String { get } // Range of artboards to export [possible values: '', 'all'(default), range] ( default: all )
    @objc optional var rangeOfAssets: [NSNumber] { get } // Array of asset id to export (default:empty)
    @objc optional func setDocument(_ document: Bool) // Whether to export the document or not ( default: false )
    @objc optional func setRangeOfArtboards(_ rangeOfArtboards: String!) // Range of artboards to export [possible values: '', 'all'(default), range] ( default: all )
    @objc optional func setRangeOfAssets(_ rangeOfAssets: [NSNumber]!) // Array of asset id to export (default:empty)
}
extension SBObject: IllustratorItemToExport {}

// MARK: IllustratorJPEGExportOptions
@objc public protocol IllustratorJPEGExportOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var antialiasing: Bool { get } // should the resulting image be antialiased ( default: true )
    @objc optional var artboardClipping: Bool { get } // should the resulting image be clipped to the artboard ( default: false )
    @objc optional var blur: Double { get } // blur the resulting image this much ( 0.0 - 2.0; default: 0.0 )
    @objc optional var horizontalScaling: Double { get } // horizontal scaling factor ( 0.0 - 776.19; default: 100.0 )
    @objc optional var matte: Bool { get } // should the artboard be matted with a color ( default: true )
    @objc optional var matteColor: IllustratorRGBColorInfo { get } // the color to use when matting the artboard (default: white)
    @objc optional var optimization: Bool { get } // should the image be optimized for web viewing ( default: true )
    @objc optional var quality: Int { get } // quality of resulting image ( 0 - 100; default: 30 )
    @objc optional var savingAsHTML: Bool { get } // should the resulting image be saved as HTML ( default: false )
    @objc optional var verticalScaling: Double { get } // vertical scaling factor ( 0.0 - 776.19; default: 100.0 )
    @objc optional func setAntialiasing(_ antialiasing: Bool) // should the resulting image be antialiased ( default: true )
    @objc optional func setArtboardClipping(_ artboardClipping: Bool) // should the resulting image be clipped to the artboard ( default: false )
    @objc optional func setBlur(_ blur: Double) // blur the resulting image this much ( 0.0 - 2.0; default: 0.0 )
    @objc optional func setHorizontalScaling(_ horizontalScaling: Double) // horizontal scaling factor ( 0.0 - 776.19; default: 100.0 )
    @objc optional func setMatte(_ matte: Bool) // should the artboard be matted with a color ( default: true )
    @objc optional func setMatteColor(_ matteColor: IllustratorRGBColorInfo!) // the color to use when matting the artboard (default: white)
    @objc optional func setOptimization(_ optimization: Bool) // should the image be optimized for web viewing ( default: true )
    @objc optional func setQuality(_ quality: Int) // quality of resulting image ( 0 - 100; default: 30 )
    @objc optional func setSavingAsHTML(_ savingAsHTML: Bool) // should the resulting image be saved as HTML ( default: false )
    @objc optional func setVerticalScaling(_ verticalScaling: Double) // vertical scaling factor ( 0.0 - 776.19; default: 100.0 )
}
extension SBObject: IllustratorJPEGExportOptions {}

// MARK: IllustratorPDFExportOptions
@objc public protocol IllustratorPDFExportOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var PDFPreset: String { get } // The max string length is 255 bytes. Name of PDF preset to use. ( default: [Smallest File Size] )
    @objc optional func setPDFPreset(_ PDFPreset: String!) // The max string length is 255 bytes. Name of PDF preset to use. ( default: [Smallest File Size] )
}
extension SBObject: IllustratorPDFExportOptions {}

// MARK: IllustratorPhotoshopExportOptions
@objc public protocol IllustratorPhotoshopExportOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var antialiasing: Bool { get } // should the resulting image be antialiased ( default: true )
    @objc optional var artboardRange: String { get } // If SaveMultipleArtboards is true,this will be considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
    @objc optional var colorSpace: IllustratorECLS { get } // the color space of the exported file ( default: RGB )
    @objc optional var editableText: Bool { get } // export text objects as editable text layers ( default: true )
    @objc optional var embedICCProfile: Bool { get } // embed an ICC profile when exporting ( default: false )
    @objc optional var maximumEditability: Bool { get } // preserve as much of the original document's structure as possible when exporting ( default: true )
    @objc optional var resolution: Double { get } // The resolution of the exported file ( 72.0 - 2400.0; default: 150.0 )
    @objc optional var saveMultipleArtboards: Bool { get } // All the artboards or range of the artboards will be exported ( default: false )
    @objc optional var warnings: Bool { get } // should a warning dialog be displayed because of conflicts in the export settings ( default: true )
    @objc optional var writeLayers: Bool { get } // preserve document layers when exporting ( default: true )
    @objc optional func setAntialiasing(_ antialiasing: Bool) // should the resulting image be antialiased ( default: true )
    @objc optional func setArtboardRange(_ artboardRange: String!) // If SaveMultipleArtboards is true,this will be considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
    @objc optional func setColorSpace(_ colorSpace: IllustratorECLS) // the color space of the exported file ( default: RGB )
    @objc optional func setEditableText(_ editableText: Bool) // export text objects as editable text layers ( default: true )
    @objc optional func setEmbedICCProfile(_ embedICCProfile: Bool) // embed an ICC profile when exporting ( default: false )
    @objc optional func setMaximumEditability(_ maximumEditability: Bool) // preserve as much of the original document's structure as possible when exporting ( default: true )
    @objc optional func setResolution(_ resolution: Double) // The resolution of the exported file ( 72.0 - 2400.0; default: 150.0 )
    @objc optional func setSaveMultipleArtboards(_ saveMultipleArtboards: Bool) // All the artboards or range of the artboards will be exported ( default: false )
    @objc optional func setWarnings(_ warnings: Bool) // should a warning dialog be displayed because of conflicts in the export settings ( default: true )
    @objc optional func setWriteLayers(_ writeLayers: Bool) // preserve document layers when exporting ( default: true )
}
extension SBObject: IllustratorPhotoshopExportOptions {}

// MARK: IllustratorPNG24ExportOptions
@objc public protocol IllustratorPNG24ExportOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var antialiasing: Bool { get } // should the resulting image be antialiased ( default: true )
    @objc optional var artboardClipping: Bool { get } // should the resulting image be clipped to the artboard ( default: false )
    @objc optional var dimensionsOfPNG: IllustratorDimensionsInfo { get } // Dimensions in which to contain the resulting raster
    @objc optional var horizontalScaling: Double { get } // horizontal scaling factor ( default: 100.0 )
    @objc optional var matte: Bool { get } // should the artboard be matted with a color ( default: true )
    @objc optional var matteColor: IllustratorRGBColorInfo { get } // the color to use when matting the artboard (default: white)
    @objc optional var savingAsHTML: Bool { get } // should the resulting image be saved as HTML ( default: false )
    @objc optional var transparency: Bool { get } // should the resulting image use transparency ( default: true )
    @objc optional var verticalScaling: Double { get } // vertical scaling factor ( default: 100.0 )
    @objc optional func setAntialiasing(_ antialiasing: Bool) // should the resulting image be antialiased ( default: true )
    @objc optional func setArtboardClipping(_ artboardClipping: Bool) // should the resulting image be clipped to the artboard ( default: false )
    @objc optional func setDimensionsOfPNG(_ dimensionsOfPNG: IllustratorDimensionsInfo!) // Dimensions in which to contain the resulting raster
    @objc optional func setHorizontalScaling(_ horizontalScaling: Double) // horizontal scaling factor ( default: 100.0 )
    @objc optional func setMatte(_ matte: Bool) // should the artboard be matted with a color ( default: true )
    @objc optional func setMatteColor(_ matteColor: IllustratorRGBColorInfo!) // the color to use when matting the artboard (default: white)
    @objc optional func setSavingAsHTML(_ savingAsHTML: Bool) // should the resulting image be saved as HTML ( default: false )
    @objc optional func setTransparency(_ transparency: Bool) // should the resulting image use transparency ( default: true )
    @objc optional func setVerticalScaling(_ verticalScaling: Double) // vertical scaling factor ( default: 100.0 )
}
extension SBObject: IllustratorPNG24ExportOptions {}

// MARK: IllustratorPNG8ExportOptions
@objc public protocol IllustratorPNG8ExportOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var antialiasing: Bool { get } // should the resulting image be antialiased ( default: true )
    @objc optional var artboardClipping: Bool { get } // should the resulting image be clipped to the artboard ( default: false )
    @objc optional var colorCount: Int { get } // number of colors in exported color table ( 2 - 256; default: 128 )
    @objc optional var colorDither: IllustratorCDtM { get } // method used to dither colors ( default: diffusion )
    @objc optional var colorReduction: IllustratorCCRM { get } // method used to reduce the number of colors ( default: selective )
    @objc optional var ditherPercent: Int { get } // how much should the colors be dithered ( 0 - 100; default: 88 )
    @objc optional var horizontalScaling: Double { get } // horizontal scaling factor ( default: 100.0 )
    @objc optional var interlaced: Bool { get } // should the resulting image be interlaced ( default: false )
    @objc optional var matte: Bool { get } // should the artboard be matted with a color ( default: true )
    @objc optional var matteColor: IllustratorRGBColorInfo { get } // the color to use when matting the artboard (default: white)
    @objc optional var savingAsHTML: Bool { get } // should the resulting image be saved as HTML ( default: false )
    @objc optional var transparency: Bool { get } // should the resulting image use transparency ( default: true )
    @objc optional var verticalScaling: Double { get } // vertical scaling factor ( default: 100.0 )
    @objc optional var webSnap: Int { get } // how much should the color table be changed to match the web palette ( 0 - 100; default: 0 )
    @objc optional func setAntialiasing(_ antialiasing: Bool) // should the resulting image be antialiased ( default: true )
    @objc optional func setArtboardClipping(_ artboardClipping: Bool) // should the resulting image be clipped to the artboard ( default: false )
    @objc optional func setColorCount(_ colorCount: Int) // number of colors in exported color table ( 2 - 256; default: 128 )
    @objc optional func setColorDither(_ colorDither: IllustratorCDtM) // method used to dither colors ( default: diffusion )
    @objc optional func setColorReduction(_ colorReduction: IllustratorCCRM) // method used to reduce the number of colors ( default: selective )
    @objc optional func setDitherPercent(_ ditherPercent: Int) // how much should the colors be dithered ( 0 - 100; default: 88 )
    @objc optional func setHorizontalScaling(_ horizontalScaling: Double) // horizontal scaling factor ( default: 100.0 )
    @objc optional func setInterlaced(_ interlaced: Bool) // should the resulting image be interlaced ( default: false )
    @objc optional func setMatte(_ matte: Bool) // should the artboard be matted with a color ( default: true )
    @objc optional func setMatteColor(_ matteColor: IllustratorRGBColorInfo!) // the color to use when matting the artboard (default: white)
    @objc optional func setSavingAsHTML(_ savingAsHTML: Bool) // should the resulting image be saved as HTML ( default: false )
    @objc optional func setTransparency(_ transparency: Bool) // should the resulting image use transparency ( default: true )
    @objc optional func setVerticalScaling(_ verticalScaling: Double) // vertical scaling factor ( default: 100.0 )
    @objc optional func setWebSnap(_ webSnap: Int) // how much should the color table be changed to match the web palette ( 0 - 100; default: 0 )
}
extension SBObject: IllustratorPNG8ExportOptions {}

// MARK: IllustratorSVGExportOptions
@objc public protocol IllustratorSVGExportOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var artboardRange: String { get } // If SaveMultipleArtboards is true,this will be considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
    @objc optional var coordinatePrecision: Int { get } // decimal precision for element coordinate values ( 1 - 7; default: 3 )
    @objc optional var CSSProperties: IllustratorESCS { get } // how should the CSS properties of the document be included in the document ( default: style attributes )
    @objc optional var fontType: IllustratorESFT { get } // the type of font that should be included in the exported file ( default: SVG font )
    @objc optional var minifySvg: Bool { get } // Reduces the size of the svg ( default: false )
    @objc optional var rasterImageLocation: IllustratorERIL { get } // should the raster images in the exported file be included ( default: preserve )
    @objc optional var responsiveSvg: Bool { get } // Makes the SVG Responsive ( default: true )
    @objc optional var saveMultipleArtboards: Bool { get } // All the artboards or range of the artboards will be saved ( default: false )
    @objc optional var setTypeOfSVG: IllustratorESIT { get } // how object names (IDs) are generated in exported SVG ( default: regular svg )
    @objc optional func setArtboardRange(_ artboardRange: String!) // If SaveMultipleArtboards is true,this will be considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
    @objc optional func setCoordinatePrecision(_ coordinatePrecision: Int) // decimal precision for element coordinate values ( 1 - 7; default: 3 )
    @objc optional func setCSSProperties(_ CSSProperties: IllustratorESCS) // how should the CSS properties of the document be included in the document ( default: style attributes )
    @objc optional func setFontType(_ fontType: IllustratorESFT) // the type of font that should be included in the exported file ( default: SVG font )
    @objc optional func setMinifySvg(_ minifySvg: Bool) // Reduces the size of the svg ( default: false )
    @objc optional func setRasterImageLocation(_ rasterImageLocation: IllustratorERIL) // should the raster images in the exported file be included ( default: preserve )
    @objc optional func setResponsiveSvg(_ responsiveSvg: Bool) // Makes the SVG Responsive ( default: true )
    @objc optional func setSaveMultipleArtboards(_ saveMultipleArtboards: Bool) // All the artboards or range of the artboards will be saved ( default: false )
    @objc optional func setSetTypeOfSVG(_ setTypeOfSVG: IllustratorESIT) // how object names (IDs) are generated in exported SVG ( default: regular svg )
}
extension SBObject: IllustratorSVGExportOptions {}

// MARK: IllustratorTIFFExportOptions
@objc public protocol IllustratorTIFFExportOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var antialiasing: IllustratorEALS { get } // should the resulting image be antialiased ( default: art optimized )
    @objc optional var artboardRange: String { get } // If SaveMultipleArtboards is true,this will be considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
    @objc optional var ByteOrder: IllustratorETbo { get } // Mac or PC byte order when exporting ( default: IBM PC )
    @objc optional var colorSpace: IllustratorECLS { get } // the color space of the exported file ( default: RGB )
    @objc optional var embedICCProfile: Bool { get } // embed an ICC profile when exporting ( default: false )
    @objc optional var LZWCompression: Bool { get } // compress TIFF file with LZW Compression when exporting ( default: false )
    @objc optional var resolution: Double { get } // The resolution of the exported file ( 72.0 - 2400.0; default: 150.0 )
    @objc optional var saveMultipleArtboards: Bool { get } // All the artboards or range of the artboards will be exported ( default: false )
    @objc optional func setAntialiasing(_ antialiasing: IllustratorEALS) // should the resulting image be antialiased ( default: art optimized )
    @objc optional func setArtboardRange(_ artboardRange: String!) // If SaveMultipleArtboards is true,this will be considered for multi-asset extraction which specifies artboard range.Empty string will extracts all the artboards.Default is empty string ( default:  )
    @objc optional func setByteOrder(_ ByteOrder: IllustratorETbo) // Mac or PC byte order when exporting ( default: IBM PC )
    @objc optional func setColorSpace(_ colorSpace: IllustratorECLS) // the color space of the exported file ( default: RGB )
    @objc optional func setEmbedICCProfile(_ embedICCProfile: Bool) // embed an ICC profile when exporting ( default: false )
    @objc optional func setLZWCompression(_ LZWCompression: Bool) // compress TIFF file with LZW Compression when exporting ( default: false )
    @objc optional func setResolution(_ resolution: Double) // The resolution of the exported file ( 72.0 - 2400.0; default: 150.0 )
    @objc optional func setSaveMultipleArtboards(_ saveMultipleArtboards: Bool) // All the artboards or range of the artboards will be exported ( default: false )
}
extension SBObject: IllustratorTIFFExportOptions {}

// MARK: IllustratorDataset
@objc public protocol IllustratorDataset: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var name: String { get } // the name of this dataset
    @objc optional func display() // displays the dynamic data that has been captured in the dataset.
    @objc optional func update() // re-apply the dynamic data of the active dataset to the artboard
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setName(_ name: String!) // the name of this dataset
}
extension SBObject: IllustratorDataset {}

// MARK: IllustratorVariable
@objc public protocol IllustratorVariable: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional func pageItems() -> SBElementArray
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var kind: IllustratorEVKd { get } // the variable's type
    @objc optional var name: String { get } // the name of this variable
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setKind(_ kind: IllustratorEVKd) // the variable's type
    @objc optional func setName(_ name: String!) // the name of this variable
}
extension SBObject: IllustratorVariable {}

// MARK: IllustratorColorManagementOptions
@objc public protocol IllustratorColorManagementOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var intent: IllustratorEPCI { get } // the color management intent type ( default: relative colorimetric )
    @objc optional var name: String { get } // the color management profile name
    @objc optional var profileKind: IllustratorEPCP { get } // the color management profile mode ( default: source profile )
    @objc optional func setIntent(_ intent: IllustratorEPCI) // the color management intent type ( default: relative colorimetric )
    @objc optional func setName(_ name: String!) // the color management profile name
    @objc optional func setProfileKind(_ profileKind: IllustratorEPCP) // the color management profile mode ( default: source profile )
}
extension SBObject: IllustratorColorManagementOptions {}

// MARK: IllustratorColorSeparationOptions
@objc public protocol IllustratorColorSeparationOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var convertSpotColors: Bool { get } // whether to convert all spot colors to process colors ( default: false )
    @objc optional var inks: [IllustratorInk] { get } // the list of inks for color separation
    @objc optional var overPrintBlack: Bool { get } // whether to overprint in black ( default: false )
    @objc optional var separationMode: IllustratorEPCS { get } // the color separation type ( default: composite )
    @objc optional func setConvertSpotColors(_ convertSpotColors: Bool) // whether to convert all spot colors to process colors ( default: false )
    @objc optional func setInks(_ inks: [IllustratorInk]!) // the list of inks for color separation
    @objc optional func setOverPrintBlack(_ overPrintBlack: Bool) // whether to overprint in black ( default: false )
    @objc optional func setSeparationMode(_ separationMode: IllustratorEPCS) // the color separation type ( default: composite )
}
extension SBObject: IllustratorColorSeparationOptions {}

// MARK: IllustratorCoordinateOptions
@objc public protocol IllustratorCoordinateOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var emulsion: Bool { get } // whether to flip artwork horizontally ( default: false )
    @objc optional var fitToPage: Bool { get } // whether to proportionally scale the artwork to fit on the page ( default: false )
    @objc optional var horizontalScale: Double { get } // the horizontal scaling factor expressed as a percentage (100 = 100%) ( 1.0 - 10000.0; default: 100.0 )
    @objc optional var orientation: IllustratorEPOR { get } // the artwork orientation ( default: portrait )
    @objc optional var position: IllustratorEPPO { get } // the artwork position on media ( default: center )
    @objc optional var tiling: IllustratorEPTL { get } // the page tiling mode ( default: single full page )
    @objc optional var verticalScale: Double { get } // the vertical scaling factor expressed as a percentage (100 = 100%) ( 1.0 - 10000.0; default: 100.0 )
    @objc optional func setEmulsion(_ emulsion: Bool) // whether to flip artwork horizontally ( default: false )
    @objc optional func setFitToPage(_ fitToPage: Bool) // whether to proportionally scale the artwork to fit on the page ( default: false )
    @objc optional func setHorizontalScale(_ horizontalScale: Double) // the horizontal scaling factor expressed as a percentage (100 = 100%) ( 1.0 - 10000.0; default: 100.0 )
    @objc optional func setOrientation(_ orientation: IllustratorEPOR) // the artwork orientation ( default: portrait )
    @objc optional func setPosition(_ position: IllustratorEPPO) // the artwork position on media ( default: center )
    @objc optional func setTiling(_ tiling: IllustratorEPTL) // the page tiling mode ( default: single full page )
    @objc optional func setVerticalScale(_ verticalScale: Double) // the vertical scaling factor expressed as a percentage (100 = 100%) ( 1.0 - 10000.0; default: 100.0 )
}
extension SBObject: IllustratorCoordinateOptions {}

// MARK: IllustratorFlatteningOptions
@objc public protocol IllustratorFlatteningOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var clipComplexRegions: Bool { get } // whether to clip complex regions ( default: false )
    @objc optional var convertStrokesToOutlines: Bool { get } // whether to convert all strokes to outlines ( default: false )
    @objc optional var convertTextToOutlines: Bool { get } // whether to convert all text to outlines ( default: false )
    @objc optional var flatteningBalance: Int { get } // the flattening balance ( 0 - 100; default: 100 )
    @objc optional var gradientResolution: Double { get } // the gradient resolution ( 1.0 - 9600.0; default: 300.0 )
    @objc optional var overprint: IllustratorCPoP { get } // overprint ( default: preserve )
    @objc optional var rasterizationResolution: Double { get } // the rasterization resolution ( 1.0 - 9600.0; default: 300.0 )
    @objc optional func setClipComplexRegions(_ clipComplexRegions: Bool) // whether to clip complex regions ( default: false )
    @objc optional func setConvertStrokesToOutlines(_ convertStrokesToOutlines: Bool) // whether to convert all strokes to outlines ( default: false )
    @objc optional func setConvertTextToOutlines(_ convertTextToOutlines: Bool) // whether to convert all text to outlines ( default: false )
    @objc optional func setFlatteningBalance(_ flatteningBalance: Int) // the flattening balance ( 0 - 100; default: 100 )
    @objc optional func setGradientResolution(_ gradientResolution: Double) // the gradient resolution ( 1.0 - 9600.0; default: 300.0 )
    @objc optional func setOverprint(_ overprint: IllustratorCPoP) // overprint ( default: preserve )
    @objc optional func setRasterizationResolution(_ rasterizationResolution: Double) // the rasterization resolution ( 1.0 - 9600.0; default: 300.0 )
}
extension SBObject: IllustratorFlatteningOptions {}

// MARK: IllustratorFontOptions
@objc public protocol IllustratorFontOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var downloadFonts: IllustratorEPFD { get } // the font download mode ( default: subset )
    @objc optional var fontSubstitutionKind: IllustratorEPFS { get } // the font substitution policy ( default: oblique substitution )
    @objc optional func setDownloadFonts(_ downloadFonts: IllustratorEPFD) // the font download mode ( default: subset )
    @objc optional func setFontSubstitutionKind(_ fontSubstitutionKind: IllustratorEPFS) // the font substitution policy ( default: oblique substitution )
}
extension SBObject: IllustratorFontOptions {}

// MARK: IllustratorInk
@objc public protocol IllustratorInk: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var name: String { get } // the ink's name
    @objc optional var properties: IllustratorInkProperties { get } // the ink information
    @objc optional func setName(_ name: String!) // the ink's name
    @objc optional func setProperties(_ properties: IllustratorInkProperties!) // the ink information
}
extension SBObject: IllustratorInk {}

// MARK: IllustratorInkProperties
@objc public protocol IllustratorInkProperties: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var angle: Double { get } // the ink's screen angle (in degrees)
    @objc optional var customColor: IllustratorColorInfo { get } // the color of the custom ink
    @objc optional var density: Double { get } // the neutral density ( minimum 0.0 )
    @objc optional var dotShape: String { get } // the dot shape name
    @objc optional var frequency: Double { get } // the ink's frequency ( minimum 0.0 )
    @objc optional var kind: IllustratorEPIK { get } // the ink type
    @objc optional var printingStatus: IllustratorEPST { get } // the ink printing status
    @objc optional var trapping: IllustratorEPTT { get } // the trapping type
    @objc optional var trappingOrder: Int { get } // the order of trapping for the ink ( minimum 1 )
    @objc optional func setAngle(_ angle: Double) // the ink's screen angle (in degrees)
    @objc optional func setCustomColor(_ customColor: IllustratorColorInfo!) // the color of the custom ink
    @objc optional func setDensity(_ density: Double) // the neutral density ( minimum 0.0 )
    @objc optional func setDotShape(_ dotShape: String!) // the dot shape name
    @objc optional func setFrequency(_ frequency: Double) // the ink's frequency ( minimum 0.0 )
    @objc optional func setKind(_ kind: IllustratorEPIK) // the ink type
    @objc optional func setPrintingStatus(_ printingStatus: IllustratorEPST) // the ink printing status
    @objc optional func setTrapping(_ trapping: IllustratorEPTT) // the trapping type
    @objc optional func setTrappingOrder(_ trappingOrder: Int) // the order of trapping for the ink ( minimum 1 )
}
extension SBObject: IllustratorInkProperties {}

// MARK: IllustratorJobOptions
@objc public protocol IllustratorJobOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var artboardRange: String { get } // Artboard Range to be printed if PrintAllArtboards is false ( default: 1- )
    @objc optional var bitmapResolution: Double { get } // the bitmap resolution ( minimum 0.0; default: 0.0 )
    @objc optional var collate: Bool { get } // whether to collate print pages ( default: false )
    @objc optional var copies: Int { get } // the number of copies to print ( minimum 1; default: 1 )
    @objc optional var designation: IllustratorEPAD { get } // the layers/objects to be printed ( default: visible printable layers )
    @objc optional var filePath: URL { get } // the file to be printed to
    @objc optional var name: String { get } // the print job name
    @objc optional var printAllArtboards: Bool { get } // whether to print all artboards ( default: true )
    @objc optional var printArea: IllustratorEPBD { get } // the printing bounds ( default: artboard bounds )
    @objc optional var printAsBitmap: Bool { get } // whether to print as bitmap ( default: false )
    @objc optional var reversePages: Bool { get } // print pages in reverse order ( default: false )
    @objc optional func setArtboardRange(_ artboardRange: String!) // Artboard Range to be printed if PrintAllArtboards is false ( default: 1- )
    @objc optional func setBitmapResolution(_ bitmapResolution: Double) // the bitmap resolution ( minimum 0.0; default: 0.0 )
    @objc optional func setCollate(_ collate: Bool) // whether to collate print pages ( default: false )
    @objc optional func setCopies(_ copies: Int) // the number of copies to print ( minimum 1; default: 1 )
    @objc optional func setDesignation(_ designation: IllustratorEPAD) // the layers/objects to be printed ( default: visible printable layers )
    @objc optional func setFilePath(_ filePath: URL!) // the file to be printed to
    @objc optional func setName(_ name: String!) // the print job name
    @objc optional func setPrintAllArtboards(_ printAllArtboards: Bool) // whether to print all artboards ( default: true )
    @objc optional func setPrintArea(_ printArea: IllustratorEPBD) // the printing bounds ( default: artboard bounds )
    @objc optional func setPrintAsBitmap(_ printAsBitmap: Bool) // whether to print as bitmap ( default: false )
    @objc optional func setReversePages(_ reversePages: Bool) // print pages in reverse order ( default: false )
}
extension SBObject: IllustratorJobOptions {}

// MARK: IllustratorPageMarksOptions
@objc public protocol IllustratorPageMarksOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bleedOffset: [Any] { get } // the bleed offset rect
    @objc optional var colorBars: Bool { get } // whether to enable color bars printing ( default: false )
    @objc optional var marksOffset: [Any] { get } // the page marks offset rect
    @objc optional var pageInfoMarks: Bool { get } // whether to enable page info marks printing ( default: false )
    @objc optional var pageMarksStyle: IllustratorEPMS { get } // the page marks style ( default: Roman )
    @objc optional var registrationMarks: Bool { get } // whether to enable registration marks printing ( default: false )
    @objc optional var trimMarks: Bool { get } // whether to enable trim marks printing ( default: false )
    @objc optional var trimMarksWeight: Double { get } // stroke weight of trim marks ( minimum 0.0; default: 0.125 )
    @objc optional func setBleedOffset(_ bleedOffset: [Any]!) // the bleed offset rect
    @objc optional func setColorBars(_ colorBars: Bool) // whether to enable color bars printing ( default: false )
    @objc optional func setMarksOffset(_ marksOffset: [Any]!) // the page marks offset rect
    @objc optional func setPageInfoMarks(_ pageInfoMarks: Bool) // whether to enable page info marks printing ( default: false )
    @objc optional func setPageMarksStyle(_ pageMarksStyle: IllustratorEPMS) // the page marks style ( default: Roman )
    @objc optional func setRegistrationMarks(_ registrationMarks: Bool) // whether to enable registration marks printing ( default: false )
    @objc optional func setTrimMarks(_ trimMarks: Bool) // whether to enable trim marks printing ( default: false )
    @objc optional func setTrimMarksWeight(_ trimMarksWeight: Double) // stroke weight of trim marks ( minimum 0.0; default: 0.125 )
}
extension SBObject: IllustratorPageMarksOptions {}

// MARK: IllustratorPaper
@objc public protocol IllustratorPaper: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var name: String { get } // the paper name
    @objc optional var properties: IllustratorPaperProperties { get } // the paper information
    @objc optional func setName(_ name: String!) // the paper name
    @objc optional func setProperties(_ properties: IllustratorPaperProperties!) // the paper information
}
extension SBObject: IllustratorPaper {}

// MARK: IllustratorPaperOptions
@objc public protocol IllustratorPaperOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var height: Double { get } // the custom height (in points) for using the custom paper ( default: 0.0 )
    @objc optional var name: String { get } // the paper's name
    @objc optional var offset: Double { get } // custom offset (in points) for using the custom paper ( default: 0.0 )
    @objc optional var transverse: Bool { get } // whether to transverse the artwork (rotate 90 degrees) on the custom paper ( default: false )
    @objc optional var width: Double { get } // the custom width (in points) for using the custom paper ( default: 0.0 )
    @objc optional func setHeight(_ height: Double) // the custom height (in points) for using the custom paper ( default: 0.0 )
    @objc optional func setName(_ name: String!) // the paper's name
    @objc optional func setOffset(_ offset: Double) // custom offset (in points) for using the custom paper ( default: 0.0 )
    @objc optional func setTransverse(_ transverse: Bool) // whether to transverse the artwork (rotate 90 degrees) on the custom paper ( default: false )
    @objc optional func setWidth(_ width: Double) // the custom width (in points) for using the custom paper ( default: 0.0 )
}
extension SBObject: IllustratorPaperOptions {}

// MARK: IllustratorPaperProperties
@objc public protocol IllustratorPaperProperties: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var customPaper: Bool { get } // Is it a custom paper?
    @objc optional var height: Double { get } // the paper's height (in points)
    @objc optional var imageableArea: [Any] { get } // the imageable area
    @objc optional var width: Double { get } // the paper's width (in points)
    @objc optional func setCustomPaper(_ customPaper: Bool) // Is it a custom paper?
    @objc optional func setHeight(_ height: Double) // the paper's height (in points)
    @objc optional func setImageableArea(_ imageableArea: [Any]!) // the imageable area
    @objc optional func setWidth(_ width: Double) // the paper's width (in points)
}
extension SBObject: IllustratorPaperProperties {}

// MARK: IllustratorPostscriptOptions
@objc public protocol IllustratorPostscriptOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var binaryPrinting: Bool { get } // whether to print in binary mode ( default: false )
    @objc optional var compatibleShading: Bool { get } // use PostScript level 1 compatible gradient and gradient mesh printing ( default: false )
    @objc optional var forceContinuousTone: Bool { get } // whether to force continuous tone ( default: false )
    @objc optional var imageCompression: IllustratorEPIC { get } // the image compression type ( default: none )
    @objc optional var negativePrinting: Bool { get } // whether to print in negative mode ( default: false )
    @objc optional var PostScript: IllustratorEPPS { get } // the PostScript language level ( default: level 2 )
    @objc optional var shadingResolution: Double { get } // the shading resolution ( 1.0 - 9600.0; default: 300.0 )
    @objc optional func setBinaryPrinting(_ binaryPrinting: Bool) // whether to print in binary mode ( default: false )
    @objc optional func setCompatibleShading(_ compatibleShading: Bool) // use PostScript level 1 compatible gradient and gradient mesh printing ( default: false )
    @objc optional func setForceContinuousTone(_ forceContinuousTone: Bool) // whether to force continuous tone ( default: false )
    @objc optional func setImageCompression(_ imageCompression: IllustratorEPIC) // the image compression type ( default: none )
    @objc optional func setNegativePrinting(_ negativePrinting: Bool) // whether to print in negative mode ( default: false )
    @objc optional func setPostScript(_ PostScript: IllustratorEPPS) // the PostScript language level ( default: level 2 )
    @objc optional func setShadingResolution(_ shadingResolution: Double) // the shading resolution ( 1.0 - 9600.0; default: 300.0 )
}
extension SBObject: IllustratorPostscriptOptions {}

// MARK: IllustratorPPDFile
@objc public protocol IllustratorPPDFile: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var name: String { get } // the PPD model name
    @objc optional var properties: IllustratorPPDProperties { get } // the PPD file information
    @objc optional func setName(_ name: String!) // the PPD model name
    @objc optional func setProperties(_ properties: IllustratorPPDProperties!) // the PPD file information
}
extension SBObject: IllustratorPPDFile {}

// MARK: IllustratorPPDProperties
@objc public protocol IllustratorPPDProperties: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var filePath: URL { get } // path specification for the PPD file
    @objc optional var languageLevel: String { get } // the PostScript language level
    @objc optional var screens: [IllustratorSeparationScreen] { get } // list of color separation screens
    @objc optional var spotFunctions: [IllustratorScreenSpotFunction] { get } // list of color separation screen spot functions
    @objc optional func setFilePath(_ filePath: URL!) // path specification for the PPD file
    @objc optional func setLanguageLevel(_ languageLevel: String!) // the PostScript language level
    @objc optional func setScreens(_ screens: [IllustratorSeparationScreen]!) // list of color separation screens
    @objc optional func setSpotFunctions(_ spotFunctions: [IllustratorScreenSpotFunction]!) // list of color separation screen spot functions
}
extension SBObject: IllustratorPPDProperties {}

// MARK: IllustratorPrintOptions
@objc public protocol IllustratorPrintOptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var colorManagementSettings: IllustratorColorManagementOptions { get } // the printing color management options
    @objc optional var colorSeparationSettings: IllustratorColorSeparationOptions { get } // the printing color separation options
    @objc optional var coordinateSettings: IllustratorCoordinateOptions { get } // the printing coordinate options
    @objc optional var flattenerPreset: String { get } // the transparency flattener preset name
    @objc optional var flattenerSettings: IllustratorFlatteningOptions { get } // the printing flattener options
    @objc optional var fontSettings: IllustratorFontOptions { get } // the printing font options
    @objc optional var jobSettings: IllustratorJobOptions { get } // the printing job options
    @objc optional var pageMarksSettings: IllustratorPageMarksOptions { get } // the printing page marks options
    @objc optional var paperSettings: IllustratorPaperOptions { get } // the paper options
    @objc optional var postscriptSettings: IllustratorPostscriptOptions { get } // the printing PostScript options
    @objc optional var PPDName: String { get } // the name of the PPD to use
    @objc optional var printPreset: String { get } // the name of a print preset to use
    @objc optional var printerName: String { get } // the name of the printer to print to
    @objc optional func setColorManagementSettings(_ colorManagementSettings: IllustratorColorManagementOptions!) // the printing color management options
    @objc optional func setColorSeparationSettings(_ colorSeparationSettings: IllustratorColorSeparationOptions!) // the printing color separation options
    @objc optional func setCoordinateSettings(_ coordinateSettings: IllustratorCoordinateOptions!) // the printing coordinate options
    @objc optional func setFlattenerPreset(_ flattenerPreset: String!) // the transparency flattener preset name
    @objc optional func setFlattenerSettings(_ flattenerSettings: IllustratorFlatteningOptions!) // the printing flattener options
    @objc optional func setFontSettings(_ fontSettings: IllustratorFontOptions!) // the printing font options
    @objc optional func setJobSettings(_ jobSettings: IllustratorJobOptions!) // the printing job options
    @objc optional func setPageMarksSettings(_ pageMarksSettings: IllustratorPageMarksOptions!) // the printing page marks options
    @objc optional func setPaperSettings(_ paperSettings: IllustratorPaperOptions!) // the paper options
    @objc optional func setPostscriptSettings(_ postscriptSettings: IllustratorPostscriptOptions!) // the printing PostScript options
    @objc optional func setPPDName(_ PPDName: String!) // the name of the PPD to use
    @objc optional func setPrintPreset(_ printPreset: String!) // the name of a print preset to use
    @objc optional func setPrinterName(_ printerName: String!) // the name of the printer to print to
}
extension SBObject: IllustratorPrintOptions {}

// MARK: IllustratorPrinter
@objc public protocol IllustratorPrinter: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var name: String { get } // the printer name
    @objc optional var properties: IllustratorPrinterProperties { get } // the printer information
    @objc optional func setName(_ name: String!) // the printer name
    @objc optional func setProperties(_ properties: IllustratorPrinterProperties!) // the printer information
}
extension SBObject: IllustratorPrinter {}

// MARK: IllustratorPrinterProperties
@objc public protocol IllustratorPrinterProperties: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var binaryPrinting: Bool { get } // does the printer support binary printing?
    @objc optional var colorSupport: IllustratorEPCM { get } // the printer color capability
    @objc optional var customPaperSizes: Bool { get } // does the printer support custom paper size?
    @objc optional var customPaperTransverse: Bool { get } // does the printer support custom paper transverse?
    @objc optional var defaultResolution: Double { get } // the printer default resolution
    @objc optional var InRIPSeparationSupport: Bool { get } // does the printer support InRIP color separation?
    @objc optional var maximumHeightOffset: Double { get } // custom paper's maximum height offset
    @objc optional var maximumPaperHeight: Double { get } // custom paper's maximum height
    @objc optional var maximumPaperWidth: Double { get } // custom paper's maximum width
    @objc optional var maximumResolution: Double { get } // the printer maximum device resolution
    @objc optional var maximumWidthOffset: Double { get } // custom paper's maximum width offset
    @objc optional var minimumHeightOffset: Double { get } // custom paper's minimum height offset
    @objc optional var minimumPaperHeight: Double { get } // custom paper's minimum height
    @objc optional var minimumPaperWidth: Double { get } // custom paper's minimum width
    @objc optional var minimumWidthOffset: Double { get } // custom paper's minimum width offset
    @objc optional var paperSizes: [IllustratorPaper] { get } // the list of supported paper sizes
    @objc optional var PostScript: IllustratorEPPS { get } // the PostScript level
    @objc optional var printerType: IllustratorEPTY { get } // the printer type
    @objc optional func setBinaryPrinting(_ binaryPrinting: Bool) // does the printer support binary printing?
    @objc optional func setColorSupport(_ colorSupport: IllustratorEPCM) // the printer color capability
    @objc optional func setCustomPaperSizes(_ customPaperSizes: Bool) // does the printer support custom paper size?
    @objc optional func setCustomPaperTransverse(_ customPaperTransverse: Bool) // does the printer support custom paper transverse?
    @objc optional func setDefaultResolution(_ defaultResolution: Double) // the printer default resolution
    @objc optional func setInRIPSeparationSupport(_ InRIPSeparationSupport: Bool) // does the printer support InRIP color separation?
    @objc optional func setMaximumHeightOffset(_ maximumHeightOffset: Double) // custom paper's maximum height offset
    @objc optional func setMaximumPaperHeight(_ maximumPaperHeight: Double) // custom paper's maximum height
    @objc optional func setMaximumPaperWidth(_ maximumPaperWidth: Double) // custom paper's maximum width
    @objc optional func setMaximumResolution(_ maximumResolution: Double) // the printer maximum device resolution
    @objc optional func setMaximumWidthOffset(_ maximumWidthOffset: Double) // custom paper's maximum width offset
    @objc optional func setMinimumHeightOffset(_ minimumHeightOffset: Double) // custom paper's minimum height offset
    @objc optional func setMinimumPaperHeight(_ minimumPaperHeight: Double) // custom paper's minimum height
    @objc optional func setMinimumPaperWidth(_ minimumPaperWidth: Double) // custom paper's minimum width
    @objc optional func setMinimumWidthOffset(_ minimumWidthOffset: Double) // custom paper's minimum width offset
    @objc optional func setPaperSizes(_ paperSizes: [IllustratorPaper]!) // the list of supported paper sizes
    @objc optional func setPostScript(_ PostScript: IllustratorEPPS) // the PostScript level
    @objc optional func setPrinterType(_ printerType: IllustratorEPTY) // the printer type
}
extension SBObject: IllustratorPrinterProperties {}

// MARK: IllustratorScreenProperties
@objc public protocol IllustratorScreenProperties: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var angle: Double { get } // the screen's angle (in degrees)
    @objc optional var defaultScreen: Bool { get } // Is it the default screen?
    @objc optional var frequency: Double { get } // the screen's frequency
    @objc optional func setAngle(_ angle: Double) // the screen's angle (in degrees)
    @objc optional func setDefaultScreen(_ defaultScreen: Bool) // Is it the default screen?
    @objc optional func setFrequency(_ frequency: Double) // the screen's frequency
}
extension SBObject: IllustratorScreenProperties {}

// MARK: IllustratorScreenSpotFunction
@objc public protocol IllustratorScreenSpotFunction: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var name: String { get } // the color separation screen spot function name
    @objc optional var spotFunction: String { get } // the spot function in terms of the PostScript commands
    @objc optional func setName(_ name: String!) // the color separation screen spot function name
    @objc optional func setSpotFunction(_ spotFunction: String!) // the spot function in terms of the PostScript commands
}
extension SBObject: IllustratorScreenSpotFunction {}

// MARK: IllustratorSeparationScreen
@objc public protocol IllustratorSeparationScreen: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var name: String { get } // the color separation screen name
    @objc optional var properties: IllustratorScreenProperties { get } // the color separation screen information
    @objc optional func setName(_ name: String!) // the color separation screen name
    @objc optional func setProperties(_ properties: IllustratorScreenProperties!) // the color separation screen information
}
extension SBObject: IllustratorSeparationScreen {}

// MARK: IllustratorTracingobject
@objc public protocol IllustratorTracingobject: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var anchorCount: Int { get } // The number of anchors in the tracing result.
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var originalArt: IllustratorPageItem { get } // The source art used when creating a new tracing object.
    @objc optional var pathCount: Int { get } // The number of paths in the tracing result.
    @objc optional var tracingOptions: IllustratorTracingoptions { get } // The options used when tracing the artwork.
    @objc optional var usedColorCount: Int { get } // The number of colors used in the tracing result.
    @objc optional func expandTracingViewed(_ viewed: Bool) -> IllustratorGroupItem // Expand the tracing to paths.  Deletes this tracing object.
    @objc optional func releaseTracing() -> IllustratorPageItem // Release the source artwork for the tracing object.  Deletes this tracing object.
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
}
extension SBObject: IllustratorTracingobject {}

// MARK: IllustratorTracingoptions
@objc public protocol IllustratorTracingoptions: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var colorFidelity: Double { get } // ColorFidelity when TracingColorTypeValue is TracingFullColor.
    @objc optional var colorgroup: String { get } // The color group name used for tracing. Use 'All' or any color group name available in color Palette (library).
    @objc optional var container: SBObject { get } // the object's container
    @objc optional var CornerFidelity: Double { get } // Corner fidelity for tracing.
    @objc optional var fills: Bool { get } // Tracing with fills. Fills, Strokes or both must be on.
    @objc optional var grayLevels: Int { get } // The gray levels for a grayscale mode tracing.. ( 1 - 256 )
    @objc optional var ignoreWhite: Bool { get } // Controls whether to ignore white fill color. Works only if TracingMethod is TracingMethodAbutting and mode is Black and white.
    @objc optional var maximumColors: Int { get } // Maximum number of colors allowed for tracing when TracingColorTypeValue is TracingLimitedColor.
    @objc optional var maximumStrokeWeight: Double { get } // Maximum stroke weight (stroke only).
    @objc optional var NoiseFidelity: Double { get } // Specifies minimum area of pixels to be vectorized.
    @objc optional var palette: String { get } // The color palette (Library) name used for tracing. Use 'Document Library' or any other imported library name.
    @objc optional var PathFidelity: Double { get } // Path fidelity for tracing.
    @objc optional var preset: String { get } // The name of the preset in use.  Read-only.
    @objc optional var snapCurveToLines: Bool { get } // Controls whether to snap curve to lines.
    @objc optional var strokes: Bool { get } // Tracing with strokes.  Fills, Strokes or both must be on.
    @objc optional var threshold: Int { get } // The threshold value for a black and white mode tracing. ( 1 - 256 )
    @objc optional var TracingColorTypeValue: IllustratorETCt { get } // Color Type used for tracing, TracingLimitedColor or TracingFullColor .
    @objc optional var TracingMethod: IllustratorETet { get } // Method for tracing, either abutting or adjoining paths.
    @objc optional var tracingMode: IllustratorETMt { get } // The tracing mode: color, gray, black and white.
    @objc optional var viewMode: IllustratorETvv { get } // The visualization mode.
    @objc optional func loadPresetPresetname(_ presetname: String!) -> Bool // Load options from preset.
    @objc optional func storePresetPresetname(_ presetname: String!) -> Bool // Store options to a preset kAiVectorizeSuite.  Will overwrite an existing (unlocked) preset if names match.
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setColorFidelity(_ colorFidelity: Double) // ColorFidelity when TracingColorTypeValue is TracingFullColor.
    @objc optional func setColorgroup(_ colorgroup: String!) // The color group name used for tracing. Use 'All' or any color group name available in color Palette (library).
    @objc optional func setCornerFidelity(_ CornerFidelity: Double) // Corner fidelity for tracing.
    @objc optional func setFills(_ fills: Bool) // Tracing with fills. Fills, Strokes or both must be on.
    @objc optional func setGrayLevels(_ grayLevels: Int) // The gray levels for a grayscale mode tracing.. ( 1 - 256 )
    @objc optional func setIgnoreWhite(_ ignoreWhite: Bool) // Controls whether to ignore white fill color. Works only if TracingMethod is TracingMethodAbutting and mode is Black and white.
    @objc optional func setMaximumColors(_ maximumColors: Int) // Maximum number of colors allowed for tracing when TracingColorTypeValue is TracingLimitedColor.
    @objc optional func setMaximumStrokeWeight(_ maximumStrokeWeight: Double) // Maximum stroke weight (stroke only).
    @objc optional func setNoiseFidelity(_ NoiseFidelity: Double) // Specifies minimum area of pixels to be vectorized.
    @objc optional func setPalette(_ palette: String!) // The color palette (Library) name used for tracing. Use 'Document Library' or any other imported library name.
    @objc optional func setPathFidelity(_ PathFidelity: Double) // Path fidelity for tracing.
    @objc optional func setSnapCurveToLines(_ snapCurveToLines: Bool) // Controls whether to snap curve to lines.
    @objc optional func setStrokes(_ strokes: Bool) // Tracing with strokes.  Fills, Strokes or both must be on.
    @objc optional func setThreshold(_ threshold: Int) // The threshold value for a black and white mode tracing. ( 1 - 256 )
    @objc optional func setTracingColorTypeValue(_ TracingColorTypeValue: IllustratorETCt) // Color Type used for tracing, TracingLimitedColor or TracingFullColor .
    @objc optional func setTracingMethod(_ TracingMethod: IllustratorETet) // Method for tracing, either abutting or adjoining paths.
    @objc optional func setTracingMode(_ tracingMode: IllustratorETMt) // The tracing mode: color, gray, black and white.
    @objc optional func setViewMode(_ viewMode: IllustratorETvv) // The visualization mode.
}
extension SBObject: IllustratorTracingoptions {}

// MARK: IllustratorAsset
@objc public protocol IllustratorAsset: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var bestType: NSNumber { get } // the best type for the object's value
    @objc optional var defaultType: NSNumber { get } // the default type for the object's value
    @objc optional var index: Int { get } // the index of this instance of the object
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object's properties returned in a single record
    @objc optional var assetid: Int { get } // The UID for the asset which is unique within a document
    @objc optional var assetname: String { get } // Name of the asset
    @objc optional var container: SBObject { get } // the object's container
    @objc optional func normalizedName() -> String // Gets the normalized name without special characters, such that it can be used as a file name
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object's properties returned in a single record
    @objc optional func setAssetname(_ assetname: String!) // Name of the asset
}
extension SBObject: IllustratorAsset {}

// MARK: IllustratorAddfromselection
@objc public protocol IllustratorAddfromselection: SBObjectProtocol, IllustratorGenericMethods {
}
extension SBObject: IllustratorAddfromselection {}

// MARK: IllustratorAdd
@objc public protocol IllustratorAdd: SBObjectProtocol, IllustratorGenericMethods {
    @objc optional var sourceArt: Any { get } // The page item(s) to apply to
    @objc optional func setSourceArt(_ sourceArt: Any!) // The page item(s) to apply to
}
extension SBObject: IllustratorAdd {}

