/*
 * TextWrangler.h
 */

#import <AppKit/AppKit.h>
#import <ScriptingBridge/ScriptingBridge.h>


@class TextWranglerPrintSettings, TextWranglerItem, TextWranglerApplication, TextWranglerClipboard, TextWranglerDocument, TextWranglerFile, TextWranglerFilter, TextWranglerFilter_term, TextWranglerImageDocument, TextWranglerShellDocument, TextWranglerTextDocument, TextWranglerWindow, TextWranglerDifferences_window, TextWranglerDiskBrowserWindow, TextWranglerFind_window, TextWranglerMultifile_search_window, TextWranglerFTPBrowserWindow, TextWranglerOpen_file_by_name_window, TextWranglerPalette, TextWranglerMultifile_differences_window, TextWranglerPlugin_info_window, TextWranglerPreferences_window, TextWranglerImageWindow, TextWranglerResultsBrowser, TextWranglerSearchResultsBrowser, TextWranglerShellWindow, TextWranglerTextWindow, TextWranglerScratchpad_window, TextWranglerProjectWindow, TextWranglerPerl_reference_window, TextWranglerCompareOptions, TextWranglerCompareResults, TextWranglerFTPInfo, TextWranglerMarkOptions, TextWranglerResultEntry, TextWranglerSearchOptions, TextWranglerSearchMatch, TextWranglerSearchStringProperties, TextWranglerSortLinesOptions, TextWranglerSortLinesOutputOptions, TextWranglerProcessDuplicatesOptions, TextWranglerProcessDuplicatesOutputOptions, TextWranglerProcessDuplicatesResults, TextWranglerProcessLinesContainingOutputOptions, TextWranglerProcessLinesContainingResults, TextWranglerText_object, TextWranglerInsertionPoint, TextWranglerCharacter, TextWranglerWord, TextWranglerLine, TextWranglerDisplay_line, TextWranglerText;

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
	/*TextWranglerFielParent_name = '\304nam' * examines name of enclosing folder *, CAN'T MAP TO SWIFT - Negative char code*/
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



/*
 * Required Suite
 */

@interface TextWranglerPrintSettings : SBObject

@property (readonly) NSInteger copies;  // the number of copies of a document to be printed 
@property (readonly) BOOL collating;  // Should printed copies be collated?
@property (readonly) NSInteger startingPage;  // the first page of the document to be printed
@property (readonly) NSInteger endingPage;  // the last page of the document to be printed
@property (readonly) NSInteger pagesAcross;  // number of logical pages laid across a physical page
@property (readonly) NSInteger pagesDown;  // number of logical pages laid out down a physical page
@property (copy, readonly) NSDate *requestedPrintTime;  // the time at which the desktop printer should print the document...
@property (readonly) TextWranglerEnum errorHandling;  // how errors are handled
@property (copy, readonly) NSArray *printerFeatures;  // for printer specific features
@property (copy, readonly) NSString *faxNumber;  // for fax number
@property (copy, readonly) NSString *targetPrinter;  // for target printer
@property (copy, readonly) NSString *printingFont;
@property (readonly) NSInteger printingFontSize;
@property (copy, readonly) NSString *printingFontStyle;
@property (readonly) NSInteger printingTabWidth;
@property (readonly) BOOL usingDocumentFont;
@property (readonly) BOOL framingPage;
@property (readonly) BOOL pageHeaders;
@property (readonly) BOOL lineNumbers;
@property (readonly) BOOL gutter;
@property (readonly) BOOL fullPath;
@property (readonly) BOOL printColorSyntax;
@property (readonly) TextWranglerPstp timeStamp;

- (void) openWithProperties:(NSDictionary *)withProperties openingIn:(id)openingIn stationeryAwareness:(BOOL)stationeryAwareness LFTranslation:(BOOL)LFTranslation readOnly:(BOOL)readOnly readingAs:(TextWranglerRAsE)readingAs addingToRecentList:(BOOL)addingToRecentList;  // Opens the specified item(s)
- (void) printWithProperties:(TextWranglerPrintSettings *)withProperties printDialog:(BOOL)printDialog;  // Print the specified object(s)
- (void) closeSaving:(TextWranglerSavo)saving savingIn:(id)savingIn;  // Closes the designated window.
- (void) delete;  // Delete an element from an object
- (SBObject *) duplicateTo:(SBObject *)to;  // Duplicate object(s)
- (BOOL) exists;  // Verify if an object exists
- (SBObject *) moveTo:(SBObject *)to;  // Move object(s) to a new location
- (void) saveTo:(id)to savingAsStationery:(BOOL)savingAsStationery addToRecentList:(BOOL)addToRecentList;  // Save a window or document.
- (void) activate;  // activate the application or a window
- (void) copyAppendingToClipboard:(BOOL)appendingToClipboard NS_RETURNS_NOT_RETAINED;  // Copy an object to the clipboard
- (void) extendedCopyAppendingToClipboard:(BOOL)appendingToClipboard;  // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
- (void) cutAppendingToClipboard:(BOOL)appendingToClipboard;  // Cut an object to the clipboard
- (void) paste;  // Paste an object from the clipboard
- (void) pasteColumn;  // Paste an text from the clipboard forcing insertion as a rectangular column
- (void) redo;  // Reverses the effects of the most recent Undo, if possible.
- (void) revertDiscardingUnsavedChanges:(TextWranglerRevo)discardingUnsavedChanges;  // Restore the object to its last saved state
- (void) select;  // Select the specified object
- (void) undo;  // Undoes the effects of the last command, if possible.
- (void) exportTo:(id)to;  // Export an object
- (void) addLineBreaks;  // Inserts a hard line break character at the end of each soft-wrapped line
- (NSString *) addPrefixPrefix:(NSString *)prefix;  // inserts a string at the beginning of each line in the indicated text
- (NSString *) addSuffixSuffix:(NSString *)suffix;  // inserts a string at the end of each line in the indicated text
- (NSString *) removePrefixPrefix:(NSString *)prefix;  // removes a string from the beginning of each line in the indicated text
- (NSString *) removeSuffixSuffix:(NSString *)suffix;  // removes a string from the end of each line in the indicated text
- (NSString *) addPrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously adds a prefix and suffix to each line in the indicated text
- (NSString *) removePrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously removes a prefix and suffix from each line in the indicated text
- (NSString *) addLineNumbersStartNumber:(NSInteger)startNumber increment:(NSInteger)increment addingSpace:(BOOL)addingSpace keepingJustified:(BOOL)keepingJustified;  // numbers each line in the indicated text
- (NSString *) removeLineNumbersAddingSpace:(BOOL)addingSpace;  // removes leading numbering from each line in the indicated text
- (void) changeCaseMaking:(TextWranglerCact)making;  // Changes the case of text
- (void) clearUndoHistoryConfirming:(BOOL)confirming;  // Deletes all Undo/Redo history information for this document
- (NSString *) convertToASCIIReplacingTarget:(BOOL)replacingTarget;  // Converts 8-bit characters to 7-bit characters
- (void) decrementQuoteLevel;  // removes one level of Internet-style quoting from each line of the specified text
- (void) detabTabWidth:(NSInteger)tabWidth;  // Replace tabs with runs of spaces.
- (void) entabTabWidth:(NSInteger)tabWidth;  // Replace runs of spaces with tabs.
- (NSString *) educateQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert straight quotes into curly (typographer’s) quotes
- (NSString *) straightenQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert curly (typographer’s) quotes into straight quotes
- (void) hardWrapLimit:(TextWranglerWrMd)limit paragraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative;  // hard-wraps text to conform to the parameters
- (void) incrementQuoteLevelQuoteString:(NSString *)quoteString;  // adds one level of Internet-style quoting to each line of the specified text
- (void) markOptions:(TextWranglerMarkOptions *)options;  // mark matches of a specified search pattern with a string
- (NSString *) normalizeLineEndings;  // convert any CRLF pairs and LF characters remaining after line-break conversion
- (TextWranglerProcessDuplicatesResults *) processDuplicateLinesDuplicatesOptions:(TextWranglerProcessDuplicatesOptions *)duplicatesOptions outputOptions:(TextWranglerProcessDuplicatesOutputOptions *)outputOptions;  // analyze the specified text for duplicate lines
- (TextWranglerProcessLinesContainingResults *) processLinesContainingMatchingString:(NSString *)matchingString matchingWithGrep:(BOOL)matchingWithGrep caseSensitive:(BOOL)caseSensitive outputOptions:(TextWranglerProcessLinesContainingOutputOptions *)outputOptions;  // search for lines in the specified text containing the indicated string
- (void) removeLineBreaks;  // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
- (void) rewrapQuotedTextParagraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative removingQuoteSpaces:(BOOL)removingQuoteSpaces leavingTrailingQuoteSpaces:(BOOL)leavingTrailingQuoteSpaces;  // hard-wraps text, taking Internet-style line quoting into account
- (void) shiftDirection:(TextWranglerShDr)direction shiftingBySpaces:(BOOL)shiftingBySpaces;  // shift the specified text left or right, optionally by one space
- (NSString *) sortLinesSortingOptions:(TextWranglerSortLinesOptions *)sortingOptions outputOptions:(TextWranglerSortLinesOutputOptions *)outputOptions;  // order the lines in the specified text
- (void) stripQuotes;  // removes all Internet-style quoting from each line of the specified text
- (NSString *) zapGremlinsZapAction:(TextWranglerZAct)zapAction zapCharacter:(NSString *)zapCharacter nulls:(BOOL)nulls controls:(BOOL)controls nonASCIICharacters:(BOOL)nonASCIICharacters;  // Removes or replaces unwanted characters from text
- (void) appendToScratchpad;  // Appends the specified text to the global scratchpad.

@end



/*
 * BBEdit Suite
 */

// an OSA object
@interface TextWranglerItem : SBObject

@property (copy) NSDictionary *properties;  // all of this object’s properties
@property (copy, readonly) SBObject *container;  // object’s container (if any)

- (void) openWithProperties:(NSDictionary *)withProperties openingIn:(id)openingIn stationeryAwareness:(BOOL)stationeryAwareness LFTranslation:(BOOL)LFTranslation readOnly:(BOOL)readOnly readingAs:(TextWranglerRAsE)readingAs addingToRecentList:(BOOL)addingToRecentList;  // Opens the specified item(s)
- (void) printWithProperties:(TextWranglerPrintSettings *)withProperties printDialog:(BOOL)printDialog;  // Print the specified object(s)
- (void) closeSaving:(TextWranglerSavo)saving savingIn:(id)savingIn;  // Closes the designated window.
- (void) delete;  // Delete an element from an object
- (SBObject *) duplicateTo:(SBObject *)to;  // Duplicate object(s)
- (BOOL) exists;  // Verify if an object exists
- (SBObject *) moveTo:(SBObject *)to;  // Move object(s) to a new location
- (void) saveTo:(id)to savingAsStationery:(BOOL)savingAsStationery addToRecentList:(BOOL)addToRecentList;  // Save a window or document.
- (void) activate;  // activate the application or a window
- (void) copyAppendingToClipboard:(BOOL)appendingToClipboard NS_RETURNS_NOT_RETAINED;  // Copy an object to the clipboard
- (void) extendedCopyAppendingToClipboard:(BOOL)appendingToClipboard;  // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
- (void) cutAppendingToClipboard:(BOOL)appendingToClipboard;  // Cut an object to the clipboard
- (void) paste;  // Paste an object from the clipboard
- (void) pasteColumn;  // Paste an text from the clipboard forcing insertion as a rectangular column
- (void) redo;  // Reverses the effects of the most recent Undo, if possible.
- (void) revertDiscardingUnsavedChanges:(TextWranglerRevo)discardingUnsavedChanges;  // Restore the object to its last saved state
- (void) select;  // Select the specified object
- (void) undo;  // Undoes the effects of the last command, if possible.
- (void) exportTo:(id)to;  // Export an object
- (void) addLineBreaks;  // Inserts a hard line break character at the end of each soft-wrapped line
- (NSString *) addPrefixPrefix:(NSString *)prefix;  // inserts a string at the beginning of each line in the indicated text
- (NSString *) addSuffixSuffix:(NSString *)suffix;  // inserts a string at the end of each line in the indicated text
- (NSString *) removePrefixPrefix:(NSString *)prefix;  // removes a string from the beginning of each line in the indicated text
- (NSString *) removeSuffixSuffix:(NSString *)suffix;  // removes a string from the end of each line in the indicated text
- (NSString *) addPrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously adds a prefix and suffix to each line in the indicated text
- (NSString *) removePrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously removes a prefix and suffix from each line in the indicated text
- (NSString *) addLineNumbersStartNumber:(NSInteger)startNumber increment:(NSInteger)increment addingSpace:(BOOL)addingSpace keepingJustified:(BOOL)keepingJustified;  // numbers each line in the indicated text
- (NSString *) removeLineNumbersAddingSpace:(BOOL)addingSpace;  // removes leading numbering from each line in the indicated text
- (void) changeCaseMaking:(TextWranglerCact)making;  // Changes the case of text
- (void) clearUndoHistoryConfirming:(BOOL)confirming;  // Deletes all Undo/Redo history information for this document
- (NSString *) convertToASCIIReplacingTarget:(BOOL)replacingTarget;  // Converts 8-bit characters to 7-bit characters
- (void) decrementQuoteLevel;  // removes one level of Internet-style quoting from each line of the specified text
- (void) detabTabWidth:(NSInteger)tabWidth;  // Replace tabs with runs of spaces.
- (void) entabTabWidth:(NSInteger)tabWidth;  // Replace runs of spaces with tabs.
- (NSString *) educateQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert straight quotes into curly (typographer’s) quotes
- (NSString *) straightenQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert curly (typographer’s) quotes into straight quotes
- (void) hardWrapLimit:(TextWranglerWrMd)limit paragraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative;  // hard-wraps text to conform to the parameters
- (void) incrementQuoteLevelQuoteString:(NSString *)quoteString;  // adds one level of Internet-style quoting to each line of the specified text
- (void) markOptions:(TextWranglerMarkOptions *)options;  // mark matches of a specified search pattern with a string
- (NSString *) normalizeLineEndings;  // convert any CRLF pairs and LF characters remaining after line-break conversion
- (TextWranglerProcessDuplicatesResults *) processDuplicateLinesDuplicatesOptions:(TextWranglerProcessDuplicatesOptions *)duplicatesOptions outputOptions:(TextWranglerProcessDuplicatesOutputOptions *)outputOptions;  // analyze the specified text for duplicate lines
- (TextWranglerProcessLinesContainingResults *) processLinesContainingMatchingString:(NSString *)matchingString matchingWithGrep:(BOOL)matchingWithGrep caseSensitive:(BOOL)caseSensitive outputOptions:(TextWranglerProcessLinesContainingOutputOptions *)outputOptions;  // search for lines in the specified text containing the indicated string
- (void) removeLineBreaks;  // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
- (void) rewrapQuotedTextParagraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative removingQuoteSpaces:(BOOL)removingQuoteSpaces leavingTrailingQuoteSpaces:(BOOL)leavingTrailingQuoteSpaces;  // hard-wraps text, taking Internet-style line quoting into account
- (void) shiftDirection:(TextWranglerShDr)direction shiftingBySpaces:(BOOL)shiftingBySpaces;  // shift the specified text left or right, optionally by one space
- (NSString *) sortLinesSortingOptions:(TextWranglerSortLinesOptions *)sortingOptions outputOptions:(TextWranglerSortLinesOutputOptions *)outputOptions;  // order the lines in the specified text
- (void) stripQuotes;  // removes all Internet-style quoting from each line of the specified text
- (NSString *) zapGremlinsZapAction:(TextWranglerZAct)zapAction zapCharacter:(NSString *)zapCharacter nulls:(BOOL)nulls controls:(BOOL)controls nonASCIICharacters:(BOOL)nonASCIICharacters;  // Removes or replaces unwanted characters from text
- (void) appendToScratchpad;  // Appends the specified text to the global scratchpad.

@end

// An application program
@interface TextWranglerApplication : SBApplication

- (SBElementArray *) windows;
- (SBElementArray *) textWindows;
- (SBElementArray *) documents;
- (SBElementArray *) textDocuments;
- (SBElementArray *) palettes;
- (SBElementArray *) clipboards;

@property (readonly) NSInteger ID;  // object’s unique id
@property (copy, readonly) NSString *name;  // the name
@property (copy, readonly) SBObject *selection;  // the selection visible to the user
@property BOOL frontmost;  // Is this the frontmost application?
@property (copy, readonly) NSString *version;  // the version number of the application
@property (copy, readonly) id buildNumber;  // the build number of the application
@property (copy, readonly) NSString *serialNumber;  // the application’s serial number
@property (copy) id currentClipboard;  // the clipboard
@property (copy, readonly) TextWranglerSearchOptions *currentSearchOptions;  // search options used by the most recent search/replace operation
@property (copy) TextWranglerSearchStringProperties *currentSearchStrings;  // search strings used by the most recent search/replace operation
@property (copy, readonly) TextWranglerPalette *windowList;  // the floating window displaying the open windows in the application
@property (copy, readonly) TextWranglerPalette *ASCIITable;  // the floating window displaying ASCII character and escape sequences
@property (copy, readonly) TextWranglerFind_window *findWindow;  // the Find window
@property (copy, readonly) TextWranglerMultifile_search_window *findMultipleWindow;  // the Multi-File Search window
@property (copy, readonly) TextWranglerPalette *functionsList;  // the floating window displaying functions in the current document
@property (copy, readonly) TextWranglerPalette *jumpPointsList;  // the floating window displaying the jump points for the current document
@property (copy, readonly) TextWranglerPalette *markersList;  // the floating window displaying markers in the current document
@property (copy, readonly) TextWranglerOpen_file_by_name_window *OpenFileByNameWindow;  // the Open File by Name window
@property (copy, readonly) TextWranglerPalette *scriptsList;  // the floating window displaying available OSA scripts
@property (copy, readonly) TextWranglerPalette *UnixFiltersList;  // the floating window displaying items in the “Unix Filters” folder (uses “Perl Filters”)

- (void) run;  // Sent to an application when it is double-clicked
- (void) quit;  // Quit application
- (void) activate;  // activate the application or a window
- (void) copyAppendingToClipboard:(BOOL)appendingToClipboard NS_RETURNS_NOT_RETAINED;  // Copy an object to the clipboard
- (void) extendedCopyAppendingToClipboard:(BOOL)appendingToClipboard;  // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
- (void) cutAppendingToClipboard:(BOOL)appendingToClipboard;  // Cut an object to the clipboard
- (void) paste;  // Paste an object from the clipboard
- (void) pasteColumn;  // Paste an text from the clipboard forcing insertion as a rectangular column
- (void) redo;  // Reverses the effects of the most recent Undo, if possible.
- (void) select;  // Select the specified object
- (void) undo;  // Undoes the effects of the last command, if possible.
- (void) exportTo:(id)to;  // Export an object
- (void) applyTextFactory:(id)x to:(id)to options:(TextWranglerSearchOptions *)options filter:(TextWranglerFilter *)filter saving:(TextWranglerSavo)saving recursion:(BOOL)recursion textFilesOnly:(BOOL)textFilesOnly skipShieldedFolders:(BOOL)skipShieldedFolders searchInvisibleFolders:(BOOL)searchInvisibleFolders searchCompressedFiles:(BOOL)searchCompressedFiles;  // Applies the operations in a specified text factory to the designated items
- (void) clearUndoHistoryConfirming:(BOOL)confirming;  // Deletes all Undo/Redo history information for this document
- (TextWranglerCompareResults *) compare:(id)x against:(id)against options:(TextWranglerCompareOptions *)options filter:(TextWranglerFilter *)filter;  // compares two files or folders
- (TextWranglerSearchMatch *) find:(NSString *)x searchingIn:(id)searchingIn selectingMatch:(BOOL)selectingMatch options:(TextWranglerSearchOptions *)options excludingMatches:(BOOL)excludingMatches filter:(TextWranglerFilter *)filter recursion:(BOOL)recursion textFilesOnly:(BOOL)textFilesOnly skipShieldedFolders:(BOOL)skipShieldedFolders searchInvisibleFolders:(BOOL)searchInvisibleFolders searchCompressedFiles:(BOOL)searchCompressedFiles;  // Searches for text
- (NSString *) grepSubstitutionOf:(NSString *)of;  // computes the Grep replacement string based on the results of the most recent scripted Grep search
- (id) replace:(NSString *)x using:(NSString *)using_ searchingIn:(id)searchingIn searchingString:(NSString *)searchingString options:(TextWranglerSearchOptions *)options saving:(TextWranglerSavo)saving recursion:(BOOL)recursion textFilesOnly:(BOOL)textFilesOnly skipShieldedFolders:(BOOL)skipShieldedFolders;  // performs a Replace All
- (void) sleep;  // save application state and quit immediately
- (void) runUnixScript:(NSArray *)x selectionOnly:(BOOL)selectionOnly saveBeforeRunning:(BOOL)saveBeforeRunning useDebugger:(BOOL)useDebugger runInTerminal:(BOOL)runInTerminal chdirToScriptFolder:(BOOL)chdirToScriptFolder outputTo:(TextWranglerOMd)outputTo clearBeforeWriting:(BOOL)clearBeforeWriting saveAfterWriting:(BOOL)saveAfterWriting;  // runs the unix script in the front BBEdit window
- (void) runUnixFilter:(NSURL *)x outputSTDERRTo:(TextWranglerFOM)outputSTDERRTo clearBeforeWriting:(BOOL)clearBeforeWriting saveAfterWriting:(BOOL)saveAfterWriting replacingSelection:(BOOL)replacingSelection;  // runs the specified unix filter on the selection in the frontmost BBEdit window

@end

// A clipboard
@interface TextWranglerClipboard : SBObject

@property (copy) NSString *contents;  // contents of the clipboard
@property (readonly) NSInteger length;  // length of the clipboard text in characters
@property (readonly) NSInteger index;  // the index of this clipboard
@property (copy, readonly) NSString *sourceLanguage;  // name of the source language, for syntax coloring and function navigation

- (void) openWithProperties:(NSDictionary *)withProperties openingIn:(id)openingIn stationeryAwareness:(BOOL)stationeryAwareness LFTranslation:(BOOL)LFTranslation readOnly:(BOOL)readOnly readingAs:(TextWranglerRAsE)readingAs addingToRecentList:(BOOL)addingToRecentList;  // Opens the specified item(s)
- (void) printWithProperties:(TextWranglerPrintSettings *)withProperties printDialog:(BOOL)printDialog;  // Print the specified object(s)
- (void) closeSaving:(TextWranglerSavo)saving savingIn:(id)savingIn;  // Closes the designated window.
- (void) delete;  // Delete an element from an object
- (SBObject *) duplicateTo:(SBObject *)to;  // Duplicate object(s)
- (BOOL) exists;  // Verify if an object exists
- (SBObject *) moveTo:(SBObject *)to;  // Move object(s) to a new location
- (void) saveTo:(id)to savingAsStationery:(BOOL)savingAsStationery addToRecentList:(BOOL)addToRecentList;  // Save a window or document.
- (void) activate;  // activate the application or a window
- (void) copyAppendingToClipboard:(BOOL)appendingToClipboard NS_RETURNS_NOT_RETAINED;  // Copy an object to the clipboard
- (void) extendedCopyAppendingToClipboard:(BOOL)appendingToClipboard;  // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
- (void) cutAppendingToClipboard:(BOOL)appendingToClipboard;  // Cut an object to the clipboard
- (void) paste;  // Paste an object from the clipboard
- (void) pasteColumn;  // Paste an text from the clipboard forcing insertion as a rectangular column
- (void) redo;  // Reverses the effects of the most recent Undo, if possible.
- (void) revertDiscardingUnsavedChanges:(TextWranglerRevo)discardingUnsavedChanges;  // Restore the object to its last saved state
- (void) select;  // Select the specified object
- (void) undo;  // Undoes the effects of the last command, if possible.
- (void) exportTo:(id)to;  // Export an object
- (void) addLineBreaks;  // Inserts a hard line break character at the end of each soft-wrapped line
- (NSString *) addPrefixPrefix:(NSString *)prefix;  // inserts a string at the beginning of each line in the indicated text
- (NSString *) addSuffixSuffix:(NSString *)suffix;  // inserts a string at the end of each line in the indicated text
- (NSString *) removePrefixPrefix:(NSString *)prefix;  // removes a string from the beginning of each line in the indicated text
- (NSString *) removeSuffixSuffix:(NSString *)suffix;  // removes a string from the end of each line in the indicated text
- (NSString *) addPrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously adds a prefix and suffix to each line in the indicated text
- (NSString *) removePrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously removes a prefix and suffix from each line in the indicated text
- (NSString *) addLineNumbersStartNumber:(NSInteger)startNumber increment:(NSInteger)increment addingSpace:(BOOL)addingSpace keepingJustified:(BOOL)keepingJustified;  // numbers each line in the indicated text
- (NSString *) removeLineNumbersAddingSpace:(BOOL)addingSpace;  // removes leading numbering from each line in the indicated text
- (void) changeCaseMaking:(TextWranglerCact)making;  // Changes the case of text
- (void) clearUndoHistoryConfirming:(BOOL)confirming;  // Deletes all Undo/Redo history information for this document
- (NSString *) convertToASCIIReplacingTarget:(BOOL)replacingTarget;  // Converts 8-bit characters to 7-bit characters
- (void) decrementQuoteLevel;  // removes one level of Internet-style quoting from each line of the specified text
- (void) detabTabWidth:(NSInteger)tabWidth;  // Replace tabs with runs of spaces.
- (void) entabTabWidth:(NSInteger)tabWidth;  // Replace runs of spaces with tabs.
- (NSString *) educateQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert straight quotes into curly (typographer’s) quotes
- (NSString *) straightenQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert curly (typographer’s) quotes into straight quotes
- (void) hardWrapLimit:(TextWranglerWrMd)limit paragraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative;  // hard-wraps text to conform to the parameters
- (void) incrementQuoteLevelQuoteString:(NSString *)quoteString;  // adds one level of Internet-style quoting to each line of the specified text
- (void) markOptions:(TextWranglerMarkOptions *)options;  // mark matches of a specified search pattern with a string
- (NSString *) normalizeLineEndings;  // convert any CRLF pairs and LF characters remaining after line-break conversion
- (TextWranglerProcessDuplicatesResults *) processDuplicateLinesDuplicatesOptions:(TextWranglerProcessDuplicatesOptions *)duplicatesOptions outputOptions:(TextWranglerProcessDuplicatesOutputOptions *)outputOptions;  // analyze the specified text for duplicate lines
- (TextWranglerProcessLinesContainingResults *) processLinesContainingMatchingString:(NSString *)matchingString matchingWithGrep:(BOOL)matchingWithGrep caseSensitive:(BOOL)caseSensitive outputOptions:(TextWranglerProcessLinesContainingOutputOptions *)outputOptions;  // search for lines in the specified text containing the indicated string
- (void) removeLineBreaks;  // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
- (void) rewrapQuotedTextParagraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative removingQuoteSpaces:(BOOL)removingQuoteSpaces leavingTrailingQuoteSpaces:(BOOL)leavingTrailingQuoteSpaces;  // hard-wraps text, taking Internet-style line quoting into account
- (void) shiftDirection:(TextWranglerShDr)direction shiftingBySpaces:(BOOL)shiftingBySpaces;  // shift the specified text left or right, optionally by one space
- (NSString *) sortLinesSortingOptions:(TextWranglerSortLinesOptions *)sortingOptions outputOptions:(TextWranglerSortLinesOutputOptions *)outputOptions;  // order the lines in the specified text
- (void) stripQuotes;  // removes all Internet-style quoting from each line of the specified text
- (NSString *) zapGremlinsZapAction:(TextWranglerZAct)zapAction zapCharacter:(NSString *)zapCharacter nulls:(BOOL)nulls controls:(BOOL)controls nonASCIICharacters:(BOOL)nonASCIICharacters;  // Removes or replaces unwanted characters from text
- (void) appendToScratchpad;  // Appends the specified text to the global scratchpad.

@end

// an open document
@interface TextWranglerDocument : TextWranglerItem

@property (readonly) NSInteger ID;  // object’s unique id
@property (readonly) BOOL modified;  // does this document have unsaved changes?
@property (readonly) BOOL modifiable;  // can this document be modified?
@property (copy, readonly) NSDate *modificationDate;  // date and time this document was last modified
@property (copy) NSString *name;  // the title of the window (r/o if on disk is true)
@property (readonly) BOOL onDisk;  // does this document exist on disk?
@property (copy, readonly) id file;  // the disk file containing the document’s data
@property (copy) NSNumber *creatorType;  // the OSType identifying the application that created the item
@property (copy, readonly) TextWranglerWindow *window;  // this document’s window


@end

// a file
@interface TextWranglerFile : TextWranglerItem

- (void) runUnixFilterOutputSTDERRTo:(TextWranglerFOM)outputSTDERRTo clearBeforeWriting:(BOOL)clearBeforeWriting saveAfterWriting:(BOOL)saveAfterWriting replacingSelection:(BOOL)replacingSelection;  // runs the specified unix filter on the selection in the frontmost BBEdit window

@end

// a file filter
@interface TextWranglerFilter : SBObject

@property (copy, readonly) NSString *name;  // filter name
@property (readonly) TextWranglerFltM filter_mode;  // criteria interpretation mode
@property (copy, readonly) NSArray *filter_terms;  // filter criteria terms

- (void) openWithProperties:(NSDictionary *)withProperties openingIn:(id)openingIn stationeryAwareness:(BOOL)stationeryAwareness LFTranslation:(BOOL)LFTranslation readOnly:(BOOL)readOnly readingAs:(TextWranglerRAsE)readingAs addingToRecentList:(BOOL)addingToRecentList;  // Opens the specified item(s)
- (void) printWithProperties:(TextWranglerPrintSettings *)withProperties printDialog:(BOOL)printDialog;  // Print the specified object(s)
- (void) closeSaving:(TextWranglerSavo)saving savingIn:(id)savingIn;  // Closes the designated window.
- (void) delete;  // Delete an element from an object
- (SBObject *) duplicateTo:(SBObject *)to;  // Duplicate object(s)
- (BOOL) exists;  // Verify if an object exists
- (SBObject *) moveTo:(SBObject *)to;  // Move object(s) to a new location
- (void) saveTo:(id)to savingAsStationery:(BOOL)savingAsStationery addToRecentList:(BOOL)addToRecentList;  // Save a window or document.
- (void) activate;  // activate the application or a window
- (void) copyAppendingToClipboard:(BOOL)appendingToClipboard NS_RETURNS_NOT_RETAINED;  // Copy an object to the clipboard
- (void) extendedCopyAppendingToClipboard:(BOOL)appendingToClipboard;  // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
- (void) cutAppendingToClipboard:(BOOL)appendingToClipboard;  // Cut an object to the clipboard
- (void) paste;  // Paste an object from the clipboard
- (void) pasteColumn;  // Paste an text from the clipboard forcing insertion as a rectangular column
- (void) redo;  // Reverses the effects of the most recent Undo, if possible.
- (void) revertDiscardingUnsavedChanges:(TextWranglerRevo)discardingUnsavedChanges;  // Restore the object to its last saved state
- (void) select;  // Select the specified object
- (void) undo;  // Undoes the effects of the last command, if possible.
- (void) exportTo:(id)to;  // Export an object
- (void) addLineBreaks;  // Inserts a hard line break character at the end of each soft-wrapped line
- (NSString *) addPrefixPrefix:(NSString *)prefix;  // inserts a string at the beginning of each line in the indicated text
- (NSString *) addSuffixSuffix:(NSString *)suffix;  // inserts a string at the end of each line in the indicated text
- (NSString *) removePrefixPrefix:(NSString *)prefix;  // removes a string from the beginning of each line in the indicated text
- (NSString *) removeSuffixSuffix:(NSString *)suffix;  // removes a string from the end of each line in the indicated text
- (NSString *) addPrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously adds a prefix and suffix to each line in the indicated text
- (NSString *) removePrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously removes a prefix and suffix from each line in the indicated text
- (NSString *) addLineNumbersStartNumber:(NSInteger)startNumber increment:(NSInteger)increment addingSpace:(BOOL)addingSpace keepingJustified:(BOOL)keepingJustified;  // numbers each line in the indicated text
- (NSString *) removeLineNumbersAddingSpace:(BOOL)addingSpace;  // removes leading numbering from each line in the indicated text
- (void) changeCaseMaking:(TextWranglerCact)making;  // Changes the case of text
- (void) clearUndoHistoryConfirming:(BOOL)confirming;  // Deletes all Undo/Redo history information for this document
- (NSString *) convertToASCIIReplacingTarget:(BOOL)replacingTarget;  // Converts 8-bit characters to 7-bit characters
- (void) decrementQuoteLevel;  // removes one level of Internet-style quoting from each line of the specified text
- (void) detabTabWidth:(NSInteger)tabWidth;  // Replace tabs with runs of spaces.
- (void) entabTabWidth:(NSInteger)tabWidth;  // Replace runs of spaces with tabs.
- (NSString *) educateQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert straight quotes into curly (typographer’s) quotes
- (NSString *) straightenQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert curly (typographer’s) quotes into straight quotes
- (void) hardWrapLimit:(TextWranglerWrMd)limit paragraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative;  // hard-wraps text to conform to the parameters
- (void) incrementQuoteLevelQuoteString:(NSString *)quoteString;  // adds one level of Internet-style quoting to each line of the specified text
- (void) markOptions:(TextWranglerMarkOptions *)options;  // mark matches of a specified search pattern with a string
- (NSString *) normalizeLineEndings;  // convert any CRLF pairs and LF characters remaining after line-break conversion
- (TextWranglerProcessDuplicatesResults *) processDuplicateLinesDuplicatesOptions:(TextWranglerProcessDuplicatesOptions *)duplicatesOptions outputOptions:(TextWranglerProcessDuplicatesOutputOptions *)outputOptions;  // analyze the specified text for duplicate lines
- (TextWranglerProcessLinesContainingResults *) processLinesContainingMatchingString:(NSString *)matchingString matchingWithGrep:(BOOL)matchingWithGrep caseSensitive:(BOOL)caseSensitive outputOptions:(TextWranglerProcessLinesContainingOutputOptions *)outputOptions;  // search for lines in the specified text containing the indicated string
- (void) removeLineBreaks;  // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
- (void) rewrapQuotedTextParagraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative removingQuoteSpaces:(BOOL)removingQuoteSpaces leavingTrailingQuoteSpaces:(BOOL)leavingTrailingQuoteSpaces;  // hard-wraps text, taking Internet-style line quoting into account
- (void) shiftDirection:(TextWranglerShDr)direction shiftingBySpaces:(BOOL)shiftingBySpaces;  // shift the specified text left or right, optionally by one space
- (NSString *) sortLinesSortingOptions:(TextWranglerSortLinesOptions *)sortingOptions outputOptions:(TextWranglerSortLinesOutputOptions *)outputOptions;  // order the lines in the specified text
- (void) stripQuotes;  // removes all Internet-style quoting from each line of the specified text
- (NSString *) zapGremlinsZapAction:(TextWranglerZAct)zapAction zapCharacter:(NSString *)zapCharacter nulls:(BOOL)nulls controls:(BOOL)controls nonASCIICharacters:(BOOL)nonASCIICharacters;  // Removes or replaces unwanted characters from text
- (void) appendToScratchpad;  // Appends the specified text to the global scratchpad.

@end

// a file filter criteria term
@interface TextWranglerFilter_term : SBObject

@property (readonly) TextWranglerFiel field;  // criteria match field
- (TextWranglerOper) operator;  // comparison operator
@property (copy, readonly) id operand;  // comparison operand data

- (void) openWithProperties:(NSDictionary *)withProperties openingIn:(id)openingIn stationeryAwareness:(BOOL)stationeryAwareness LFTranslation:(BOOL)LFTranslation readOnly:(BOOL)readOnly readingAs:(TextWranglerRAsE)readingAs addingToRecentList:(BOOL)addingToRecentList;  // Opens the specified item(s)
- (void) printWithProperties:(TextWranglerPrintSettings *)withProperties printDialog:(BOOL)printDialog;  // Print the specified object(s)
- (void) closeSaving:(TextWranglerSavo)saving savingIn:(id)savingIn;  // Closes the designated window.
- (void) delete;  // Delete an element from an object
- (SBObject *) duplicateTo:(SBObject *)to;  // Duplicate object(s)
- (BOOL) exists;  // Verify if an object exists
- (SBObject *) moveTo:(SBObject *)to;  // Move object(s) to a new location
- (void) saveTo:(id)to savingAsStationery:(BOOL)savingAsStationery addToRecentList:(BOOL)addToRecentList;  // Save a window or document.
- (void) activate;  // activate the application or a window
- (void) copyAppendingToClipboard:(BOOL)appendingToClipboard NS_RETURNS_NOT_RETAINED;  // Copy an object to the clipboard
- (void) extendedCopyAppendingToClipboard:(BOOL)appendingToClipboard;  // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
- (void) cutAppendingToClipboard:(BOOL)appendingToClipboard;  // Cut an object to the clipboard
- (void) paste;  // Paste an object from the clipboard
- (void) pasteColumn;  // Paste an text from the clipboard forcing insertion as a rectangular column
- (void) redo;  // Reverses the effects of the most recent Undo, if possible.
- (void) revertDiscardingUnsavedChanges:(TextWranglerRevo)discardingUnsavedChanges;  // Restore the object to its last saved state
- (void) select;  // Select the specified object
- (void) undo;  // Undoes the effects of the last command, if possible.
- (void) exportTo:(id)to;  // Export an object
- (void) addLineBreaks;  // Inserts a hard line break character at the end of each soft-wrapped line
- (NSString *) addPrefixPrefix:(NSString *)prefix;  // inserts a string at the beginning of each line in the indicated text
- (NSString *) addSuffixSuffix:(NSString *)suffix;  // inserts a string at the end of each line in the indicated text
- (NSString *) removePrefixPrefix:(NSString *)prefix;  // removes a string from the beginning of each line in the indicated text
- (NSString *) removeSuffixSuffix:(NSString *)suffix;  // removes a string from the end of each line in the indicated text
- (NSString *) addPrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously adds a prefix and suffix to each line in the indicated text
- (NSString *) removePrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously removes a prefix and suffix from each line in the indicated text
- (NSString *) addLineNumbersStartNumber:(NSInteger)startNumber increment:(NSInteger)increment addingSpace:(BOOL)addingSpace keepingJustified:(BOOL)keepingJustified;  // numbers each line in the indicated text
- (NSString *) removeLineNumbersAddingSpace:(BOOL)addingSpace;  // removes leading numbering from each line in the indicated text
- (void) changeCaseMaking:(TextWranglerCact)making;  // Changes the case of text
- (void) clearUndoHistoryConfirming:(BOOL)confirming;  // Deletes all Undo/Redo history information for this document
- (NSString *) convertToASCIIReplacingTarget:(BOOL)replacingTarget;  // Converts 8-bit characters to 7-bit characters
- (void) decrementQuoteLevel;  // removes one level of Internet-style quoting from each line of the specified text
- (void) detabTabWidth:(NSInteger)tabWidth;  // Replace tabs with runs of spaces.
- (void) entabTabWidth:(NSInteger)tabWidth;  // Replace runs of spaces with tabs.
- (NSString *) educateQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert straight quotes into curly (typographer’s) quotes
- (NSString *) straightenQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert curly (typographer’s) quotes into straight quotes
- (void) hardWrapLimit:(TextWranglerWrMd)limit paragraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative;  // hard-wraps text to conform to the parameters
- (void) incrementQuoteLevelQuoteString:(NSString *)quoteString;  // adds one level of Internet-style quoting to each line of the specified text
- (void) markOptions:(TextWranglerMarkOptions *)options;  // mark matches of a specified search pattern with a string
- (NSString *) normalizeLineEndings;  // convert any CRLF pairs and LF characters remaining after line-break conversion
- (TextWranglerProcessDuplicatesResults *) processDuplicateLinesDuplicatesOptions:(TextWranglerProcessDuplicatesOptions *)duplicatesOptions outputOptions:(TextWranglerProcessDuplicatesOutputOptions *)outputOptions;  // analyze the specified text for duplicate lines
- (TextWranglerProcessLinesContainingResults *) processLinesContainingMatchingString:(NSString *)matchingString matchingWithGrep:(BOOL)matchingWithGrep caseSensitive:(BOOL)caseSensitive outputOptions:(TextWranglerProcessLinesContainingOutputOptions *)outputOptions;  // search for lines in the specified text containing the indicated string
- (void) removeLineBreaks;  // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
- (void) rewrapQuotedTextParagraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative removingQuoteSpaces:(BOOL)removingQuoteSpaces leavingTrailingQuoteSpaces:(BOOL)leavingTrailingQuoteSpaces;  // hard-wraps text, taking Internet-style line quoting into account
- (void) shiftDirection:(TextWranglerShDr)direction shiftingBySpaces:(BOOL)shiftingBySpaces;  // shift the specified text left or right, optionally by one space
- (NSString *) sortLinesSortingOptions:(TextWranglerSortLinesOptions *)sortingOptions outputOptions:(TextWranglerSortLinesOutputOptions *)outputOptions;  // order the lines in the specified text
- (void) stripQuotes;  // removes all Internet-style quoting from each line of the specified text
- (NSString *) zapGremlinsZapAction:(TextWranglerZAct)zapAction zapCharacter:(NSString *)zapCharacter nulls:(BOOL)nulls controls:(BOOL)controls nonASCIICharacters:(BOOL)nonASCIICharacters;  // Removes or replaces unwanted characters from text
- (void) appendToScratchpad;  // Appends the specified text to the global scratchpad.

@end

// a document opened from an image file
@interface TextWranglerImageDocument : TextWranglerDocument


@end

// a Unix shell worksheet document
@interface TextWranglerShellDocument : TextWranglerDocument

@property (copy) NSString *shellPath;  // path to the Unix shell used for executing commands in this worksheet
@property (copy) NSString *workingDirectory;  // path to this worksheet’s current Unix working directory


@end

// A text document
@interface TextWranglerTextDocument : TextWranglerDocument

- (SBElementArray *) texts;

@property (copy) NSString *encoding;  // name of the file’s character set encoding
@property (copy, readonly) TextWranglerFTPInfo *FTPInfo;  // FTP information for this document
@property (readonly) BOOL isFTP;  // was this document opened from (or saved to) an FTP server?
@property TextWranglerLinB lineBreaks;  // type of line endings in this document
@property (copy) NSString *sourceLanguage;  // name of the source language, for syntax coloring and function navigation
@property (readonly) BOOL stateModified;  // has the document’s state (window position, etc) been modified?
@property (copy, readonly) NSString *URL;  // if on disk, the URL to this document’s location
@property (copy) id contents;  // contents of the document (if any)
@property (copy) TextWranglerText *text;  // the document’s text object (if any)


@end

// an open window
@interface TextWranglerWindow : TextWranglerItem

- (SBElementArray *) texts;
- (SBElementArray *) documents;

@property (readonly) NSInteger ID;  // object’s unique id
@property (copy, readonly) TextWranglerDocument *document;  // the document associated with this window
@property NSRect bounds;  // the boundary rectangle for the window
@property (readonly) BOOL closeable;  // Does the window have a close box?
@property BOOL collapsed;  // Is the window collapsed?
@property NSInteger index;  // the number of the window
@property (readonly) BOOL modal;  // Is the window modal?
@property (copy, readonly) id file;  // the disk file associated with this window, if any
@property (readonly) BOOL modified;  // Has the window been modified since the last save?
@property (copy) NSString *name;  // the title of the window (r/o if the window represents a document which has been saved to disk)
@property NSPoint position;  // upper left coordinates of the window
@property (readonly) BOOL resizable;  // Is the window resizable?
@property (copy) SBObject *selection;  // the selection
@property (copy) id contents;  // contents of the window (if any)
@property (copy) TextWranglerText *text;  // the window's text object (if any)
@property (readonly) BOOL titled;  // Does the window have a title bar?
@property (readonly) BOOL visible;  // Is the window visible?
@property (readonly) BOOL zoomable;  // Is the window zoomable?
@property BOOL zoomed;  // Is the window zoomed?


@end

// a single-file Differences window
@interface TextWranglerDifferences_window : TextWranglerWindow


@end

// a disk browser window
@interface TextWranglerDiskBrowserWindow : TextWranglerWindow

@property (copy) NSString *rootPath;  // path to the root of this disk browser


@end

// the modeless Find window
@interface TextWranglerFind_window : TextWranglerWindow


@end

// the modeless Multi-File Search window
@interface TextWranglerMultifile_search_window : TextWranglerWindow


@end

// an FTP browser window
@interface TextWranglerFTPBrowserWindow : TextWranglerWindow


@end

// an Open File by Name window
@interface TextWranglerOpen_file_by_name_window : TextWranglerWindow

@property (copy) NSString *searchString;  // the string entered into the search box


@end

// A floating window
@interface TextWranglerPalette : TextWranglerWindow


@end

// a multi-file Differences window
@interface TextWranglerMultifile_differences_window : TextWranglerDifferences_window


@end

// a Plug-In Info window
@interface TextWranglerPlugin_info_window : TextWranglerWindow


@end

// a preferences window
@interface TextWranglerPreferences_window : TextWranglerWindow


@end

// a window displaying the contents of an image file
@interface TextWranglerImageWindow : TextWranglerWindow


@end

// a window for browsing the results of a batch operation (such as compilation or HTML syntax check)
@interface TextWranglerResultsBrowser : TextWranglerWindow


@end

// a window for browsing the results of a batch or multi-file search
@interface TextWranglerSearchResultsBrowser : TextWranglerResultsBrowser


@end

// a Unix shell worksheet window
@interface TextWranglerShellWindow : TextWranglerWindow


@end

// A text-editing window
@interface TextWranglerTextWindow : TextWranglerWindow

- (SBElementArray *) textDocuments;

@property (copy, readonly) TextWranglerDocument *activeDocument;  // the current document being displayed/edited
@property (copy) NSString *displayFont;  // font in which text is displayed
@property NSInteger displayFontSize;  // point size of displayed text
@property (copy) NSArray *displayFontStyle;  // text style(s) of displayed text
@property double displayMagnification;  // text display magnification multiplier
@property NSInteger tabWidth;  // number of spaces per tab
@property BOOL smartQuotes;  // are smart quotes enabled?
@property BOOL showInvisibles;  // are invisible characters displayed?
@property BOOL expandTabs;  // is auto-expansion of tabs enabled?
@property BOOL liveSearchBarVisible;  // is the Live Search bar visible?
@property BOOL softWrapText;  // is automatic text wrapping enabled?
@property TextWranglerWrMd softWrapMode;  // how line breaks are computed when soft-wrapping
@property NSInteger softWrapWidth;  // if soft-wrapping to character width, the maximum number of characters per line
@property BOOL showSpaces;  // are spaces displayed (only if “show invisibles” is true)?
@property BOOL showToolbar;  // display the editor toolbar in this window?
@property BOOL showStatusBar;  // display the editor status bar in this window?
@property BOOL showNavigationBar;  // display the navigation bar in this window?
@property BOOL showPageGuide;  // display the page guide in this window?
@property BOOL showTabStops;  // display tab stops in the window's status bar?
@property BOOL showLineNumbers;  // display line numbers next to text in the window?
@property BOOL showGutter;  // display the gutter next to the text in the window?
@property (copy) NSString *sourceLanguage;  // name of the source language, for syntax coloring and function navigation
@property BOOL colorSyntax;  // color language keywords and other recognized structures?
@property NSInteger splitProportion;  // vertical position of split bar, expressed as a percentage of window height


@end

// A scratchpad window
@interface TextWranglerScratchpad_window : TextWranglerTextWindow


@end

// a BBEdit project window
@interface TextWranglerProjectWindow : TextWranglerTextWindow

@property (copy, readonly) SBObject *selectedItems;  // list of items selected in the project list
@property BOOL filesVisible;  // is the file list visible?


@end

// a perl reference window
@interface TextWranglerPerl_reference_window : TextWranglerTextWindow


@end

// options to control the behavior of Find Differences
@interface TextWranglerCompareOptions : SBObject

@property BOOL ignoreLeadingSpaces;  // ignore leading whitespace on lines?
@property BOOL ignoreTrailingSpaces;  // ignore trailing whitespace on lines?
@property BOOL ignoreExtraSpaces;  // ignore whitespace runs in lines?
@property BOOL ignoreRCSKeywords;  // ignore RCS keywords?
@property BOOL caseSensitive;  // honor character case differences when comparing?
@property BOOL ignoreCurlyQuotes;  // ignore curly quotes (“, ”, ‘, ’) when comparing?
@property BOOL showIdenticalFiles;  // list identical files when doing a multi-file compare?
@property BOOL textFilesOnly;  // only compare text files in a multi-file compare?
@property BOOL flattenFolders;  // flatten folder hierarchies when comparing folders?
@property BOOL skipShieldedFolders;  // skip folders whose names are enclosed in (parentheses)?

- (void) openWithProperties:(NSDictionary *)withProperties openingIn:(id)openingIn stationeryAwareness:(BOOL)stationeryAwareness LFTranslation:(BOOL)LFTranslation readOnly:(BOOL)readOnly readingAs:(TextWranglerRAsE)readingAs addingToRecentList:(BOOL)addingToRecentList;  // Opens the specified item(s)
- (void) printWithProperties:(TextWranglerPrintSettings *)withProperties printDialog:(BOOL)printDialog;  // Print the specified object(s)
- (void) closeSaving:(TextWranglerSavo)saving savingIn:(id)savingIn;  // Closes the designated window.
- (void) delete;  // Delete an element from an object
- (SBObject *) duplicateTo:(SBObject *)to;  // Duplicate object(s)
- (BOOL) exists;  // Verify if an object exists
- (SBObject *) moveTo:(SBObject *)to;  // Move object(s) to a new location
- (void) saveTo:(id)to savingAsStationery:(BOOL)savingAsStationery addToRecentList:(BOOL)addToRecentList;  // Save a window or document.
- (void) activate;  // activate the application or a window
- (void) copyAppendingToClipboard:(BOOL)appendingToClipboard NS_RETURNS_NOT_RETAINED;  // Copy an object to the clipboard
- (void) extendedCopyAppendingToClipboard:(BOOL)appendingToClipboard;  // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
- (void) cutAppendingToClipboard:(BOOL)appendingToClipboard;  // Cut an object to the clipboard
- (void) paste;  // Paste an object from the clipboard
- (void) pasteColumn;  // Paste an text from the clipboard forcing insertion as a rectangular column
- (void) redo;  // Reverses the effects of the most recent Undo, if possible.
- (void) revertDiscardingUnsavedChanges:(TextWranglerRevo)discardingUnsavedChanges;  // Restore the object to its last saved state
- (void) select;  // Select the specified object
- (void) undo;  // Undoes the effects of the last command, if possible.
- (void) exportTo:(id)to;  // Export an object
- (void) addLineBreaks;  // Inserts a hard line break character at the end of each soft-wrapped line
- (NSString *) addPrefixPrefix:(NSString *)prefix;  // inserts a string at the beginning of each line in the indicated text
- (NSString *) addSuffixSuffix:(NSString *)suffix;  // inserts a string at the end of each line in the indicated text
- (NSString *) removePrefixPrefix:(NSString *)prefix;  // removes a string from the beginning of each line in the indicated text
- (NSString *) removeSuffixSuffix:(NSString *)suffix;  // removes a string from the end of each line in the indicated text
- (NSString *) addPrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously adds a prefix and suffix to each line in the indicated text
- (NSString *) removePrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously removes a prefix and suffix from each line in the indicated text
- (NSString *) addLineNumbersStartNumber:(NSInteger)startNumber increment:(NSInteger)increment addingSpace:(BOOL)addingSpace keepingJustified:(BOOL)keepingJustified;  // numbers each line in the indicated text
- (NSString *) removeLineNumbersAddingSpace:(BOOL)addingSpace;  // removes leading numbering from each line in the indicated text
- (void) changeCaseMaking:(TextWranglerCact)making;  // Changes the case of text
- (void) clearUndoHistoryConfirming:(BOOL)confirming;  // Deletes all Undo/Redo history information for this document
- (NSString *) convertToASCIIReplacingTarget:(BOOL)replacingTarget;  // Converts 8-bit characters to 7-bit characters
- (void) decrementQuoteLevel;  // removes one level of Internet-style quoting from each line of the specified text
- (void) detabTabWidth:(NSInteger)tabWidth;  // Replace tabs with runs of spaces.
- (void) entabTabWidth:(NSInteger)tabWidth;  // Replace runs of spaces with tabs.
- (NSString *) educateQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert straight quotes into curly (typographer’s) quotes
- (NSString *) straightenQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert curly (typographer’s) quotes into straight quotes
- (void) hardWrapLimit:(TextWranglerWrMd)limit paragraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative;  // hard-wraps text to conform to the parameters
- (void) incrementQuoteLevelQuoteString:(NSString *)quoteString;  // adds one level of Internet-style quoting to each line of the specified text
- (void) markOptions:(TextWranglerMarkOptions *)options;  // mark matches of a specified search pattern with a string
- (NSString *) normalizeLineEndings;  // convert any CRLF pairs and LF characters remaining after line-break conversion
- (TextWranglerProcessDuplicatesResults *) processDuplicateLinesDuplicatesOptions:(TextWranglerProcessDuplicatesOptions *)duplicatesOptions outputOptions:(TextWranglerProcessDuplicatesOutputOptions *)outputOptions;  // analyze the specified text for duplicate lines
- (TextWranglerProcessLinesContainingResults *) processLinesContainingMatchingString:(NSString *)matchingString matchingWithGrep:(BOOL)matchingWithGrep caseSensitive:(BOOL)caseSensitive outputOptions:(TextWranglerProcessLinesContainingOutputOptions *)outputOptions;  // search for lines in the specified text containing the indicated string
- (void) removeLineBreaks;  // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
- (void) rewrapQuotedTextParagraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative removingQuoteSpaces:(BOOL)removingQuoteSpaces leavingTrailingQuoteSpaces:(BOOL)leavingTrailingQuoteSpaces;  // hard-wraps text, taking Internet-style line quoting into account
- (void) shiftDirection:(TextWranglerShDr)direction shiftingBySpaces:(BOOL)shiftingBySpaces;  // shift the specified text left or right, optionally by one space
- (NSString *) sortLinesSortingOptions:(TextWranglerSortLinesOptions *)sortingOptions outputOptions:(TextWranglerSortLinesOutputOptions *)outputOptions;  // order the lines in the specified text
- (void) stripQuotes;  // removes all Internet-style quoting from each line of the specified text
- (NSString *) zapGremlinsZapAction:(TextWranglerZAct)zapAction zapCharacter:(NSString *)zapCharacter nulls:(BOOL)nulls controls:(BOOL)controls nonASCIICharacters:(BOOL)nonASCIICharacters;  // Removes or replaces unwanted characters from text
- (void) appendToScratchpad;  // Appends the specified text to the global scratchpad.

@end

// information about the results of a Compare operation
@interface TextWranglerCompareResults : SBObject

@property (readonly) BOOL differencesFound;  // were any differences found?
@property (copy, readonly) NSString *reasonForNoDifferences;  // reason for there being no differences
@property (copy, readonly) SBObject *differencesWindow;  // if differences were found, refers to the resulting Differences window

- (void) openWithProperties:(NSDictionary *)withProperties openingIn:(id)openingIn stationeryAwareness:(BOOL)stationeryAwareness LFTranslation:(BOOL)LFTranslation readOnly:(BOOL)readOnly readingAs:(TextWranglerRAsE)readingAs addingToRecentList:(BOOL)addingToRecentList;  // Opens the specified item(s)
- (void) printWithProperties:(TextWranglerPrintSettings *)withProperties printDialog:(BOOL)printDialog;  // Print the specified object(s)
- (void) closeSaving:(TextWranglerSavo)saving savingIn:(id)savingIn;  // Closes the designated window.
- (void) delete;  // Delete an element from an object
- (SBObject *) duplicateTo:(SBObject *)to;  // Duplicate object(s)
- (BOOL) exists;  // Verify if an object exists
- (SBObject *) moveTo:(SBObject *)to;  // Move object(s) to a new location
- (void) saveTo:(id)to savingAsStationery:(BOOL)savingAsStationery addToRecentList:(BOOL)addToRecentList;  // Save a window or document.
- (void) activate;  // activate the application or a window
- (void) copyAppendingToClipboard:(BOOL)appendingToClipboard NS_RETURNS_NOT_RETAINED;  // Copy an object to the clipboard
- (void) extendedCopyAppendingToClipboard:(BOOL)appendingToClipboard;  // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
- (void) cutAppendingToClipboard:(BOOL)appendingToClipboard;  // Cut an object to the clipboard
- (void) paste;  // Paste an object from the clipboard
- (void) pasteColumn;  // Paste an text from the clipboard forcing insertion as a rectangular column
- (void) redo;  // Reverses the effects of the most recent Undo, if possible.
- (void) revertDiscardingUnsavedChanges:(TextWranglerRevo)discardingUnsavedChanges;  // Restore the object to its last saved state
- (void) select;  // Select the specified object
- (void) undo;  // Undoes the effects of the last command, if possible.
- (void) exportTo:(id)to;  // Export an object
- (void) addLineBreaks;  // Inserts a hard line break character at the end of each soft-wrapped line
- (NSString *) addPrefixPrefix:(NSString *)prefix;  // inserts a string at the beginning of each line in the indicated text
- (NSString *) addSuffixSuffix:(NSString *)suffix;  // inserts a string at the end of each line in the indicated text
- (NSString *) removePrefixPrefix:(NSString *)prefix;  // removes a string from the beginning of each line in the indicated text
- (NSString *) removeSuffixSuffix:(NSString *)suffix;  // removes a string from the end of each line in the indicated text
- (NSString *) addPrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously adds a prefix and suffix to each line in the indicated text
- (NSString *) removePrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously removes a prefix and suffix from each line in the indicated text
- (NSString *) addLineNumbersStartNumber:(NSInteger)startNumber increment:(NSInteger)increment addingSpace:(BOOL)addingSpace keepingJustified:(BOOL)keepingJustified;  // numbers each line in the indicated text
- (NSString *) removeLineNumbersAddingSpace:(BOOL)addingSpace;  // removes leading numbering from each line in the indicated text
- (void) changeCaseMaking:(TextWranglerCact)making;  // Changes the case of text
- (void) clearUndoHistoryConfirming:(BOOL)confirming;  // Deletes all Undo/Redo history information for this document
- (NSString *) convertToASCIIReplacingTarget:(BOOL)replacingTarget;  // Converts 8-bit characters to 7-bit characters
- (void) decrementQuoteLevel;  // removes one level of Internet-style quoting from each line of the specified text
- (void) detabTabWidth:(NSInteger)tabWidth;  // Replace tabs with runs of spaces.
- (void) entabTabWidth:(NSInteger)tabWidth;  // Replace runs of spaces with tabs.
- (NSString *) educateQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert straight quotes into curly (typographer’s) quotes
- (NSString *) straightenQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert curly (typographer’s) quotes into straight quotes
- (void) hardWrapLimit:(TextWranglerWrMd)limit paragraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative;  // hard-wraps text to conform to the parameters
- (void) incrementQuoteLevelQuoteString:(NSString *)quoteString;  // adds one level of Internet-style quoting to each line of the specified text
- (void) markOptions:(TextWranglerMarkOptions *)options;  // mark matches of a specified search pattern with a string
- (NSString *) normalizeLineEndings;  // convert any CRLF pairs and LF characters remaining after line-break conversion
- (TextWranglerProcessDuplicatesResults *) processDuplicateLinesDuplicatesOptions:(TextWranglerProcessDuplicatesOptions *)duplicatesOptions outputOptions:(TextWranglerProcessDuplicatesOutputOptions *)outputOptions;  // analyze the specified text for duplicate lines
- (TextWranglerProcessLinesContainingResults *) processLinesContainingMatchingString:(NSString *)matchingString matchingWithGrep:(BOOL)matchingWithGrep caseSensitive:(BOOL)caseSensitive outputOptions:(TextWranglerProcessLinesContainingOutputOptions *)outputOptions;  // search for lines in the specified text containing the indicated string
- (void) removeLineBreaks;  // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
- (void) rewrapQuotedTextParagraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative removingQuoteSpaces:(BOOL)removingQuoteSpaces leavingTrailingQuoteSpaces:(BOOL)leavingTrailingQuoteSpaces;  // hard-wraps text, taking Internet-style line quoting into account
- (void) shiftDirection:(TextWranglerShDr)direction shiftingBySpaces:(BOOL)shiftingBySpaces;  // shift the specified text left or right, optionally by one space
- (NSString *) sortLinesSortingOptions:(TextWranglerSortLinesOptions *)sortingOptions outputOptions:(TextWranglerSortLinesOutputOptions *)outputOptions;  // order the lines in the specified text
- (void) stripQuotes;  // removes all Internet-style quoting from each line of the specified text
- (NSString *) zapGremlinsZapAction:(TextWranglerZAct)zapAction zapCharacter:(NSString *)zapCharacter nulls:(BOOL)nulls controls:(BOOL)controls nonASCIICharacters:(BOOL)nonASCIICharacters;  // Removes or replaces unwanted characters from text
- (void) appendToScratchpad;  // Appends the specified text to the global scratchpad.

@end

// information about a file residing on an FTP server
@interface TextWranglerFTPInfo : SBObject

@property (copy, readonly) id file;  // the disk file in which this file is stored locally
@property (copy, readonly) NSString *host;  // name of the FTP server
@property (readonly) NSInteger port;  // TCP connection port to the server
@property (copy, readonly) NSString *path;  // path to the file on the server
@property (copy, readonly) NSString *user;  // login ID for the server
@property (copy, readonly) NSString *password;  // login password for the server
@property (readonly) BOOL secureTransfer;  // was the file transferred securely?
@property (readonly) BOOL binaryTransfer;  // was the file transferred as raw binary?
@property (readonly) BOOL passiveTransfer;  // was the file transferred using passive FTP
@property (copy, readonly) NSString *URL;  // the URL for this file on the FTP server

- (void) openWithProperties:(NSDictionary *)withProperties openingIn:(id)openingIn stationeryAwareness:(BOOL)stationeryAwareness LFTranslation:(BOOL)LFTranslation readOnly:(BOOL)readOnly readingAs:(TextWranglerRAsE)readingAs addingToRecentList:(BOOL)addingToRecentList;  // Opens the specified item(s)
- (void) printWithProperties:(TextWranglerPrintSettings *)withProperties printDialog:(BOOL)printDialog;  // Print the specified object(s)
- (void) closeSaving:(TextWranglerSavo)saving savingIn:(id)savingIn;  // Closes the designated window.
- (void) delete;  // Delete an element from an object
- (SBObject *) duplicateTo:(SBObject *)to;  // Duplicate object(s)
- (BOOL) exists;  // Verify if an object exists
- (SBObject *) moveTo:(SBObject *)to;  // Move object(s) to a new location
- (void) saveTo:(id)to savingAsStationery:(BOOL)savingAsStationery addToRecentList:(BOOL)addToRecentList;  // Save a window or document.
- (void) activate;  // activate the application or a window
- (void) copyAppendingToClipboard:(BOOL)appendingToClipboard NS_RETURNS_NOT_RETAINED;  // Copy an object to the clipboard
- (void) extendedCopyAppendingToClipboard:(BOOL)appendingToClipboard;  // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
- (void) cutAppendingToClipboard:(BOOL)appendingToClipboard;  // Cut an object to the clipboard
- (void) paste;  // Paste an object from the clipboard
- (void) pasteColumn;  // Paste an text from the clipboard forcing insertion as a rectangular column
- (void) redo;  // Reverses the effects of the most recent Undo, if possible.
- (void) revertDiscardingUnsavedChanges:(TextWranglerRevo)discardingUnsavedChanges;  // Restore the object to its last saved state
- (void) select;  // Select the specified object
- (void) undo;  // Undoes the effects of the last command, if possible.
- (void) exportTo:(id)to;  // Export an object
- (void) addLineBreaks;  // Inserts a hard line break character at the end of each soft-wrapped line
- (NSString *) addPrefixPrefix:(NSString *)prefix;  // inserts a string at the beginning of each line in the indicated text
- (NSString *) addSuffixSuffix:(NSString *)suffix;  // inserts a string at the end of each line in the indicated text
- (NSString *) removePrefixPrefix:(NSString *)prefix;  // removes a string from the beginning of each line in the indicated text
- (NSString *) removeSuffixSuffix:(NSString *)suffix;  // removes a string from the end of each line in the indicated text
- (NSString *) addPrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously adds a prefix and suffix to each line in the indicated text
- (NSString *) removePrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously removes a prefix and suffix from each line in the indicated text
- (NSString *) addLineNumbersStartNumber:(NSInteger)startNumber increment:(NSInteger)increment addingSpace:(BOOL)addingSpace keepingJustified:(BOOL)keepingJustified;  // numbers each line in the indicated text
- (NSString *) removeLineNumbersAddingSpace:(BOOL)addingSpace;  // removes leading numbering from each line in the indicated text
- (void) changeCaseMaking:(TextWranglerCact)making;  // Changes the case of text
- (void) clearUndoHistoryConfirming:(BOOL)confirming;  // Deletes all Undo/Redo history information for this document
- (NSString *) convertToASCIIReplacingTarget:(BOOL)replacingTarget;  // Converts 8-bit characters to 7-bit characters
- (void) decrementQuoteLevel;  // removes one level of Internet-style quoting from each line of the specified text
- (void) detabTabWidth:(NSInteger)tabWidth;  // Replace tabs with runs of spaces.
- (void) entabTabWidth:(NSInteger)tabWidth;  // Replace runs of spaces with tabs.
- (NSString *) educateQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert straight quotes into curly (typographer’s) quotes
- (NSString *) straightenQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert curly (typographer’s) quotes into straight quotes
- (void) hardWrapLimit:(TextWranglerWrMd)limit paragraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative;  // hard-wraps text to conform to the parameters
- (void) incrementQuoteLevelQuoteString:(NSString *)quoteString;  // adds one level of Internet-style quoting to each line of the specified text
- (void) markOptions:(TextWranglerMarkOptions *)options;  // mark matches of a specified search pattern with a string
- (NSString *) normalizeLineEndings;  // convert any CRLF pairs and LF characters remaining after line-break conversion
- (TextWranglerProcessDuplicatesResults *) processDuplicateLinesDuplicatesOptions:(TextWranglerProcessDuplicatesOptions *)duplicatesOptions outputOptions:(TextWranglerProcessDuplicatesOutputOptions *)outputOptions;  // analyze the specified text for duplicate lines
- (TextWranglerProcessLinesContainingResults *) processLinesContainingMatchingString:(NSString *)matchingString matchingWithGrep:(BOOL)matchingWithGrep caseSensitive:(BOOL)caseSensitive outputOptions:(TextWranglerProcessLinesContainingOutputOptions *)outputOptions;  // search for lines in the specified text containing the indicated string
- (void) removeLineBreaks;  // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
- (void) rewrapQuotedTextParagraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative removingQuoteSpaces:(BOOL)removingQuoteSpaces leavingTrailingQuoteSpaces:(BOOL)leavingTrailingQuoteSpaces;  // hard-wraps text, taking Internet-style line quoting into account
- (void) shiftDirection:(TextWranglerShDr)direction shiftingBySpaces:(BOOL)shiftingBySpaces;  // shift the specified text left or right, optionally by one space
- (NSString *) sortLinesSortingOptions:(TextWranglerSortLinesOptions *)sortingOptions outputOptions:(TextWranglerSortLinesOutputOptions *)outputOptions;  // order the lines in the specified text
- (void) stripQuotes;  // removes all Internet-style quoting from each line of the specified text
- (NSString *) zapGremlinsZapAction:(TextWranglerZAct)zapAction zapCharacter:(NSString *)zapCharacter nulls:(BOOL)nulls controls:(BOOL)controls nonASCIICharacters:(BOOL)nonASCIICharacters;  // Removes or replaces unwanted characters from text
- (void) appendToScratchpad;  // Appends the specified text to the global scratchpad.

@end

// Options for the “mark” command
@interface TextWranglerMarkOptions : SBObject

@property (copy, readonly) NSString *searchingFor;  // the search pattern (Grep is implicit)
- (NSString *) using;  // the Grep replacement pattern to use for generating the marker name
@property BOOL clearingExisting;  // clear existing markers before setting the new ones?

- (void) openWithProperties:(NSDictionary *)withProperties openingIn:(id)openingIn stationeryAwareness:(BOOL)stationeryAwareness LFTranslation:(BOOL)LFTranslation readOnly:(BOOL)readOnly readingAs:(TextWranglerRAsE)readingAs addingToRecentList:(BOOL)addingToRecentList;  // Opens the specified item(s)
- (void) printWithProperties:(TextWranglerPrintSettings *)withProperties printDialog:(BOOL)printDialog;  // Print the specified object(s)
- (void) closeSaving:(TextWranglerSavo)saving savingIn:(id)savingIn;  // Closes the designated window.
- (void) delete;  // Delete an element from an object
- (SBObject *) duplicateTo:(SBObject *)to;  // Duplicate object(s)
- (BOOL) exists;  // Verify if an object exists
- (SBObject *) moveTo:(SBObject *)to;  // Move object(s) to a new location
- (void) saveTo:(id)to savingAsStationery:(BOOL)savingAsStationery addToRecentList:(BOOL)addToRecentList;  // Save a window or document.
- (void) activate;  // activate the application or a window
- (void) copyAppendingToClipboard:(BOOL)appendingToClipboard NS_RETURNS_NOT_RETAINED;  // Copy an object to the clipboard
- (void) extendedCopyAppendingToClipboard:(BOOL)appendingToClipboard;  // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
- (void) cutAppendingToClipboard:(BOOL)appendingToClipboard;  // Cut an object to the clipboard
- (void) paste;  // Paste an object from the clipboard
- (void) pasteColumn;  // Paste an text from the clipboard forcing insertion as a rectangular column
- (void) redo;  // Reverses the effects of the most recent Undo, if possible.
- (void) revertDiscardingUnsavedChanges:(TextWranglerRevo)discardingUnsavedChanges;  // Restore the object to its last saved state
- (void) select;  // Select the specified object
- (void) undo;  // Undoes the effects of the last command, if possible.
- (void) exportTo:(id)to;  // Export an object
- (void) addLineBreaks;  // Inserts a hard line break character at the end of each soft-wrapped line
- (NSString *) addPrefixPrefix:(NSString *)prefix;  // inserts a string at the beginning of each line in the indicated text
- (NSString *) addSuffixSuffix:(NSString *)suffix;  // inserts a string at the end of each line in the indicated text
- (NSString *) removePrefixPrefix:(NSString *)prefix;  // removes a string from the beginning of each line in the indicated text
- (NSString *) removeSuffixSuffix:(NSString *)suffix;  // removes a string from the end of each line in the indicated text
- (NSString *) addPrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously adds a prefix and suffix to each line in the indicated text
- (NSString *) removePrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously removes a prefix and suffix from each line in the indicated text
- (NSString *) addLineNumbersStartNumber:(NSInteger)startNumber increment:(NSInteger)increment addingSpace:(BOOL)addingSpace keepingJustified:(BOOL)keepingJustified;  // numbers each line in the indicated text
- (NSString *) removeLineNumbersAddingSpace:(BOOL)addingSpace;  // removes leading numbering from each line in the indicated text
- (void) changeCaseMaking:(TextWranglerCact)making;  // Changes the case of text
- (void) clearUndoHistoryConfirming:(BOOL)confirming;  // Deletes all Undo/Redo history information for this document
- (NSString *) convertToASCIIReplacingTarget:(BOOL)replacingTarget;  // Converts 8-bit characters to 7-bit characters
- (void) decrementQuoteLevel;  // removes one level of Internet-style quoting from each line of the specified text
- (void) detabTabWidth:(NSInteger)tabWidth;  // Replace tabs with runs of spaces.
- (void) entabTabWidth:(NSInteger)tabWidth;  // Replace runs of spaces with tabs.
- (NSString *) educateQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert straight quotes into curly (typographer’s) quotes
- (NSString *) straightenQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert curly (typographer’s) quotes into straight quotes
- (void) hardWrapLimit:(TextWranglerWrMd)limit paragraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative;  // hard-wraps text to conform to the parameters
- (void) incrementQuoteLevelQuoteString:(NSString *)quoteString;  // adds one level of Internet-style quoting to each line of the specified text
- (void) markOptions:(TextWranglerMarkOptions *)options;  // mark matches of a specified search pattern with a string
- (NSString *) normalizeLineEndings;  // convert any CRLF pairs and LF characters remaining after line-break conversion
- (TextWranglerProcessDuplicatesResults *) processDuplicateLinesDuplicatesOptions:(TextWranglerProcessDuplicatesOptions *)duplicatesOptions outputOptions:(TextWranglerProcessDuplicatesOutputOptions *)outputOptions;  // analyze the specified text for duplicate lines
- (TextWranglerProcessLinesContainingResults *) processLinesContainingMatchingString:(NSString *)matchingString matchingWithGrep:(BOOL)matchingWithGrep caseSensitive:(BOOL)caseSensitive outputOptions:(TextWranglerProcessLinesContainingOutputOptions *)outputOptions;  // search for lines in the specified text containing the indicated string
- (void) removeLineBreaks;  // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
- (void) rewrapQuotedTextParagraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative removingQuoteSpaces:(BOOL)removingQuoteSpaces leavingTrailingQuoteSpaces:(BOOL)leavingTrailingQuoteSpaces;  // hard-wraps text, taking Internet-style line quoting into account
- (void) shiftDirection:(TextWranglerShDr)direction shiftingBySpaces:(BOOL)shiftingBySpaces;  // shift the specified text left or right, optionally by one space
- (NSString *) sortLinesSortingOptions:(TextWranglerSortLinesOptions *)sortingOptions outputOptions:(TextWranglerSortLinesOutputOptions *)outputOptions;  // order the lines in the specified text
- (void) stripQuotes;  // removes all Internet-style quoting from each line of the specified text
- (NSString *) zapGremlinsZapAction:(TextWranglerZAct)zapAction zapCharacter:(NSString *)zapCharacter nulls:(BOOL)nulls controls:(BOOL)controls nonASCIICharacters:(BOOL)nonASCIICharacters;  // Removes or replaces unwanted characters from text
- (void) appendToScratchpad;  // Appends the specified text to the global scratchpad.

@end

// batch operation result entry -- describes an error, warning, note, or batch search result
@interface TextWranglerResultEntry : SBObject

@property TextWranglerErsl result_kind;  // the type of result entry
@property (copy) SBObject *result_document;  // reference to the document, if not on disk
@property (copy) id result_file;  // reference to the file, if saved to disk
@property NSInteger start_offset;  // starting offset in the file
@property NSInteger end_offset;  // ending offset in the file
@property NSInteger result_line;  // line in the file (may be -1 if line information is not available)
@property (copy) NSString *message;  // explanatory text (line context, if it’s a search result)
@property (copy) NSString *match_string;  // for Grep search results, contains the text matched by the pattern

- (void) openWithProperties:(NSDictionary *)withProperties openingIn:(id)openingIn stationeryAwareness:(BOOL)stationeryAwareness LFTranslation:(BOOL)LFTranslation readOnly:(BOOL)readOnly readingAs:(TextWranglerRAsE)readingAs addingToRecentList:(BOOL)addingToRecentList;  // Opens the specified item(s)
- (void) printWithProperties:(TextWranglerPrintSettings *)withProperties printDialog:(BOOL)printDialog;  // Print the specified object(s)
- (void) closeSaving:(TextWranglerSavo)saving savingIn:(id)savingIn;  // Closes the designated window.
- (void) delete;  // Delete an element from an object
- (SBObject *) duplicateTo:(SBObject *)to;  // Duplicate object(s)
- (BOOL) exists;  // Verify if an object exists
- (SBObject *) moveTo:(SBObject *)to;  // Move object(s) to a new location
- (void) saveTo:(id)to savingAsStationery:(BOOL)savingAsStationery addToRecentList:(BOOL)addToRecentList;  // Save a window or document.
- (void) activate;  // activate the application or a window
- (void) copyAppendingToClipboard:(BOOL)appendingToClipboard NS_RETURNS_NOT_RETAINED;  // Copy an object to the clipboard
- (void) extendedCopyAppendingToClipboard:(BOOL)appendingToClipboard;  // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
- (void) cutAppendingToClipboard:(BOOL)appendingToClipboard;  // Cut an object to the clipboard
- (void) paste;  // Paste an object from the clipboard
- (void) pasteColumn;  // Paste an text from the clipboard forcing insertion as a rectangular column
- (void) redo;  // Reverses the effects of the most recent Undo, if possible.
- (void) revertDiscardingUnsavedChanges:(TextWranglerRevo)discardingUnsavedChanges;  // Restore the object to its last saved state
- (void) select;  // Select the specified object
- (void) undo;  // Undoes the effects of the last command, if possible.
- (void) exportTo:(id)to;  // Export an object
- (void) addLineBreaks;  // Inserts a hard line break character at the end of each soft-wrapped line
- (NSString *) addPrefixPrefix:(NSString *)prefix;  // inserts a string at the beginning of each line in the indicated text
- (NSString *) addSuffixSuffix:(NSString *)suffix;  // inserts a string at the end of each line in the indicated text
- (NSString *) removePrefixPrefix:(NSString *)prefix;  // removes a string from the beginning of each line in the indicated text
- (NSString *) removeSuffixSuffix:(NSString *)suffix;  // removes a string from the end of each line in the indicated text
- (NSString *) addPrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously adds a prefix and suffix to each line in the indicated text
- (NSString *) removePrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously removes a prefix and suffix from each line in the indicated text
- (NSString *) addLineNumbersStartNumber:(NSInteger)startNumber increment:(NSInteger)increment addingSpace:(BOOL)addingSpace keepingJustified:(BOOL)keepingJustified;  // numbers each line in the indicated text
- (NSString *) removeLineNumbersAddingSpace:(BOOL)addingSpace;  // removes leading numbering from each line in the indicated text
- (void) changeCaseMaking:(TextWranglerCact)making;  // Changes the case of text
- (void) clearUndoHistoryConfirming:(BOOL)confirming;  // Deletes all Undo/Redo history information for this document
- (NSString *) convertToASCIIReplacingTarget:(BOOL)replacingTarget;  // Converts 8-bit characters to 7-bit characters
- (void) decrementQuoteLevel;  // removes one level of Internet-style quoting from each line of the specified text
- (void) detabTabWidth:(NSInteger)tabWidth;  // Replace tabs with runs of spaces.
- (void) entabTabWidth:(NSInteger)tabWidth;  // Replace runs of spaces with tabs.
- (NSString *) educateQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert straight quotes into curly (typographer’s) quotes
- (NSString *) straightenQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert curly (typographer’s) quotes into straight quotes
- (void) hardWrapLimit:(TextWranglerWrMd)limit paragraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative;  // hard-wraps text to conform to the parameters
- (void) incrementQuoteLevelQuoteString:(NSString *)quoteString;  // adds one level of Internet-style quoting to each line of the specified text
- (void) markOptions:(TextWranglerMarkOptions *)options;  // mark matches of a specified search pattern with a string
- (NSString *) normalizeLineEndings;  // convert any CRLF pairs and LF characters remaining after line-break conversion
- (TextWranglerProcessDuplicatesResults *) processDuplicateLinesDuplicatesOptions:(TextWranglerProcessDuplicatesOptions *)duplicatesOptions outputOptions:(TextWranglerProcessDuplicatesOutputOptions *)outputOptions;  // analyze the specified text for duplicate lines
- (TextWranglerProcessLinesContainingResults *) processLinesContainingMatchingString:(NSString *)matchingString matchingWithGrep:(BOOL)matchingWithGrep caseSensitive:(BOOL)caseSensitive outputOptions:(TextWranglerProcessLinesContainingOutputOptions *)outputOptions;  // search for lines in the specified text containing the indicated string
- (void) removeLineBreaks;  // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
- (void) rewrapQuotedTextParagraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative removingQuoteSpaces:(BOOL)removingQuoteSpaces leavingTrailingQuoteSpaces:(BOOL)leavingTrailingQuoteSpaces;  // hard-wraps text, taking Internet-style line quoting into account
- (void) shiftDirection:(TextWranglerShDr)direction shiftingBySpaces:(BOOL)shiftingBySpaces;  // shift the specified text left or right, optionally by one space
- (NSString *) sortLinesSortingOptions:(TextWranglerSortLinesOptions *)sortingOptions outputOptions:(TextWranglerSortLinesOutputOptions *)outputOptions;  // order the lines in the specified text
- (void) stripQuotes;  // removes all Internet-style quoting from each line of the specified text
- (NSString *) zapGremlinsZapAction:(TextWranglerZAct)zapAction zapCharacter:(NSString *)zapCharacter nulls:(BOOL)nulls controls:(BOOL)controls nonASCIICharacters:(BOOL)nonASCIICharacters;  // Removes or replaces unwanted characters from text
- (void) appendToScratchpad;  // Appends the specified text to the global scratchpad.

@end

// Options for “find” and “replace” commands
@interface TextWranglerSearchOptions : SBObject

@property TextWranglerSMod searchMode;  // the type of search (literal search if omitted)
@property BOOL startingAtTop;  // start from the top of the document? (false if omitted)
@property BOOL wrapAround;  // should the search wrap from the end of the document? (false if omitted)
@property BOOL backwards;  // should the search proceed backwards? (false if omitted)
@property BOOL caseSensitive;  // should the search be case-sensitive? (false if omitted)
@property BOOL matchWords;  // should the search only find whole words? (false if omitted)
@property BOOL extendSelection;  // should the selection range include the original selection start through the end of the match? (false if omitted)
@property BOOL returningResults;  // if performing a batch or multi-file search, return a list of matches? (false if omitted)
@property BOOL showingResults;  // if performing a batch or multi-file search, open the list of results? (true if omitted)

- (void) openWithProperties:(NSDictionary *)withProperties openingIn:(id)openingIn stationeryAwareness:(BOOL)stationeryAwareness LFTranslation:(BOOL)LFTranslation readOnly:(BOOL)readOnly readingAs:(TextWranglerRAsE)readingAs addingToRecentList:(BOOL)addingToRecentList;  // Opens the specified item(s)
- (void) printWithProperties:(TextWranglerPrintSettings *)withProperties printDialog:(BOOL)printDialog;  // Print the specified object(s)
- (void) closeSaving:(TextWranglerSavo)saving savingIn:(id)savingIn;  // Closes the designated window.
- (void) delete;  // Delete an element from an object
- (SBObject *) duplicateTo:(SBObject *)to;  // Duplicate object(s)
- (BOOL) exists;  // Verify if an object exists
- (SBObject *) moveTo:(SBObject *)to;  // Move object(s) to a new location
- (void) saveTo:(id)to savingAsStationery:(BOOL)savingAsStationery addToRecentList:(BOOL)addToRecentList;  // Save a window or document.
- (void) activate;  // activate the application or a window
- (void) copyAppendingToClipboard:(BOOL)appendingToClipboard NS_RETURNS_NOT_RETAINED;  // Copy an object to the clipboard
- (void) extendedCopyAppendingToClipboard:(BOOL)appendingToClipboard;  // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
- (void) cutAppendingToClipboard:(BOOL)appendingToClipboard;  // Cut an object to the clipboard
- (void) paste;  // Paste an object from the clipboard
- (void) pasteColumn;  // Paste an text from the clipboard forcing insertion as a rectangular column
- (void) redo;  // Reverses the effects of the most recent Undo, if possible.
- (void) revertDiscardingUnsavedChanges:(TextWranglerRevo)discardingUnsavedChanges;  // Restore the object to its last saved state
- (void) select;  // Select the specified object
- (void) undo;  // Undoes the effects of the last command, if possible.
- (void) exportTo:(id)to;  // Export an object
- (void) addLineBreaks;  // Inserts a hard line break character at the end of each soft-wrapped line
- (NSString *) addPrefixPrefix:(NSString *)prefix;  // inserts a string at the beginning of each line in the indicated text
- (NSString *) addSuffixSuffix:(NSString *)suffix;  // inserts a string at the end of each line in the indicated text
- (NSString *) removePrefixPrefix:(NSString *)prefix;  // removes a string from the beginning of each line in the indicated text
- (NSString *) removeSuffixSuffix:(NSString *)suffix;  // removes a string from the end of each line in the indicated text
- (NSString *) addPrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously adds a prefix and suffix to each line in the indicated text
- (NSString *) removePrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously removes a prefix and suffix from each line in the indicated text
- (NSString *) addLineNumbersStartNumber:(NSInteger)startNumber increment:(NSInteger)increment addingSpace:(BOOL)addingSpace keepingJustified:(BOOL)keepingJustified;  // numbers each line in the indicated text
- (NSString *) removeLineNumbersAddingSpace:(BOOL)addingSpace;  // removes leading numbering from each line in the indicated text
- (void) changeCaseMaking:(TextWranglerCact)making;  // Changes the case of text
- (void) clearUndoHistoryConfirming:(BOOL)confirming;  // Deletes all Undo/Redo history information for this document
- (NSString *) convertToASCIIReplacingTarget:(BOOL)replacingTarget;  // Converts 8-bit characters to 7-bit characters
- (void) decrementQuoteLevel;  // removes one level of Internet-style quoting from each line of the specified text
- (void) detabTabWidth:(NSInteger)tabWidth;  // Replace tabs with runs of spaces.
- (void) entabTabWidth:(NSInteger)tabWidth;  // Replace runs of spaces with tabs.
- (NSString *) educateQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert straight quotes into curly (typographer’s) quotes
- (NSString *) straightenQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert curly (typographer’s) quotes into straight quotes
- (void) hardWrapLimit:(TextWranglerWrMd)limit paragraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative;  // hard-wraps text to conform to the parameters
- (void) incrementQuoteLevelQuoteString:(NSString *)quoteString;  // adds one level of Internet-style quoting to each line of the specified text
- (void) markOptions:(TextWranglerMarkOptions *)options;  // mark matches of a specified search pattern with a string
- (NSString *) normalizeLineEndings;  // convert any CRLF pairs and LF characters remaining after line-break conversion
- (TextWranglerProcessDuplicatesResults *) processDuplicateLinesDuplicatesOptions:(TextWranglerProcessDuplicatesOptions *)duplicatesOptions outputOptions:(TextWranglerProcessDuplicatesOutputOptions *)outputOptions;  // analyze the specified text for duplicate lines
- (TextWranglerProcessLinesContainingResults *) processLinesContainingMatchingString:(NSString *)matchingString matchingWithGrep:(BOOL)matchingWithGrep caseSensitive:(BOOL)caseSensitive outputOptions:(TextWranglerProcessLinesContainingOutputOptions *)outputOptions;  // search for lines in the specified text containing the indicated string
- (void) removeLineBreaks;  // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
- (void) rewrapQuotedTextParagraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative removingQuoteSpaces:(BOOL)removingQuoteSpaces leavingTrailingQuoteSpaces:(BOOL)leavingTrailingQuoteSpaces;  // hard-wraps text, taking Internet-style line quoting into account
- (void) shiftDirection:(TextWranglerShDr)direction shiftingBySpaces:(BOOL)shiftingBySpaces;  // shift the specified text left or right, optionally by one space
- (NSString *) sortLinesSortingOptions:(TextWranglerSortLinesOptions *)sortingOptions outputOptions:(TextWranglerSortLinesOutputOptions *)outputOptions;  // order the lines in the specified text
- (void) stripQuotes;  // removes all Internet-style quoting from each line of the specified text
- (NSString *) zapGremlinsZapAction:(TextWranglerZAct)zapAction zapCharacter:(NSString *)zapCharacter nulls:(BOOL)nulls controls:(BOOL)controls nonASCIICharacters:(BOOL)nonASCIICharacters;  // Removes or replaces unwanted characters from text
- (void) appendToScratchpad;  // Appends the specified text to the global scratchpad.

@end

// Information about text found by a “find” command
@interface TextWranglerSearchMatch : SBObject

@property (readonly) BOOL found;  // was a match found?
@property (copy, readonly) SBObject *foundObject;  // for a single-file search, a reference to the found text
@property (copy, readonly) NSString *foundText;  // for a single-file search, the found text
@property (copy, readonly) NSArray *foundMatches;  // for a multi-file or batch search, a list of the found occurrences
@property (copy, readonly) SBObject *matchListWindow;  // for a multi-file or batch search, the window listing the matches

- (void) openWithProperties:(NSDictionary *)withProperties openingIn:(id)openingIn stationeryAwareness:(BOOL)stationeryAwareness LFTranslation:(BOOL)LFTranslation readOnly:(BOOL)readOnly readingAs:(TextWranglerRAsE)readingAs addingToRecentList:(BOOL)addingToRecentList;  // Opens the specified item(s)
- (void) printWithProperties:(TextWranglerPrintSettings *)withProperties printDialog:(BOOL)printDialog;  // Print the specified object(s)
- (void) closeSaving:(TextWranglerSavo)saving savingIn:(id)savingIn;  // Closes the designated window.
- (void) delete;  // Delete an element from an object
- (SBObject *) duplicateTo:(SBObject *)to;  // Duplicate object(s)
- (BOOL) exists;  // Verify if an object exists
- (SBObject *) moveTo:(SBObject *)to;  // Move object(s) to a new location
- (void) saveTo:(id)to savingAsStationery:(BOOL)savingAsStationery addToRecentList:(BOOL)addToRecentList;  // Save a window or document.
- (void) activate;  // activate the application or a window
- (void) copyAppendingToClipboard:(BOOL)appendingToClipboard NS_RETURNS_NOT_RETAINED;  // Copy an object to the clipboard
- (void) extendedCopyAppendingToClipboard:(BOOL)appendingToClipboard;  // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
- (void) cutAppendingToClipboard:(BOOL)appendingToClipboard;  // Cut an object to the clipboard
- (void) paste;  // Paste an object from the clipboard
- (void) pasteColumn;  // Paste an text from the clipboard forcing insertion as a rectangular column
- (void) redo;  // Reverses the effects of the most recent Undo, if possible.
- (void) revertDiscardingUnsavedChanges:(TextWranglerRevo)discardingUnsavedChanges;  // Restore the object to its last saved state
- (void) select;  // Select the specified object
- (void) undo;  // Undoes the effects of the last command, if possible.
- (void) exportTo:(id)to;  // Export an object
- (void) addLineBreaks;  // Inserts a hard line break character at the end of each soft-wrapped line
- (NSString *) addPrefixPrefix:(NSString *)prefix;  // inserts a string at the beginning of each line in the indicated text
- (NSString *) addSuffixSuffix:(NSString *)suffix;  // inserts a string at the end of each line in the indicated text
- (NSString *) removePrefixPrefix:(NSString *)prefix;  // removes a string from the beginning of each line in the indicated text
- (NSString *) removeSuffixSuffix:(NSString *)suffix;  // removes a string from the end of each line in the indicated text
- (NSString *) addPrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously adds a prefix and suffix to each line in the indicated text
- (NSString *) removePrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously removes a prefix and suffix from each line in the indicated text
- (NSString *) addLineNumbersStartNumber:(NSInteger)startNumber increment:(NSInteger)increment addingSpace:(BOOL)addingSpace keepingJustified:(BOOL)keepingJustified;  // numbers each line in the indicated text
- (NSString *) removeLineNumbersAddingSpace:(BOOL)addingSpace;  // removes leading numbering from each line in the indicated text
- (void) changeCaseMaking:(TextWranglerCact)making;  // Changes the case of text
- (void) clearUndoHistoryConfirming:(BOOL)confirming;  // Deletes all Undo/Redo history information for this document
- (NSString *) convertToASCIIReplacingTarget:(BOOL)replacingTarget;  // Converts 8-bit characters to 7-bit characters
- (void) decrementQuoteLevel;  // removes one level of Internet-style quoting from each line of the specified text
- (void) detabTabWidth:(NSInteger)tabWidth;  // Replace tabs with runs of spaces.
- (void) entabTabWidth:(NSInteger)tabWidth;  // Replace runs of spaces with tabs.
- (NSString *) educateQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert straight quotes into curly (typographer’s) quotes
- (NSString *) straightenQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert curly (typographer’s) quotes into straight quotes
- (void) hardWrapLimit:(TextWranglerWrMd)limit paragraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative;  // hard-wraps text to conform to the parameters
- (void) incrementQuoteLevelQuoteString:(NSString *)quoteString;  // adds one level of Internet-style quoting to each line of the specified text
- (void) markOptions:(TextWranglerMarkOptions *)options;  // mark matches of a specified search pattern with a string
- (NSString *) normalizeLineEndings;  // convert any CRLF pairs and LF characters remaining after line-break conversion
- (TextWranglerProcessDuplicatesResults *) processDuplicateLinesDuplicatesOptions:(TextWranglerProcessDuplicatesOptions *)duplicatesOptions outputOptions:(TextWranglerProcessDuplicatesOutputOptions *)outputOptions;  // analyze the specified text for duplicate lines
- (TextWranglerProcessLinesContainingResults *) processLinesContainingMatchingString:(NSString *)matchingString matchingWithGrep:(BOOL)matchingWithGrep caseSensitive:(BOOL)caseSensitive outputOptions:(TextWranglerProcessLinesContainingOutputOptions *)outputOptions;  // search for lines in the specified text containing the indicated string
- (void) removeLineBreaks;  // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
- (void) rewrapQuotedTextParagraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative removingQuoteSpaces:(BOOL)removingQuoteSpaces leavingTrailingQuoteSpaces:(BOOL)leavingTrailingQuoteSpaces;  // hard-wraps text, taking Internet-style line quoting into account
- (void) shiftDirection:(TextWranglerShDr)direction shiftingBySpaces:(BOOL)shiftingBySpaces;  // shift the specified text left or right, optionally by one space
- (NSString *) sortLinesSortingOptions:(TextWranglerSortLinesOptions *)sortingOptions outputOptions:(TextWranglerSortLinesOutputOptions *)outputOptions;  // order the lines in the specified text
- (void) stripQuotes;  // removes all Internet-style quoting from each line of the specified text
- (NSString *) zapGremlinsZapAction:(TextWranglerZAct)zapAction zapCharacter:(NSString *)zapCharacter nulls:(BOOL)nulls controls:(BOOL)controls nonASCIICharacters:(BOOL)nonASCIICharacters;  // Removes or replaces unwanted characters from text
- (void) appendToScratchpad;  // Appends the specified text to the global scratchpad.

@end

// current search strings, as an application property
@interface TextWranglerSearchStringProperties : SBObject

@property (copy, readonly) NSString *searchString;  // search text
@property (copy, readonly) NSString *replacementString;  // replace text

- (void) openWithProperties:(NSDictionary *)withProperties openingIn:(id)openingIn stationeryAwareness:(BOOL)stationeryAwareness LFTranslation:(BOOL)LFTranslation readOnly:(BOOL)readOnly readingAs:(TextWranglerRAsE)readingAs addingToRecentList:(BOOL)addingToRecentList;  // Opens the specified item(s)
- (void) printWithProperties:(TextWranglerPrintSettings *)withProperties printDialog:(BOOL)printDialog;  // Print the specified object(s)
- (void) closeSaving:(TextWranglerSavo)saving savingIn:(id)savingIn;  // Closes the designated window.
- (void) delete;  // Delete an element from an object
- (SBObject *) duplicateTo:(SBObject *)to;  // Duplicate object(s)
- (BOOL) exists;  // Verify if an object exists
- (SBObject *) moveTo:(SBObject *)to;  // Move object(s) to a new location
- (void) saveTo:(id)to savingAsStationery:(BOOL)savingAsStationery addToRecentList:(BOOL)addToRecentList;  // Save a window or document.
- (void) activate;  // activate the application or a window
- (void) copyAppendingToClipboard:(BOOL)appendingToClipboard NS_RETURNS_NOT_RETAINED;  // Copy an object to the clipboard
- (void) extendedCopyAppendingToClipboard:(BOOL)appendingToClipboard;  // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
- (void) cutAppendingToClipboard:(BOOL)appendingToClipboard;  // Cut an object to the clipboard
- (void) paste;  // Paste an object from the clipboard
- (void) pasteColumn;  // Paste an text from the clipboard forcing insertion as a rectangular column
- (void) redo;  // Reverses the effects of the most recent Undo, if possible.
- (void) revertDiscardingUnsavedChanges:(TextWranglerRevo)discardingUnsavedChanges;  // Restore the object to its last saved state
- (void) select;  // Select the specified object
- (void) undo;  // Undoes the effects of the last command, if possible.
- (void) exportTo:(id)to;  // Export an object
- (void) addLineBreaks;  // Inserts a hard line break character at the end of each soft-wrapped line
- (NSString *) addPrefixPrefix:(NSString *)prefix;  // inserts a string at the beginning of each line in the indicated text
- (NSString *) addSuffixSuffix:(NSString *)suffix;  // inserts a string at the end of each line in the indicated text
- (NSString *) removePrefixPrefix:(NSString *)prefix;  // removes a string from the beginning of each line in the indicated text
- (NSString *) removeSuffixSuffix:(NSString *)suffix;  // removes a string from the end of each line in the indicated text
- (NSString *) addPrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously adds a prefix and suffix to each line in the indicated text
- (NSString *) removePrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously removes a prefix and suffix from each line in the indicated text
- (NSString *) addLineNumbersStartNumber:(NSInteger)startNumber increment:(NSInteger)increment addingSpace:(BOOL)addingSpace keepingJustified:(BOOL)keepingJustified;  // numbers each line in the indicated text
- (NSString *) removeLineNumbersAddingSpace:(BOOL)addingSpace;  // removes leading numbering from each line in the indicated text
- (void) changeCaseMaking:(TextWranglerCact)making;  // Changes the case of text
- (void) clearUndoHistoryConfirming:(BOOL)confirming;  // Deletes all Undo/Redo history information for this document
- (NSString *) convertToASCIIReplacingTarget:(BOOL)replacingTarget;  // Converts 8-bit characters to 7-bit characters
- (void) decrementQuoteLevel;  // removes one level of Internet-style quoting from each line of the specified text
- (void) detabTabWidth:(NSInteger)tabWidth;  // Replace tabs with runs of spaces.
- (void) entabTabWidth:(NSInteger)tabWidth;  // Replace runs of spaces with tabs.
- (NSString *) educateQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert straight quotes into curly (typographer’s) quotes
- (NSString *) straightenQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert curly (typographer’s) quotes into straight quotes
- (void) hardWrapLimit:(TextWranglerWrMd)limit paragraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative;  // hard-wraps text to conform to the parameters
- (void) incrementQuoteLevelQuoteString:(NSString *)quoteString;  // adds one level of Internet-style quoting to each line of the specified text
- (void) markOptions:(TextWranglerMarkOptions *)options;  // mark matches of a specified search pattern with a string
- (NSString *) normalizeLineEndings;  // convert any CRLF pairs and LF characters remaining after line-break conversion
- (TextWranglerProcessDuplicatesResults *) processDuplicateLinesDuplicatesOptions:(TextWranglerProcessDuplicatesOptions *)duplicatesOptions outputOptions:(TextWranglerProcessDuplicatesOutputOptions *)outputOptions;  // analyze the specified text for duplicate lines
- (TextWranglerProcessLinesContainingResults *) processLinesContainingMatchingString:(NSString *)matchingString matchingWithGrep:(BOOL)matchingWithGrep caseSensitive:(BOOL)caseSensitive outputOptions:(TextWranglerProcessLinesContainingOutputOptions *)outputOptions;  // search for lines in the specified text containing the indicated string
- (void) removeLineBreaks;  // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
- (void) rewrapQuotedTextParagraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative removingQuoteSpaces:(BOOL)removingQuoteSpaces leavingTrailingQuoteSpaces:(BOOL)leavingTrailingQuoteSpaces;  // hard-wraps text, taking Internet-style line quoting into account
- (void) shiftDirection:(TextWranglerShDr)direction shiftingBySpaces:(BOOL)shiftingBySpaces;  // shift the specified text left or right, optionally by one space
- (NSString *) sortLinesSortingOptions:(TextWranglerSortLinesOptions *)sortingOptions outputOptions:(TextWranglerSortLinesOutputOptions *)outputOptions;  // order the lines in the specified text
- (void) stripQuotes;  // removes all Internet-style quoting from each line of the specified text
- (NSString *) zapGremlinsZapAction:(TextWranglerZAct)zapAction zapCharacter:(NSString *)zapCharacter nulls:(BOOL)nulls controls:(BOOL)controls nonASCIICharacters:(BOOL)nonASCIICharacters;  // Removes or replaces unwanted characters from text
- (void) appendToScratchpad;  // Appends the specified text to the global scratchpad.

@end

// options to control the sorting behavior of “sort lines”
@interface TextWranglerSortLinesOptions : SBObject

@property (readonly) BOOL sortingCaseSensitive;
@property (readonly) BOOL sortIgnoringLeadingSpace;
@property (readonly) BOOL reversingSortOrder;
@property (readonly) BOOL sortingNumerically;
@property (copy, readonly) NSString *sortUsingStoredPattern;
@property (copy, readonly) NSString *sortPattern;
@property (readonly) TextWranglerESbM sortSubpatternKey;
@property (copy, readonly) NSString *sortSubpattern;

- (void) openWithProperties:(NSDictionary *)withProperties openingIn:(id)openingIn stationeryAwareness:(BOOL)stationeryAwareness LFTranslation:(BOOL)LFTranslation readOnly:(BOOL)readOnly readingAs:(TextWranglerRAsE)readingAs addingToRecentList:(BOOL)addingToRecentList;  // Opens the specified item(s)
- (void) printWithProperties:(TextWranglerPrintSettings *)withProperties printDialog:(BOOL)printDialog;  // Print the specified object(s)
- (void) closeSaving:(TextWranglerSavo)saving savingIn:(id)savingIn;  // Closes the designated window.
- (void) delete;  // Delete an element from an object
- (SBObject *) duplicateTo:(SBObject *)to;  // Duplicate object(s)
- (BOOL) exists;  // Verify if an object exists
- (SBObject *) moveTo:(SBObject *)to;  // Move object(s) to a new location
- (void) saveTo:(id)to savingAsStationery:(BOOL)savingAsStationery addToRecentList:(BOOL)addToRecentList;  // Save a window or document.
- (void) activate;  // activate the application or a window
- (void) copyAppendingToClipboard:(BOOL)appendingToClipboard NS_RETURNS_NOT_RETAINED;  // Copy an object to the clipboard
- (void) extendedCopyAppendingToClipboard:(BOOL)appendingToClipboard;  // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
- (void) cutAppendingToClipboard:(BOOL)appendingToClipboard;  // Cut an object to the clipboard
- (void) paste;  // Paste an object from the clipboard
- (void) pasteColumn;  // Paste an text from the clipboard forcing insertion as a rectangular column
- (void) redo;  // Reverses the effects of the most recent Undo, if possible.
- (void) revertDiscardingUnsavedChanges:(TextWranglerRevo)discardingUnsavedChanges;  // Restore the object to its last saved state
- (void) select;  // Select the specified object
- (void) undo;  // Undoes the effects of the last command, if possible.
- (void) exportTo:(id)to;  // Export an object
- (void) addLineBreaks;  // Inserts a hard line break character at the end of each soft-wrapped line
- (NSString *) addPrefixPrefix:(NSString *)prefix;  // inserts a string at the beginning of each line in the indicated text
- (NSString *) addSuffixSuffix:(NSString *)suffix;  // inserts a string at the end of each line in the indicated text
- (NSString *) removePrefixPrefix:(NSString *)prefix;  // removes a string from the beginning of each line in the indicated text
- (NSString *) removeSuffixSuffix:(NSString *)suffix;  // removes a string from the end of each line in the indicated text
- (NSString *) addPrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously adds a prefix and suffix to each line in the indicated text
- (NSString *) removePrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously removes a prefix and suffix from each line in the indicated text
- (NSString *) addLineNumbersStartNumber:(NSInteger)startNumber increment:(NSInteger)increment addingSpace:(BOOL)addingSpace keepingJustified:(BOOL)keepingJustified;  // numbers each line in the indicated text
- (NSString *) removeLineNumbersAddingSpace:(BOOL)addingSpace;  // removes leading numbering from each line in the indicated text
- (void) changeCaseMaking:(TextWranglerCact)making;  // Changes the case of text
- (void) clearUndoHistoryConfirming:(BOOL)confirming;  // Deletes all Undo/Redo history information for this document
- (NSString *) convertToASCIIReplacingTarget:(BOOL)replacingTarget;  // Converts 8-bit characters to 7-bit characters
- (void) decrementQuoteLevel;  // removes one level of Internet-style quoting from each line of the specified text
- (void) detabTabWidth:(NSInteger)tabWidth;  // Replace tabs with runs of spaces.
- (void) entabTabWidth:(NSInteger)tabWidth;  // Replace runs of spaces with tabs.
- (NSString *) educateQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert straight quotes into curly (typographer’s) quotes
- (NSString *) straightenQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert curly (typographer’s) quotes into straight quotes
- (void) hardWrapLimit:(TextWranglerWrMd)limit paragraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative;  // hard-wraps text to conform to the parameters
- (void) incrementQuoteLevelQuoteString:(NSString *)quoteString;  // adds one level of Internet-style quoting to each line of the specified text
- (void) markOptions:(TextWranglerMarkOptions *)options;  // mark matches of a specified search pattern with a string
- (NSString *) normalizeLineEndings;  // convert any CRLF pairs and LF characters remaining after line-break conversion
- (TextWranglerProcessDuplicatesResults *) processDuplicateLinesDuplicatesOptions:(TextWranglerProcessDuplicatesOptions *)duplicatesOptions outputOptions:(TextWranglerProcessDuplicatesOutputOptions *)outputOptions;  // analyze the specified text for duplicate lines
- (TextWranglerProcessLinesContainingResults *) processLinesContainingMatchingString:(NSString *)matchingString matchingWithGrep:(BOOL)matchingWithGrep caseSensitive:(BOOL)caseSensitive outputOptions:(TextWranglerProcessLinesContainingOutputOptions *)outputOptions;  // search for lines in the specified text containing the indicated string
- (void) removeLineBreaks;  // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
- (void) rewrapQuotedTextParagraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative removingQuoteSpaces:(BOOL)removingQuoteSpaces leavingTrailingQuoteSpaces:(BOOL)leavingTrailingQuoteSpaces;  // hard-wraps text, taking Internet-style line quoting into account
- (void) shiftDirection:(TextWranglerShDr)direction shiftingBySpaces:(BOOL)shiftingBySpaces;  // shift the specified text left or right, optionally by one space
- (NSString *) sortLinesSortingOptions:(TextWranglerSortLinesOptions *)sortingOptions outputOptions:(TextWranglerSortLinesOutputOptions *)outputOptions;  // order the lines in the specified text
- (void) stripQuotes;  // removes all Internet-style quoting from each line of the specified text
- (NSString *) zapGremlinsZapAction:(TextWranglerZAct)zapAction zapCharacter:(NSString *)zapCharacter nulls:(BOOL)nulls controls:(BOOL)controls nonASCIICharacters:(BOOL)nonASCIICharacters;  // Removes or replaces unwanted characters from text
- (void) appendToScratchpad;  // Appends the specified text to the global scratchpad.

@end

@interface TextWranglerSortLinesOutputOptions : SBObject

@property (readonly) BOOL replacingTarget;
@property (readonly) BOOL copyingToClipboard;
@property (readonly) BOOL copyingToNewDocument;

- (void) openWithProperties:(NSDictionary *)withProperties openingIn:(id)openingIn stationeryAwareness:(BOOL)stationeryAwareness LFTranslation:(BOOL)LFTranslation readOnly:(BOOL)readOnly readingAs:(TextWranglerRAsE)readingAs addingToRecentList:(BOOL)addingToRecentList;  // Opens the specified item(s)
- (void) printWithProperties:(TextWranglerPrintSettings *)withProperties printDialog:(BOOL)printDialog;  // Print the specified object(s)
- (void) closeSaving:(TextWranglerSavo)saving savingIn:(id)savingIn;  // Closes the designated window.
- (void) delete;  // Delete an element from an object
- (SBObject *) duplicateTo:(SBObject *)to;  // Duplicate object(s)
- (BOOL) exists;  // Verify if an object exists
- (SBObject *) moveTo:(SBObject *)to;  // Move object(s) to a new location
- (void) saveTo:(id)to savingAsStationery:(BOOL)savingAsStationery addToRecentList:(BOOL)addToRecentList;  // Save a window or document.
- (void) activate;  // activate the application or a window
- (void) copyAppendingToClipboard:(BOOL)appendingToClipboard NS_RETURNS_NOT_RETAINED;  // Copy an object to the clipboard
- (void) extendedCopyAppendingToClipboard:(BOOL)appendingToClipboard;  // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
- (void) cutAppendingToClipboard:(BOOL)appendingToClipboard;  // Cut an object to the clipboard
- (void) paste;  // Paste an object from the clipboard
- (void) pasteColumn;  // Paste an text from the clipboard forcing insertion as a rectangular column
- (void) redo;  // Reverses the effects of the most recent Undo, if possible.
- (void) revertDiscardingUnsavedChanges:(TextWranglerRevo)discardingUnsavedChanges;  // Restore the object to its last saved state
- (void) select;  // Select the specified object
- (void) undo;  // Undoes the effects of the last command, if possible.
- (void) exportTo:(id)to;  // Export an object
- (void) addLineBreaks;  // Inserts a hard line break character at the end of each soft-wrapped line
- (NSString *) addPrefixPrefix:(NSString *)prefix;  // inserts a string at the beginning of each line in the indicated text
- (NSString *) addSuffixSuffix:(NSString *)suffix;  // inserts a string at the end of each line in the indicated text
- (NSString *) removePrefixPrefix:(NSString *)prefix;  // removes a string from the beginning of each line in the indicated text
- (NSString *) removeSuffixSuffix:(NSString *)suffix;  // removes a string from the end of each line in the indicated text
- (NSString *) addPrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously adds a prefix and suffix to each line in the indicated text
- (NSString *) removePrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously removes a prefix and suffix from each line in the indicated text
- (NSString *) addLineNumbersStartNumber:(NSInteger)startNumber increment:(NSInteger)increment addingSpace:(BOOL)addingSpace keepingJustified:(BOOL)keepingJustified;  // numbers each line in the indicated text
- (NSString *) removeLineNumbersAddingSpace:(BOOL)addingSpace;  // removes leading numbering from each line in the indicated text
- (void) changeCaseMaking:(TextWranglerCact)making;  // Changes the case of text
- (void) clearUndoHistoryConfirming:(BOOL)confirming;  // Deletes all Undo/Redo history information for this document
- (NSString *) convertToASCIIReplacingTarget:(BOOL)replacingTarget;  // Converts 8-bit characters to 7-bit characters
- (void) decrementQuoteLevel;  // removes one level of Internet-style quoting from each line of the specified text
- (void) detabTabWidth:(NSInteger)tabWidth;  // Replace tabs with runs of spaces.
- (void) entabTabWidth:(NSInteger)tabWidth;  // Replace runs of spaces with tabs.
- (NSString *) educateQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert straight quotes into curly (typographer’s) quotes
- (NSString *) straightenQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert curly (typographer’s) quotes into straight quotes
- (void) hardWrapLimit:(TextWranglerWrMd)limit paragraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative;  // hard-wraps text to conform to the parameters
- (void) incrementQuoteLevelQuoteString:(NSString *)quoteString;  // adds one level of Internet-style quoting to each line of the specified text
- (void) markOptions:(TextWranglerMarkOptions *)options;  // mark matches of a specified search pattern with a string
- (NSString *) normalizeLineEndings;  // convert any CRLF pairs and LF characters remaining after line-break conversion
- (TextWranglerProcessDuplicatesResults *) processDuplicateLinesDuplicatesOptions:(TextWranglerProcessDuplicatesOptions *)duplicatesOptions outputOptions:(TextWranglerProcessDuplicatesOutputOptions *)outputOptions;  // analyze the specified text for duplicate lines
- (TextWranglerProcessLinesContainingResults *) processLinesContainingMatchingString:(NSString *)matchingString matchingWithGrep:(BOOL)matchingWithGrep caseSensitive:(BOOL)caseSensitive outputOptions:(TextWranglerProcessLinesContainingOutputOptions *)outputOptions;  // search for lines in the specified text containing the indicated string
- (void) removeLineBreaks;  // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
- (void) rewrapQuotedTextParagraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative removingQuoteSpaces:(BOOL)removingQuoteSpaces leavingTrailingQuoteSpaces:(BOOL)leavingTrailingQuoteSpaces;  // hard-wraps text, taking Internet-style line quoting into account
- (void) shiftDirection:(TextWranglerShDr)direction shiftingBySpaces:(BOOL)shiftingBySpaces;  // shift the specified text left or right, optionally by one space
- (NSString *) sortLinesSortingOptions:(TextWranglerSortLinesOptions *)sortingOptions outputOptions:(TextWranglerSortLinesOutputOptions *)outputOptions;  // order the lines in the specified text
- (void) stripQuotes;  // removes all Internet-style quoting from each line of the specified text
- (NSString *) zapGremlinsZapAction:(TextWranglerZAct)zapAction zapCharacter:(NSString *)zapCharacter nulls:(BOOL)nulls controls:(BOOL)controls nonASCIICharacters:(BOOL)nonASCIICharacters;  // Removes or replaces unwanted characters from text
- (void) appendToScratchpad;  // Appends the specified text to the global scratchpad.

@end

// options to control the behavior of “process duplicate lines”
@interface TextWranglerProcessDuplicatesOptions : SBObject

@property (readonly) TextWranglerMMod matchMode;
@property (readonly) BOOL matchingCaseSensitive;
@property (readonly) BOOL matchIgnoringLeadingSpace;
@property (readonly) BOOL matchingNumerically;
@property (copy, readonly) NSString *matchUsingStoredPattern;
@property (copy, readonly) NSString *matchPattern;
@property (readonly) TextWranglerESbM matchSubpatternKey;
@property (copy, readonly) NSString *matchSubpattern;

- (void) openWithProperties:(NSDictionary *)withProperties openingIn:(id)openingIn stationeryAwareness:(BOOL)stationeryAwareness LFTranslation:(BOOL)LFTranslation readOnly:(BOOL)readOnly readingAs:(TextWranglerRAsE)readingAs addingToRecentList:(BOOL)addingToRecentList;  // Opens the specified item(s)
- (void) printWithProperties:(TextWranglerPrintSettings *)withProperties printDialog:(BOOL)printDialog;  // Print the specified object(s)
- (void) closeSaving:(TextWranglerSavo)saving savingIn:(id)savingIn;  // Closes the designated window.
- (void) delete;  // Delete an element from an object
- (SBObject *) duplicateTo:(SBObject *)to;  // Duplicate object(s)
- (BOOL) exists;  // Verify if an object exists
- (SBObject *) moveTo:(SBObject *)to;  // Move object(s) to a new location
- (void) saveTo:(id)to savingAsStationery:(BOOL)savingAsStationery addToRecentList:(BOOL)addToRecentList;  // Save a window or document.
- (void) activate;  // activate the application or a window
- (void) copyAppendingToClipboard:(BOOL)appendingToClipboard NS_RETURNS_NOT_RETAINED;  // Copy an object to the clipboard
- (void) extendedCopyAppendingToClipboard:(BOOL)appendingToClipboard;  // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
- (void) cutAppendingToClipboard:(BOOL)appendingToClipboard;  // Cut an object to the clipboard
- (void) paste;  // Paste an object from the clipboard
- (void) pasteColumn;  // Paste an text from the clipboard forcing insertion as a rectangular column
- (void) redo;  // Reverses the effects of the most recent Undo, if possible.
- (void) revertDiscardingUnsavedChanges:(TextWranglerRevo)discardingUnsavedChanges;  // Restore the object to its last saved state
- (void) select;  // Select the specified object
- (void) undo;  // Undoes the effects of the last command, if possible.
- (void) exportTo:(id)to;  // Export an object
- (void) addLineBreaks;  // Inserts a hard line break character at the end of each soft-wrapped line
- (NSString *) addPrefixPrefix:(NSString *)prefix;  // inserts a string at the beginning of each line in the indicated text
- (NSString *) addSuffixSuffix:(NSString *)suffix;  // inserts a string at the end of each line in the indicated text
- (NSString *) removePrefixPrefix:(NSString *)prefix;  // removes a string from the beginning of each line in the indicated text
- (NSString *) removeSuffixSuffix:(NSString *)suffix;  // removes a string from the end of each line in the indicated text
- (NSString *) addPrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously adds a prefix and suffix to each line in the indicated text
- (NSString *) removePrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously removes a prefix and suffix from each line in the indicated text
- (NSString *) addLineNumbersStartNumber:(NSInteger)startNumber increment:(NSInteger)increment addingSpace:(BOOL)addingSpace keepingJustified:(BOOL)keepingJustified;  // numbers each line in the indicated text
- (NSString *) removeLineNumbersAddingSpace:(BOOL)addingSpace;  // removes leading numbering from each line in the indicated text
- (void) changeCaseMaking:(TextWranglerCact)making;  // Changes the case of text
- (void) clearUndoHistoryConfirming:(BOOL)confirming;  // Deletes all Undo/Redo history information for this document
- (NSString *) convertToASCIIReplacingTarget:(BOOL)replacingTarget;  // Converts 8-bit characters to 7-bit characters
- (void) decrementQuoteLevel;  // removes one level of Internet-style quoting from each line of the specified text
- (void) detabTabWidth:(NSInteger)tabWidth;  // Replace tabs with runs of spaces.
- (void) entabTabWidth:(NSInteger)tabWidth;  // Replace runs of spaces with tabs.
- (NSString *) educateQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert straight quotes into curly (typographer’s) quotes
- (NSString *) straightenQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert curly (typographer’s) quotes into straight quotes
- (void) hardWrapLimit:(TextWranglerWrMd)limit paragraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative;  // hard-wraps text to conform to the parameters
- (void) incrementQuoteLevelQuoteString:(NSString *)quoteString;  // adds one level of Internet-style quoting to each line of the specified text
- (void) markOptions:(TextWranglerMarkOptions *)options;  // mark matches of a specified search pattern with a string
- (NSString *) normalizeLineEndings;  // convert any CRLF pairs and LF characters remaining after line-break conversion
- (TextWranglerProcessDuplicatesResults *) processDuplicateLinesDuplicatesOptions:(TextWranglerProcessDuplicatesOptions *)duplicatesOptions outputOptions:(TextWranglerProcessDuplicatesOutputOptions *)outputOptions;  // analyze the specified text for duplicate lines
- (TextWranglerProcessLinesContainingResults *) processLinesContainingMatchingString:(NSString *)matchingString matchingWithGrep:(BOOL)matchingWithGrep caseSensitive:(BOOL)caseSensitive outputOptions:(TextWranglerProcessLinesContainingOutputOptions *)outputOptions;  // search for lines in the specified text containing the indicated string
- (void) removeLineBreaks;  // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
- (void) rewrapQuotedTextParagraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative removingQuoteSpaces:(BOOL)removingQuoteSpaces leavingTrailingQuoteSpaces:(BOOL)leavingTrailingQuoteSpaces;  // hard-wraps text, taking Internet-style line quoting into account
- (void) shiftDirection:(TextWranglerShDr)direction shiftingBySpaces:(BOOL)shiftingBySpaces;  // shift the specified text left or right, optionally by one space
- (NSString *) sortLinesSortingOptions:(TextWranglerSortLinesOptions *)sortingOptions outputOptions:(TextWranglerSortLinesOutputOptions *)outputOptions;  // order the lines in the specified text
- (void) stripQuotes;  // removes all Internet-style quoting from each line of the specified text
- (NSString *) zapGremlinsZapAction:(TextWranglerZAct)zapAction zapCharacter:(NSString *)zapCharacter nulls:(BOOL)nulls controls:(BOOL)controls nonASCIICharacters:(BOOL)nonASCIICharacters;  // Removes or replaces unwanted characters from text
- (void) appendToScratchpad;  // Appends the specified text to the global scratchpad.

@end

@interface TextWranglerProcessDuplicatesOutputOptions : SBObject

@property (readonly) BOOL deletingDuplicates;
@property (readonly) BOOL duplicatesToClipboard;
@property (readonly) BOOL duplicatesToNewDocument;
@property (readonly) BOOL uniqueLinesToClipboard;
@property (readonly) BOOL uniqueLinesToNewDocument;

- (void) openWithProperties:(NSDictionary *)withProperties openingIn:(id)openingIn stationeryAwareness:(BOOL)stationeryAwareness LFTranslation:(BOOL)LFTranslation readOnly:(BOOL)readOnly readingAs:(TextWranglerRAsE)readingAs addingToRecentList:(BOOL)addingToRecentList;  // Opens the specified item(s)
- (void) printWithProperties:(TextWranglerPrintSettings *)withProperties printDialog:(BOOL)printDialog;  // Print the specified object(s)
- (void) closeSaving:(TextWranglerSavo)saving savingIn:(id)savingIn;  // Closes the designated window.
- (void) delete;  // Delete an element from an object
- (SBObject *) duplicateTo:(SBObject *)to;  // Duplicate object(s)
- (BOOL) exists;  // Verify if an object exists
- (SBObject *) moveTo:(SBObject *)to;  // Move object(s) to a new location
- (void) saveTo:(id)to savingAsStationery:(BOOL)savingAsStationery addToRecentList:(BOOL)addToRecentList;  // Save a window or document.
- (void) activate;  // activate the application or a window
- (void) copyAppendingToClipboard:(BOOL)appendingToClipboard NS_RETURNS_NOT_RETAINED;  // Copy an object to the clipboard
- (void) extendedCopyAppendingToClipboard:(BOOL)appendingToClipboard;  // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
- (void) cutAppendingToClipboard:(BOOL)appendingToClipboard;  // Cut an object to the clipboard
- (void) paste;  // Paste an object from the clipboard
- (void) pasteColumn;  // Paste an text from the clipboard forcing insertion as a rectangular column
- (void) redo;  // Reverses the effects of the most recent Undo, if possible.
- (void) revertDiscardingUnsavedChanges:(TextWranglerRevo)discardingUnsavedChanges;  // Restore the object to its last saved state
- (void) select;  // Select the specified object
- (void) undo;  // Undoes the effects of the last command, if possible.
- (void) exportTo:(id)to;  // Export an object
- (void) addLineBreaks;  // Inserts a hard line break character at the end of each soft-wrapped line
- (NSString *) addPrefixPrefix:(NSString *)prefix;  // inserts a string at the beginning of each line in the indicated text
- (NSString *) addSuffixSuffix:(NSString *)suffix;  // inserts a string at the end of each line in the indicated text
- (NSString *) removePrefixPrefix:(NSString *)prefix;  // removes a string from the beginning of each line in the indicated text
- (NSString *) removeSuffixSuffix:(NSString *)suffix;  // removes a string from the end of each line in the indicated text
- (NSString *) addPrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously adds a prefix and suffix to each line in the indicated text
- (NSString *) removePrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously removes a prefix and suffix from each line in the indicated text
- (NSString *) addLineNumbersStartNumber:(NSInteger)startNumber increment:(NSInteger)increment addingSpace:(BOOL)addingSpace keepingJustified:(BOOL)keepingJustified;  // numbers each line in the indicated text
- (NSString *) removeLineNumbersAddingSpace:(BOOL)addingSpace;  // removes leading numbering from each line in the indicated text
- (void) changeCaseMaking:(TextWranglerCact)making;  // Changes the case of text
- (void) clearUndoHistoryConfirming:(BOOL)confirming;  // Deletes all Undo/Redo history information for this document
- (NSString *) convertToASCIIReplacingTarget:(BOOL)replacingTarget;  // Converts 8-bit characters to 7-bit characters
- (void) decrementQuoteLevel;  // removes one level of Internet-style quoting from each line of the specified text
- (void) detabTabWidth:(NSInteger)tabWidth;  // Replace tabs with runs of spaces.
- (void) entabTabWidth:(NSInteger)tabWidth;  // Replace runs of spaces with tabs.
- (NSString *) educateQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert straight quotes into curly (typographer’s) quotes
- (NSString *) straightenQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert curly (typographer’s) quotes into straight quotes
- (void) hardWrapLimit:(TextWranglerWrMd)limit paragraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative;  // hard-wraps text to conform to the parameters
- (void) incrementQuoteLevelQuoteString:(NSString *)quoteString;  // adds one level of Internet-style quoting to each line of the specified text
- (void) markOptions:(TextWranglerMarkOptions *)options;  // mark matches of a specified search pattern with a string
- (NSString *) normalizeLineEndings;  // convert any CRLF pairs and LF characters remaining after line-break conversion
- (TextWranglerProcessDuplicatesResults *) processDuplicateLinesDuplicatesOptions:(TextWranglerProcessDuplicatesOptions *)duplicatesOptions outputOptions:(TextWranglerProcessDuplicatesOutputOptions *)outputOptions;  // analyze the specified text for duplicate lines
- (TextWranglerProcessLinesContainingResults *) processLinesContainingMatchingString:(NSString *)matchingString matchingWithGrep:(BOOL)matchingWithGrep caseSensitive:(BOOL)caseSensitive outputOptions:(TextWranglerProcessLinesContainingOutputOptions *)outputOptions;  // search for lines in the specified text containing the indicated string
- (void) removeLineBreaks;  // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
- (void) rewrapQuotedTextParagraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative removingQuoteSpaces:(BOOL)removingQuoteSpaces leavingTrailingQuoteSpaces:(BOOL)leavingTrailingQuoteSpaces;  // hard-wraps text, taking Internet-style line quoting into account
- (void) shiftDirection:(TextWranglerShDr)direction shiftingBySpaces:(BOOL)shiftingBySpaces;  // shift the specified text left or right, optionally by one space
- (NSString *) sortLinesSortingOptions:(TextWranglerSortLinesOptions *)sortingOptions outputOptions:(TextWranglerSortLinesOutputOptions *)outputOptions;  // order the lines in the specified text
- (void) stripQuotes;  // removes all Internet-style quoting from each line of the specified text
- (NSString *) zapGremlinsZapAction:(TextWranglerZAct)zapAction zapCharacter:(NSString *)zapCharacter nulls:(BOOL)nulls controls:(BOOL)controls nonASCIICharacters:(BOOL)nonASCIICharacters;  // Removes or replaces unwanted characters from text
- (void) appendToScratchpad;  // Appends the specified text to the global scratchpad.

@end

@interface TextWranglerProcessDuplicatesResults : SBObject

@property (copy, readonly) NSString *duplicateLines;  // the duplicate lines in the input
@property (copy, readonly) NSString *uniqueLines;  // the unique lines in the input

- (void) openWithProperties:(NSDictionary *)withProperties openingIn:(id)openingIn stationeryAwareness:(BOOL)stationeryAwareness LFTranslation:(BOOL)LFTranslation readOnly:(BOOL)readOnly readingAs:(TextWranglerRAsE)readingAs addingToRecentList:(BOOL)addingToRecentList;  // Opens the specified item(s)
- (void) printWithProperties:(TextWranglerPrintSettings *)withProperties printDialog:(BOOL)printDialog;  // Print the specified object(s)
- (void) closeSaving:(TextWranglerSavo)saving savingIn:(id)savingIn;  // Closes the designated window.
- (void) delete;  // Delete an element from an object
- (SBObject *) duplicateTo:(SBObject *)to;  // Duplicate object(s)
- (BOOL) exists;  // Verify if an object exists
- (SBObject *) moveTo:(SBObject *)to;  // Move object(s) to a new location
- (void) saveTo:(id)to savingAsStationery:(BOOL)savingAsStationery addToRecentList:(BOOL)addToRecentList;  // Save a window or document.
- (void) activate;  // activate the application or a window
- (void) copyAppendingToClipboard:(BOOL)appendingToClipboard NS_RETURNS_NOT_RETAINED;  // Copy an object to the clipboard
- (void) extendedCopyAppendingToClipboard:(BOOL)appendingToClipboard;  // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
- (void) cutAppendingToClipboard:(BOOL)appendingToClipboard;  // Cut an object to the clipboard
- (void) paste;  // Paste an object from the clipboard
- (void) pasteColumn;  // Paste an text from the clipboard forcing insertion as a rectangular column
- (void) redo;  // Reverses the effects of the most recent Undo, if possible.
- (void) revertDiscardingUnsavedChanges:(TextWranglerRevo)discardingUnsavedChanges;  // Restore the object to its last saved state
- (void) select;  // Select the specified object
- (void) undo;  // Undoes the effects of the last command, if possible.
- (void) exportTo:(id)to;  // Export an object
- (void) addLineBreaks;  // Inserts a hard line break character at the end of each soft-wrapped line
- (NSString *) addPrefixPrefix:(NSString *)prefix;  // inserts a string at the beginning of each line in the indicated text
- (NSString *) addSuffixSuffix:(NSString *)suffix;  // inserts a string at the end of each line in the indicated text
- (NSString *) removePrefixPrefix:(NSString *)prefix;  // removes a string from the beginning of each line in the indicated text
- (NSString *) removeSuffixSuffix:(NSString *)suffix;  // removes a string from the end of each line in the indicated text
- (NSString *) addPrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously adds a prefix and suffix to each line in the indicated text
- (NSString *) removePrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously removes a prefix and suffix from each line in the indicated text
- (NSString *) addLineNumbersStartNumber:(NSInteger)startNumber increment:(NSInteger)increment addingSpace:(BOOL)addingSpace keepingJustified:(BOOL)keepingJustified;  // numbers each line in the indicated text
- (NSString *) removeLineNumbersAddingSpace:(BOOL)addingSpace;  // removes leading numbering from each line in the indicated text
- (void) changeCaseMaking:(TextWranglerCact)making;  // Changes the case of text
- (void) clearUndoHistoryConfirming:(BOOL)confirming;  // Deletes all Undo/Redo history information for this document
- (NSString *) convertToASCIIReplacingTarget:(BOOL)replacingTarget;  // Converts 8-bit characters to 7-bit characters
- (void) decrementQuoteLevel;  // removes one level of Internet-style quoting from each line of the specified text
- (void) detabTabWidth:(NSInteger)tabWidth;  // Replace tabs with runs of spaces.
- (void) entabTabWidth:(NSInteger)tabWidth;  // Replace runs of spaces with tabs.
- (NSString *) educateQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert straight quotes into curly (typographer’s) quotes
- (NSString *) straightenQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert curly (typographer’s) quotes into straight quotes
- (void) hardWrapLimit:(TextWranglerWrMd)limit paragraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative;  // hard-wraps text to conform to the parameters
- (void) incrementQuoteLevelQuoteString:(NSString *)quoteString;  // adds one level of Internet-style quoting to each line of the specified text
- (void) markOptions:(TextWranglerMarkOptions *)options;  // mark matches of a specified search pattern with a string
- (NSString *) normalizeLineEndings;  // convert any CRLF pairs and LF characters remaining after line-break conversion
- (TextWranglerProcessDuplicatesResults *) processDuplicateLinesDuplicatesOptions:(TextWranglerProcessDuplicatesOptions *)duplicatesOptions outputOptions:(TextWranglerProcessDuplicatesOutputOptions *)outputOptions;  // analyze the specified text for duplicate lines
- (TextWranglerProcessLinesContainingResults *) processLinesContainingMatchingString:(NSString *)matchingString matchingWithGrep:(BOOL)matchingWithGrep caseSensitive:(BOOL)caseSensitive outputOptions:(TextWranglerProcessLinesContainingOutputOptions *)outputOptions;  // search for lines in the specified text containing the indicated string
- (void) removeLineBreaks;  // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
- (void) rewrapQuotedTextParagraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative removingQuoteSpaces:(BOOL)removingQuoteSpaces leavingTrailingQuoteSpaces:(BOOL)leavingTrailingQuoteSpaces;  // hard-wraps text, taking Internet-style line quoting into account
- (void) shiftDirection:(TextWranglerShDr)direction shiftingBySpaces:(BOOL)shiftingBySpaces;  // shift the specified text left or right, optionally by one space
- (NSString *) sortLinesSortingOptions:(TextWranglerSortLinesOptions *)sortingOptions outputOptions:(TextWranglerSortLinesOutputOptions *)outputOptions;  // order the lines in the specified text
- (void) stripQuotes;  // removes all Internet-style quoting from each line of the specified text
- (NSString *) zapGremlinsZapAction:(TextWranglerZAct)zapAction zapCharacter:(NSString *)zapCharacter nulls:(BOOL)nulls controls:(BOOL)controls nonASCIICharacters:(BOOL)nonASCIICharacters;  // Removes or replaces unwanted characters from text
- (void) appendToScratchpad;  // Appends the specified text to the global scratchpad.

@end

@interface TextWranglerProcessLinesContainingOutputOptions : SBObject

@property (readonly) BOOL deletingMatchedLines;
@property (readonly) BOOL copyingToClipboard;
@property (readonly) BOOL copyingToNewDocument;
@property (readonly) BOOL reportingResults;

- (void) openWithProperties:(NSDictionary *)withProperties openingIn:(id)openingIn stationeryAwareness:(BOOL)stationeryAwareness LFTranslation:(BOOL)LFTranslation readOnly:(BOOL)readOnly readingAs:(TextWranglerRAsE)readingAs addingToRecentList:(BOOL)addingToRecentList;  // Opens the specified item(s)
- (void) printWithProperties:(TextWranglerPrintSettings *)withProperties printDialog:(BOOL)printDialog;  // Print the specified object(s)
- (void) closeSaving:(TextWranglerSavo)saving savingIn:(id)savingIn;  // Closes the designated window.
- (void) delete;  // Delete an element from an object
- (SBObject *) duplicateTo:(SBObject *)to;  // Duplicate object(s)
- (BOOL) exists;  // Verify if an object exists
- (SBObject *) moveTo:(SBObject *)to;  // Move object(s) to a new location
- (void) saveTo:(id)to savingAsStationery:(BOOL)savingAsStationery addToRecentList:(BOOL)addToRecentList;  // Save a window or document.
- (void) activate;  // activate the application or a window
- (void) copyAppendingToClipboard:(BOOL)appendingToClipboard NS_RETURNS_NOT_RETAINED;  // Copy an object to the clipboard
- (void) extendedCopyAppendingToClipboard:(BOOL)appendingToClipboard;  // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
- (void) cutAppendingToClipboard:(BOOL)appendingToClipboard;  // Cut an object to the clipboard
- (void) paste;  // Paste an object from the clipboard
- (void) pasteColumn;  // Paste an text from the clipboard forcing insertion as a rectangular column
- (void) redo;  // Reverses the effects of the most recent Undo, if possible.
- (void) revertDiscardingUnsavedChanges:(TextWranglerRevo)discardingUnsavedChanges;  // Restore the object to its last saved state
- (void) select;  // Select the specified object
- (void) undo;  // Undoes the effects of the last command, if possible.
- (void) exportTo:(id)to;  // Export an object
- (void) addLineBreaks;  // Inserts a hard line break character at the end of each soft-wrapped line
- (NSString *) addPrefixPrefix:(NSString *)prefix;  // inserts a string at the beginning of each line in the indicated text
- (NSString *) addSuffixSuffix:(NSString *)suffix;  // inserts a string at the end of each line in the indicated text
- (NSString *) removePrefixPrefix:(NSString *)prefix;  // removes a string from the beginning of each line in the indicated text
- (NSString *) removeSuffixSuffix:(NSString *)suffix;  // removes a string from the end of each line in the indicated text
- (NSString *) addPrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously adds a prefix and suffix to each line in the indicated text
- (NSString *) removePrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously removes a prefix and suffix from each line in the indicated text
- (NSString *) addLineNumbersStartNumber:(NSInteger)startNumber increment:(NSInteger)increment addingSpace:(BOOL)addingSpace keepingJustified:(BOOL)keepingJustified;  // numbers each line in the indicated text
- (NSString *) removeLineNumbersAddingSpace:(BOOL)addingSpace;  // removes leading numbering from each line in the indicated text
- (void) changeCaseMaking:(TextWranglerCact)making;  // Changes the case of text
- (void) clearUndoHistoryConfirming:(BOOL)confirming;  // Deletes all Undo/Redo history information for this document
- (NSString *) convertToASCIIReplacingTarget:(BOOL)replacingTarget;  // Converts 8-bit characters to 7-bit characters
- (void) decrementQuoteLevel;  // removes one level of Internet-style quoting from each line of the specified text
- (void) detabTabWidth:(NSInteger)tabWidth;  // Replace tabs with runs of spaces.
- (void) entabTabWidth:(NSInteger)tabWidth;  // Replace runs of spaces with tabs.
- (NSString *) educateQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert straight quotes into curly (typographer’s) quotes
- (NSString *) straightenQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert curly (typographer’s) quotes into straight quotes
- (void) hardWrapLimit:(TextWranglerWrMd)limit paragraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative;  // hard-wraps text to conform to the parameters
- (void) incrementQuoteLevelQuoteString:(NSString *)quoteString;  // adds one level of Internet-style quoting to each line of the specified text
- (void) markOptions:(TextWranglerMarkOptions *)options;  // mark matches of a specified search pattern with a string
- (NSString *) normalizeLineEndings;  // convert any CRLF pairs and LF characters remaining after line-break conversion
- (TextWranglerProcessDuplicatesResults *) processDuplicateLinesDuplicatesOptions:(TextWranglerProcessDuplicatesOptions *)duplicatesOptions outputOptions:(TextWranglerProcessDuplicatesOutputOptions *)outputOptions;  // analyze the specified text for duplicate lines
- (TextWranglerProcessLinesContainingResults *) processLinesContainingMatchingString:(NSString *)matchingString matchingWithGrep:(BOOL)matchingWithGrep caseSensitive:(BOOL)caseSensitive outputOptions:(TextWranglerProcessLinesContainingOutputOptions *)outputOptions;  // search for lines in the specified text containing the indicated string
- (void) removeLineBreaks;  // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
- (void) rewrapQuotedTextParagraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative removingQuoteSpaces:(BOOL)removingQuoteSpaces leavingTrailingQuoteSpaces:(BOOL)leavingTrailingQuoteSpaces;  // hard-wraps text, taking Internet-style line quoting into account
- (void) shiftDirection:(TextWranglerShDr)direction shiftingBySpaces:(BOOL)shiftingBySpaces;  // shift the specified text left or right, optionally by one space
- (NSString *) sortLinesSortingOptions:(TextWranglerSortLinesOptions *)sortingOptions outputOptions:(TextWranglerSortLinesOutputOptions *)outputOptions;  // order the lines in the specified text
- (void) stripQuotes;  // removes all Internet-style quoting from each line of the specified text
- (NSString *) zapGremlinsZapAction:(TextWranglerZAct)zapAction zapCharacter:(NSString *)zapCharacter nulls:(BOOL)nulls controls:(BOOL)controls nonASCIICharacters:(BOOL)nonASCIICharacters;  // Removes or replaces unwanted characters from text
- (void) appendToScratchpad;  // Appends the specified text to the global scratchpad.

@end

@interface TextWranglerProcessLinesContainingResults : SBObject

@property (copy, readonly) NSString *copiedLines;  // the lines in the input matching the string
@property (copy, readonly) NSString *modifiedText;  // the lines in the input not matching the string

- (void) openWithProperties:(NSDictionary *)withProperties openingIn:(id)openingIn stationeryAwareness:(BOOL)stationeryAwareness LFTranslation:(BOOL)LFTranslation readOnly:(BOOL)readOnly readingAs:(TextWranglerRAsE)readingAs addingToRecentList:(BOOL)addingToRecentList;  // Opens the specified item(s)
- (void) printWithProperties:(TextWranglerPrintSettings *)withProperties printDialog:(BOOL)printDialog;  // Print the specified object(s)
- (void) closeSaving:(TextWranglerSavo)saving savingIn:(id)savingIn;  // Closes the designated window.
- (void) delete;  // Delete an element from an object
- (SBObject *) duplicateTo:(SBObject *)to;  // Duplicate object(s)
- (BOOL) exists;  // Verify if an object exists
- (SBObject *) moveTo:(SBObject *)to;  // Move object(s) to a new location
- (void) saveTo:(id)to savingAsStationery:(BOOL)savingAsStationery addToRecentList:(BOOL)addToRecentList;  // Save a window or document.
- (void) activate;  // activate the application or a window
- (void) copyAppendingToClipboard:(BOOL)appendingToClipboard NS_RETURNS_NOT_RETAINED;  // Copy an object to the clipboard
- (void) extendedCopyAppendingToClipboard:(BOOL)appendingToClipboard;  // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
- (void) cutAppendingToClipboard:(BOOL)appendingToClipboard;  // Cut an object to the clipboard
- (void) paste;  // Paste an object from the clipboard
- (void) pasteColumn;  // Paste an text from the clipboard forcing insertion as a rectangular column
- (void) redo;  // Reverses the effects of the most recent Undo, if possible.
- (void) revertDiscardingUnsavedChanges:(TextWranglerRevo)discardingUnsavedChanges;  // Restore the object to its last saved state
- (void) select;  // Select the specified object
- (void) undo;  // Undoes the effects of the last command, if possible.
- (void) exportTo:(id)to;  // Export an object
- (void) addLineBreaks;  // Inserts a hard line break character at the end of each soft-wrapped line
- (NSString *) addPrefixPrefix:(NSString *)prefix;  // inserts a string at the beginning of each line in the indicated text
- (NSString *) addSuffixSuffix:(NSString *)suffix;  // inserts a string at the end of each line in the indicated text
- (NSString *) removePrefixPrefix:(NSString *)prefix;  // removes a string from the beginning of each line in the indicated text
- (NSString *) removeSuffixSuffix:(NSString *)suffix;  // removes a string from the end of each line in the indicated text
- (NSString *) addPrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously adds a prefix and suffix to each line in the indicated text
- (NSString *) removePrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously removes a prefix and suffix from each line in the indicated text
- (NSString *) addLineNumbersStartNumber:(NSInteger)startNumber increment:(NSInteger)increment addingSpace:(BOOL)addingSpace keepingJustified:(BOOL)keepingJustified;  // numbers each line in the indicated text
- (NSString *) removeLineNumbersAddingSpace:(BOOL)addingSpace;  // removes leading numbering from each line in the indicated text
- (void) changeCaseMaking:(TextWranglerCact)making;  // Changes the case of text
- (void) clearUndoHistoryConfirming:(BOOL)confirming;  // Deletes all Undo/Redo history information for this document
- (NSString *) convertToASCIIReplacingTarget:(BOOL)replacingTarget;  // Converts 8-bit characters to 7-bit characters
- (void) decrementQuoteLevel;  // removes one level of Internet-style quoting from each line of the specified text
- (void) detabTabWidth:(NSInteger)tabWidth;  // Replace tabs with runs of spaces.
- (void) entabTabWidth:(NSInteger)tabWidth;  // Replace runs of spaces with tabs.
- (NSString *) educateQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert straight quotes into curly (typographer’s) quotes
- (NSString *) straightenQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert curly (typographer’s) quotes into straight quotes
- (void) hardWrapLimit:(TextWranglerWrMd)limit paragraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative;  // hard-wraps text to conform to the parameters
- (void) incrementQuoteLevelQuoteString:(NSString *)quoteString;  // adds one level of Internet-style quoting to each line of the specified text
- (void) markOptions:(TextWranglerMarkOptions *)options;  // mark matches of a specified search pattern with a string
- (NSString *) normalizeLineEndings;  // convert any CRLF pairs and LF characters remaining after line-break conversion
- (TextWranglerProcessDuplicatesResults *) processDuplicateLinesDuplicatesOptions:(TextWranglerProcessDuplicatesOptions *)duplicatesOptions outputOptions:(TextWranglerProcessDuplicatesOutputOptions *)outputOptions;  // analyze the specified text for duplicate lines
- (TextWranglerProcessLinesContainingResults *) processLinesContainingMatchingString:(NSString *)matchingString matchingWithGrep:(BOOL)matchingWithGrep caseSensitive:(BOOL)caseSensitive outputOptions:(TextWranglerProcessLinesContainingOutputOptions *)outputOptions;  // search for lines in the specified text containing the indicated string
- (void) removeLineBreaks;  // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
- (void) rewrapQuotedTextParagraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(TextWranglerIndt)indentation relative:(BOOL)relative removingQuoteSpaces:(BOOL)removingQuoteSpaces leavingTrailingQuoteSpaces:(BOOL)leavingTrailingQuoteSpaces;  // hard-wraps text, taking Internet-style line quoting into account
- (void) shiftDirection:(TextWranglerShDr)direction shiftingBySpaces:(BOOL)shiftingBySpaces;  // shift the specified text left or right, optionally by one space
- (NSString *) sortLinesSortingOptions:(TextWranglerSortLinesOptions *)sortingOptions outputOptions:(TextWranglerSortLinesOutputOptions *)outputOptions;  // order the lines in the specified text
- (void) stripQuotes;  // removes all Internet-style quoting from each line of the specified text
- (NSString *) zapGremlinsZapAction:(TextWranglerZAct)zapAction zapCharacter:(NSString *)zapCharacter nulls:(BOOL)nulls controls:(BOOL)controls nonASCIICharacters:(BOOL)nonASCIICharacters;  // Removes or replaces unwanted characters from text
- (void) appendToScratchpad;  // Appends the specified text to the global scratchpad.

@end



/*
 * Text Suite
 */

// abstract class describing a text object and its basic properties
@interface TextWranglerText_object : TextWranglerItem

@property (copy) id contents;  // literal text contents
@property (readonly) NSInteger length;  // length of text object (in characters)
@property (readonly) NSInteger characterOffset;  // offset of a text object from the beginning of the document (first char has offset 1)
@property (readonly) NSInteger startLine;  // line number of the first “hard” line containing this text object (first line has number 1)
@property (readonly) NSInteger endLine;  // line number of the last “hard” line containing this text object
@property (readonly) NSInteger startColumn;  // character column (1 is first) of the first character of the object
@property (readonly) NSInteger endColumn;  // character column (1 is first) of the last character of the object
@property (readonly) NSInteger startDisplayLine;  // line number of the first display line containing this text object (first line has number 1)
@property (readonly) NSInteger endDisplayLine;  // line number of the last display line containing this text object


@end

// an insertion point
@interface TextWranglerInsertionPoint : TextWranglerText_object


@end

// a character
@interface TextWranglerCharacter : TextWranglerText_object


@end

@interface TextWranglerCharacter (TextSuite)

- (SBElementArray *) characters;
- (SBElementArray *) words;
- (SBElementArray *) lines;
- (SBElementArray *) display_lines;
- (SBElementArray *) insertionPoints;
- (SBElementArray *) texts;

@end

// a word
@interface TextWranglerWord : TextWranglerText_object


@end

@interface TextWranglerWord (TextSuite)

- (SBElementArray *) characters;
- (SBElementArray *) words;
- (SBElementArray *) lines;
- (SBElementArray *) display_lines;
- (SBElementArray *) insertionPoints;
- (SBElementArray *) texts;

@end

// a line of text, as bounded by start-of-file, end-of-file, or line breaks
@interface TextWranglerLine : TextWranglerText_object


@end

@interface TextWranglerLine (TextSuite)

- (SBElementArray *) characters;
- (SBElementArray *) words;
- (SBElementArray *) lines;
- (SBElementArray *) display_lines;
- (SBElementArray *) insertionPoints;
- (SBElementArray *) texts;

@end

// a line of text, as displayed on screen
@interface TextWranglerDisplay_line : TextWranglerText_object


@end

@interface TextWranglerDisplay_line (TextSuite)

- (SBElementArray *) characters;
- (SBElementArray *) words;
- (SBElementArray *) lines;
- (SBElementArray *) display_lines;
- (SBElementArray *) insertionPoints;
- (SBElementArray *) texts;

@end

// Text
@interface TextWranglerText : TextWranglerText_object

- (SBElementArray *) characters;
- (SBElementArray *) words;
- (SBElementArray *) lines;
- (SBElementArray *) display_lines;
- (SBElementArray *) insertionPoints;
- (SBElementArray *) texts;

- (TextWranglerSearchMatch *) findSearchingIn:(id)searchingIn selectingMatch:(BOOL)selectingMatch options:(TextWranglerSearchOptions *)options excludingMatches:(BOOL)excludingMatches filter:(TextWranglerFilter *)filter recursion:(BOOL)recursion textFilesOnly:(BOOL)textFilesOnly skipShieldedFolders:(BOOL)skipShieldedFolders searchInvisibleFolders:(BOOL)searchInvisibleFolders searchCompressedFiles:(BOOL)searchCompressedFiles;  // Searches for text
- (id) replaceUsing:(NSString *)using_ searchingIn:(id)searchingIn searchingString:(NSString *)searchingString options:(TextWranglerSearchOptions *)options saving:(TextWranglerSavo)saving recursion:(BOOL)recursion textFilesOnly:(BOOL)textFilesOnly skipShieldedFolders:(BOOL)skipShieldedFolders;  // performs a Replace All

@end

