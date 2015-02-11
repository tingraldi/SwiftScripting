
enum SystemEventsSaveOptions {
	SystemEventsSaveOptionsYes = 'yes ' /* Save the file. */,
	SystemEventsSaveOptionsNo = 'no  ' /* Do not save the file. */,
	SystemEventsSaveOptionsAsk = 'ask ' /* Ask the user whether or not to save the file. */
};
typedef enum SystemEventsSaveOptions SystemEventsSaveOptions;

enum SystemEventsPrintingErrorHandling {
	SystemEventsPrintingErrorHandlingStandard = 'lwst' /* Standard PostScript error handling */,
	SystemEventsPrintingErrorHandlingDetailed = 'lwdt' /* print a detailed report of PostScript errors */
};
typedef enum SystemEventsPrintingErrorHandling SystemEventsPrintingErrorHandling;

enum SystemEventsSaveableFileFormat {
	SystemEventsSaveableFileFormatText = 'ctxt' /* Text File Format */
};
typedef enum SystemEventsSaveableFileFormat SystemEventsSaveableFileFormat;

enum SystemEventsScrollPageBehaviors {
	SystemEventsScrollPageBehaviorsJumpToHere = 'tohr' /* jump to here */,
	SystemEventsScrollPageBehaviorsJumpToNextPage = 'nxpg' /* jump to next page */
};
typedef enum SystemEventsScrollPageBehaviors SystemEventsScrollPageBehaviors;

enum SystemEventsFontSmoothingStyles {
	SystemEventsFontSmoothingStylesAutomatic = 'autm' /* automatic */,
	SystemEventsFontSmoothingStylesLight = 'lite' /* light */,
	SystemEventsFontSmoothingStylesMedium = 'medi' /* medium */,
	SystemEventsFontSmoothingStylesStandard = 'stnd' /* standard */,
	SystemEventsFontSmoothingStylesStrong = 'strg' /* strong */
};
typedef enum SystemEventsFontSmoothingStyles SystemEventsFontSmoothingStyles;

enum SystemEventsAppearances {
	SystemEventsAppearancesBlue = 'blue' /* blue */,
	SystemEventsAppearancesGraphite = 'grft' /* graphite */
};
typedef enum SystemEventsAppearances SystemEventsAppearances;

enum SystemEventsHighlightColors {
	SystemEventsHighlightColorsBlue = 'blue' /* blue */,
	SystemEventsHighlightColorsGold = 'gold' /* gold */,
	SystemEventsHighlightColorsGraphite = 'grft' /* graphite */,
	SystemEventsHighlightColorsGreen = 'gren' /* green */,
	SystemEventsHighlightColorsOrange = 'orng' /* orange */,
	SystemEventsHighlightColorsPurple = 'prpl' /* purple */,
	SystemEventsHighlightColorsRed = 'red ' /* red */,
	SystemEventsHighlightColorsSilver = 'slvr' /* silver */
};
typedef enum SystemEventsHighlightColors SystemEventsHighlightColors;

enum SystemEventsDhac {
	SystemEventsDhacAskWhatToDo = 'dhas' /* ask what to do */,
	SystemEventsDhacIgnore = 'dhig' /* ignore */,
	SystemEventsDhacOpenApplication = 'dhap' /* open application */,
	SystemEventsDhacRunAScript = 'dhrs' /* run a script */
};
typedef enum SystemEventsDhac SystemEventsDhac;

enum SystemEventsDpls {
	SystemEventsDplsBottom = 'bott' /* bottom */,
	SystemEventsDplsLeft = 'left' /* left */,
	SystemEventsDplsRight = 'righ' /* right */
};
typedef enum SystemEventsDpls SystemEventsDpls;

enum SystemEventsDpef {
	SystemEventsDpefGenie = 'geni' /* genie */,
	SystemEventsDpefScale = 'scal' /* scale */
};
typedef enum SystemEventsDpef SystemEventsDpef;

enum SystemEventsEdfm {
	SystemEventsEdfmApplePhotoFormat = 'dfph' /* Apple Photo format */,
	SystemEventsEdfmAppleShareFormat = 'dfas' /* AppleShare format */,
	SystemEventsEdfmAudioFormat = 'dfau' /* audio format */,
	SystemEventsEdfmHighSierraFormat = 'dfhs' /* High Sierra format */,
	SystemEventsEdfmISO9660Format = 'df96' /* ISO 9660 format */,
	SystemEventsEdfmMacOSExtendedFormat = 'dfh+' /* Mac OS Extended format */,
	SystemEventsEdfmMacOSFormat = 'dfhf' /* Mac OS format */,
	SystemEventsEdfmMSDOSFormat = 'dfms' /* MSDOS format */,
	SystemEventsEdfmNFSFormat = 'dfnf' /* NFS format */,
	SystemEventsEdfmProDOSFormat = 'dfpr' /* ProDOS format */,
	SystemEventsEdfmQuickTakeFormat = 'dfqt' /* QuickTake format */,
	SystemEventsEdfmUDFFormat = 'dfud' /* UDF format */,
	SystemEventsEdfmUFSFormat = 'dfuf' /* UFS format */,
	SystemEventsEdfmUnknownFormat = 'df$$' /* unknown format */,
	SystemEventsEdfmWebDAVFormat = 'dfwd' /* WebDAV format */
};
typedef enum SystemEventsEdfm SystemEventsEdfm;

enum SystemEventsEMds {
	SystemEventsEMdsCommandDown = 'Kcmd' /* command down */,
	SystemEventsEMdsControlDown = 'Kctl' /* control down */,
	SystemEventsEMdsOptionDown = 'Kopt' /* option down */,
	SystemEventsEMdsShiftDown = 'Ksft' /* shift down */
};
typedef enum SystemEventsEMds SystemEventsEMds;

enum SystemEventsEMky {
	SystemEventsEMkyCommand = 'eCmd' /* command */,
	SystemEventsEMkyControl = 'eCnt' /* control */,
	SystemEventsEMkyOption = 'eOpt' /* option */,
	SystemEventsEMkyShift = 'eSft' /* shift */
};
typedef enum SystemEventsEMky SystemEventsEMky;

enum SystemEventsPrmd {
	SystemEventsPrmdNormal = 'norm' /* normal */,
	SystemEventsPrmdSlideShow = 'pmss' /* slide show */
};
typedef enum SystemEventsPrmd SystemEventsPrmd;

enum SystemEventsMvsz {
	SystemEventsMvszCurrent = 'cust' /* current */,
	SystemEventsMvszDouble = 'doub' /* double */,
	SystemEventsMvszHalf = 'half' /* half */,
	SystemEventsMvszNormal = 'norm' /* normal */,
	SystemEventsMvszScreen = 'fits' /* screen */
};
typedef enum SystemEventsMvsz SystemEventsMvsz;

enum SystemEventsEnum {
	SystemEventsEnumStandard = 'lwst' /* Standard PostScript error handling */,
	SystemEventsEnumDetailed = 'lwdt' /* print a detailed report of PostScript errors */
};
typedef enum SystemEventsEnum SystemEventsEnum;

enum SystemEventsAccs {
	SystemEventsAccsNone = 'none' /* none */,
	SystemEventsAccsReadOnly = 'read' /* read only */,
	SystemEventsAccsReadWrite = 'rdwr' /* read write */,
	SystemEventsAccsWriteOnly = 'writ' /* write only */
};
typedef enum SystemEventsAccs SystemEventsAccs;
