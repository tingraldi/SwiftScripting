/*
 * BBEdit.h
 */

#import <AppKit/AppKit.h>
#import <ScriptingBridge/ScriptingBridge.h>


@class BBEditPrintSettings, BBEditItem, BBEditApplication, BBEditClipboard, BBEditDocument, BBEditFactoryDocument, BBEditFile, BBEditFilter, BBEditFilter_term, BBEditProjectItem, BBEditProjectCollection, BBEditProjectDocument, BBEditImageDocument, BBEditShellDocument, BBEditTextDocument, BBEditWindow, BBEditDifferencesWindow, BBEditDiskBrowserWindow, BBEditFactoryWindow, BBEditFind_window, BBEditMultifile_search_window, BBEditFTPBrowserWindow, BBEditOpen_file_by_name_window, BBEditPalette, BBEditPlugin_info_window, BBEditPreferences_window, BBEditImageWindow, BBEditResultsBrowser, BBEditSearchResultsBrowser, BBEditTextWindow, BBEditScratchpadWindow, BBEditProjectWindow, BBEditPerl_reference_window, BBEditSource_control_form_window, BBEditWeb_preview_window, BBEditCompareOptions, BBEditCompareResults, BBEditFTPInfo, BBEditMarkOptions, BBEditResultEntry, BBEditSearchOptions, BBEditSearchMatch, BBEditSearchStringProperties, BBEditSortLinesOptions, BBEditSortLinesOutputOptions, BBEditProcessDuplicatesOptions, BBEditProcessDuplicatesOutputOptions, BBEditProcessDuplicatesResults, BBEditProcessLinesContainingOutputOptions, BBEditProcessLinesContainingResults, BBEditText_object, BBEditInsertionPoint, BBEditCharacter, BBEditWord, BBEditLine, BBEditDisplay_line, BBEditText, BBEditHTMLPrefs, BBEditTagInfo, BBEditTagResult, BBEditTagPairResult;

enum BBEditEnum {
	BBEditEnumStandard = 'lwst' /* Standard PostScript error handling   */,
	BBEditEnumDetailed = 'lwdt' /* print a detailed report of PostScript errors */
};
typedef enum BBEditEnum BBEditEnum;

enum BBEditRAsE {
	BBEditRAsEAuto_detectFile = 'RdAD',
	BBEditRAsEUTF8File = 'RdU8',
	BBEditRAsEUnicodeFile = 'RdUb',
	BBEditRAsEByteSwappedUnicodeFile = 'RdUl'
};
typedef enum BBEditRAsE BBEditRAsE;

enum BBEditPstp {
	BBEditPstpModificationDate = 'asmo',
	BBEditPstpPrintingDate = 'PrnD'
};
typedef enum BBEditPstp BBEditPstp;

enum BBEditOpnE {
	BBEditOpnEFront_window = 'FrtW',
	BBEditOpnENew_window = 'NewW',
	BBEditOpnESeparate_windows = 'SepW'
};
typedef enum BBEditOpnE BBEditOpnE;

enum BBEditSavo {
	BBEditSavoYes = 'yes ' /* Save objects now */,
	BBEditSavoNo = 'no  ' /* Do not save objects */,
	BBEditSavoAsk = 'ask ' /* Ask the user whether to save */
};
typedef enum BBEditSavo BBEditSavo;

enum BBEditKfrm {
	BBEditKfrmIndex = 'indx' /* keyform designating indexed access */,
	BBEditKfrmNamed = 'name' /* keyform designating named access */,
	BBEditKfrmId = 'ID  ' /* keyform designating identifier access */
};
typedef enum BBEditKfrm BBEditKfrm;

enum BBEditRevo {
	BBEditRevoYes = 'yes ' /* discard changes now */,
	BBEditRevoAsk = 'ask ' /* ask the user whether to discard changes */
};
typedef enum BBEditRevo BBEditRevo;

enum BBEditStyl {
	BBEditStylPlain = 'plan' /* plain (no style) */,
	BBEditStylBold = 'bold' /* bold face */,
	BBEditStylItalic = 'ital' /* italic */,
	BBEditStylOutline = 'outl' /* outline */,
	BBEditStylShadow = 'shad' /* shadow */,
	BBEditStylUnderline = 'undl' /* underline */,
	BBEditStylCondensed = 'cond' /* condensed */,
	BBEditStylExtended = 'Extd' /* extended */
};
typedef enum BBEditStyl BBEditStyl;

enum BBEditLinB {
	BBEditLinBMac = 'CR  ' /* Mac format (CR) */,
	BBEditLinBUnix = 'LF  ' /* Unix format (LF) */,
	BBEditLinBDOS = 'CRLF' /* DOS/Windows format (CRLF) */
};
typedef enum BBEditLinB BBEditLinB;

enum BBEditWrMd {
	BBEditWrMdPageGuide = 'WrPh' /* wrap to the page guide */,
	BBEditWrMdWindowWidth = 'WrWn' /* wrap to the window width */,
	BBEditWrMdCharacterWidth = 'WrCh' /* wrap to a specified number of characters */
};
typedef enum BBEditWrMd BBEditWrMd;

enum BBEditSMod {
	BBEditSModLiteral = 'Ltrl' /* a literal text search */,
	BBEditSModGrep = 'Grep' /* a “grep” search */
};
typedef enum BBEditSMod BBEditSMod;

enum BBEditCact {
	BBEditCactRaiseCase = 'Rase' /* make all characters upper-case */,
	BBEditCactLowerCase = 'Lowr' /* make all characters lower-case */,
	BBEditCactCapitalizeWords = 'CapW' /* make the first letter of all words upper-case, make all other letters lower-case */,
	BBEditCactCapitalizeSentences = 'CapS' /* make the first letter of all words upper-case, make all other letters lower-case */,
	BBEditCactCapitalizeLines = 'CapL' /* make the first letter of all lines upper-case, leave all other letters alone */
};
typedef enum BBEditCact BBEditCact;

enum BBEditIndt {
	BBEditIndtNone = 'nInd' /* do not indent wrapped paragraphs */,
	BBEditIndtFirst_line = 'Frst' /* indent first line of wrapped paragraphs */,
	BBEditIndtAll_lines = 'AllL' /* indent all lines of wrapped paragraphs */,
	BBEditIndtReverse_indent = 'RevI' /* indent all lines of wrapped paragraphs -except- the first */,
	BBEditIndtSame_as_first_line = 'SFrs' /* indent all lines of wrapped paragraphs to the same level as the first line */
};
typedef enum BBEditIndt BBEditIndt;

enum BBEditZAct {
	BBEditZActDelete_gremlin = 'Zdel' /* delete gremlins */,
	BBEditZActReplace_with_code = 'Zrcd' /* replace gremlins with hex code */,
	BBEditZActReplace_with_char = 'Zrch' /* replace gremlins with a printable character */,
	BBEditZActReplace_with_entity = 'Zent' /* replace gremlins with an HTML entity */
};
typedef enum BBEditZAct BBEditZAct;

enum BBEditCFop {
	BBEditCFopFile_contains = '+Cnt' /* file contains literal string */,
	BBEditCFopFile_does_not_contain = '-Cnt' /* file does not contain literal string */,
	BBEditCFopFile_matches = '+Grp' /* file contains a match for Grep pattern */,
	BBEditCFopFile_does_not_match = '-Grp' /* file does not contain a match for Grep pattern */
};
typedef enum BBEditCFop BBEditCFop;

enum BBEditErsl {
	BBEditErslError_kind = 'Err ' /* result entry describes an error */,
	BBEditErslWarning_kind = 'Wrng' /* result entry describes a warning */,
	BBEditErslNote_kind = 'Note' /* result entry is informational or describes a search result */
};
typedef enum BBEditErsl BBEditErsl;

enum BBEditShDr {
	BBEditShDrLeft = 'left' /* it's just a jump to the left! */,
	BBEditShDrRight = 'rght' /* and then a step to the right... */
};
typedef enum BBEditShDr BBEditShDr;

enum BBEditFltM {
	BBEditFltMAnd_mode = 'andF' /* all criteria must match */,
	BBEditFltMOr_mode = 'orF ' /* any criteria may match */
};
typedef enum BBEditFltM BBEditFltM;

enum BBEditFiel {
	BBEditFielFile_name = 'Fnam' /* examines file’s name */,
	BBEditFielParent_name = '\304nam' /* examines name of enclosing folder */,
	BBEditFielFile_type = 'Ftyp' /* examines file’s type code */,
	BBEditFielFile_creator = 'Fcrt' /* examines file’s creator code */,
	BBEditFielCreation_date_only = 'Cdat' /* examines file’s creation date, ignoring the time */,
	BBEditFielCreation_date_and_time = 'CdaT' /* examines file’s creation date, including the time */,
	BBEditFielMod_date_only = 'Mdat' /* examines file’s modification date, ignoring the time */,
	BBEditFielMod_date_and_time = 'MdaT' /* examines file’s modification date, including the time */,
	BBEditFielFile_label = 'Flab' /* examines file’s Finder label (0 = none) */,
	BBEditFielFile_visible = 'Fvis' /* examines file’s visibility */,
	BBEditFielFile_locked = 'Flck' /* examines file’s lock state */,
	BBEditFielFile_language = 'Flan' /* examines file’s source language code */
};
typedef enum BBEditFiel BBEditFiel;

enum BBEditOper {
	BBEditOperOp_is_equal = '+Equ' /* is equal to */,
	BBEditOperOp_is_not_equal = '-Equ' /* is not equal to */,
	BBEditOperOp_less_than = '+Lt ' /* is less than */,
	BBEditOperOp_less_than_or_equal = '+LEq' /* is less than or equal to */,
	BBEditOperOp_greater_than = '+Gt ' /* is greater than */,
	BBEditOperOp_greater_than_or_equal = '+GEq' /* is greater than or equal to */,
	BBEditOperOp_starts_with = '+Beg' /* starts with literal string */,
	BBEditOperOp_does_not_start_with = '-Beg' /* does not start with literal string */,
	BBEditOperOp_ends_with = '+End' /* ends with literal string */,
	BBEditOperOp_does_not_end_with = '-End' /* does not end with literal string */,
	BBEditOperOp_contains = '+Cnt' /* contains literal string */,
	BBEditOperOp_does_not_contain = '-Cnt' /* does not contain literal string */,
	BBEditOperOp_matches_grep = '+Grp' /* contains a match for Grep pattern */,
	BBEditOperOp_does_not_match_grep = '-Grp' /* does not contain a match for Grep pattern */,
	BBEditOperOp_matches_wildcard = '+Wld' /* matches wildcard pattern */,
	BBEditOperOp_does_not_match_wildcard = '-Wld' /* does not match wildcard pattern */
};
typedef enum BBEditOper BBEditOper;

enum BBEditMMod {
	BBEditMModMatching_all = 'MAll' /* delete/copy all duplicates */,
	BBEditMModLeaving_one = 'Lev1' /* uniquify (leave one behind of a set of duplicates) */
};
typedef enum BBEditMMod BBEditMMod;

enum BBEditESbM {
	BBEditESbMEntire_match = 'EntL' /* use the entire matched portion of the line as the sort/match key */,
	BBEditESbMAll_subpatterns = 'ASub' /* use all subpatterns (\1...\N) as the sort/match key */,
	BBEditESbMUse_subpattern = 'SubP' /* use a specified subpattern as the sort/match key */
};
typedef enum BBEditESbM BBEditESbM;

enum BBEditFRMT {
	BBEditFRMTHierarchical = 'hier',
	BBEditFRMTGentleHierarchical = 'gent',
	BBEditFRMTPlain = 'plan',
	BBEditFRMTCompact = 'comp',
	BBEditFRMTGentleCompact = 'gcmp',
	BBEditFRMTSource_format_profile = 'sfpm',
	BBEditFRMTDocumentSkeleton = 'skel',
	BBEditFRMTNoReorganization = 'norm'
};
typedef enum BBEditFRMT BBEditFRMT;

enum BBEditPRVW {
	BBEditPRVWUseTemporaryFile = 'temp',
	BBEditPRVWAutoSave = 'auto',
	BBEditPRVWConfirmSave = 'ask\?'
};
typedef enum BBEditPRVW BBEditPRVW;

enum BBEditENTK {
	BBEditENTKErrorKind = 'ErrE',
	BBEditENTKWarningKind = 'WarE',
	BBEditENTKNoteKind = 'NotE'
};
typedef enum BBEditENTK BBEditENTK;

enum BBEditEAtr {
	BBEditEAtrNo_value = 'EmAt'
};
typedef enum BBEditEAtr BBEditEAtr;

enum BBEditEEcM {
	BBEditEEcMEntityNameValue = 'ENaV',
	BBEditEEcMEntityDecimalValue = 'EDeV',
	BBEditEEcMEntityHexValue = 'EHxV'
};
typedef enum BBEditEEcM BBEditEEcM;

@protocol BBEditGenericMethods

- (void) openWithProperties:(NSDictionary *)withProperties openingIn:(id)openingIn stationeryAwareness:(BOOL)stationeryAwareness LFTranslation:(BOOL)LFTranslation readOnly:(BOOL)readOnly readingAs:(BBEditRAsE)readingAs addingToRecentList:(BOOL)addingToRecentList;  // Opens the specified item(s)
- (void) printWithProperties:(BBEditPrintSettings *)withProperties printDialog:(BOOL)printDialog;  // Print the specified object(s)
- (void) closeSaving:(BBEditSavo)saving savingIn:(NSURL *)savingIn;  // Closes the designated window.
- (void) delete;  // Delete an element from an object
- (SBObject *) duplicateTo:(SBObject *)to;  // Duplicate object(s)
- (BOOL) exists;  // Verify if an object exists
- (SBObject *) moveTo:(SBObject *)to;  // Move object(s) to a new location
- (void) saveTo:(NSURL *)to savingAsStationery:(BOOL)savingAsStationery addToRecentList:(BOOL)addToRecentList;  // Save a window or document.
- (void) activate;  // activate the application or a window
- (void) copyAppendingToClipboard:(BOOL)appendingToClipboard NS_RETURNS_NOT_RETAINED;  // Copy an object to the clipboard
- (void) extendedCopyAppendingToClipboard:(BOOL)appendingToClipboard;  // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
- (void) cutAppendingToClipboard:(BOOL)appendingToClipboard;  // Cut an object to the clipboard
- (void) paste;  // Paste an object from the clipboard
- (void) pasteColumn;  // Paste an text from the clipboard forcing insertion as a rectangular column
- (void) redo;  // Reverses the effects of the most recent Undo, if possible.
- (void) revertDiscardingUnsavedChanges:(BBEditRevo)discardingUnsavedChanges;  // Restore the object to its last saved state
- (void) select;  // Select the specified object
- (void) undo;  // Undoes the effects of the last command, if possible.
- (void) exportTo:(NSURL *)to;  // Export an object
- (void) addLineBreaks;  // Inserts a hard line break character at the end of each soft-wrapped line
- (NSString *) addPrefixPrefix:(NSString *)prefix;  // inserts a string at the beginning of each line in the indicated text
- (NSString *) addSuffixSuffix:(NSString *)suffix;  // inserts a string at the end of each line in the indicated text
- (NSString *) removePrefixPrefix:(NSString *)prefix;  // removes a string from the beginning of each line in the indicated text
- (NSString *) removeSuffixSuffix:(NSString *)suffix;  // removes a string from the end of each line in the indicated text
- (NSString *) addPrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously adds a prefix and suffix to each line in the indicated text
- (NSString *) removePrefixAndSuffixPrefix:(NSString *)prefix suffix:(NSString *)suffix;  // simultaneously removes a prefix and suffix from each line in the indicated text
- (NSString *) addLineNumbersStartNumber:(NSInteger)startNumber increment:(NSInteger)increment addingSpace:(BOOL)addingSpace keepingJustified:(BOOL)keepingJustified;  // numbers each line in the indicated text
- (NSString *) removeLineNumbersAddingSpace:(BOOL)addingSpace;  // removes leading numbering from each line in the indicated text
- (void) changeCaseMaking:(BBEditCact)making;  // Changes the case of text
- (void) clearUndoHistoryConfirming:(BOOL)confirming;  // Deletes all Undo/Redo history information for this document
- (NSString *) convertToASCIIReplacingTarget:(BOOL)replacingTarget;  // Converts 8-bit characters to 7-bit characters
- (void) decrementQuoteLevel;  // removes one level of Internet-style quoting from each line of the specified text
- (void) detabTabWidth:(NSInteger)tabWidth;  // Replace tabs with runs of spaces.
- (void) entabTabWidth:(NSInteger)tabWidth;  // Replace runs of spaces with tabs.
- (NSString *) educateQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert straight quotes into curly (typographer’s) quotes
- (NSString *) straightenQuotesReplacingTarget:(BOOL)replacingTarget;  // Convert curly (typographer’s) quotes into straight quotes
- (void) hardWrapLimit:(BBEditWrMd)limit paragraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(BBEditIndt)indentation relative:(BOOL)relative;  // hard-wraps text to conform to the parameters
- (void) incrementQuoteLevelQuoteString:(NSString *)quoteString;  // adds one level of Internet-style quoting to each line of the specified text
- (void) markOptions:(BBEditMarkOptions *)options;  // mark matches of a specified search pattern with a string
- (NSString *) normalizeLineEndings;  // convert any CRLF pairs and LF characters remaining after line-break conversion
- (BBEditProcessDuplicatesResults *) processDuplicateLinesDuplicatesOptions:(BBEditProcessDuplicatesOptions *)duplicatesOptions outputOptions:(BBEditProcessDuplicatesOutputOptions *)outputOptions;  // analyze the specified text for duplicate lines
- (BBEditProcessLinesContainingResults *) processLinesContainingMatchingString:(NSString *)matchingString matchingWithGrep:(BOOL)matchingWithGrep caseSensitive:(BOOL)caseSensitive outputOptions:(BBEditProcessLinesContainingOutputOptions *)outputOptions;  // search for lines in the specified text containing the indicated string
- (void) removeLineBreaks;  // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
- (void) rewrapQuotedTextParagraphFill:(BOOL)paragraphFill width:(NSInteger)width indentation:(BBEditIndt)indentation relative:(BOOL)relative removingQuoteSpaces:(BOOL)removingQuoteSpaces leavingTrailingQuoteSpaces:(BOOL)leavingTrailingQuoteSpaces;  // hard-wraps text, taking Internet-style line quoting into account
- (void) shiftDirection:(BBEditShDr)direction shiftingBySpaces:(BOOL)shiftingBySpaces;  // shift the specified text left or right, optionally by one space
- (NSString *) sortLinesSortingOptions:(BBEditSortLinesOptions *)sortingOptions outputOptions:(BBEditSortLinesOutputOptions *)outputOptions;  // order the lines in the specified text
- (void) stripQuotes;  // removes all Internet-style quoting from each line of the specified text
- (NSString *) zapGremlinsZapAction:(BBEditZAct)zapAction zapCharacter:(NSString *)zapCharacter nulls:(BOOL)nulls controls:(BOOL)controls nonASCIICharacters:(BOOL)nonASCIICharacters useASCIIEquivalents:(BOOL)useASCIIEquivalents useNamedEntities:(BOOL)useNamedEntities;  // Removes or replaces unwanted characters from text
- (void) appendToScratchpad;  // Appends the specified text to the global scratchpad.

@end



/*
 * Required Suite
 */

@interface BBEditPrintSettings : SBObject <BBEditGenericMethods>

@property (readonly) NSInteger copies;  // the number of copies of a document to be printed 
@property (readonly) BOOL collating;  // Should printed copies be collated?
@property (readonly) NSInteger startingPage;  // the first page of the document to be printed
@property (readonly) NSInteger endingPage;  // the last page of the document to be printed
@property (readonly) NSInteger pagesAcross;  // number of logical pages laid across a physical page
@property (readonly) NSInteger pagesDown;  // number of logical pages laid out down a physical page
@property (copy, readonly) NSDate *requestedPrintTime;  // the time at which the desktop printer should print the document...
@property (readonly) BBEditEnum errorHandling;  // how errors are handled
@property (copy, readonly) NSArray<NSArray *> *printerFeatures;  // for printer specific features
@property (copy, readonly) NSString *faxNumber;  // for fax number
@property (copy, readonly) NSString *targetPrinter;  // for target printer
@property (readonly) BOOL usingDocumentFont;
@property (readonly) BOOL framingPage;
@property (readonly) BOOL pageHeaders;
@property (readonly) BOOL lineNumbers;
@property (readonly) BOOL gutter;
@property (readonly) BOOL fullPath;
@property (readonly) BOOL printColorSyntax;
@property (readonly) BBEditPstp timeStamp;


@end



/*
 * BBEdit Suite
 */

// an OSA object
@interface BBEditItem : SBObject <BBEditGenericMethods>

@property (copy) NSDictionary *properties;  // all of this object’s properties
@property (copy, readonly) SBObject *container;  // object’s container (if any)


@end

// An application program
@interface BBEditApplication : SBApplication

- (SBElementArray<BBEditWindow *> *) windows;
- (SBElementArray<BBEditTextWindow *> *) textWindows;
- (SBElementArray<BBEditDocument *> *) documents;
- (SBElementArray<BBEditTextDocument *> *) textDocuments;
- (SBElementArray<BBEditPalette *> *) palettes;
- (SBElementArray<BBEditClipboard *> *) clipboards;

@property (readonly) NSInteger ID;  // object’s unique id
@property (copy, readonly) NSString *name;  // the name
@property (copy, readonly) SBObject *selection;  // the selection visible to the user
@property BOOL frontmost;  // Is this the frontmost application?
@property (copy, readonly) NSString *version;  // the version number of the application
@property (readonly) NSInteger buildNumber;  // the build number of the application
@property (copy, readonly) NSString *serialNumber;  // the application’s serial number
@property (copy) id currentClipboard;  // the clipboard
@property (copy, readonly) BBEditSearchOptions *currentSearchOptions;  // search options used by the most recent search/replace operation
@property (copy) BBEditSearchStringProperties *currentSearchStrings;  // search strings used by the most recent search/replace operation
@property (copy) BBEditTextDocument *scratchpadDocument;  // the “Scratchpad” document
@property (copy) BBEditShellDocument *UnixWorksheetWindow;  // the “Unix Worksheet” document
@property (copy, readonly) BBEditPalette *clippingList;  // the floating window displaying available clippings
@property (copy, readonly) BBEditPalette *windowList;  // the floating window displaying the open windows in the application
@property (copy, readonly) BBEditPalette *characterInspector;  // the floating window displaying ASCII and Unicode character and escape sequences
@property (copy, readonly) BBEditFind_window *findWindow;  // the Find window
@property (copy, readonly) BBEditMultifile_search_window *findMultipleWindow;  // the Multi-File Search window
@property (copy, readonly) BBEditPalette *functionsList;  // the floating window displaying functions in the current document
@property (copy, readonly) BBEditPalette *jumpPointsList;  // the floating window displaying the jump points for the current document
@property (copy, readonly) BBEditPalette *markersList;  // the floating window displaying markers in the current document
@property (copy, readonly) BBEditOpen_file_by_name_window *OpenFileByNameWindow;  // the Open File by Name window
@property (copy, readonly) BBEditPalette *scriptsList;  // the floating window displaying available OSA scripts
@property (copy, readonly) BBEditPalette *UnixFiltersList;  // the floating window displaying items in the “Unix Filters” folder (uses “Perl Filters”)
@property (copy, readonly) BBEditPalette *HTMLToolsPalette;  // the main HTML tools palette
@property (copy, readonly) BBEditPalette *FontElementsPalette;  // the Font Style Elements palette
@property (copy, readonly) BBEditPalette *CSSToolsPalette;  // the CSS tools palette
@property (copy, readonly) BBEditPalette *HTMLUtilitiesPalette;  // the HTML utilities palette
@property (copy, readonly) BBEditPalette *HTMLEntitiesList;  // the list of HTML entities

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
- (void) exportTo:(NSURL *)to;  // Export an object
- (void) applyTextFactory:(NSURL *)x to:(id)to options:(BBEditSearchOptions *)options filter:(BBEditFilter *)filter saving:(BBEditSavo)saving recursion:(BOOL)recursion textFilesOnly:(BOOL)textFilesOnly skipShieldedFolders:(BOOL)skipShieldedFolders searchInvisibleFolders:(BOOL)searchInvisibleFolders searchCompressedFiles:(BOOL)searchCompressedFiles searchGitIgnoredFiles:(BOOL)searchGitIgnoredFiles;  // Applies the operations in a specified text factory to the designated items
- (void) clearUndoHistoryConfirming:(BOOL)confirming;  // Deletes all Undo/Redo history information for this document
- (BBEditCompareResults *) compare:(NSURL *)x against:(NSURL *)against options:(BBEditCompareOptions *)options filter:(BBEditFilter *)filter;  // compares two files or folders
- (BBEditSearchMatch *) find:(NSString *)x searchingIn:(id)searchingIn selectingMatch:(BOOL)selectingMatch options:(BBEditSearchOptions *)options excludingMatches:(BOOL)excludingMatches filter:(BBEditFilter *)filter recursion:(BOOL)recursion textFilesOnly:(BOOL)textFilesOnly skipShieldedFolders:(BOOL)skipShieldedFolders searchInvisibleFolders:(BOOL)searchInvisibleFolders searchCompressedFiles:(BOOL)searchCompressedFiles searchGitIgnoredFiles:(BOOL)searchGitIgnoredFiles;  // Searches for text
- (NSString *) grepSubstitutionOf:(NSString *)of;  // computes the Grep replacement string based on the results of the most recent scripted Grep search
- (void) insertClipping:(NSURL *)x inserting:(NSURL *)inserting into:(SBObject *)into;  // inserts the specified clipping
- (NSInteger) replace:(NSString *)x using:(NSString *)using_ searchingIn:(id)searchingIn searchingString:(NSString *)searchingString options:(BBEditSearchOptions *)options filter:(BBEditFilter *)filter saving:(BBEditSavo)saving recursion:(BOOL)recursion textFilesOnly:(BOOL)textFilesOnly skipShieldedFolders:(BOOL)skipShieldedFolders searchInvisibleFolders:(BOOL)searchInvisibleFolders searchCompressedFiles:(BOOL)searchCompressedFiles searchGitIgnoredFiles:(BOOL)searchGitIgnoredFiles;  // performs a Replace All
- (void) sleep;  // save application state and quit immediately
- (BOOL) balanceTags;  // balance html tags in the frontmost window
- (BBEditResultEntry *) checkLinks:(NSURL *)x showResults:(BOOL)showResults skipShielded:(BOOL)skipShielded nested:(BOOL)nested;  // checks the validity of all links in the file/folder specified
- (BBEditResultEntry *) checkSyntax:(NSURL *)x showResults:(BOOL)showResults skipShielded:(BOOL)skipShielded nested:(BOOL)nested;  // checks the html syntax of the file/folder specified
- (BBEditTagResult *) findTag:(NSString *)x start_offset:(NSInteger)start_offset isCloseTag:(BOOL)isCloseTag;  // looks for the html tag with the given name, starting at offset in the front document
- (void) formatMode:(BBEditFRMT)mode selectionOnly:(BOOL)selectionOnly normalizingTagCase:(BOOL)normalizingTagCase normalizingAttributeQuotes:(BOOL)normalizingAttributeQuotes encodeEntitiesInAttributes:(BOOL)encodeEntitiesInAttributes;  // formats the html in the frontmost window
- (NSString *) generateTagText:(NSDictionary *)x;  // generates the tag text for the given tag info record
- (BBEditHTMLPrefs *) getHtmlPreferences;  // gets the current html preferences
- (BBEditTagResult *) insideOpenTag:(NSString *)x startRange:(NSInteger)startRange endRange:(NSInteger)endRange;  // looks to see if the given range is contained within an open html tag with the given name
- (BBEditTagPairResult *) insideTagPair:(NSString *)x startRange:(NSInteger)startRange endRange:(NSInteger)endRange;  // looks to see if the given range is contained within an html tag pair with the given name
- (BBEditTagResult *) insideTagStartRange:(NSInteger)startRange endRange:(NSInteger)endRange;  // looks to see if the given range is contained within an html tag
- (void) makeTagsLowerCase;  // makes the tags in the frontmost window lowercase
- (void) makeTagsUpperCase;  // makes the tags in the frontmost window uppercase
- (void) normalizeTagCase;  // changes the tag case in the front most window to reflect the preference setting
- (void) optimize;  // optimizes the html in the frontmost window
- (void) previewAsText;  // preview the frontmost window as text in BBEdit
- (void) previewInBrowser;  // preview the frontmost window in the preferred web browser
- (void) translateHtmlToTextEntityConversion:(BOOL)entityConversion tagRemoval:(BOOL)tagRemoval paragraphConversion:(BOOL)paragraphConversion createNewDocument:(BOOL)createNewDocument selectionOnly:(BOOL)selectionOnly;  // converts the HTML in the frontmost window into text
- (void) translateTextToHtmlEntityConversion:(BOOL)entityConversion entityEncodingMethod:(BBEditEEcM)entityEncodingMethod ignoreAngleBrackets:(BOOL)ignoreAngleBrackets encodeAllUnicodeCharacters:(BOOL)encodeAllUnicodeCharacters paragraphConversion:(BOOL)paragraphConversion createNewDocument:(BOOL)createNewDocument selectionOnly:(BOOL)selectionOnly;  // converts the text in the frontmost window into HTML
- (void) update:(NSURL *)x skipShielded:(BOOL)skipShielded nested:(BOOL)nested showResults:(BOOL)showResults;  // updates the file/folder specified
- (void) updateImages:(NSURL *)x skipShielded:(BOOL)skipShielded nested:(BOOL)nested showResults:(BOOL)showResults;  // updates the image dimensions in the file/folder specified

@end

// A clipboard
@interface BBEditClipboard : SBObject <BBEditGenericMethods>

@property (copy) NSString *contents;  // contents of the clipboard
@property (readonly) NSInteger length;  // length of the clipboard text in characters
@property (readonly) NSInteger index;  // the index of this clipboard
@property (copy, readonly) NSString *sourceLanguage;  // name of the source language, for syntax coloring and function navigation


@end

// an open document
@interface BBEditDocument : BBEditItem

@property (readonly) NSInteger ID;  // object’s unique id
@property (readonly) BOOL modified;  // does this document have unsaved changes?
@property (readonly) BOOL modifiable;  // can this document be modified?
@property (copy, readonly) NSDate *modificationDate;  // date and time this document was last modified
@property (copy) NSString *name;  // the title of the window (r/o if on disk is true)
@property (readonly) BOOL onDisk;  // does this document exist on disk?
@property (copy, readonly) NSURL *file;  // the disk file containing the document’s data
@property (copy) NSNumber *creatorType;  // the OSType identifying the application that created the item
@property (copy, readonly) BBEditWindow *window;  // this document’s window


@end

// a BBEdit text factory document
@interface BBEditFactoryDocument : BBEditDocument


@end

// a file
@interface BBEditFile : BBEditItem


@end

// a file filter
@interface BBEditFilter : SBObject <BBEditGenericMethods>

@property (copy, readonly) NSString *name;  // filter name
@property (readonly) BBEditFltM filter_mode;  // criteria interpretation mode
@property (copy, readonly) NSArray<BBEditFilter_term *> *filter_terms;  // filter criteria terms


@end

// a file filter criteria term
@interface BBEditFilter_term : SBObject <BBEditGenericMethods>

@property (readonly) BBEditFiel field;  // criteria match field
- (BBEditOper) operator;  // comparison operator
@property (copy, readonly) id operand;  // comparison operand data


@end

// an item in a project document
@interface BBEditProjectItem : BBEditItem

- (SBElementArray<BBEditProjectItem *> *) projectItems;

@property (copy, readonly) NSString *name;  // the name
@property (copy) NSURL *file;  // if the item refers to a file on disk: the file
@property (copy) NSString *url;  // if the item refers to a remote URL: the url to the remote resource
@property (readonly) BOOL expand;  // is this item expanded?


@end

// a collection of items in a project document
@interface BBEditProjectCollection : BBEditProjectItem

- (SBElementArray<BBEditProjectItem *> *) projectItems;


@end

// a BBEdit project document
@interface BBEditProjectDocument : BBEditDocument

- (SBElementArray<BBEditProjectItem *> *) projectItems;
- (SBElementArray<BBEditProjectCollection *> *) projectCollections;

@property BOOL showInvisibleFiles;  // are invisible files displayed?
@property BOOL textFilesOnly;  // only show text files?


@end

// a document opened from an image file
@interface BBEditImageDocument : BBEditDocument


@end

// a Unix shell worksheet document
@interface BBEditShellDocument : BBEditDocument

@property (copy) NSString *shellPath;  // path to the Unix shell used for executing commands in this worksheet
@property (copy) NSString *workingDirectory;  // path to this worksheet’s current Unix working directory


@end

// A text document
@interface BBEditTextDocument : BBEditDocument

- (SBElementArray<BBEditText *> *) texts;

@property (copy) NSString *encoding;  // name of the file’s character set encoding
@property (copy, readonly) BBEditFTPInfo *FTPInfo;  // FTP information for this document
@property (readonly) BOOL isFTP;  // was this document opened from (or saved to) an FTP server?
@property BBEditLinB lineBreaks;  // type of line endings in this document
@property (copy) NSString *sourceLanguage;  // name of the source language, for syntax coloring and function navigation
@property (readonly) BOOL stateModified;  // has the document’s state (window position, etc) been modified?
@property (copy, readonly) NSString *URL;  // if on disk, the URL to this document’s location
@property (copy) id contents;  // contents of the document (if any)
@property (copy) BBEditText *text;  // the document’s text object (if any)


@end

// an open window
@interface BBEditWindow : BBEditItem

- (SBElementArray<BBEditText *> *) texts;
- (SBElementArray<BBEditDocument *> *) documents;

@property (readonly) NSInteger ID;  // object’s unique id
@property (copy, readonly) BBEditDocument *document;  // the document associated with this window
@property NSRect bounds;  // the boundary rectangle for the window
@property (readonly) BOOL closeable;  // Does the window have a close box?
@property BOOL collapsed;  // Is the window collapsed?
@property NSInteger index;  // the number of the window
@property (readonly) BOOL modal;  // Is the window modal?
@property (copy, readonly) NSURL *file;  // the disk file associated with this window, if any
@property (readonly) BOOL modified;  // Has the window been modified since the last save?
@property (copy) NSString *name;  // the title of the window (r/o if the window represents a document which has been saved to disk)
@property NSPoint position;  // upper left coordinates of the window
@property (readonly) BOOL resizable;  // Is the window resizable?
@property (copy) SBObject *selection;  // the selection
@property (copy) id contents;  // contents of the window (if any)
@property (copy) BBEditText *text;  // the window's text object (if any)
@property (readonly) BOOL titled;  // Does the window have a title bar?
@property (readonly) BOOL visible;  // Is the window visible?
@property (readonly) BOOL zoomable;  // Is the window zoomable?
@property BOOL zoomed;  // Is the window zoomed?


@end

// a Differences window
@interface BBEditDifferencesWindow : BBEditWindow

@property BOOL widescreen;  // use the ‘widescreen’ layout in this window?
@property BOOL syncScrolling;  // synchronize scrolling between the two text panes?
@property (copy) BBEditCompareOptions *compareOptions;  // single-file comparison options


@end

// a disk browser window
@interface BBEditDiskBrowserWindow : BBEditWindow

@property (copy) NSString *rootPath;  // path to the root of this disk browser


@end

// a BBEdit text factory window
@interface BBEditFactoryWindow : BBEditWindow


@end

// the modeless Find window
@interface BBEditFind_window : BBEditWindow


@end

// the modeless Multi-File Search window
@interface BBEditMultifile_search_window : BBEditWindow


@end

// an FTP browser window
@interface BBEditFTPBrowserWindow : BBEditWindow


@end

// an Open File by Name window
@interface BBEditOpen_file_by_name_window : BBEditWindow

@property (copy) NSString *searchString;  // the string entered into the search box


@end

// A floating window
@interface BBEditPalette : BBEditWindow


@end

// a Plug-In Info window
@interface BBEditPlugin_info_window : BBEditWindow


@end

// a preferences window
@interface BBEditPreferences_window : BBEditWindow


@end

// a window displaying the contents of an image file
@interface BBEditImageWindow : BBEditWindow


@end

// a window for browsing the results of a batch operation (such as compilation or HTML syntax check)
@interface BBEditResultsBrowser : BBEditWindow


@end

// a window for browsing the results of a batch or multi-file search
@interface BBEditSearchResultsBrowser : BBEditResultsBrowser


@end

// A text-editing window
@interface BBEditTextWindow : BBEditWindow

- (SBElementArray<BBEditTextDocument *> *) textDocuments;

@property (copy, readonly) BBEditDocument *activeDocument;  // the current document being displayed/edited
@property (copy) NSString *displayFont;  // font in which text is displayed
@property NSInteger displayFontSize;  // point size of displayed text
@property (copy) NSArray<NSAppleEventDescriptor *> *displayFontStyle;  // text style(s) of displayed text
@property double displayMagnification;  // text display magnification multiplier
@property NSInteger tabWidth;  // number of spaces per tab
@property BOOL smartQuotes;  // are smart quotes enabled?
@property BOOL showInvisibles;  // are invisible characters displayed?
@property BOOL expandTabs;  // is auto-expansion of tabs enabled?
@property BOOL liveSearchBarVisible;  // is the Live Search bar visible?
@property BOOL softWrapText;  // is automatic text wrapping enabled?
@property BBEditWrMd softWrapMode;  // how line breaks are computed when soft-wrapping
@property NSInteger softWrapWidth;  // if soft-wrapping to character width, the maximum number of characters per line
@property BOOL showSpaces;  // are spaces displayed (only if “show invisibles” is true)?
@property BOOL showPathBar;  // display the editor path bar in this window?
@property BOOL showStatusBar;  // display the editor status bar in this window?
@property BOOL showNavigationBar;  // display the navigation bar in this window?
@property BOOL showPageGuide;  // display the page guide in this window?
@property BOOL showTabStops;  // display tab stops in the window's status bar?
@property BOOL showLineNumbers;  // display line numbers next to text in the window?
@property BOOL showGutter;  // display the gutter next to the text in the window?
@property (copy) NSString *sourceLanguage;  // name of the source language, for syntax coloring and function navigation
@property (readonly) BOOL colorSyntax;  // color language keywords and other recognized structures? *** this setting is obsolete and will always be 'true' ***
@property NSInteger splitProportion;  // vertical position of split bar, expressed as a percentage of window height


@end

// A scratchpad window
@interface BBEditScratchpadWindow : BBEditTextWindow


@end

// a BBEdit project window
@interface BBEditProjectWindow : BBEditTextWindow

@property (copy, readonly) SBObject *selectedItems;  // list of items selected in the project list
@property BOOL filesVisible;  // is the file list visible?


@end

// a perl reference window
@interface BBEditPerl_reference_window : BBEditTextWindow


@end

// a source control form window
@interface BBEditSource_control_form_window : BBEditTextWindow


@end

// a preview window created using “Preview in BBEdit”
@interface BBEditWeb_preview_window : BBEditWindow


@end

// options to control the behavior of Find Differences
@interface BBEditCompareOptions : SBObject <BBEditGenericMethods>

@property BOOL ignoreAllSpaces;  // ignore all spaces? (overrides all other space-related options)
@property BOOL ignoreLeadingSpaces;  // ignore leading whitespace on lines?
@property BOOL ignoreTrailingSpaces;  // ignore trailing whitespace on lines?
@property BOOL ignoreExtraSpaces;  // ignore whitespace runs in lines?
@property BOOL ignoreRCSKeywords;  // ignore RCS keywords?
@property BOOL ignoreBlankLines;  // ignore blank lines?
@property BOOL caseSensitive;  // honor character case differences when comparing?
@property BOOL ignoreCurlyQuotes;  // ignore curly quotes (“, ”, ‘, ’) when comparing?
@property BOOL showIdenticalFiles;  // list identical files when doing a multi-file compare?
@property BOOL textFilesOnly;  // only compare text files in a multi-file compare?
@property BOOL flattenFolders;  // flatten folder hierarchies when comparing folders?
@property BOOL skipShieldedFolders;  // skip folders whose names are enclosed in (parentheses)?
@property BOOL commonFilesOnly;  // when comparing folders, only list files that are common to both folders?
@property BOOL searchGitIgnoredFiles;  // process Git ignored files?


@end

// information about the results of a Compare operation
@interface BBEditCompareResults : SBObject <BBEditGenericMethods>

@property (readonly) BOOL differencesFound;  // were any differences found?
@property (copy, readonly) NSString *reasonForNoDifferences;  // reason for there being no differences
@property (copy, readonly) SBObject *differencesWindow;  // if differences were found, refers to the resulting Differences window


@end

// information about a file residing on an FTP server
@interface BBEditFTPInfo : SBObject <BBEditGenericMethods>

@property (copy, readonly) NSURL *file;  // the disk file in which this file is stored locally
@property (copy, readonly) NSString *host;  // name of the FTP server
@property (readonly) NSInteger port;  // TCP connection port to the server
@property (copy, readonly) NSString *path;  // path to the file on the server
@property (copy, readonly) NSString *user;  // login ID for the server
@property (copy, readonly) NSString *password;  // login password for the server
@property (readonly) BOOL secureTransfer;  // was the file transferred securely?
@property (readonly) BOOL binaryTransfer;  // was the file transferred as raw binary?
@property (readonly) BOOL passiveTransfer;  // was the file transferred using passive FTP
@property (copy, readonly) NSString *URL;  // the URL for this file on the FTP server


@end

// Options for the “mark” command
@interface BBEditMarkOptions : SBObject <BBEditGenericMethods>

@property (copy, readonly) NSString *searchingFor;  // the search pattern (Grep is implicit)
- (NSString *) using;  // the Grep replacement pattern to use for generating the marker name
@property BOOL clearingExisting;  // clear existing markers before setting the new ones?


@end

// batch operation result entry -- describes an error, warning, note, or batch search result
@interface BBEditResultEntry : SBObject <BBEditGenericMethods>

@property BBEditErsl result_kind;  // the type of result entry
@property (copy) SBObject *result_document;  // reference to the document, if not on disk
@property (copy) NSURL *result_file;  // reference to the file, if saved to disk
@property NSInteger start_offset;  // starting offset in the file
@property NSInteger end_offset;  // ending offset in the file
@property NSInteger result_line;  // line in the file (may be -1 if line information is not available)
@property (copy) NSString *message;  // explanatory text (line context, if it’s a search result)
@property (copy) NSString *match_string;  // for Grep search results, contains the text matched by the pattern


@end

// Options for “find” and “replace” commands
@interface BBEditSearchOptions : SBObject <BBEditGenericMethods>

@property BBEditSMod searchMode;  // the type of search (literal search if omitted)
@property BOOL startingAtTop;  // start from the top of the document? (false if omitted)
@property BOOL wrapAround;  // should the search wrap from the end of the document? (false if omitted)
@property BOOL backwards;  // should the search proceed backwards? (false if omitted)
@property BOOL caseSensitive;  // should the search be case-sensitive? (false if omitted)
@property BOOL matchWords;  // should the search only find whole words? (false if omitted)
@property BOOL extendSelection;  // should the selection range include the original selection start through the end of the match? (false if omitted)
@property BOOL returningResults;  // if performing a batch or multi-file search, return a list of matches? (false if omitted)
@property BOOL showingResults;  // if performing a batch or multi-file search, open the list of results? (true if omitted)


@end

// Information about text found by a “find” command
@interface BBEditSearchMatch : SBObject <BBEditGenericMethods>

@property (readonly) BOOL found;  // was a match found?
@property (copy, readonly) SBObject *foundObject;  // for a single-file search, a reference to the found text
@property (copy, readonly) NSString *foundText;  // for a single-file search, the found text
@property (copy, readonly) NSArray<BBEditResultEntry *> *foundMatches;  // for a multi-file or batch search, a list of the found occurrences
@property (copy, readonly) SBObject *matchListWindow;  // for a multi-file or batch search, the window listing the matches


@end

// current search strings, as an application property
@interface BBEditSearchStringProperties : SBObject <BBEditGenericMethods>

@property (copy, readonly) NSString *searchString;  // search text
@property (copy, readonly) NSString *replacementString;  // replace text


@end

// options to control the sorting behavior of “sort lines”
@interface BBEditSortLinesOptions : SBObject <BBEditGenericMethods>

@property (readonly) BOOL sortingCaseSensitive;
@property (readonly) BOOL sortIgnoringLeadingSpace;
@property (readonly) BOOL reversingSortOrder;
@property (readonly) BOOL sortingNumerically;
@property (copy, readonly) NSString *sortUsingStoredPattern;
@property (copy, readonly) NSString *sortPattern;
@property (readonly) BBEditESbM sortSubpatternKey;
@property (copy, readonly) NSString *sortSubpattern;


@end

@interface BBEditSortLinesOutputOptions : SBObject <BBEditGenericMethods>

@property (readonly) BOOL replacingTarget;
@property (readonly) BOOL copyingToClipboard;
@property (readonly) BOOL copyingToNewDocument;


@end

// options to control the behavior of “process duplicate lines”
@interface BBEditProcessDuplicatesOptions : SBObject <BBEditGenericMethods>

@property (readonly) BBEditMMod matchMode;
@property (readonly) BOOL matchingCaseSensitive;
@property (readonly) BOOL matchIgnoringLeadingSpace;
@property (readonly) BOOL matchingNumerically;
@property (copy, readonly) NSString *matchUsingStoredPattern;
@property (copy, readonly) NSString *matchPattern;
@property (readonly) BBEditESbM matchSubpatternKey;
@property (copy, readonly) NSString *matchSubpattern;


@end

@interface BBEditProcessDuplicatesOutputOptions : SBObject <BBEditGenericMethods>

@property (readonly) BOOL deletingDuplicates;
@property (readonly) BOOL duplicatesToClipboard;
@property (readonly) BOOL duplicatesToNewDocument;
@property (readonly) BOOL uniqueLinesToClipboard;
@property (readonly) BOOL uniqueLinesToNewDocument;


@end

@interface BBEditProcessDuplicatesResults : SBObject <BBEditGenericMethods>

@property (copy, readonly) NSString *duplicateLines;  // the duplicate lines in the input
@property (copy, readonly) NSString *uniqueLines;  // the unique lines in the input


@end

@interface BBEditProcessLinesContainingOutputOptions : SBObject <BBEditGenericMethods>

@property (readonly) BOOL deletingMatchedLines;
@property (readonly) BOOL copyingToClipboard;
@property (readonly) BOOL copyingToNewDocument;
@property (readonly) BOOL reportingResults;


@end

@interface BBEditProcessLinesContainingResults : SBObject <BBEditGenericMethods>

@property (copy, readonly) NSString *copiedLines;  // the lines in the input matching the string
@property (copy, readonly) NSString *modifiedText;  // the lines in the input not matching the string


@end



/*
 * Text Suite
 */

// abstract class describing a text object and its basic properties
@interface BBEditText_object : BBEditItem

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
@interface BBEditInsertionPoint : BBEditText_object


@end

// a character
@interface BBEditCharacter : BBEditText_object


@end

@interface BBEditCharacter (TextSuite)

- (SBElementArray<BBEditCharacter *> *) characters;
- (SBElementArray<BBEditWord *> *) words;
- (SBElementArray<BBEditLine *> *) lines;
- (SBElementArray<BBEditDisplay_line *> *) display_lines;
- (SBElementArray<BBEditInsertionPoint *> *) insertionPoints;
- (SBElementArray<BBEditText *> *) texts;

@end

// a word
@interface BBEditWord : BBEditText_object


@end

@interface BBEditWord (TextSuite)

- (SBElementArray<BBEditCharacter *> *) characters;
- (SBElementArray<BBEditWord *> *) words;
- (SBElementArray<BBEditLine *> *) lines;
- (SBElementArray<BBEditDisplay_line *> *) display_lines;
- (SBElementArray<BBEditInsertionPoint *> *) insertionPoints;
- (SBElementArray<BBEditText *> *) texts;

@end

// a line of text, as bounded by start-of-file, end-of-file, or line breaks
@interface BBEditLine : BBEditText_object


@end

@interface BBEditLine (TextSuite)

- (SBElementArray<BBEditCharacter *> *) characters;
- (SBElementArray<BBEditWord *> *) words;
- (SBElementArray<BBEditLine *> *) lines;
- (SBElementArray<BBEditDisplay_line *> *) display_lines;
- (SBElementArray<BBEditInsertionPoint *> *) insertionPoints;
- (SBElementArray<BBEditText *> *) texts;

@end

// a line of text, as displayed on screen
@interface BBEditDisplay_line : BBEditText_object


@end

@interface BBEditDisplay_line (TextSuite)

- (SBElementArray<BBEditCharacter *> *) characters;
- (SBElementArray<BBEditWord *> *) words;
- (SBElementArray<BBEditLine *> *) lines;
- (SBElementArray<BBEditDisplay_line *> *) display_lines;
- (SBElementArray<BBEditInsertionPoint *> *) insertionPoints;
- (SBElementArray<BBEditText *> *) texts;

@end

// Text
@interface BBEditText : BBEditText_object

- (SBElementArray<BBEditCharacter *> *) characters;
- (SBElementArray<BBEditWord *> *) words;
- (SBElementArray<BBEditLine *> *) lines;
- (SBElementArray<BBEditDisplay_line *> *) display_lines;
- (SBElementArray<BBEditInsertionPoint *> *) insertionPoints;
- (SBElementArray<BBEditText *> *) texts;

- (BBEditSearchMatch *) findSearchingIn:(id)searchingIn selectingMatch:(BOOL)selectingMatch options:(BBEditSearchOptions *)options excludingMatches:(BOOL)excludingMatches filter:(BBEditFilter *)filter recursion:(BOOL)recursion textFilesOnly:(BOOL)textFilesOnly skipShieldedFolders:(BOOL)skipShieldedFolders searchInvisibleFolders:(BOOL)searchInvisibleFolders searchCompressedFiles:(BOOL)searchCompressedFiles searchGitIgnoredFiles:(BOOL)searchGitIgnoredFiles;  // Searches for text
- (NSInteger) replaceUsing:(NSString *)using_ searchingIn:(id)searchingIn searchingString:(NSString *)searchingString options:(BBEditSearchOptions *)options filter:(BBEditFilter *)filter saving:(BBEditSavo)saving recursion:(BOOL)recursion textFilesOnly:(BOOL)textFilesOnly skipShieldedFolders:(BOOL)skipShieldedFolders searchInvisibleFolders:(BOOL)searchInvisibleFolders searchCompressedFiles:(BOOL)searchCompressedFiles searchGitIgnoredFiles:(BOOL)searchGitIgnoredFiles;  // performs a Replace All
- (BBEditTagResult *) findTagStart_offset:(NSInteger)start_offset isCloseTag:(BOOL)isCloseTag;  // looks for the html tag with the given name, starting at offset in the front document
- (BBEditTagResult *) insideOpenTagStartRange:(NSInteger)startRange endRange:(NSInteger)endRange;  // looks to see if the given range is contained within an open html tag with the given name
- (BBEditTagPairResult *) insideTagPairStartRange:(NSInteger)startRange endRange:(NSInteger)endRange;  // looks to see if the given range is contained within an html tag pair with the given name

@end



/*
 * HTML Scripting
 */

// html preferences record
@interface BBEditHTMLPrefs : SBObject <BBEditGenericMethods>

@property BOOL lowerCaseTags;  // true if you want the tools to generate lower case tags, false if you want the tools to generate uppercase tags
@property BOOL alwaysQuoteAttributes;  // true if you want the tools to generate quotes for all attributes, false if you only want quotes generated for attributes which require them
@property BOOL useXmlRulesInUnspecifiedDocuments;  // true if you want to use XML markup rules when the document has neither an XML declaration nor a DOCTYPE, false otherwise

- (void) setHtmlPreferencesTo;  // sets the html preferences (the accessors for the web site preferences are maintained for backwards compatability, but new scripts should use the web site element(s) of the application)

@end

// tag info record
@interface BBEditTagInfo : SBObject <BBEditGenericMethods>

@property (copy) NSString *name;  // the name of the tag
@property BOOL isCloseTag;  // true if the tag is a close tag (for example </html>)
@property BOOL isEmptyXmlElement;  // true if the tag is an empty xml element (for example <foo bar="value"/>)
@property NSInteger start_offset;  // starting offset in the file
@property NSInteger end_offset;  // ending offset in the file
@property (copy) NSDictionary *attributes;  // a record containing all attributes for the tag


@end

// the result of find tag, inside open tag
@interface BBEditTagResult : SBObject <BBEditGenericMethods>

@property BOOL foundTag;  // whether or not the tag was found
@property (copy) BBEditTagInfo *tag;  // the tag record of the found tag


@end

// the result of inside tag pair
@interface BBEditTagPairResult : SBObject <BBEditGenericMethods>

@property BOOL foundTag;  // whether or not the tag was found
@property (copy) BBEditTagInfo *tag;  // the tag record of the found tag (open tag)
@property (copy) BBEditTagInfo *closeTag;  // the tag record of the close tag of the pair


@end

