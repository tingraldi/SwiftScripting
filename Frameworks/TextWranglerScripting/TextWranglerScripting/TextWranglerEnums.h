
enum TextWranglerEnum {
	TextWranglerEnumStandard = 'lwst' /* Standard PostScript error handling   */,
	TextWranglerEnumDetailed = 'lwdt' /* print a detailed report of PostScript errors */
};
typedef enum TextWranglerEnum TextWranglerEnum;

enum TextWranglerRAsE {
	TextWranglerRAsEAuto_detectFile = 'RdAD',
	TextWranglerRAsEUTF8File = 'RdU8',
	TextWranglerRAsEUnicodeFile = 'RdUb',
	TextWranglerRAsEByteSwappedUnicodeFile = 'RdUl'
};
typedef enum TextWranglerRAsE TextWranglerRAsE;

enum TextWranglerPstp {
	TextWranglerPstpModificationDate = 'asmo',
	TextWranglerPstpPrintingDate = 'PrnD'
};
typedef enum TextWranglerPstp TextWranglerPstp;

enum TextWranglerOpnE {
	TextWranglerOpnEFront_window = 'FrtW',
	TextWranglerOpnENew_window = 'NewW',
	TextWranglerOpnESeparate_windows = 'SepW'
};
typedef enum TextWranglerOpnE TextWranglerOpnE;

enum TextWranglerSavo {
	TextWranglerSavoYes = 'yes ' /* Save objects now */,
	TextWranglerSavoNo = 'no  ' /* Do not save objects */,
	TextWranglerSavoAsk = 'ask ' /* Ask the user whether to save */
};
typedef enum TextWranglerSavo TextWranglerSavo;

enum TextWranglerKfrm {
	TextWranglerKfrmIndex = 'indx' /* keyform designating indexed access */,
	TextWranglerKfrmNamed = 'name' /* keyform designating named access */,
	TextWranglerKfrmId = 'ID  ' /* keyform designating identifier access */
};
typedef enum TextWranglerKfrm TextWranglerKfrm;

enum TextWranglerRevo {
	TextWranglerRevoYes = 'yes ' /* discard changes now */,
	TextWranglerRevoAsk = 'ask ' /* ask the user whether to discard changes */
};
typedef enum TextWranglerRevo TextWranglerRevo;

enum TextWranglerStyl {
	TextWranglerStylPlain = 'plan' /* plain (no style) */,
	TextWranglerStylBold = 'bold' /* bold face */,
	TextWranglerStylItalic = 'ital' /* italic */,
	TextWranglerStylOutline = 'outl' /* outline */,
	TextWranglerStylShadow = 'shad' /* shadow */,
	TextWranglerStylUnderline = 'undl' /* underline */,
	TextWranglerStylCondensed = 'cond' /* condensed */,
	TextWranglerStylExtended = 'Extd' /* extended */
};
typedef enum TextWranglerStyl TextWranglerStyl;

enum TextWranglerLinB {
	TextWranglerLinBMac = 'CR  ' /* Mac format (CR) */,
	TextWranglerLinBUnix = 'LF  ' /* Unix format (LF) */,
	TextWranglerLinBDOS = 'CRLF' /* DOS/Windows format (CRLF) */
};
typedef enum TextWranglerLinB TextWranglerLinB;

enum TextWranglerWrMd {
	TextWranglerWrMdPageGuide = 'WrPh' /* wrap to the page guide */,
	TextWranglerWrMdWindowWidth = 'WrWn' /* wrap to the window width */,
	TextWranglerWrMdCharacterWidth = 'WrCh' /* wrap to a specified number of characters */
};
typedef enum TextWranglerWrMd TextWranglerWrMd;

enum TextWranglerSMod {
	TextWranglerSModLiteral = 'Ltrl' /* a literal text search */,
	TextWranglerSModGrep = 'Grep' /* a “grep” search */
};
typedef enum TextWranglerSMod TextWranglerSMod;

enum TextWranglerCact {
	TextWranglerCactRaiseCase = 'Rase' /* make all characters upper-case */,
	TextWranglerCactLowerCase = 'Lowr' /* make all characters lower-case */,
	TextWranglerCactCapitalizeWords = 'CapW' /* make the first letter of all words upper-case, make all other letters lower-case */,
	TextWranglerCactCapitalizeSentences = 'CapS' /* make the first letter of all words upper-case, make all other letters lower-case */,
	TextWranglerCactCapitalizeLines = 'CapL' /* make the first letter of all lines upper-case, leave all other letters alone */
};
typedef enum TextWranglerCact TextWranglerCact;

enum TextWranglerIndt {
	TextWranglerIndtNone = 'nInd' /* do not indent wrapped paragraphs */,
	TextWranglerIndtFirst_line = 'Frst' /* indent first line of wrapped paragraphs */,
	TextWranglerIndtAll_lines = 'AllL' /* indent all lines of wrapped paragraphs */,
	TextWranglerIndtReverse_indent = 'RevI' /* indent all lines of wrapped paragraphs -except- the first */,
	TextWranglerIndtSame_as_first_line = 'SFrs' /* indent all lines of wrapped paragraphs to the same level as the first line */
};
typedef enum TextWranglerIndt TextWranglerIndt;

enum TextWranglerZAct {
	TextWranglerZActDelete_gremlin = 'Zdel' /* delete gremlins */,
	TextWranglerZActReplace_with_code = 'Zrcd' /* replace gremlins with hex code */,
	TextWranglerZActReplace_with_char = 'Zrch' /* replace gremlins with a printable character */
};
typedef enum TextWranglerZAct TextWranglerZAct;

enum TextWranglerCFop {
	TextWranglerCFopFile_contains = '+Cnt' /* file contains literal string */,
	TextWranglerCFopFile_does_not_contain = '-Cnt' /* file does not contain literal string */,
	TextWranglerCFopFile_matches = '+Grp' /* file contains a match for Grep pattern */,
	TextWranglerCFopFile_does_not_match = '-Grp' /* file does not contain a match for Grep pattern */
};
typedef enum TextWranglerCFop TextWranglerCFop;

enum TextWranglerErsl {
	TextWranglerErslError_kind = 'Err ' /* result entry describes an error */,
	TextWranglerErslWarning_kind = 'Wrng' /* result entry describes a warning */,
	TextWranglerErslNote_kind = 'Note' /* result entry is informational or describes a search result */
};
typedef enum TextWranglerErsl TextWranglerErsl;

enum TextWranglerShDr {
	TextWranglerShDrLeft = 'left' /* it's just a jump to the left! */,
	TextWranglerShDrRight = 'rght' /* and then a step to the right... */
};
typedef enum TextWranglerShDr TextWranglerShDr;

enum TextWranglerFltM {
	TextWranglerFltMAnd_mode = 'andF' /* all criteria must match */,
	TextWranglerFltMOr_mode = 'orF ' /* any criteria may match */
};
typedef enum TextWranglerFltM TextWranglerFltM;

enum TextWranglerFiel {
	TextWranglerFielFile_name = 'Fnam' /* examines file’s name */,
	TextWranglerFielParent_name = '\304nam' /* examines name of enclosing folder */,
	TextWranglerFielFile_type = 'Ftyp' /* examines file’s type code */,
	TextWranglerFielFile_creator = 'Fcrt' /* examines file’s creator code */,
	TextWranglerFielCreation_date_only = 'Cdat' /* examines file’s creation date, ignoring the time */,
	TextWranglerFielCreation_date_and_time = 'CdaT' /* examines file’s creation date, including the time */,
	TextWranglerFielMod_date_only = 'Mdat' /* examines file’s modification date, ignoring the time */,
	TextWranglerFielMod_date_and_time = 'MdaT' /* examines file’s modification date, including the time */,
	TextWranglerFielFile_label = 'Flab' /* examines file’s Finder label (0 = none) */,
	TextWranglerFielFile_visible = 'Fvis' /* examines file’s visibility */,
	TextWranglerFielFile_locked = 'Flck' /* examines file’s lock state */,
	TextWranglerFielFile_language = 'Flan' /* examines file’s source language code */
};
typedef enum TextWranglerFiel TextWranglerFiel;

enum TextWranglerOper {
	TextWranglerOperOp_is_equal = '+Equ' /* is equal to */,
	TextWranglerOperOp_is_not_equal = '-Equ' /* is not equal to */,
	TextWranglerOperOp_less_than = '+Lt ' /* is less than */,
	TextWranglerOperOp_less_than_or_equal = '+LEq' /* is less than or equal to */,
	TextWranglerOperOp_greater_than = '+Gt ' /* is greater than */,
	TextWranglerOperOp_greater_than_or_equal = '+GEq' /* is greater than or equal to */,
	TextWranglerOperOp_starts_with = '+Beg' /* starts with literal string */,
	TextWranglerOperOp_does_not_start_with = '-Beg' /* does not start with literal string */,
	TextWranglerOperOp_ends_with = '+End' /* ends with literal string */,
	TextWranglerOperOp_does_not_end_with = '-End' /* does not end with literal string */,
	TextWranglerOperOp_contains = '+Cnt' /* contains literal string */,
	TextWranglerOperOp_does_not_contain = '-Cnt' /* does not contain literal string */,
	TextWranglerOperOp_matches_grep = '+Grp' /* contains a match for Grep pattern */,
	TextWranglerOperOp_does_not_match_grep = '-Grp' /* does not contain a match for Grep pattern */,
	TextWranglerOperOp_matches_wildcard = '+Wld' /* matches wildcard pattern */,
	TextWranglerOperOp_does_not_match_wildcard = '-Wld' /* does not match wildcard pattern */
};
typedef enum TextWranglerOper TextWranglerOper;

enum TextWranglerMMod {
	TextWranglerMModMatching_all = 'MAll' /* delete/copy all duplicates */,
	TextWranglerMModLeaving_one = 'Lev1' /* uniquify (leave one behind of a set of duplicates) */
};
typedef enum TextWranglerMMod TextWranglerMMod;

enum TextWranglerESbM {
	TextWranglerESbMEntire_match = 'EntL' /* use the entire matched portion of the line as the sort/match key */,
	TextWranglerESbMAll_subpatterns = 'ASub' /* use all subpatterns (\1...\N) as the sort/match key */,
	TextWranglerESbMUse_subpattern = 'SubP' /* use a specified subpattern as the sort/match key */
};
typedef enum TextWranglerESbM TextWranglerESbM;

enum TextWranglerOMd {
	TextWranglerOMdUnixScriptOutputWindow = 'mprl',
	TextWranglerOMdNewUntitledWindow = 'nwin',
	TextWranglerOMdScriptLogOutputWindow = 'lwin'
};
typedef enum TextWranglerOMd TextWranglerOMd;

enum TextWranglerFOM {
	TextWranglerFOMUnixScriptOutputWindow = 'mprl',
	TextWranglerFOMNewUntitledWindow = 'nwin'
};
typedef enum TextWranglerFOM TextWranglerFOM;
