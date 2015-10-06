import AppKit
import ScriptingBridge

@objc public protocol SBObjectProtocol: NSObjectProtocol {
    func get() -> AnyObject!
}

@objc public protocol SBApplicationProtocol: SBObjectProtocol {
    func activate()
    var delegate: SBApplicationDelegate! { get set }
}

// MARK: TextWranglerEnum
@objc public enum TextWranglerEnum : AEKeyword {
    case Standard = 0x6c777374 /* 'lwst' */
    case Detailed = 0x6c776474 /* 'lwdt' */
}

// MARK: TextWranglerRAsE
@objc public enum TextWranglerRAsE : AEKeyword {
    case Auto_detectFile = 0x52644144 /* 'RdAD' */
    case UTF8File = 0x52645538 /* 'RdU8' */
    case UnicodeFile = 0x52645562 /* 'RdUb' */
    case ByteSwappedUnicodeFile = 0x5264556c /* 'RdUl' */
}

// MARK: TextWranglerPstp
@objc public enum TextWranglerPstp : AEKeyword {
    case ModificationDate = 0x61736d6f /* 'asmo' */
    case PrintingDate = 0x50726e44 /* 'PrnD' */
}

// MARK: TextWranglerOpnE
@objc public enum TextWranglerOpnE : AEKeyword {
    case Front_window = 0x46727457 /* 'FrtW' */
    case New_window = 0x4e657757 /* 'NewW' */
    case Separate_windows = 0x53657057 /* 'SepW' */
}

// MARK: TextWranglerSavo
@objc public enum TextWranglerSavo : AEKeyword {
    case Yes = 0x79657320 /* 'yes ' */
    case No = 0x6e6f2020 /* 'no  ' */
    case Ask = 0x61736b20 /* 'ask ' */
}

// MARK: TextWranglerKfrm
@objc public enum TextWranglerKfrm : AEKeyword {
    case Index = 0x696e6478 /* 'indx' */
    case Named = 0x6e616d65 /* 'name' */
    case Id = 0x49442020 /* 'ID  ' */
}

// MARK: TextWranglerRevo
@objc public enum TextWranglerRevo : AEKeyword {
    case Yes = 0x79657320 /* 'yes ' */
    case Ask = 0x61736b20 /* 'ask ' */
}

// MARK: TextWranglerStyl
@objc public enum TextWranglerStyl : AEKeyword {
    case Plain = 0x706c616e /* 'plan' */
    case Bold = 0x626f6c64 /* 'bold' */
    case Italic = 0x6974616c /* 'ital' */
    case Outline = 0x6f75746c /* 'outl' */
    case Shadow = 0x73686164 /* 'shad' */
    case Underline = 0x756e646c /* 'undl' */
    case Condensed = 0x636f6e64 /* 'cond' */
    case Extended = 0x45787464 /* 'Extd' */
}

// MARK: TextWranglerLinB
@objc public enum TextWranglerLinB : AEKeyword {
    case Mac = 0x43522020 /* 'CR  ' */
    case Unix = 0x4c462020 /* 'LF  ' */
    case DOS = 0x43524c46 /* 'CRLF' */
}

// MARK: TextWranglerWrMd
@objc public enum TextWranglerWrMd : AEKeyword {
    case PageGuide = 0x57725068 /* 'WrPh' */
    case WindowWidth = 0x5772576e /* 'WrWn' */
    case CharacterWidth = 0x57724368 /* 'WrCh' */
}

// MARK: TextWranglerSMod
@objc public enum TextWranglerSMod : AEKeyword {
    case Literal = 0x4c74726c /* 'Ltrl' */
    case Grep = 0x47726570 /* 'Grep' */
}

// MARK: TextWranglerCact
@objc public enum TextWranglerCact : AEKeyword {
    case RaiseCase = 0x52617365 /* 'Rase' */
    case LowerCase = 0x4c6f7772 /* 'Lowr' */
    case CapitalizeWords = 0x43617057 /* 'CapW' */
    case CapitalizeSentences = 0x43617053 /* 'CapS' */
    case CapitalizeLines = 0x4361704c /* 'CapL' */
}

// MARK: TextWranglerIndt
@objc public enum TextWranglerIndt : AEKeyword {
    case None = 0x6e496e64 /* 'nInd' */
    case First_line = 0x46727374 /* 'Frst' */
    case All_lines = 0x416c6c4c /* 'AllL' */
    case Reverse_indent = 0x52657649 /* 'RevI' */
    case Same_as_first_line = 0x53467273 /* 'SFrs' */
}

// MARK: TextWranglerZAct
@objc public enum TextWranglerZAct : AEKeyword {
    case Delete_gremlin = 0x5a64656c /* 'Zdel' */
    case Replace_with_code = 0x5a726364 /* 'Zrcd' */
    case Replace_with_char = 0x5a726368 /* 'Zrch' */
}

// MARK: TextWranglerCFop
@objc public enum TextWranglerCFop : AEKeyword {
    case File_contains = 0x2b436e74 /* '+Cnt' */
    case File_does_not_contain = 0x2d436e74 /* '-Cnt' */
    case File_matches = 0x2b477270 /* '+Grp' */
    case File_does_not_match = 0x2d477270 /* '-Grp' */
}

// MARK: TextWranglerErsl
@objc public enum TextWranglerErsl : AEKeyword {
    case Error_kind = 0x45727220 /* 'Err ' */
    case Warning_kind = 0x57726e67 /* 'Wrng' */
    case Note_kind = 0x4e6f7465 /* 'Note' */
}

// MARK: TextWranglerShDr
@objc public enum TextWranglerShDr : AEKeyword {
    case Left = 0x6c656674 /* 'left' */
    case Right = 0x72676874 /* 'rght' */
}

// MARK: TextWranglerFltM
@objc public enum TextWranglerFltM : AEKeyword {
    case And_mode = 0x616e6446 /* 'andF' */
    case Or_mode = 0x6f724620 /* 'orF ' */
}

// MARK: TextWranglerFiel
@objc public enum TextWranglerFiel : AEKeyword {
    case File_name = 0x466e616d /* 'Fnam' */
    case File_type = 0x46747970 /* 'Ftyp' */
    case File_creator = 0x46637274 /* 'Fcrt' */
    case Creation_date_only = 0x43646174 /* 'Cdat' */
    case Creation_date_and_time = 0x43646154 /* 'CdaT' */
    case Mod_date_only = 0x4d646174 /* 'Mdat' */
    case Mod_date_and_time = 0x4d646154 /* 'MdaT' */
    case File_label = 0x466c6162 /* 'Flab' */
    case File_visible = 0x46766973 /* 'Fvis' */
    case File_locked = 0x466c636b /* 'Flck' */
    case File_language = 0x466c616e /* 'Flan' */
}

// MARK: TextWranglerOper
@objc public enum TextWranglerOper : AEKeyword {
    case Op_is_equal = 0x2b457175 /* '+Equ' */
    case Op_is_not_equal = 0x2d457175 /* '-Equ' */
    case Op_less_than = 0x2b4c7420 /* '+Lt ' */
    case Op_less_than_or_equal = 0x2b4c4571 /* '+LEq' */
    case Op_greater_than = 0x2b477420 /* '+Gt ' */
    case Op_greater_than_or_equal = 0x2b474571 /* '+GEq' */
    case Op_starts_with = 0x2b426567 /* '+Beg' */
    case Op_does_not_start_with = 0x2d426567 /* '-Beg' */
    case Op_ends_with = 0x2b456e64 /* '+End' */
    case Op_does_not_end_with = 0x2d456e64 /* '-End' */
    case Op_contains = 0x2b436e74 /* '+Cnt' */
    case Op_does_not_contain = 0x2d436e74 /* '-Cnt' */
    case Op_matches_grep = 0x2b477270 /* '+Grp' */
    case Op_does_not_match_grep = 0x2d477270 /* '-Grp' */
    case Op_matches_wildcard = 0x2b576c64 /* '+Wld' */
    case Op_does_not_match_wildcard = 0x2d576c64 /* '-Wld' */
}

// MARK: TextWranglerMMod
@objc public enum TextWranglerMMod : AEKeyword {
    case Matching_all = 0x4d416c6c /* 'MAll' */
    case Leaving_one = 0x4c657631 /* 'Lev1' */
}

// MARK: TextWranglerESbM
@objc public enum TextWranglerESbM : AEKeyword {
    case Entire_match = 0x456e744c /* 'EntL' */
    case All_subpatterns = 0x41537562 /* 'ASub' */
    case Use_subpattern = 0x53756250 /* 'SubP' */
}

// MARK: TextWranglerOMd
@objc public enum TextWranglerOMd : AEKeyword {
    case UnixScriptOutputWindow = 0x6d70726c /* 'mprl' */
    case NewUntitledWindow = 0x6e77696e /* 'nwin' */
    case ScriptLogOutputWindow = 0x6c77696e /* 'lwin' */
}

// MARK: TextWranglerFOM
@objc public enum TextWranglerFOM : AEKeyword {
    case UnixScriptOutputWindow = 0x6d70726c /* 'mprl' */
    case NewUntitledWindow = 0x6e77696e /* 'nwin' */
}

// MARK: TextWranglerPrintSettings
@objc public protocol TextWranglerPrintSettings: SBObjectProtocol {
    optional var copies: Int { get } // the number of copies of a document to be printed
    optional var collating: Bool { get } // Should printed copies be collated?
    optional var startingPage: Int { get } // the first page of the document to be printed
    optional var endingPage: Int { get } // the last page of the document to be printed
    optional var pagesAcross: Int { get } // number of logical pages laid across a physical page
    optional var pagesDown: Int { get } // number of logical pages laid out down a physical page
    optional var requestedPrintTime: NSDate { get } // the time at which the desktop printer should print the document...
    optional var errorHandling: TextWranglerEnum { get } // how errors are handled
    optional var printerFeatures: [AnyObject] { get } // for printer specific features
    optional var faxNumber: String { get } // for fax number
    optional var targetPrinter: String { get } // for target printer
    optional var printingFont: String { get }
    optional var printingFontSize: Int { get }
    optional var printingFontStyle: String { get }
    optional var printingTabWidth: Int { get }
    optional var usingDocumentFont: Bool { get }
    optional var framingPage: Bool { get }
    optional var pageHeaders: Bool { get }
    optional var lineNumbers: Bool { get }
    optional var gutter: Bool { get }
    optional var fullPath: Bool { get }
    optional var printColorSyntax: Bool { get }
    optional var timeStamp: TextWranglerPstp { get }
    optional func openWithProperties(withProperties: [NSObject : AnyObject]!, openingIn: AnyObject!, stationeryAwareness: Bool, LFTranslation: Bool, readOnly: Bool, readingAs: TextWranglerRAsE, addingToRecentList: Bool) // Opens the specified item(s)
    optional func printWithProperties(withProperties: TextWranglerPrintSettings!, printDialog: Bool) // Print the specified object(s)
    optional func closeSaving(saving: TextWranglerSavo, savingIn: AnyObject!) // Closes the designated window.
    optional func delete() // Delete an element from an object
    optional func duplicateTo(to: SBObject!) -> SBObject // Duplicate object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!) -> SBObject // Move object(s) to a new location
    optional func saveTo(to: AnyObject!, savingAsStationery: Bool, addToRecentList: Bool) // Save a window or document.
    optional func activate() // activate the application or a window
    optional func copyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard
    optional func extendedCopyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
    optional func cutAppendingToClipboard(appendingToClipboard: Bool) // Cut an object to the clipboard
    optional func paste() // Paste an object from the clipboard
    optional func pasteColumn() // Paste an text from the clipboard forcing insertion as a rectangular column
    optional func redo() // Reverses the effects of the most recent Undo, if possible.
    optional func revertDiscardingUnsavedChanges(discardingUnsavedChanges: TextWranglerRevo) // Restore the object to its last saved state
    optional func select() // Select the specified object
    optional func undo() // Undoes the effects of the last command, if possible.
    optional func exportTo(to: AnyObject!) // Export an object
    optional func addLineBreaks() // Inserts a hard line break character at the end of each soft-wrapped line
    optional func addPrefixPrefix(`prefix`: String!) -> String // inserts a string at the beginning of each line in the indicated text
    optional func addSuffixSuffix(suffix: String!) -> String // inserts a string at the end of each line in the indicated text
    optional func removePrefixPrefix(`prefix`: String!) -> String // removes a string from the beginning of each line in the indicated text
    optional func removeSuffixSuffix(suffix: String!) -> String // removes a string from the end of each line in the indicated text
    optional func addPrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously adds a prefix and suffix to each line in the indicated text
    optional func removePrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously removes a prefix and suffix from each line in the indicated text
    optional func addLineNumbersStartNumber(startNumber: Int, increment: Int, addingSpace: Bool, keepingJustified: Bool) -> String // numbers each line in the indicated text
    optional func removeLineNumbersAddingSpace(addingSpace: Bool) -> String // removes leading numbering from each line in the indicated text
    optional func changeCaseMaking(making: TextWranglerCact) // Changes the case of text
    optional func clearUndoHistoryConfirming(confirming: Bool) // Deletes all Undo/Redo history information for this document
    optional func convertToASCIIReplacingTarget(replacingTarget: Bool) -> String // Converts 8-bit characters to 7-bit characters
    optional func decrementQuoteLevel() // removes one level of Internet-style quoting from each line of the specified text
    optional func detabTabWidth(tabWidth: Int) // Replace tabs with runs of spaces.
    optional func entabTabWidth(tabWidth: Int) // Replace runs of spaces with tabs.
    optional func educateQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert straight quotes into curly (typographer’s) quotes
    optional func straightenQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert curly (typographer’s) quotes into straight quotes
    optional func hardWrapLimit(limit: TextWranglerWrMd, paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool) // hard-wraps text to conform to the parameters
    optional func incrementQuoteLevelQuoteString(quoteString: String!) // adds one level of Internet-style quoting to each line of the specified text
    optional func markOptions(options: TextWranglerMarkOptions!) // mark matches of a specified search pattern with a string
    optional func normalizeLineEndings() -> String // convert any CRLF pairs and LF characters remaining after line-break conversion
    optional func processDuplicateLinesDuplicatesOptions(duplicatesOptions: TextWranglerProcessDuplicatesOptions!, outputOptions: TextWranglerProcessDuplicatesOutputOptions!) -> TextWranglerProcessDuplicatesResults // analyze the specified text for duplicate lines
    optional func processLinesContainingMatchingString(matchingString: String!, matchingWithGrep: Bool, caseSensitive: Bool, outputOptions: TextWranglerProcessLinesContainingOutputOptions!) -> TextWranglerProcessLinesContainingResults // search for lines in the specified text containing the indicated string
    optional func removeLineBreaks() // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
    optional func rewrapQuotedTextParagraphFill(paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool, removingQuoteSpaces: Bool, leavingTrailingQuoteSpaces: Bool) // hard-wraps text, taking Internet-style line quoting into account
    optional func shiftDirection(direction: TextWranglerShDr, shiftingBySpaces: Bool) // shift the specified text left or right, optionally by one space
    optional func sortLinesSortingOptions(sortingOptions: TextWranglerSortLinesOptions!, outputOptions: TextWranglerSortLinesOutputOptions!) -> String // order the lines in the specified text
    optional func stripQuotes() // removes all Internet-style quoting from each line of the specified text
    optional func zapGremlinsZapAction(zapAction: TextWranglerZAct, zapCharacter: String!, nulls: Bool, controls: Bool, nonASCIICharacters: Bool) -> String // Removes or replaces unwanted characters from text
    optional func appendToScratchpad() // Appends the specified text to the global scratchpad.
}
extension SBObject: TextWranglerPrintSettings {}

// MARK: TextWranglerItem
@objc public protocol TextWranglerItem: SBObjectProtocol {
    optional var properties: [NSObject : AnyObject] { get set } // all of this object’s properties
    optional var container: SBObject { get } // object’s container (if any)
    optional func openWithProperties(withProperties: [NSObject : AnyObject]!, openingIn: AnyObject!, stationeryAwareness: Bool, LFTranslation: Bool, readOnly: Bool, readingAs: TextWranglerRAsE, addingToRecentList: Bool) // Opens the specified item(s)
    optional func printWithProperties(withProperties: TextWranglerPrintSettings!, printDialog: Bool) // Print the specified object(s)
    optional func closeSaving(saving: TextWranglerSavo, savingIn: AnyObject!) // Closes the designated window.
    optional func delete() // Delete an element from an object
    optional func duplicateTo(to: SBObject!) -> SBObject // Duplicate object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!) -> SBObject // Move object(s) to a new location
    optional func saveTo(to: AnyObject!, savingAsStationery: Bool, addToRecentList: Bool) // Save a window or document.
    optional func activate() // activate the application or a window
    optional func copyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard
    optional func extendedCopyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
    optional func cutAppendingToClipboard(appendingToClipboard: Bool) // Cut an object to the clipboard
    optional func paste() // Paste an object from the clipboard
    optional func pasteColumn() // Paste an text from the clipboard forcing insertion as a rectangular column
    optional func redo() // Reverses the effects of the most recent Undo, if possible.
    optional func revertDiscardingUnsavedChanges(discardingUnsavedChanges: TextWranglerRevo) // Restore the object to its last saved state
    optional func select() // Select the specified object
    optional func undo() // Undoes the effects of the last command, if possible.
    optional func exportTo(to: AnyObject!) // Export an object
    optional func addLineBreaks() // Inserts a hard line break character at the end of each soft-wrapped line
    optional func addPrefixPrefix(`prefix`: String!) -> String // inserts a string at the beginning of each line in the indicated text
    optional func addSuffixSuffix(suffix: String!) -> String // inserts a string at the end of each line in the indicated text
    optional func removePrefixPrefix(`prefix`: String!) -> String // removes a string from the beginning of each line in the indicated text
    optional func removeSuffixSuffix(suffix: String!) -> String // removes a string from the end of each line in the indicated text
    optional func addPrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously adds a prefix and suffix to each line in the indicated text
    optional func removePrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously removes a prefix and suffix from each line in the indicated text
    optional func addLineNumbersStartNumber(startNumber: Int, increment: Int, addingSpace: Bool, keepingJustified: Bool) -> String // numbers each line in the indicated text
    optional func removeLineNumbersAddingSpace(addingSpace: Bool) -> String // removes leading numbering from each line in the indicated text
    optional func changeCaseMaking(making: TextWranglerCact) // Changes the case of text
    optional func clearUndoHistoryConfirming(confirming: Bool) // Deletes all Undo/Redo history information for this document
    optional func convertToASCIIReplacingTarget(replacingTarget: Bool) -> String // Converts 8-bit characters to 7-bit characters
    optional func decrementQuoteLevel() // removes one level of Internet-style quoting from each line of the specified text
    optional func detabTabWidth(tabWidth: Int) // Replace tabs with runs of spaces.
    optional func entabTabWidth(tabWidth: Int) // Replace runs of spaces with tabs.
    optional func educateQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert straight quotes into curly (typographer’s) quotes
    optional func straightenQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert curly (typographer’s) quotes into straight quotes
    optional func hardWrapLimit(limit: TextWranglerWrMd, paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool) // hard-wraps text to conform to the parameters
    optional func incrementQuoteLevelQuoteString(quoteString: String!) // adds one level of Internet-style quoting to each line of the specified text
    optional func markOptions(options: TextWranglerMarkOptions!) // mark matches of a specified search pattern with a string
    optional func normalizeLineEndings() -> String // convert any CRLF pairs and LF characters remaining after line-break conversion
    optional func processDuplicateLinesDuplicatesOptions(duplicatesOptions: TextWranglerProcessDuplicatesOptions!, outputOptions: TextWranglerProcessDuplicatesOutputOptions!) -> TextWranglerProcessDuplicatesResults // analyze the specified text for duplicate lines
    optional func processLinesContainingMatchingString(matchingString: String!, matchingWithGrep: Bool, caseSensitive: Bool, outputOptions: TextWranglerProcessLinesContainingOutputOptions!) -> TextWranglerProcessLinesContainingResults // search for lines in the specified text containing the indicated string
    optional func removeLineBreaks() // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
    optional func rewrapQuotedTextParagraphFill(paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool, removingQuoteSpaces: Bool, leavingTrailingQuoteSpaces: Bool) // hard-wraps text, taking Internet-style line quoting into account
    optional func shiftDirection(direction: TextWranglerShDr, shiftingBySpaces: Bool) // shift the specified text left or right, optionally by one space
    optional func sortLinesSortingOptions(sortingOptions: TextWranglerSortLinesOptions!, outputOptions: TextWranglerSortLinesOutputOptions!) -> String // order the lines in the specified text
    optional func stripQuotes() // removes all Internet-style quoting from each line of the specified text
    optional func zapGremlinsZapAction(zapAction: TextWranglerZAct, zapCharacter: String!, nulls: Bool, controls: Bool, nonASCIICharacters: Bool) -> String // Removes or replaces unwanted characters from text
    optional func appendToScratchpad() // Appends the specified text to the global scratchpad.
}
extension SBObject: TextWranglerItem {}

// MARK: TextWranglerApplication
@objc public protocol TextWranglerApplication: SBApplicationProtocol {
    optional func windows() -> SBElementArray
    optional func textWindows() -> SBElementArray
    optional func documents() -> SBElementArray
    optional func textDocuments() -> SBElementArray
    optional func palettes() -> SBElementArray
    optional func clipboards() -> SBElementArray
    optional var ID: Int { get } // object’s unique id
    optional var name: String { get } // the name
    optional var selection: SBObject { get } // the selection visible to the user
    optional var frontmost: Bool { get set } // Is this the frontmost application?
    optional var version: String { get } // the version number of the application
    optional var buildNumber: AnyObject { get } // the build number of the application
    optional var serialNumber: String { get } // the application’s serial number
    optional var currentClipboard: AnyObject { get set } // the clipboard
    optional var currentSearchOptions: TextWranglerSearchOptions { get } // search options used by the most recent search/replace operation
    optional var currentSearchStrings: TextWranglerSearchStringProperties { get set } // search strings used by the most recent search/replace operation
    optional var windowList: TextWranglerPalette { get } // the floating window displaying the open windows in the application
    optional var ASCIITable: TextWranglerPalette { get } // the floating window displaying ASCII character and escape sequences
    optional var findWindow: TextWranglerFind_window { get } // the Find window
    optional var findMultipleWindow: TextWranglerMultifile_search_window { get } // the Multi-File Search window
    optional var functionsList: TextWranglerPalette { get } // the floating window displaying functions in the current document
    optional var jumpPointsList: TextWranglerPalette { get } // the floating window displaying the jump points for the current document
    optional var markersList: TextWranglerPalette { get } // the floating window displaying markers in the current document
    optional var OpenFileByNameWindow: TextWranglerOpen_file_by_name_window { get } // the Open File by Name window
    optional var scriptsList: TextWranglerPalette { get } // the floating window displaying available OSA scripts
    optional var UnixFiltersList: TextWranglerPalette { get } // the floating window displaying items in the “Unix Filters” folder (uses “Perl Filters”)
    optional func run() // Sent to an application when it is double-clicked
    optional func quit() // Quit application
    optional func activate() // activate the application or a window
    optional func copyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard
    optional func extendedCopyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
    optional func cutAppendingToClipboard(appendingToClipboard: Bool) // Cut an object to the clipboard
    optional func paste() // Paste an object from the clipboard
    optional func pasteColumn() // Paste an text from the clipboard forcing insertion as a rectangular column
    optional func redo() // Reverses the effects of the most recent Undo, if possible.
    optional func select() // Select the specified object
    optional func undo() // Undoes the effects of the last command, if possible.
    optional func exportTo(to: AnyObject!) // Export an object
    optional func applyTextFactory(x: AnyObject!, to: AnyObject!, options: TextWranglerSearchOptions!, filter: TextWranglerFilter!, saving: TextWranglerSavo, recursion: Bool, textFilesOnly: Bool, skipShieldedFolders: Bool, searchInvisibleFolders: Bool, searchCompressedFiles: Bool) // Applies the operations in a specified text factory to the designated items
    optional func clearUndoHistoryConfirming(confirming: Bool) // Deletes all Undo/Redo history information for this document
    optional func compare(x: AnyObject!, against: AnyObject!, options: TextWranglerCompareOptions!, filter: TextWranglerFilter!) -> TextWranglerCompareResults // compares two files or folders
    optional func find(x: String!, searchingIn: AnyObject!, selectingMatch: Bool, options: TextWranglerSearchOptions!, excludingMatches: Bool, filter: TextWranglerFilter!, recursion: Bool, textFilesOnly: Bool, skipShieldedFolders: Bool, searchInvisibleFolders: Bool, searchCompressedFiles: Bool) -> TextWranglerSearchMatch // Searches for text
    optional func grepSubstitutionOf(of: String!) -> String // computes the Grep replacement string based on the results of the most recent scripted Grep search
    optional func replace(x: String!, using using_: String!, searchingIn: AnyObject!, searchingString: String!, options: TextWranglerSearchOptions!, saving: TextWranglerSavo, recursion: Bool, textFilesOnly: Bool, skipShieldedFolders: Bool) -> AnyObject // performs a Replace All
    optional func sleep() // save application state and quit immediately
    optional func runUnixScript(x: [AnyObject]!, selectionOnly: Bool, saveBeforeRunning: Bool, useDebugger: Bool, runInTerminal: Bool, chdirToScriptFolder: Bool, outputTo: TextWranglerOMd, clearBeforeWriting: Bool, saveAfterWriting: Bool) // runs the unix script in the front BBEdit window
    optional func runUnixFilter(x: NSURL!, outputSTDERRTo: TextWranglerFOM, clearBeforeWriting: Bool, saveAfterWriting: Bool, replacingSelection: Bool) // runs the specified unix filter on the selection in the frontmost BBEdit window
}
extension SBApplication: TextWranglerApplication {}

// MARK: TextWranglerClipboard
@objc public protocol TextWranglerClipboard: SBObjectProtocol {
    optional var contents: String { get set } // contents of the clipboard
    optional var length: Int { get } // length of the clipboard text in characters
    optional var index: Int { get } // the index of this clipboard
    optional var sourceLanguage: String { get } // name of the source language, for syntax coloring and function navigation
    optional func openWithProperties(withProperties: [NSObject : AnyObject]!, openingIn: AnyObject!, stationeryAwareness: Bool, LFTranslation: Bool, readOnly: Bool, readingAs: TextWranglerRAsE, addingToRecentList: Bool) // Opens the specified item(s)
    optional func printWithProperties(withProperties: TextWranglerPrintSettings!, printDialog: Bool) // Print the specified object(s)
    optional func closeSaving(saving: TextWranglerSavo, savingIn: AnyObject!) // Closes the designated window.
    optional func delete() // Delete an element from an object
    optional func duplicateTo(to: SBObject!) -> SBObject // Duplicate object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!) -> SBObject // Move object(s) to a new location
    optional func saveTo(to: AnyObject!, savingAsStationery: Bool, addToRecentList: Bool) // Save a window or document.
    optional func activate() // activate the application or a window
    optional func copyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard
    optional func extendedCopyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
    optional func cutAppendingToClipboard(appendingToClipboard: Bool) // Cut an object to the clipboard
    optional func paste() // Paste an object from the clipboard
    optional func pasteColumn() // Paste an text from the clipboard forcing insertion as a rectangular column
    optional func redo() // Reverses the effects of the most recent Undo, if possible.
    optional func revertDiscardingUnsavedChanges(discardingUnsavedChanges: TextWranglerRevo) // Restore the object to its last saved state
    optional func select() // Select the specified object
    optional func undo() // Undoes the effects of the last command, if possible.
    optional func exportTo(to: AnyObject!) // Export an object
    optional func addLineBreaks() // Inserts a hard line break character at the end of each soft-wrapped line
    optional func addPrefixPrefix(`prefix`: String!) -> String // inserts a string at the beginning of each line in the indicated text
    optional func addSuffixSuffix(suffix: String!) -> String // inserts a string at the end of each line in the indicated text
    optional func removePrefixPrefix(`prefix`: String!) -> String // removes a string from the beginning of each line in the indicated text
    optional func removeSuffixSuffix(suffix: String!) -> String // removes a string from the end of each line in the indicated text
    optional func addPrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously adds a prefix and suffix to each line in the indicated text
    optional func removePrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously removes a prefix and suffix from each line in the indicated text
    optional func addLineNumbersStartNumber(startNumber: Int, increment: Int, addingSpace: Bool, keepingJustified: Bool) -> String // numbers each line in the indicated text
    optional func removeLineNumbersAddingSpace(addingSpace: Bool) -> String // removes leading numbering from each line in the indicated text
    optional func changeCaseMaking(making: TextWranglerCact) // Changes the case of text
    optional func clearUndoHistoryConfirming(confirming: Bool) // Deletes all Undo/Redo history information for this document
    optional func convertToASCIIReplacingTarget(replacingTarget: Bool) -> String // Converts 8-bit characters to 7-bit characters
    optional func decrementQuoteLevel() // removes one level of Internet-style quoting from each line of the specified text
    optional func detabTabWidth(tabWidth: Int) // Replace tabs with runs of spaces.
    optional func entabTabWidth(tabWidth: Int) // Replace runs of spaces with tabs.
    optional func educateQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert straight quotes into curly (typographer’s) quotes
    optional func straightenQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert curly (typographer’s) quotes into straight quotes
    optional func hardWrapLimit(limit: TextWranglerWrMd, paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool) // hard-wraps text to conform to the parameters
    optional func incrementQuoteLevelQuoteString(quoteString: String!) // adds one level of Internet-style quoting to each line of the specified text
    optional func markOptions(options: TextWranglerMarkOptions!) // mark matches of a specified search pattern with a string
    optional func normalizeLineEndings() -> String // convert any CRLF pairs and LF characters remaining after line-break conversion
    optional func processDuplicateLinesDuplicatesOptions(duplicatesOptions: TextWranglerProcessDuplicatesOptions!, outputOptions: TextWranglerProcessDuplicatesOutputOptions!) -> TextWranglerProcessDuplicatesResults // analyze the specified text for duplicate lines
    optional func processLinesContainingMatchingString(matchingString: String!, matchingWithGrep: Bool, caseSensitive: Bool, outputOptions: TextWranglerProcessLinesContainingOutputOptions!) -> TextWranglerProcessLinesContainingResults // search for lines in the specified text containing the indicated string
    optional func removeLineBreaks() // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
    optional func rewrapQuotedTextParagraphFill(paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool, removingQuoteSpaces: Bool, leavingTrailingQuoteSpaces: Bool) // hard-wraps text, taking Internet-style line quoting into account
    optional func shiftDirection(direction: TextWranglerShDr, shiftingBySpaces: Bool) // shift the specified text left or right, optionally by one space
    optional func sortLinesSortingOptions(sortingOptions: TextWranglerSortLinesOptions!, outputOptions: TextWranglerSortLinesOutputOptions!) -> String // order the lines in the specified text
    optional func stripQuotes() // removes all Internet-style quoting from each line of the specified text
    optional func zapGremlinsZapAction(zapAction: TextWranglerZAct, zapCharacter: String!, nulls: Bool, controls: Bool, nonASCIICharacters: Bool) -> String // Removes or replaces unwanted characters from text
    optional func appendToScratchpad() // Appends the specified text to the global scratchpad.
}
extension SBObject: TextWranglerClipboard {}

// MARK: TextWranglerDocument
@objc public protocol TextWranglerDocument: TextWranglerItem {
    optional var ID: Int { get } // object’s unique id
    optional var modified: Bool { get } // does this document have unsaved changes?
    optional var modifiable: Bool { get } // can this document be modified?
    optional var modificationDate: NSDate { get } // date and time this document was last modified
    optional var name: String { get set } // the title of the window (r/o if on disk is true)
    optional var onDisk: Bool { get } // does this document exist on disk?
    optional var file: AnyObject { get } // the disk file containing the document’s data
    optional var creatorType: NSNumber { get set } // the OSType identifying the application that created the item
    optional var window: TextWranglerWindow { get } // this document’s window
}
extension SBObject: TextWranglerDocument {}

// MARK: TextWranglerFile
@objc public protocol TextWranglerFile: TextWranglerItem {
    optional func runUnixFilterOutputSTDERRTo(outputSTDERRTo: TextWranglerFOM, clearBeforeWriting: Bool, saveAfterWriting: Bool, replacingSelection: Bool) // runs the specified unix filter on the selection in the frontmost BBEdit window
}
extension SBObject: TextWranglerFile {}

// MARK: TextWranglerFilter
@objc public protocol TextWranglerFilter: SBObjectProtocol {
    optional var name: String { get } // filter name
    optional var filter_mode: TextWranglerFltM { get } // criteria interpretation mode
    optional var filter_terms: [AnyObject] { get } // filter criteria terms
    optional func openWithProperties(withProperties: [NSObject : AnyObject]!, openingIn: AnyObject!, stationeryAwareness: Bool, LFTranslation: Bool, readOnly: Bool, readingAs: TextWranglerRAsE, addingToRecentList: Bool) // Opens the specified item(s)
    optional func printWithProperties(withProperties: TextWranglerPrintSettings!, printDialog: Bool) // Print the specified object(s)
    optional func closeSaving(saving: TextWranglerSavo, savingIn: AnyObject!) // Closes the designated window.
    optional func delete() // Delete an element from an object
    optional func duplicateTo(to: SBObject!) -> SBObject // Duplicate object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!) -> SBObject // Move object(s) to a new location
    optional func saveTo(to: AnyObject!, savingAsStationery: Bool, addToRecentList: Bool) // Save a window or document.
    optional func activate() // activate the application or a window
    optional func copyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard
    optional func extendedCopyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
    optional func cutAppendingToClipboard(appendingToClipboard: Bool) // Cut an object to the clipboard
    optional func paste() // Paste an object from the clipboard
    optional func pasteColumn() // Paste an text from the clipboard forcing insertion as a rectangular column
    optional func redo() // Reverses the effects of the most recent Undo, if possible.
    optional func revertDiscardingUnsavedChanges(discardingUnsavedChanges: TextWranglerRevo) // Restore the object to its last saved state
    optional func select() // Select the specified object
    optional func undo() // Undoes the effects of the last command, if possible.
    optional func exportTo(to: AnyObject!) // Export an object
    optional func addLineBreaks() // Inserts a hard line break character at the end of each soft-wrapped line
    optional func addPrefixPrefix(`prefix`: String!) -> String // inserts a string at the beginning of each line in the indicated text
    optional func addSuffixSuffix(suffix: String!) -> String // inserts a string at the end of each line in the indicated text
    optional func removePrefixPrefix(`prefix`: String!) -> String // removes a string from the beginning of each line in the indicated text
    optional func removeSuffixSuffix(suffix: String!) -> String // removes a string from the end of each line in the indicated text
    optional func addPrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously adds a prefix and suffix to each line in the indicated text
    optional func removePrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously removes a prefix and suffix from each line in the indicated text
    optional func addLineNumbersStartNumber(startNumber: Int, increment: Int, addingSpace: Bool, keepingJustified: Bool) -> String // numbers each line in the indicated text
    optional func removeLineNumbersAddingSpace(addingSpace: Bool) -> String // removes leading numbering from each line in the indicated text
    optional func changeCaseMaking(making: TextWranglerCact) // Changes the case of text
    optional func clearUndoHistoryConfirming(confirming: Bool) // Deletes all Undo/Redo history information for this document
    optional func convertToASCIIReplacingTarget(replacingTarget: Bool) -> String // Converts 8-bit characters to 7-bit characters
    optional func decrementQuoteLevel() // removes one level of Internet-style quoting from each line of the specified text
    optional func detabTabWidth(tabWidth: Int) // Replace tabs with runs of spaces.
    optional func entabTabWidth(tabWidth: Int) // Replace runs of spaces with tabs.
    optional func educateQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert straight quotes into curly (typographer’s) quotes
    optional func straightenQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert curly (typographer’s) quotes into straight quotes
    optional func hardWrapLimit(limit: TextWranglerWrMd, paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool) // hard-wraps text to conform to the parameters
    optional func incrementQuoteLevelQuoteString(quoteString: String!) // adds one level of Internet-style quoting to each line of the specified text
    optional func markOptions(options: TextWranglerMarkOptions!) // mark matches of a specified search pattern with a string
    optional func normalizeLineEndings() -> String // convert any CRLF pairs and LF characters remaining after line-break conversion
    optional func processDuplicateLinesDuplicatesOptions(duplicatesOptions: TextWranglerProcessDuplicatesOptions!, outputOptions: TextWranglerProcessDuplicatesOutputOptions!) -> TextWranglerProcessDuplicatesResults // analyze the specified text for duplicate lines
    optional func processLinesContainingMatchingString(matchingString: String!, matchingWithGrep: Bool, caseSensitive: Bool, outputOptions: TextWranglerProcessLinesContainingOutputOptions!) -> TextWranglerProcessLinesContainingResults // search for lines in the specified text containing the indicated string
    optional func removeLineBreaks() // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
    optional func rewrapQuotedTextParagraphFill(paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool, removingQuoteSpaces: Bool, leavingTrailingQuoteSpaces: Bool) // hard-wraps text, taking Internet-style line quoting into account
    optional func shiftDirection(direction: TextWranglerShDr, shiftingBySpaces: Bool) // shift the specified text left or right, optionally by one space
    optional func sortLinesSortingOptions(sortingOptions: TextWranglerSortLinesOptions!, outputOptions: TextWranglerSortLinesOutputOptions!) -> String // order the lines in the specified text
    optional func stripQuotes() // removes all Internet-style quoting from each line of the specified text
    optional func zapGremlinsZapAction(zapAction: TextWranglerZAct, zapCharacter: String!, nulls: Bool, controls: Bool, nonASCIICharacters: Bool) -> String // Removes or replaces unwanted characters from text
    optional func appendToScratchpad() // Appends the specified text to the global scratchpad.
}
extension SBObject: TextWranglerFilter {}

// MARK: TextWranglerFilter_term
@objc public protocol TextWranglerFilter_term: SBObjectProtocol {
    optional var field: TextWranglerFiel { get } // criteria match field
    optional func `operator`() -> TextWranglerOper // comparison operator
    optional var operand: AnyObject { get } // comparison operand data
    optional func openWithProperties(withProperties: [NSObject : AnyObject]!, openingIn: AnyObject!, stationeryAwareness: Bool, LFTranslation: Bool, readOnly: Bool, readingAs: TextWranglerRAsE, addingToRecentList: Bool) // Opens the specified item(s)
    optional func printWithProperties(withProperties: TextWranglerPrintSettings!, printDialog: Bool) // Print the specified object(s)
    optional func closeSaving(saving: TextWranglerSavo, savingIn: AnyObject!) // Closes the designated window.
    optional func delete() // Delete an element from an object
    optional func duplicateTo(to: SBObject!) -> SBObject // Duplicate object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!) -> SBObject // Move object(s) to a new location
    optional func saveTo(to: AnyObject!, savingAsStationery: Bool, addToRecentList: Bool) // Save a window or document.
    optional func activate() // activate the application or a window
    optional func copyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard
    optional func extendedCopyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
    optional func cutAppendingToClipboard(appendingToClipboard: Bool) // Cut an object to the clipboard
    optional func paste() // Paste an object from the clipboard
    optional func pasteColumn() // Paste an text from the clipboard forcing insertion as a rectangular column
    optional func redo() // Reverses the effects of the most recent Undo, if possible.
    optional func revertDiscardingUnsavedChanges(discardingUnsavedChanges: TextWranglerRevo) // Restore the object to its last saved state
    optional func select() // Select the specified object
    optional func undo() // Undoes the effects of the last command, if possible.
    optional func exportTo(to: AnyObject!) // Export an object
    optional func addLineBreaks() // Inserts a hard line break character at the end of each soft-wrapped line
    optional func addPrefixPrefix(`prefix`: String!) -> String // inserts a string at the beginning of each line in the indicated text
    optional func addSuffixSuffix(suffix: String!) -> String // inserts a string at the end of each line in the indicated text
    optional func removePrefixPrefix(`prefix`: String!) -> String // removes a string from the beginning of each line in the indicated text
    optional func removeSuffixSuffix(suffix: String!) -> String // removes a string from the end of each line in the indicated text
    optional func addPrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously adds a prefix and suffix to each line in the indicated text
    optional func removePrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously removes a prefix and suffix from each line in the indicated text
    optional func addLineNumbersStartNumber(startNumber: Int, increment: Int, addingSpace: Bool, keepingJustified: Bool) -> String // numbers each line in the indicated text
    optional func removeLineNumbersAddingSpace(addingSpace: Bool) -> String // removes leading numbering from each line in the indicated text
    optional func changeCaseMaking(making: TextWranglerCact) // Changes the case of text
    optional func clearUndoHistoryConfirming(confirming: Bool) // Deletes all Undo/Redo history information for this document
    optional func convertToASCIIReplacingTarget(replacingTarget: Bool) -> String // Converts 8-bit characters to 7-bit characters
    optional func decrementQuoteLevel() // removes one level of Internet-style quoting from each line of the specified text
    optional func detabTabWidth(tabWidth: Int) // Replace tabs with runs of spaces.
    optional func entabTabWidth(tabWidth: Int) // Replace runs of spaces with tabs.
    optional func educateQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert straight quotes into curly (typographer’s) quotes
    optional func straightenQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert curly (typographer’s) quotes into straight quotes
    optional func hardWrapLimit(limit: TextWranglerWrMd, paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool) // hard-wraps text to conform to the parameters
    optional func incrementQuoteLevelQuoteString(quoteString: String!) // adds one level of Internet-style quoting to each line of the specified text
    optional func markOptions(options: TextWranglerMarkOptions!) // mark matches of a specified search pattern with a string
    optional func normalizeLineEndings() -> String // convert any CRLF pairs and LF characters remaining after line-break conversion
    optional func processDuplicateLinesDuplicatesOptions(duplicatesOptions: TextWranglerProcessDuplicatesOptions!, outputOptions: TextWranglerProcessDuplicatesOutputOptions!) -> TextWranglerProcessDuplicatesResults // analyze the specified text for duplicate lines
    optional func processLinesContainingMatchingString(matchingString: String!, matchingWithGrep: Bool, caseSensitive: Bool, outputOptions: TextWranglerProcessLinesContainingOutputOptions!) -> TextWranglerProcessLinesContainingResults // search for lines in the specified text containing the indicated string
    optional func removeLineBreaks() // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
    optional func rewrapQuotedTextParagraphFill(paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool, removingQuoteSpaces: Bool, leavingTrailingQuoteSpaces: Bool) // hard-wraps text, taking Internet-style line quoting into account
    optional func shiftDirection(direction: TextWranglerShDr, shiftingBySpaces: Bool) // shift the specified text left or right, optionally by one space
    optional func sortLinesSortingOptions(sortingOptions: TextWranglerSortLinesOptions!, outputOptions: TextWranglerSortLinesOutputOptions!) -> String // order the lines in the specified text
    optional func stripQuotes() // removes all Internet-style quoting from each line of the specified text
    optional func zapGremlinsZapAction(zapAction: TextWranglerZAct, zapCharacter: String!, nulls: Bool, controls: Bool, nonASCIICharacters: Bool) -> String // Removes or replaces unwanted characters from text
    optional func appendToScratchpad() // Appends the specified text to the global scratchpad.
}
extension SBObject: TextWranglerFilter_term {}

// MARK: TextWranglerImageDocument
@objc public protocol TextWranglerImageDocument: TextWranglerDocument {
}
extension SBObject: TextWranglerImageDocument {}

// MARK: TextWranglerShellDocument
@objc public protocol TextWranglerShellDocument: TextWranglerDocument {
    optional var shellPath: String { get set } // path to the Unix shell used for executing commands in this worksheet
    optional var workingDirectory: String { get set } // path to this worksheet’s current Unix working directory
}
extension SBObject: TextWranglerShellDocument {}

// MARK: TextWranglerTextDocument
@objc public protocol TextWranglerTextDocument: TextWranglerDocument {
    optional func texts() -> SBElementArray
    optional var encoding: String { get set } // name of the file’s character set encoding
    optional var FTPInfo: TextWranglerFTPInfo { get } // FTP information for this document
    optional var isFTP: Bool { get } // was this document opened from (or saved to) an FTP server?
    optional var lineBreaks: TextWranglerLinB { get set } // type of line endings in this document
    optional var sourceLanguage: String { get set } // name of the source language, for syntax coloring and function navigation
    optional var stateModified: Bool { get } // has the document’s state (window position, etc) been modified?
    optional var URL: String { get } // if on disk, the URL to this document’s location
    optional var contents: AnyObject { get set } // contents of the document (if any)
    optional var text: TextWranglerText { get set } // the document’s text object (if any)
}
extension SBObject: TextWranglerTextDocument {}

// MARK: TextWranglerWindow
@objc public protocol TextWranglerWindow: TextWranglerItem {
    optional func texts() -> SBElementArray
    optional func documents() -> SBElementArray
    optional var ID: Int { get } // object’s unique id
    optional var document: TextWranglerDocument { get } // the document associated with this window
    optional var bounds: NSRect { get set } // the boundary rectangle for the window
    optional var closeable: Bool { get } // Does the window have a close box?
    optional var collapsed: Bool { get set } // Is the window collapsed?
    optional var index: Int { get set } // the number of the window
    optional var modal: Bool { get } // Is the window modal?
    optional var file: AnyObject { get } // the disk file associated with this window, if any
    optional var modified: Bool { get } // Has the window been modified since the last save?
    optional var name: String { get set } // the title of the window (r/o if the window represents a document which has been saved to disk)
    optional var position: NSPoint { get set } // upper left coordinates of the window
    optional var resizable: Bool { get } // Is the window resizable?
    optional var selection: SBObject { get set } // the selection
    optional var contents: AnyObject { get set } // contents of the window (if any)
    optional var text: TextWranglerText { get set } // the window's text object (if any)
    optional var titled: Bool { get } // Does the window have a title bar?
    optional var visible: Bool { get } // Is the window visible?
    optional var zoomable: Bool { get } // Is the window zoomable?
    optional var zoomed: Bool { get set } // Is the window zoomed?
}
extension SBObject: TextWranglerWindow {}

// MARK: TextWranglerDifferences_window
@objc public protocol TextWranglerDifferences_window: TextWranglerWindow {
}
extension SBObject: TextWranglerDifferences_window {}

// MARK: TextWranglerDiskBrowserWindow
@objc public protocol TextWranglerDiskBrowserWindow: TextWranglerWindow {
    optional var rootPath: String { get set } // path to the root of this disk browser
}
extension SBObject: TextWranglerDiskBrowserWindow {}

// MARK: TextWranglerFind_window
@objc public protocol TextWranglerFind_window: TextWranglerWindow {
}
extension SBObject: TextWranglerFind_window {}

// MARK: TextWranglerMultifile_search_window
@objc public protocol TextWranglerMultifile_search_window: TextWranglerWindow {
}
extension SBObject: TextWranglerMultifile_search_window {}

// MARK: TextWranglerFTPBrowserWindow
@objc public protocol TextWranglerFTPBrowserWindow: TextWranglerWindow {
}
extension SBObject: TextWranglerFTPBrowserWindow {}

// MARK: TextWranglerOpen_file_by_name_window
@objc public protocol TextWranglerOpen_file_by_name_window: TextWranglerWindow {
    optional var searchString: String { get set } // the string entered into the search box
}
extension SBObject: TextWranglerOpen_file_by_name_window {}

// MARK: TextWranglerPalette
@objc public protocol TextWranglerPalette: TextWranglerWindow {
}
extension SBObject: TextWranglerPalette {}

// MARK: TextWranglerMultifile_differences_window
@objc public protocol TextWranglerMultifile_differences_window: TextWranglerDifferences_window {
}
extension SBObject: TextWranglerMultifile_differences_window {}

// MARK: TextWranglerPlugin_info_window
@objc public protocol TextWranglerPlugin_info_window: TextWranglerWindow {
}
extension SBObject: TextWranglerPlugin_info_window {}

// MARK: TextWranglerPreferences_window
@objc public protocol TextWranglerPreferences_window: TextWranglerWindow {
}
extension SBObject: TextWranglerPreferences_window {}

// MARK: TextWranglerImageWindow
@objc public protocol TextWranglerImageWindow: TextWranglerWindow {
}
extension SBObject: TextWranglerImageWindow {}

// MARK: TextWranglerResultsBrowser
@objc public protocol TextWranglerResultsBrowser: TextWranglerWindow {
}
extension SBObject: TextWranglerResultsBrowser {}

// MARK: TextWranglerSearchResultsBrowser
@objc public protocol TextWranglerSearchResultsBrowser: TextWranglerResultsBrowser {
}
extension SBObject: TextWranglerSearchResultsBrowser {}

// MARK: TextWranglerShellWindow
@objc public protocol TextWranglerShellWindow: TextWranglerWindow {
}
extension SBObject: TextWranglerShellWindow {}

// MARK: TextWranglerTextWindow
@objc public protocol TextWranglerTextWindow: TextWranglerWindow {
    optional func textDocuments() -> SBElementArray
    optional var activeDocument: TextWranglerDocument { get } // the current document being displayed/edited
    optional var displayFont: String { get set } // font in which text is displayed
    optional var displayFontSize: Int { get set } // point size of displayed text
    optional var displayFontStyle: [AnyObject] { get set } // text style(s) of displayed text
    optional var displayMagnification: Double { get set } // text display magnification multiplier
    optional var tabWidth: Int { get set } // number of spaces per tab
    optional var smartQuotes: Bool { get set } // are smart quotes enabled?
    optional var showInvisibles: Bool { get set } // are invisible characters displayed?
    optional var expandTabs: Bool { get set } // is auto-expansion of tabs enabled?
    optional var liveSearchBarVisible: Bool { get set } // is the Live Search bar visible?
    optional var softWrapText: Bool { get set } // is automatic text wrapping enabled?
    optional var softWrapMode: TextWranglerWrMd { get set } // how line breaks are computed when soft-wrapping
    optional var softWrapWidth: Int { get set } // if soft-wrapping to character width, the maximum number of characters per line
    optional var showSpaces: Bool { get set } // are spaces displayed (only if “show invisibles” is true)?
    optional var showToolbar: Bool { get set } // display the editor toolbar in this window?
    optional var showStatusBar: Bool { get set } // display the editor status bar in this window?
    optional var showNavigationBar: Bool { get set } // display the navigation bar in this window?
    optional var showPageGuide: Bool { get set } // display the page guide in this window?
    optional var showTabStops: Bool { get set } // display tab stops in the window's status bar?
    optional var showLineNumbers: Bool { get set } // display line numbers next to text in the window?
    optional var showGutter: Bool { get set } // display the gutter next to the text in the window?
    optional var sourceLanguage: String { get set } // name of the source language, for syntax coloring and function navigation
    optional var colorSyntax: Bool { get set } // color language keywords and other recognized structures?
    optional var splitProportion: Int { get set } // vertical position of split bar, expressed as a percentage of window height
}
extension SBObject: TextWranglerTextWindow {}

// MARK: TextWranglerScratchpad_window
@objc public protocol TextWranglerScratchpad_window: TextWranglerTextWindow {
}
extension SBObject: TextWranglerScratchpad_window {}

// MARK: TextWranglerProjectWindow
@objc public protocol TextWranglerProjectWindow: TextWranglerTextWindow {
    optional var selectedItems: SBObject { get } // list of items selected in the project list
    optional var filesVisible: Bool { get set } // is the file list visible?
}
extension SBObject: TextWranglerProjectWindow {}

// MARK: TextWranglerPerl_reference_window
@objc public protocol TextWranglerPerl_reference_window: TextWranglerTextWindow {
}
extension SBObject: TextWranglerPerl_reference_window {}

// MARK: TextWranglerCompareOptions
@objc public protocol TextWranglerCompareOptions: SBObjectProtocol {
    optional var ignoreLeadingSpaces: Bool { get set } // ignore leading whitespace on lines?
    optional var ignoreTrailingSpaces: Bool { get set } // ignore trailing whitespace on lines?
    optional var ignoreExtraSpaces: Bool { get set } // ignore whitespace runs in lines?
    optional var ignoreRCSKeywords: Bool { get set } // ignore RCS keywords?
    optional var caseSensitive: Bool { get set } // honor character case differences when comparing?
    optional var ignoreCurlyQuotes: Bool { get set } // ignore curly quotes (“, ”, ‘, ’) when comparing?
    optional var showIdenticalFiles: Bool { get set } // list identical files when doing a multi-file compare?
    optional var textFilesOnly: Bool { get set } // only compare text files in a multi-file compare?
    optional var flattenFolders: Bool { get set } // flatten folder hierarchies when comparing folders?
    optional var skipShieldedFolders: Bool { get set } // skip folders whose names are enclosed in (parentheses)?
    optional func openWithProperties(withProperties: [NSObject : AnyObject]!, openingIn: AnyObject!, stationeryAwareness: Bool, LFTranslation: Bool, readOnly: Bool, readingAs: TextWranglerRAsE, addingToRecentList: Bool) // Opens the specified item(s)
    optional func printWithProperties(withProperties: TextWranglerPrintSettings!, printDialog: Bool) // Print the specified object(s)
    optional func closeSaving(saving: TextWranglerSavo, savingIn: AnyObject!) // Closes the designated window.
    optional func delete() // Delete an element from an object
    optional func duplicateTo(to: SBObject!) -> SBObject // Duplicate object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!) -> SBObject // Move object(s) to a new location
    optional func saveTo(to: AnyObject!, savingAsStationery: Bool, addToRecentList: Bool) // Save a window or document.
    optional func activate() // activate the application or a window
    optional func copyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard
    optional func extendedCopyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
    optional func cutAppendingToClipboard(appendingToClipboard: Bool) // Cut an object to the clipboard
    optional func paste() // Paste an object from the clipboard
    optional func pasteColumn() // Paste an text from the clipboard forcing insertion as a rectangular column
    optional func redo() // Reverses the effects of the most recent Undo, if possible.
    optional func revertDiscardingUnsavedChanges(discardingUnsavedChanges: TextWranglerRevo) // Restore the object to its last saved state
    optional func select() // Select the specified object
    optional func undo() // Undoes the effects of the last command, if possible.
    optional func exportTo(to: AnyObject!) // Export an object
    optional func addLineBreaks() // Inserts a hard line break character at the end of each soft-wrapped line
    optional func addPrefixPrefix(`prefix`: String!) -> String // inserts a string at the beginning of each line in the indicated text
    optional func addSuffixSuffix(suffix: String!) -> String // inserts a string at the end of each line in the indicated text
    optional func removePrefixPrefix(`prefix`: String!) -> String // removes a string from the beginning of each line in the indicated text
    optional func removeSuffixSuffix(suffix: String!) -> String // removes a string from the end of each line in the indicated text
    optional func addPrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously adds a prefix and suffix to each line in the indicated text
    optional func removePrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously removes a prefix and suffix from each line in the indicated text
    optional func addLineNumbersStartNumber(startNumber: Int, increment: Int, addingSpace: Bool, keepingJustified: Bool) -> String // numbers each line in the indicated text
    optional func removeLineNumbersAddingSpace(addingSpace: Bool) -> String // removes leading numbering from each line in the indicated text
    optional func changeCaseMaking(making: TextWranglerCact) // Changes the case of text
    optional func clearUndoHistoryConfirming(confirming: Bool) // Deletes all Undo/Redo history information for this document
    optional func convertToASCIIReplacingTarget(replacingTarget: Bool) -> String // Converts 8-bit characters to 7-bit characters
    optional func decrementQuoteLevel() // removes one level of Internet-style quoting from each line of the specified text
    optional func detabTabWidth(tabWidth: Int) // Replace tabs with runs of spaces.
    optional func entabTabWidth(tabWidth: Int) // Replace runs of spaces with tabs.
    optional func educateQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert straight quotes into curly (typographer’s) quotes
    optional func straightenQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert curly (typographer’s) quotes into straight quotes
    optional func hardWrapLimit(limit: TextWranglerWrMd, paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool) // hard-wraps text to conform to the parameters
    optional func incrementQuoteLevelQuoteString(quoteString: String!) // adds one level of Internet-style quoting to each line of the specified text
    optional func markOptions(options: TextWranglerMarkOptions!) // mark matches of a specified search pattern with a string
    optional func normalizeLineEndings() -> String // convert any CRLF pairs and LF characters remaining after line-break conversion
    optional func processDuplicateLinesDuplicatesOptions(duplicatesOptions: TextWranglerProcessDuplicatesOptions!, outputOptions: TextWranglerProcessDuplicatesOutputOptions!) -> TextWranglerProcessDuplicatesResults // analyze the specified text for duplicate lines
    optional func processLinesContainingMatchingString(matchingString: String!, matchingWithGrep: Bool, caseSensitive: Bool, outputOptions: TextWranglerProcessLinesContainingOutputOptions!) -> TextWranglerProcessLinesContainingResults // search for lines in the specified text containing the indicated string
    optional func removeLineBreaks() // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
    optional func rewrapQuotedTextParagraphFill(paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool, removingQuoteSpaces: Bool, leavingTrailingQuoteSpaces: Bool) // hard-wraps text, taking Internet-style line quoting into account
    optional func shiftDirection(direction: TextWranglerShDr, shiftingBySpaces: Bool) // shift the specified text left or right, optionally by one space
    optional func sortLinesSortingOptions(sortingOptions: TextWranglerSortLinesOptions!, outputOptions: TextWranglerSortLinesOutputOptions!) -> String // order the lines in the specified text
    optional func stripQuotes() // removes all Internet-style quoting from each line of the specified text
    optional func zapGremlinsZapAction(zapAction: TextWranglerZAct, zapCharacter: String!, nulls: Bool, controls: Bool, nonASCIICharacters: Bool) -> String // Removes or replaces unwanted characters from text
    optional func appendToScratchpad() // Appends the specified text to the global scratchpad.
}
extension SBObject: TextWranglerCompareOptions {}

// MARK: TextWranglerCompareResults
@objc public protocol TextWranglerCompareResults: SBObjectProtocol {
    optional var differencesFound: Bool { get } // were any differences found?
    optional var reasonForNoDifferences: String { get } // reason for there being no differences
    optional var differencesWindow: SBObject { get } // if differences were found, refers to the resulting Differences window
    optional func openWithProperties(withProperties: [NSObject : AnyObject]!, openingIn: AnyObject!, stationeryAwareness: Bool, LFTranslation: Bool, readOnly: Bool, readingAs: TextWranglerRAsE, addingToRecentList: Bool) // Opens the specified item(s)
    optional func printWithProperties(withProperties: TextWranglerPrintSettings!, printDialog: Bool) // Print the specified object(s)
    optional func closeSaving(saving: TextWranglerSavo, savingIn: AnyObject!) // Closes the designated window.
    optional func delete() // Delete an element from an object
    optional func duplicateTo(to: SBObject!) -> SBObject // Duplicate object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!) -> SBObject // Move object(s) to a new location
    optional func saveTo(to: AnyObject!, savingAsStationery: Bool, addToRecentList: Bool) // Save a window or document.
    optional func activate() // activate the application or a window
    optional func copyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard
    optional func extendedCopyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
    optional func cutAppendingToClipboard(appendingToClipboard: Bool) // Cut an object to the clipboard
    optional func paste() // Paste an object from the clipboard
    optional func pasteColumn() // Paste an text from the clipboard forcing insertion as a rectangular column
    optional func redo() // Reverses the effects of the most recent Undo, if possible.
    optional func revertDiscardingUnsavedChanges(discardingUnsavedChanges: TextWranglerRevo) // Restore the object to its last saved state
    optional func select() // Select the specified object
    optional func undo() // Undoes the effects of the last command, if possible.
    optional func exportTo(to: AnyObject!) // Export an object
    optional func addLineBreaks() // Inserts a hard line break character at the end of each soft-wrapped line
    optional func addPrefixPrefix(`prefix`: String!) -> String // inserts a string at the beginning of each line in the indicated text
    optional func addSuffixSuffix(suffix: String!) -> String // inserts a string at the end of each line in the indicated text
    optional func removePrefixPrefix(`prefix`: String!) -> String // removes a string from the beginning of each line in the indicated text
    optional func removeSuffixSuffix(suffix: String!) -> String // removes a string from the end of each line in the indicated text
    optional func addPrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously adds a prefix and suffix to each line in the indicated text
    optional func removePrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously removes a prefix and suffix from each line in the indicated text
    optional func addLineNumbersStartNumber(startNumber: Int, increment: Int, addingSpace: Bool, keepingJustified: Bool) -> String // numbers each line in the indicated text
    optional func removeLineNumbersAddingSpace(addingSpace: Bool) -> String // removes leading numbering from each line in the indicated text
    optional func changeCaseMaking(making: TextWranglerCact) // Changes the case of text
    optional func clearUndoHistoryConfirming(confirming: Bool) // Deletes all Undo/Redo history information for this document
    optional func convertToASCIIReplacingTarget(replacingTarget: Bool) -> String // Converts 8-bit characters to 7-bit characters
    optional func decrementQuoteLevel() // removes one level of Internet-style quoting from each line of the specified text
    optional func detabTabWidth(tabWidth: Int) // Replace tabs with runs of spaces.
    optional func entabTabWidth(tabWidth: Int) // Replace runs of spaces with tabs.
    optional func educateQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert straight quotes into curly (typographer’s) quotes
    optional func straightenQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert curly (typographer’s) quotes into straight quotes
    optional func hardWrapLimit(limit: TextWranglerWrMd, paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool) // hard-wraps text to conform to the parameters
    optional func incrementQuoteLevelQuoteString(quoteString: String!) // adds one level of Internet-style quoting to each line of the specified text
    optional func markOptions(options: TextWranglerMarkOptions!) // mark matches of a specified search pattern with a string
    optional func normalizeLineEndings() -> String // convert any CRLF pairs and LF characters remaining after line-break conversion
    optional func processDuplicateLinesDuplicatesOptions(duplicatesOptions: TextWranglerProcessDuplicatesOptions!, outputOptions: TextWranglerProcessDuplicatesOutputOptions!) -> TextWranglerProcessDuplicatesResults // analyze the specified text for duplicate lines
    optional func processLinesContainingMatchingString(matchingString: String!, matchingWithGrep: Bool, caseSensitive: Bool, outputOptions: TextWranglerProcessLinesContainingOutputOptions!) -> TextWranglerProcessLinesContainingResults // search for lines in the specified text containing the indicated string
    optional func removeLineBreaks() // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
    optional func rewrapQuotedTextParagraphFill(paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool, removingQuoteSpaces: Bool, leavingTrailingQuoteSpaces: Bool) // hard-wraps text, taking Internet-style line quoting into account
    optional func shiftDirection(direction: TextWranglerShDr, shiftingBySpaces: Bool) // shift the specified text left or right, optionally by one space
    optional func sortLinesSortingOptions(sortingOptions: TextWranglerSortLinesOptions!, outputOptions: TextWranglerSortLinesOutputOptions!) -> String // order the lines in the specified text
    optional func stripQuotes() // removes all Internet-style quoting from each line of the specified text
    optional func zapGremlinsZapAction(zapAction: TextWranglerZAct, zapCharacter: String!, nulls: Bool, controls: Bool, nonASCIICharacters: Bool) -> String // Removes or replaces unwanted characters from text
    optional func appendToScratchpad() // Appends the specified text to the global scratchpad.
}
extension SBObject: TextWranglerCompareResults {}

// MARK: TextWranglerFTPInfo
@objc public protocol TextWranglerFTPInfo: SBObjectProtocol {
    optional var file: AnyObject { get } // the disk file in which this file is stored locally
    optional var host: String { get } // name of the FTP server
    optional var port: Int { get } // TCP connection port to the server
    optional var path: String { get } // path to the file on the server
    optional var user: String { get } // login ID for the server
    optional var password: String { get } // login password for the server
    optional var secureTransfer: Bool { get } // was the file transferred securely?
    optional var binaryTransfer: Bool { get } // was the file transferred as raw binary?
    optional var passiveTransfer: Bool { get } // was the file transferred using passive FTP
    optional var URL: String { get } // the URL for this file on the FTP server
    optional func openWithProperties(withProperties: [NSObject : AnyObject]!, openingIn: AnyObject!, stationeryAwareness: Bool, LFTranslation: Bool, readOnly: Bool, readingAs: TextWranglerRAsE, addingToRecentList: Bool) // Opens the specified item(s)
    optional func printWithProperties(withProperties: TextWranglerPrintSettings!, printDialog: Bool) // Print the specified object(s)
    optional func closeSaving(saving: TextWranglerSavo, savingIn: AnyObject!) // Closes the designated window.
    optional func delete() // Delete an element from an object
    optional func duplicateTo(to: SBObject!) -> SBObject // Duplicate object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!) -> SBObject // Move object(s) to a new location
    optional func saveTo(to: AnyObject!, savingAsStationery: Bool, addToRecentList: Bool) // Save a window or document.
    optional func activate() // activate the application or a window
    optional func copyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard
    optional func extendedCopyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
    optional func cutAppendingToClipboard(appendingToClipboard: Bool) // Cut an object to the clipboard
    optional func paste() // Paste an object from the clipboard
    optional func pasteColumn() // Paste an text from the clipboard forcing insertion as a rectangular column
    optional func redo() // Reverses the effects of the most recent Undo, if possible.
    optional func revertDiscardingUnsavedChanges(discardingUnsavedChanges: TextWranglerRevo) // Restore the object to its last saved state
    optional func select() // Select the specified object
    optional func undo() // Undoes the effects of the last command, if possible.
    optional func exportTo(to: AnyObject!) // Export an object
    optional func addLineBreaks() // Inserts a hard line break character at the end of each soft-wrapped line
    optional func addPrefixPrefix(`prefix`: String!) -> String // inserts a string at the beginning of each line in the indicated text
    optional func addSuffixSuffix(suffix: String!) -> String // inserts a string at the end of each line in the indicated text
    optional func removePrefixPrefix(`prefix`: String!) -> String // removes a string from the beginning of each line in the indicated text
    optional func removeSuffixSuffix(suffix: String!) -> String // removes a string from the end of each line in the indicated text
    optional func addPrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously adds a prefix and suffix to each line in the indicated text
    optional func removePrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously removes a prefix and suffix from each line in the indicated text
    optional func addLineNumbersStartNumber(startNumber: Int, increment: Int, addingSpace: Bool, keepingJustified: Bool) -> String // numbers each line in the indicated text
    optional func removeLineNumbersAddingSpace(addingSpace: Bool) -> String // removes leading numbering from each line in the indicated text
    optional func changeCaseMaking(making: TextWranglerCact) // Changes the case of text
    optional func clearUndoHistoryConfirming(confirming: Bool) // Deletes all Undo/Redo history information for this document
    optional func convertToASCIIReplacingTarget(replacingTarget: Bool) -> String // Converts 8-bit characters to 7-bit characters
    optional func decrementQuoteLevel() // removes one level of Internet-style quoting from each line of the specified text
    optional func detabTabWidth(tabWidth: Int) // Replace tabs with runs of spaces.
    optional func entabTabWidth(tabWidth: Int) // Replace runs of spaces with tabs.
    optional func educateQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert straight quotes into curly (typographer’s) quotes
    optional func straightenQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert curly (typographer’s) quotes into straight quotes
    optional func hardWrapLimit(limit: TextWranglerWrMd, paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool) // hard-wraps text to conform to the parameters
    optional func incrementQuoteLevelQuoteString(quoteString: String!) // adds one level of Internet-style quoting to each line of the specified text
    optional func markOptions(options: TextWranglerMarkOptions!) // mark matches of a specified search pattern with a string
    optional func normalizeLineEndings() -> String // convert any CRLF pairs and LF characters remaining after line-break conversion
    optional func processDuplicateLinesDuplicatesOptions(duplicatesOptions: TextWranglerProcessDuplicatesOptions!, outputOptions: TextWranglerProcessDuplicatesOutputOptions!) -> TextWranglerProcessDuplicatesResults // analyze the specified text for duplicate lines
    optional func processLinesContainingMatchingString(matchingString: String!, matchingWithGrep: Bool, caseSensitive: Bool, outputOptions: TextWranglerProcessLinesContainingOutputOptions!) -> TextWranglerProcessLinesContainingResults // search for lines in the specified text containing the indicated string
    optional func removeLineBreaks() // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
    optional func rewrapQuotedTextParagraphFill(paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool, removingQuoteSpaces: Bool, leavingTrailingQuoteSpaces: Bool) // hard-wraps text, taking Internet-style line quoting into account
    optional func shiftDirection(direction: TextWranglerShDr, shiftingBySpaces: Bool) // shift the specified text left or right, optionally by one space
    optional func sortLinesSortingOptions(sortingOptions: TextWranglerSortLinesOptions!, outputOptions: TextWranglerSortLinesOutputOptions!) -> String // order the lines in the specified text
    optional func stripQuotes() // removes all Internet-style quoting from each line of the specified text
    optional func zapGremlinsZapAction(zapAction: TextWranglerZAct, zapCharacter: String!, nulls: Bool, controls: Bool, nonASCIICharacters: Bool) -> String // Removes or replaces unwanted characters from text
    optional func appendToScratchpad() // Appends the specified text to the global scratchpad.
}
extension SBObject: TextWranglerFTPInfo {}

// MARK: TextWranglerMarkOptions
@objc public protocol TextWranglerMarkOptions: SBObjectProtocol {
    optional var searchingFor: String { get } // the search pattern (Grep is implicit)
    optional func using() -> String // the Grep replacement pattern to use for generating the marker name
    optional var clearingExisting: Bool { get set } // clear existing markers before setting the new ones?
    optional func openWithProperties(withProperties: [NSObject : AnyObject]!, openingIn: AnyObject!, stationeryAwareness: Bool, LFTranslation: Bool, readOnly: Bool, readingAs: TextWranglerRAsE, addingToRecentList: Bool) // Opens the specified item(s)
    optional func printWithProperties(withProperties: TextWranglerPrintSettings!, printDialog: Bool) // Print the specified object(s)
    optional func closeSaving(saving: TextWranglerSavo, savingIn: AnyObject!) // Closes the designated window.
    optional func delete() // Delete an element from an object
    optional func duplicateTo(to: SBObject!) -> SBObject // Duplicate object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!) -> SBObject // Move object(s) to a new location
    optional func saveTo(to: AnyObject!, savingAsStationery: Bool, addToRecentList: Bool) // Save a window or document.
    optional func activate() // activate the application or a window
    optional func copyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard
    optional func extendedCopyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
    optional func cutAppendingToClipboard(appendingToClipboard: Bool) // Cut an object to the clipboard
    optional func paste() // Paste an object from the clipboard
    optional func pasteColumn() // Paste an text from the clipboard forcing insertion as a rectangular column
    optional func redo() // Reverses the effects of the most recent Undo, if possible.
    optional func revertDiscardingUnsavedChanges(discardingUnsavedChanges: TextWranglerRevo) // Restore the object to its last saved state
    optional func select() // Select the specified object
    optional func undo() // Undoes the effects of the last command, if possible.
    optional func exportTo(to: AnyObject!) // Export an object
    optional func addLineBreaks() // Inserts a hard line break character at the end of each soft-wrapped line
    optional func addPrefixPrefix(`prefix`: String!) -> String // inserts a string at the beginning of each line in the indicated text
    optional func addSuffixSuffix(suffix: String!) -> String // inserts a string at the end of each line in the indicated text
    optional func removePrefixPrefix(`prefix`: String!) -> String // removes a string from the beginning of each line in the indicated text
    optional func removeSuffixSuffix(suffix: String!) -> String // removes a string from the end of each line in the indicated text
    optional func addPrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously adds a prefix and suffix to each line in the indicated text
    optional func removePrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously removes a prefix and suffix from each line in the indicated text
    optional func addLineNumbersStartNumber(startNumber: Int, increment: Int, addingSpace: Bool, keepingJustified: Bool) -> String // numbers each line in the indicated text
    optional func removeLineNumbersAddingSpace(addingSpace: Bool) -> String // removes leading numbering from each line in the indicated text
    optional func changeCaseMaking(making: TextWranglerCact) // Changes the case of text
    optional func clearUndoHistoryConfirming(confirming: Bool) // Deletes all Undo/Redo history information for this document
    optional func convertToASCIIReplacingTarget(replacingTarget: Bool) -> String // Converts 8-bit characters to 7-bit characters
    optional func decrementQuoteLevel() // removes one level of Internet-style quoting from each line of the specified text
    optional func detabTabWidth(tabWidth: Int) // Replace tabs with runs of spaces.
    optional func entabTabWidth(tabWidth: Int) // Replace runs of spaces with tabs.
    optional func educateQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert straight quotes into curly (typographer’s) quotes
    optional func straightenQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert curly (typographer’s) quotes into straight quotes
    optional func hardWrapLimit(limit: TextWranglerWrMd, paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool) // hard-wraps text to conform to the parameters
    optional func incrementQuoteLevelQuoteString(quoteString: String!) // adds one level of Internet-style quoting to each line of the specified text
    optional func markOptions(options: TextWranglerMarkOptions!) // mark matches of a specified search pattern with a string
    optional func normalizeLineEndings() -> String // convert any CRLF pairs and LF characters remaining after line-break conversion
    optional func processDuplicateLinesDuplicatesOptions(duplicatesOptions: TextWranglerProcessDuplicatesOptions!, outputOptions: TextWranglerProcessDuplicatesOutputOptions!) -> TextWranglerProcessDuplicatesResults // analyze the specified text for duplicate lines
    optional func processLinesContainingMatchingString(matchingString: String!, matchingWithGrep: Bool, caseSensitive: Bool, outputOptions: TextWranglerProcessLinesContainingOutputOptions!) -> TextWranglerProcessLinesContainingResults // search for lines in the specified text containing the indicated string
    optional func removeLineBreaks() // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
    optional func rewrapQuotedTextParagraphFill(paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool, removingQuoteSpaces: Bool, leavingTrailingQuoteSpaces: Bool) // hard-wraps text, taking Internet-style line quoting into account
    optional func shiftDirection(direction: TextWranglerShDr, shiftingBySpaces: Bool) // shift the specified text left or right, optionally by one space
    optional func sortLinesSortingOptions(sortingOptions: TextWranglerSortLinesOptions!, outputOptions: TextWranglerSortLinesOutputOptions!) -> String // order the lines in the specified text
    optional func stripQuotes() // removes all Internet-style quoting from each line of the specified text
    optional func zapGremlinsZapAction(zapAction: TextWranglerZAct, zapCharacter: String!, nulls: Bool, controls: Bool, nonASCIICharacters: Bool) -> String // Removes or replaces unwanted characters from text
    optional func appendToScratchpad() // Appends the specified text to the global scratchpad.
}
extension SBObject: TextWranglerMarkOptions {}

// MARK: TextWranglerResultEntry
@objc public protocol TextWranglerResultEntry: SBObjectProtocol {
    optional var result_kind: TextWranglerErsl { get set } // the type of result entry
    optional var result_document: SBObject { get set } // reference to the document, if not on disk
    optional var result_file: AnyObject { get set } // reference to the file, if saved to disk
    optional var start_offset: Int { get set } // starting offset in the file
    optional var end_offset: Int { get set } // ending offset in the file
    optional var result_line: Int { get set } // line in the file (may be -1 if line information is not available)
    optional var message: String { get set } // explanatory text (line context, if it’s a search result)
    optional var match_string: String { get set } // for Grep search results, contains the text matched by the pattern
    optional func openWithProperties(withProperties: [NSObject : AnyObject]!, openingIn: AnyObject!, stationeryAwareness: Bool, LFTranslation: Bool, readOnly: Bool, readingAs: TextWranglerRAsE, addingToRecentList: Bool) // Opens the specified item(s)
    optional func printWithProperties(withProperties: TextWranglerPrintSettings!, printDialog: Bool) // Print the specified object(s)
    optional func closeSaving(saving: TextWranglerSavo, savingIn: AnyObject!) // Closes the designated window.
    optional func delete() // Delete an element from an object
    optional func duplicateTo(to: SBObject!) -> SBObject // Duplicate object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!) -> SBObject // Move object(s) to a new location
    optional func saveTo(to: AnyObject!, savingAsStationery: Bool, addToRecentList: Bool) // Save a window or document.
    optional func activate() // activate the application or a window
    optional func copyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard
    optional func extendedCopyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
    optional func cutAppendingToClipboard(appendingToClipboard: Bool) // Cut an object to the clipboard
    optional func paste() // Paste an object from the clipboard
    optional func pasteColumn() // Paste an text from the clipboard forcing insertion as a rectangular column
    optional func redo() // Reverses the effects of the most recent Undo, if possible.
    optional func revertDiscardingUnsavedChanges(discardingUnsavedChanges: TextWranglerRevo) // Restore the object to its last saved state
    optional func select() // Select the specified object
    optional func undo() // Undoes the effects of the last command, if possible.
    optional func exportTo(to: AnyObject!) // Export an object
    optional func addLineBreaks() // Inserts a hard line break character at the end of each soft-wrapped line
    optional func addPrefixPrefix(`prefix`: String!) -> String // inserts a string at the beginning of each line in the indicated text
    optional func addSuffixSuffix(suffix: String!) -> String // inserts a string at the end of each line in the indicated text
    optional func removePrefixPrefix(`prefix`: String!) -> String // removes a string from the beginning of each line in the indicated text
    optional func removeSuffixSuffix(suffix: String!) -> String // removes a string from the end of each line in the indicated text
    optional func addPrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously adds a prefix and suffix to each line in the indicated text
    optional func removePrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously removes a prefix and suffix from each line in the indicated text
    optional func addLineNumbersStartNumber(startNumber: Int, increment: Int, addingSpace: Bool, keepingJustified: Bool) -> String // numbers each line in the indicated text
    optional func removeLineNumbersAddingSpace(addingSpace: Bool) -> String // removes leading numbering from each line in the indicated text
    optional func changeCaseMaking(making: TextWranglerCact) // Changes the case of text
    optional func clearUndoHistoryConfirming(confirming: Bool) // Deletes all Undo/Redo history information for this document
    optional func convertToASCIIReplacingTarget(replacingTarget: Bool) -> String // Converts 8-bit characters to 7-bit characters
    optional func decrementQuoteLevel() // removes one level of Internet-style quoting from each line of the specified text
    optional func detabTabWidth(tabWidth: Int) // Replace tabs with runs of spaces.
    optional func entabTabWidth(tabWidth: Int) // Replace runs of spaces with tabs.
    optional func educateQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert straight quotes into curly (typographer’s) quotes
    optional func straightenQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert curly (typographer’s) quotes into straight quotes
    optional func hardWrapLimit(limit: TextWranglerWrMd, paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool) // hard-wraps text to conform to the parameters
    optional func incrementQuoteLevelQuoteString(quoteString: String!) // adds one level of Internet-style quoting to each line of the specified text
    optional func markOptions(options: TextWranglerMarkOptions!) // mark matches of a specified search pattern with a string
    optional func normalizeLineEndings() -> String // convert any CRLF pairs and LF characters remaining after line-break conversion
    optional func processDuplicateLinesDuplicatesOptions(duplicatesOptions: TextWranglerProcessDuplicatesOptions!, outputOptions: TextWranglerProcessDuplicatesOutputOptions!) -> TextWranglerProcessDuplicatesResults // analyze the specified text for duplicate lines
    optional func processLinesContainingMatchingString(matchingString: String!, matchingWithGrep: Bool, caseSensitive: Bool, outputOptions: TextWranglerProcessLinesContainingOutputOptions!) -> TextWranglerProcessLinesContainingResults // search for lines in the specified text containing the indicated string
    optional func removeLineBreaks() // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
    optional func rewrapQuotedTextParagraphFill(paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool, removingQuoteSpaces: Bool, leavingTrailingQuoteSpaces: Bool) // hard-wraps text, taking Internet-style line quoting into account
    optional func shiftDirection(direction: TextWranglerShDr, shiftingBySpaces: Bool) // shift the specified text left or right, optionally by one space
    optional func sortLinesSortingOptions(sortingOptions: TextWranglerSortLinesOptions!, outputOptions: TextWranglerSortLinesOutputOptions!) -> String // order the lines in the specified text
    optional func stripQuotes() // removes all Internet-style quoting from each line of the specified text
    optional func zapGremlinsZapAction(zapAction: TextWranglerZAct, zapCharacter: String!, nulls: Bool, controls: Bool, nonASCIICharacters: Bool) -> String // Removes or replaces unwanted characters from text
    optional func appendToScratchpad() // Appends the specified text to the global scratchpad.
}
extension SBObject: TextWranglerResultEntry {}

// MARK: TextWranglerSearchOptions
@objc public protocol TextWranglerSearchOptions: SBObjectProtocol {
    optional var searchMode: TextWranglerSMod { get set } // the type of search (literal search if omitted)
    optional var startingAtTop: Bool { get set } // start from the top of the document? (false if omitted)
    optional var wrapAround: Bool { get set } // should the search wrap from the end of the document? (false if omitted)
    optional var backwards: Bool { get set } // should the search proceed backwards? (false if omitted)
    optional var caseSensitive: Bool { get set } // should the search be case-sensitive? (false if omitted)
    optional var matchWords: Bool { get set } // should the search only find whole words? (false if omitted)
    optional var extendSelection: Bool { get set } // should the selection range include the original selection start through the end of the match? (false if omitted)
    optional var returningResults: Bool { get set } // if performing a batch or multi-file search, return a list of matches? (false if omitted)
    optional var showingResults: Bool { get set } // if performing a batch or multi-file search, open the list of results? (true if omitted)
    optional func openWithProperties(withProperties: [NSObject : AnyObject]!, openingIn: AnyObject!, stationeryAwareness: Bool, LFTranslation: Bool, readOnly: Bool, readingAs: TextWranglerRAsE, addingToRecentList: Bool) // Opens the specified item(s)
    optional func printWithProperties(withProperties: TextWranglerPrintSettings!, printDialog: Bool) // Print the specified object(s)
    optional func closeSaving(saving: TextWranglerSavo, savingIn: AnyObject!) // Closes the designated window.
    optional func delete() // Delete an element from an object
    optional func duplicateTo(to: SBObject!) -> SBObject // Duplicate object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!) -> SBObject // Move object(s) to a new location
    optional func saveTo(to: AnyObject!, savingAsStationery: Bool, addToRecentList: Bool) // Save a window or document.
    optional func activate() // activate the application or a window
    optional func copyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard
    optional func extendedCopyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
    optional func cutAppendingToClipboard(appendingToClipboard: Bool) // Cut an object to the clipboard
    optional func paste() // Paste an object from the clipboard
    optional func pasteColumn() // Paste an text from the clipboard forcing insertion as a rectangular column
    optional func redo() // Reverses the effects of the most recent Undo, if possible.
    optional func revertDiscardingUnsavedChanges(discardingUnsavedChanges: TextWranglerRevo) // Restore the object to its last saved state
    optional func select() // Select the specified object
    optional func undo() // Undoes the effects of the last command, if possible.
    optional func exportTo(to: AnyObject!) // Export an object
    optional func addLineBreaks() // Inserts a hard line break character at the end of each soft-wrapped line
    optional func addPrefixPrefix(`prefix`: String!) -> String // inserts a string at the beginning of each line in the indicated text
    optional func addSuffixSuffix(suffix: String!) -> String // inserts a string at the end of each line in the indicated text
    optional func removePrefixPrefix(`prefix`: String!) -> String // removes a string from the beginning of each line in the indicated text
    optional func removeSuffixSuffix(suffix: String!) -> String // removes a string from the end of each line in the indicated text
    optional func addPrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously adds a prefix and suffix to each line in the indicated text
    optional func removePrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously removes a prefix and suffix from each line in the indicated text
    optional func addLineNumbersStartNumber(startNumber: Int, increment: Int, addingSpace: Bool, keepingJustified: Bool) -> String // numbers each line in the indicated text
    optional func removeLineNumbersAddingSpace(addingSpace: Bool) -> String // removes leading numbering from each line in the indicated text
    optional func changeCaseMaking(making: TextWranglerCact) // Changes the case of text
    optional func clearUndoHistoryConfirming(confirming: Bool) // Deletes all Undo/Redo history information for this document
    optional func convertToASCIIReplacingTarget(replacingTarget: Bool) -> String // Converts 8-bit characters to 7-bit characters
    optional func decrementQuoteLevel() // removes one level of Internet-style quoting from each line of the specified text
    optional func detabTabWidth(tabWidth: Int) // Replace tabs with runs of spaces.
    optional func entabTabWidth(tabWidth: Int) // Replace runs of spaces with tabs.
    optional func educateQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert straight quotes into curly (typographer’s) quotes
    optional func straightenQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert curly (typographer’s) quotes into straight quotes
    optional func hardWrapLimit(limit: TextWranglerWrMd, paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool) // hard-wraps text to conform to the parameters
    optional func incrementQuoteLevelQuoteString(quoteString: String!) // adds one level of Internet-style quoting to each line of the specified text
    optional func markOptions(options: TextWranglerMarkOptions!) // mark matches of a specified search pattern with a string
    optional func normalizeLineEndings() -> String // convert any CRLF pairs and LF characters remaining after line-break conversion
    optional func processDuplicateLinesDuplicatesOptions(duplicatesOptions: TextWranglerProcessDuplicatesOptions!, outputOptions: TextWranglerProcessDuplicatesOutputOptions!) -> TextWranglerProcessDuplicatesResults // analyze the specified text for duplicate lines
    optional func processLinesContainingMatchingString(matchingString: String!, matchingWithGrep: Bool, caseSensitive: Bool, outputOptions: TextWranglerProcessLinesContainingOutputOptions!) -> TextWranglerProcessLinesContainingResults // search for lines in the specified text containing the indicated string
    optional func removeLineBreaks() // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
    optional func rewrapQuotedTextParagraphFill(paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool, removingQuoteSpaces: Bool, leavingTrailingQuoteSpaces: Bool) // hard-wraps text, taking Internet-style line quoting into account
    optional func shiftDirection(direction: TextWranglerShDr, shiftingBySpaces: Bool) // shift the specified text left or right, optionally by one space
    optional func sortLinesSortingOptions(sortingOptions: TextWranglerSortLinesOptions!, outputOptions: TextWranglerSortLinesOutputOptions!) -> String // order the lines in the specified text
    optional func stripQuotes() // removes all Internet-style quoting from each line of the specified text
    optional func zapGremlinsZapAction(zapAction: TextWranglerZAct, zapCharacter: String!, nulls: Bool, controls: Bool, nonASCIICharacters: Bool) -> String // Removes or replaces unwanted characters from text
    optional func appendToScratchpad() // Appends the specified text to the global scratchpad.
}
extension SBObject: TextWranglerSearchOptions {}

// MARK: TextWranglerSearchMatch
@objc public protocol TextWranglerSearchMatch: SBObjectProtocol {
    optional var found: Bool { get } // was a match found?
    optional var foundObject: SBObject { get } // for a single-file search, a reference to the found text
    optional var foundText: String { get } // for a single-file search, the found text
    optional var foundMatches: [AnyObject] { get } // for a multi-file or batch search, a list of the found occurrences
    optional var matchListWindow: SBObject { get } // for a multi-file or batch search, the window listing the matches
    optional func openWithProperties(withProperties: [NSObject : AnyObject]!, openingIn: AnyObject!, stationeryAwareness: Bool, LFTranslation: Bool, readOnly: Bool, readingAs: TextWranglerRAsE, addingToRecentList: Bool) // Opens the specified item(s)
    optional func printWithProperties(withProperties: TextWranglerPrintSettings!, printDialog: Bool) // Print the specified object(s)
    optional func closeSaving(saving: TextWranglerSavo, savingIn: AnyObject!) // Closes the designated window.
    optional func delete() // Delete an element from an object
    optional func duplicateTo(to: SBObject!) -> SBObject // Duplicate object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!) -> SBObject // Move object(s) to a new location
    optional func saveTo(to: AnyObject!, savingAsStationery: Bool, addToRecentList: Bool) // Save a window or document.
    optional func activate() // activate the application or a window
    optional func copyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard
    optional func extendedCopyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
    optional func cutAppendingToClipboard(appendingToClipboard: Bool) // Cut an object to the clipboard
    optional func paste() // Paste an object from the clipboard
    optional func pasteColumn() // Paste an text from the clipboard forcing insertion as a rectangular column
    optional func redo() // Reverses the effects of the most recent Undo, if possible.
    optional func revertDiscardingUnsavedChanges(discardingUnsavedChanges: TextWranglerRevo) // Restore the object to its last saved state
    optional func select() // Select the specified object
    optional func undo() // Undoes the effects of the last command, if possible.
    optional func exportTo(to: AnyObject!) // Export an object
    optional func addLineBreaks() // Inserts a hard line break character at the end of each soft-wrapped line
    optional func addPrefixPrefix(`prefix`: String!) -> String // inserts a string at the beginning of each line in the indicated text
    optional func addSuffixSuffix(suffix: String!) -> String // inserts a string at the end of each line in the indicated text
    optional func removePrefixPrefix(`prefix`: String!) -> String // removes a string from the beginning of each line in the indicated text
    optional func removeSuffixSuffix(suffix: String!) -> String // removes a string from the end of each line in the indicated text
    optional func addPrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously adds a prefix and suffix to each line in the indicated text
    optional func removePrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously removes a prefix and suffix from each line in the indicated text
    optional func addLineNumbersStartNumber(startNumber: Int, increment: Int, addingSpace: Bool, keepingJustified: Bool) -> String // numbers each line in the indicated text
    optional func removeLineNumbersAddingSpace(addingSpace: Bool) -> String // removes leading numbering from each line in the indicated text
    optional func changeCaseMaking(making: TextWranglerCact) // Changes the case of text
    optional func clearUndoHistoryConfirming(confirming: Bool) // Deletes all Undo/Redo history information for this document
    optional func convertToASCIIReplacingTarget(replacingTarget: Bool) -> String // Converts 8-bit characters to 7-bit characters
    optional func decrementQuoteLevel() // removes one level of Internet-style quoting from each line of the specified text
    optional func detabTabWidth(tabWidth: Int) // Replace tabs with runs of spaces.
    optional func entabTabWidth(tabWidth: Int) // Replace runs of spaces with tabs.
    optional func educateQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert straight quotes into curly (typographer’s) quotes
    optional func straightenQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert curly (typographer’s) quotes into straight quotes
    optional func hardWrapLimit(limit: TextWranglerWrMd, paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool) // hard-wraps text to conform to the parameters
    optional func incrementQuoteLevelQuoteString(quoteString: String!) // adds one level of Internet-style quoting to each line of the specified text
    optional func markOptions(options: TextWranglerMarkOptions!) // mark matches of a specified search pattern with a string
    optional func normalizeLineEndings() -> String // convert any CRLF pairs and LF characters remaining after line-break conversion
    optional func processDuplicateLinesDuplicatesOptions(duplicatesOptions: TextWranglerProcessDuplicatesOptions!, outputOptions: TextWranglerProcessDuplicatesOutputOptions!) -> TextWranglerProcessDuplicatesResults // analyze the specified text for duplicate lines
    optional func processLinesContainingMatchingString(matchingString: String!, matchingWithGrep: Bool, caseSensitive: Bool, outputOptions: TextWranglerProcessLinesContainingOutputOptions!) -> TextWranglerProcessLinesContainingResults // search for lines in the specified text containing the indicated string
    optional func removeLineBreaks() // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
    optional func rewrapQuotedTextParagraphFill(paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool, removingQuoteSpaces: Bool, leavingTrailingQuoteSpaces: Bool) // hard-wraps text, taking Internet-style line quoting into account
    optional func shiftDirection(direction: TextWranglerShDr, shiftingBySpaces: Bool) // shift the specified text left or right, optionally by one space
    optional func sortLinesSortingOptions(sortingOptions: TextWranglerSortLinesOptions!, outputOptions: TextWranglerSortLinesOutputOptions!) -> String // order the lines in the specified text
    optional func stripQuotes() // removes all Internet-style quoting from each line of the specified text
    optional func zapGremlinsZapAction(zapAction: TextWranglerZAct, zapCharacter: String!, nulls: Bool, controls: Bool, nonASCIICharacters: Bool) -> String // Removes or replaces unwanted characters from text
    optional func appendToScratchpad() // Appends the specified text to the global scratchpad.
}
extension SBObject: TextWranglerSearchMatch {}

// MARK: TextWranglerSearchStringProperties
@objc public protocol TextWranglerSearchStringProperties: SBObjectProtocol {
    optional var searchString: String { get } // search text
    optional var replacementString: String { get } // replace text
    optional func openWithProperties(withProperties: [NSObject : AnyObject]!, openingIn: AnyObject!, stationeryAwareness: Bool, LFTranslation: Bool, readOnly: Bool, readingAs: TextWranglerRAsE, addingToRecentList: Bool) // Opens the specified item(s)
    optional func printWithProperties(withProperties: TextWranglerPrintSettings!, printDialog: Bool) // Print the specified object(s)
    optional func closeSaving(saving: TextWranglerSavo, savingIn: AnyObject!) // Closes the designated window.
    optional func delete() // Delete an element from an object
    optional func duplicateTo(to: SBObject!) -> SBObject // Duplicate object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!) -> SBObject // Move object(s) to a new location
    optional func saveTo(to: AnyObject!, savingAsStationery: Bool, addToRecentList: Bool) // Save a window or document.
    optional func activate() // activate the application or a window
    optional func copyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard
    optional func extendedCopyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
    optional func cutAppendingToClipboard(appendingToClipboard: Bool) // Cut an object to the clipboard
    optional func paste() // Paste an object from the clipboard
    optional func pasteColumn() // Paste an text from the clipboard forcing insertion as a rectangular column
    optional func redo() // Reverses the effects of the most recent Undo, if possible.
    optional func revertDiscardingUnsavedChanges(discardingUnsavedChanges: TextWranglerRevo) // Restore the object to its last saved state
    optional func select() // Select the specified object
    optional func undo() // Undoes the effects of the last command, if possible.
    optional func exportTo(to: AnyObject!) // Export an object
    optional func addLineBreaks() // Inserts a hard line break character at the end of each soft-wrapped line
    optional func addPrefixPrefix(`prefix`: String!) -> String // inserts a string at the beginning of each line in the indicated text
    optional func addSuffixSuffix(suffix: String!) -> String // inserts a string at the end of each line in the indicated text
    optional func removePrefixPrefix(`prefix`: String!) -> String // removes a string from the beginning of each line in the indicated text
    optional func removeSuffixSuffix(suffix: String!) -> String // removes a string from the end of each line in the indicated text
    optional func addPrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously adds a prefix and suffix to each line in the indicated text
    optional func removePrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously removes a prefix and suffix from each line in the indicated text
    optional func addLineNumbersStartNumber(startNumber: Int, increment: Int, addingSpace: Bool, keepingJustified: Bool) -> String // numbers each line in the indicated text
    optional func removeLineNumbersAddingSpace(addingSpace: Bool) -> String // removes leading numbering from each line in the indicated text
    optional func changeCaseMaking(making: TextWranglerCact) // Changes the case of text
    optional func clearUndoHistoryConfirming(confirming: Bool) // Deletes all Undo/Redo history information for this document
    optional func convertToASCIIReplacingTarget(replacingTarget: Bool) -> String // Converts 8-bit characters to 7-bit characters
    optional func decrementQuoteLevel() // removes one level of Internet-style quoting from each line of the specified text
    optional func detabTabWidth(tabWidth: Int) // Replace tabs with runs of spaces.
    optional func entabTabWidth(tabWidth: Int) // Replace runs of spaces with tabs.
    optional func educateQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert straight quotes into curly (typographer’s) quotes
    optional func straightenQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert curly (typographer’s) quotes into straight quotes
    optional func hardWrapLimit(limit: TextWranglerWrMd, paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool) // hard-wraps text to conform to the parameters
    optional func incrementQuoteLevelQuoteString(quoteString: String!) // adds one level of Internet-style quoting to each line of the specified text
    optional func markOptions(options: TextWranglerMarkOptions!) // mark matches of a specified search pattern with a string
    optional func normalizeLineEndings() -> String // convert any CRLF pairs and LF characters remaining after line-break conversion
    optional func processDuplicateLinesDuplicatesOptions(duplicatesOptions: TextWranglerProcessDuplicatesOptions!, outputOptions: TextWranglerProcessDuplicatesOutputOptions!) -> TextWranglerProcessDuplicatesResults // analyze the specified text for duplicate lines
    optional func processLinesContainingMatchingString(matchingString: String!, matchingWithGrep: Bool, caseSensitive: Bool, outputOptions: TextWranglerProcessLinesContainingOutputOptions!) -> TextWranglerProcessLinesContainingResults // search for lines in the specified text containing the indicated string
    optional func removeLineBreaks() // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
    optional func rewrapQuotedTextParagraphFill(paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool, removingQuoteSpaces: Bool, leavingTrailingQuoteSpaces: Bool) // hard-wraps text, taking Internet-style line quoting into account
    optional func shiftDirection(direction: TextWranglerShDr, shiftingBySpaces: Bool) // shift the specified text left or right, optionally by one space
    optional func sortLinesSortingOptions(sortingOptions: TextWranglerSortLinesOptions!, outputOptions: TextWranglerSortLinesOutputOptions!) -> String // order the lines in the specified text
    optional func stripQuotes() // removes all Internet-style quoting from each line of the specified text
    optional func zapGremlinsZapAction(zapAction: TextWranglerZAct, zapCharacter: String!, nulls: Bool, controls: Bool, nonASCIICharacters: Bool) -> String // Removes or replaces unwanted characters from text
    optional func appendToScratchpad() // Appends the specified text to the global scratchpad.
}
extension SBObject: TextWranglerSearchStringProperties {}

// MARK: TextWranglerSortLinesOptions
@objc public protocol TextWranglerSortLinesOptions: SBObjectProtocol {
    optional var sortingCaseSensitive: Bool { get }
    optional var sortIgnoringLeadingSpace: Bool { get }
    optional var reversingSortOrder: Bool { get }
    optional var sortingNumerically: Bool { get }
    optional var sortUsingStoredPattern: String { get }
    optional var sortPattern: String { get }
    optional var sortSubpatternKey: TextWranglerESbM { get }
    optional var sortSubpattern: String { get }
    optional func openWithProperties(withProperties: [NSObject : AnyObject]!, openingIn: AnyObject!, stationeryAwareness: Bool, LFTranslation: Bool, readOnly: Bool, readingAs: TextWranglerRAsE, addingToRecentList: Bool) // Opens the specified item(s)
    optional func printWithProperties(withProperties: TextWranglerPrintSettings!, printDialog: Bool) // Print the specified object(s)
    optional func closeSaving(saving: TextWranglerSavo, savingIn: AnyObject!) // Closes the designated window.
    optional func delete() // Delete an element from an object
    optional func duplicateTo(to: SBObject!) -> SBObject // Duplicate object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!) -> SBObject // Move object(s) to a new location
    optional func saveTo(to: AnyObject!, savingAsStationery: Bool, addToRecentList: Bool) // Save a window or document.
    optional func activate() // activate the application or a window
    optional func copyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard
    optional func extendedCopyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
    optional func cutAppendingToClipboard(appendingToClipboard: Bool) // Cut an object to the clipboard
    optional func paste() // Paste an object from the clipboard
    optional func pasteColumn() // Paste an text from the clipboard forcing insertion as a rectangular column
    optional func redo() // Reverses the effects of the most recent Undo, if possible.
    optional func revertDiscardingUnsavedChanges(discardingUnsavedChanges: TextWranglerRevo) // Restore the object to its last saved state
    optional func select() // Select the specified object
    optional func undo() // Undoes the effects of the last command, if possible.
    optional func exportTo(to: AnyObject!) // Export an object
    optional func addLineBreaks() // Inserts a hard line break character at the end of each soft-wrapped line
    optional func addPrefixPrefix(`prefix`: String!) -> String // inserts a string at the beginning of each line in the indicated text
    optional func addSuffixSuffix(suffix: String!) -> String // inserts a string at the end of each line in the indicated text
    optional func removePrefixPrefix(`prefix`: String!) -> String // removes a string from the beginning of each line in the indicated text
    optional func removeSuffixSuffix(suffix: String!) -> String // removes a string from the end of each line in the indicated text
    optional func addPrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously adds a prefix and suffix to each line in the indicated text
    optional func removePrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously removes a prefix and suffix from each line in the indicated text
    optional func addLineNumbersStartNumber(startNumber: Int, increment: Int, addingSpace: Bool, keepingJustified: Bool) -> String // numbers each line in the indicated text
    optional func removeLineNumbersAddingSpace(addingSpace: Bool) -> String // removes leading numbering from each line in the indicated text
    optional func changeCaseMaking(making: TextWranglerCact) // Changes the case of text
    optional func clearUndoHistoryConfirming(confirming: Bool) // Deletes all Undo/Redo history information for this document
    optional func convertToASCIIReplacingTarget(replacingTarget: Bool) -> String // Converts 8-bit characters to 7-bit characters
    optional func decrementQuoteLevel() // removes one level of Internet-style quoting from each line of the specified text
    optional func detabTabWidth(tabWidth: Int) // Replace tabs with runs of spaces.
    optional func entabTabWidth(tabWidth: Int) // Replace runs of spaces with tabs.
    optional func educateQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert straight quotes into curly (typographer’s) quotes
    optional func straightenQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert curly (typographer’s) quotes into straight quotes
    optional func hardWrapLimit(limit: TextWranglerWrMd, paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool) // hard-wraps text to conform to the parameters
    optional func incrementQuoteLevelQuoteString(quoteString: String!) // adds one level of Internet-style quoting to each line of the specified text
    optional func markOptions(options: TextWranglerMarkOptions!) // mark matches of a specified search pattern with a string
    optional func normalizeLineEndings() -> String // convert any CRLF pairs and LF characters remaining after line-break conversion
    optional func processDuplicateLinesDuplicatesOptions(duplicatesOptions: TextWranglerProcessDuplicatesOptions!, outputOptions: TextWranglerProcessDuplicatesOutputOptions!) -> TextWranglerProcessDuplicatesResults // analyze the specified text for duplicate lines
    optional func processLinesContainingMatchingString(matchingString: String!, matchingWithGrep: Bool, caseSensitive: Bool, outputOptions: TextWranglerProcessLinesContainingOutputOptions!) -> TextWranglerProcessLinesContainingResults // search for lines in the specified text containing the indicated string
    optional func removeLineBreaks() // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
    optional func rewrapQuotedTextParagraphFill(paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool, removingQuoteSpaces: Bool, leavingTrailingQuoteSpaces: Bool) // hard-wraps text, taking Internet-style line quoting into account
    optional func shiftDirection(direction: TextWranglerShDr, shiftingBySpaces: Bool) // shift the specified text left or right, optionally by one space
    optional func sortLinesSortingOptions(sortingOptions: TextWranglerSortLinesOptions!, outputOptions: TextWranglerSortLinesOutputOptions!) -> String // order the lines in the specified text
    optional func stripQuotes() // removes all Internet-style quoting from each line of the specified text
    optional func zapGremlinsZapAction(zapAction: TextWranglerZAct, zapCharacter: String!, nulls: Bool, controls: Bool, nonASCIICharacters: Bool) -> String // Removes or replaces unwanted characters from text
    optional func appendToScratchpad() // Appends the specified text to the global scratchpad.
}
extension SBObject: TextWranglerSortLinesOptions {}

// MARK: TextWranglerSortLinesOutputOptions
@objc public protocol TextWranglerSortLinesOutputOptions: SBObjectProtocol {
    optional var replacingTarget: Bool { get }
    optional var copyingToClipboard: Bool { get }
    optional var copyingToNewDocument: Bool { get }
    optional func openWithProperties(withProperties: [NSObject : AnyObject]!, openingIn: AnyObject!, stationeryAwareness: Bool, LFTranslation: Bool, readOnly: Bool, readingAs: TextWranglerRAsE, addingToRecentList: Bool) // Opens the specified item(s)
    optional func printWithProperties(withProperties: TextWranglerPrintSettings!, printDialog: Bool) // Print the specified object(s)
    optional func closeSaving(saving: TextWranglerSavo, savingIn: AnyObject!) // Closes the designated window.
    optional func delete() // Delete an element from an object
    optional func duplicateTo(to: SBObject!) -> SBObject // Duplicate object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!) -> SBObject // Move object(s) to a new location
    optional func saveTo(to: AnyObject!, savingAsStationery: Bool, addToRecentList: Bool) // Save a window or document.
    optional func activate() // activate the application or a window
    optional func copyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard
    optional func extendedCopyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
    optional func cutAppendingToClipboard(appendingToClipboard: Bool) // Cut an object to the clipboard
    optional func paste() // Paste an object from the clipboard
    optional func pasteColumn() // Paste an text from the clipboard forcing insertion as a rectangular column
    optional func redo() // Reverses the effects of the most recent Undo, if possible.
    optional func revertDiscardingUnsavedChanges(discardingUnsavedChanges: TextWranglerRevo) // Restore the object to its last saved state
    optional func select() // Select the specified object
    optional func undo() // Undoes the effects of the last command, if possible.
    optional func exportTo(to: AnyObject!) // Export an object
    optional func addLineBreaks() // Inserts a hard line break character at the end of each soft-wrapped line
    optional func addPrefixPrefix(`prefix`: String!) -> String // inserts a string at the beginning of each line in the indicated text
    optional func addSuffixSuffix(suffix: String!) -> String // inserts a string at the end of each line in the indicated text
    optional func removePrefixPrefix(`prefix`: String!) -> String // removes a string from the beginning of each line in the indicated text
    optional func removeSuffixSuffix(suffix: String!) -> String // removes a string from the end of each line in the indicated text
    optional func addPrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously adds a prefix and suffix to each line in the indicated text
    optional func removePrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously removes a prefix and suffix from each line in the indicated text
    optional func addLineNumbersStartNumber(startNumber: Int, increment: Int, addingSpace: Bool, keepingJustified: Bool) -> String // numbers each line in the indicated text
    optional func removeLineNumbersAddingSpace(addingSpace: Bool) -> String // removes leading numbering from each line in the indicated text
    optional func changeCaseMaking(making: TextWranglerCact) // Changes the case of text
    optional func clearUndoHistoryConfirming(confirming: Bool) // Deletes all Undo/Redo history information for this document
    optional func convertToASCIIReplacingTarget(replacingTarget: Bool) -> String // Converts 8-bit characters to 7-bit characters
    optional func decrementQuoteLevel() // removes one level of Internet-style quoting from each line of the specified text
    optional func detabTabWidth(tabWidth: Int) // Replace tabs with runs of spaces.
    optional func entabTabWidth(tabWidth: Int) // Replace runs of spaces with tabs.
    optional func educateQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert straight quotes into curly (typographer’s) quotes
    optional func straightenQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert curly (typographer’s) quotes into straight quotes
    optional func hardWrapLimit(limit: TextWranglerWrMd, paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool) // hard-wraps text to conform to the parameters
    optional func incrementQuoteLevelQuoteString(quoteString: String!) // adds one level of Internet-style quoting to each line of the specified text
    optional func markOptions(options: TextWranglerMarkOptions!) // mark matches of a specified search pattern with a string
    optional func normalizeLineEndings() -> String // convert any CRLF pairs and LF characters remaining after line-break conversion
    optional func processDuplicateLinesDuplicatesOptions(duplicatesOptions: TextWranglerProcessDuplicatesOptions!, outputOptions: TextWranglerProcessDuplicatesOutputOptions!) -> TextWranglerProcessDuplicatesResults // analyze the specified text for duplicate lines
    optional func processLinesContainingMatchingString(matchingString: String!, matchingWithGrep: Bool, caseSensitive: Bool, outputOptions: TextWranglerProcessLinesContainingOutputOptions!) -> TextWranglerProcessLinesContainingResults // search for lines in the specified text containing the indicated string
    optional func removeLineBreaks() // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
    optional func rewrapQuotedTextParagraphFill(paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool, removingQuoteSpaces: Bool, leavingTrailingQuoteSpaces: Bool) // hard-wraps text, taking Internet-style line quoting into account
    optional func shiftDirection(direction: TextWranglerShDr, shiftingBySpaces: Bool) // shift the specified text left or right, optionally by one space
    optional func sortLinesSortingOptions(sortingOptions: TextWranglerSortLinesOptions!, outputOptions: TextWranglerSortLinesOutputOptions!) -> String // order the lines in the specified text
    optional func stripQuotes() // removes all Internet-style quoting from each line of the specified text
    optional func zapGremlinsZapAction(zapAction: TextWranglerZAct, zapCharacter: String!, nulls: Bool, controls: Bool, nonASCIICharacters: Bool) -> String // Removes or replaces unwanted characters from text
    optional func appendToScratchpad() // Appends the specified text to the global scratchpad.
}
extension SBObject: TextWranglerSortLinesOutputOptions {}

// MARK: TextWranglerProcessDuplicatesOptions
@objc public protocol TextWranglerProcessDuplicatesOptions: SBObjectProtocol {
    optional var matchMode: TextWranglerMMod { get }
    optional var matchingCaseSensitive: Bool { get }
    optional var matchIgnoringLeadingSpace: Bool { get }
    optional var matchingNumerically: Bool { get }
    optional var matchUsingStoredPattern: String { get }
    optional var matchPattern: String { get }
    optional var matchSubpatternKey: TextWranglerESbM { get }
    optional var matchSubpattern: String { get }
    optional func openWithProperties(withProperties: [NSObject : AnyObject]!, openingIn: AnyObject!, stationeryAwareness: Bool, LFTranslation: Bool, readOnly: Bool, readingAs: TextWranglerRAsE, addingToRecentList: Bool) // Opens the specified item(s)
    optional func printWithProperties(withProperties: TextWranglerPrintSettings!, printDialog: Bool) // Print the specified object(s)
    optional func closeSaving(saving: TextWranglerSavo, savingIn: AnyObject!) // Closes the designated window.
    optional func delete() // Delete an element from an object
    optional func duplicateTo(to: SBObject!) -> SBObject // Duplicate object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!) -> SBObject // Move object(s) to a new location
    optional func saveTo(to: AnyObject!, savingAsStationery: Bool, addToRecentList: Bool) // Save a window or document.
    optional func activate() // activate the application or a window
    optional func copyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard
    optional func extendedCopyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
    optional func cutAppendingToClipboard(appendingToClipboard: Bool) // Cut an object to the clipboard
    optional func paste() // Paste an object from the clipboard
    optional func pasteColumn() // Paste an text from the clipboard forcing insertion as a rectangular column
    optional func redo() // Reverses the effects of the most recent Undo, if possible.
    optional func revertDiscardingUnsavedChanges(discardingUnsavedChanges: TextWranglerRevo) // Restore the object to its last saved state
    optional func select() // Select the specified object
    optional func undo() // Undoes the effects of the last command, if possible.
    optional func exportTo(to: AnyObject!) // Export an object
    optional func addLineBreaks() // Inserts a hard line break character at the end of each soft-wrapped line
    optional func addPrefixPrefix(`prefix`: String!) -> String // inserts a string at the beginning of each line in the indicated text
    optional func addSuffixSuffix(suffix: String!) -> String // inserts a string at the end of each line in the indicated text
    optional func removePrefixPrefix(`prefix`: String!) -> String // removes a string from the beginning of each line in the indicated text
    optional func removeSuffixSuffix(suffix: String!) -> String // removes a string from the end of each line in the indicated text
    optional func addPrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously adds a prefix and suffix to each line in the indicated text
    optional func removePrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously removes a prefix and suffix from each line in the indicated text
    optional func addLineNumbersStartNumber(startNumber: Int, increment: Int, addingSpace: Bool, keepingJustified: Bool) -> String // numbers each line in the indicated text
    optional func removeLineNumbersAddingSpace(addingSpace: Bool) -> String // removes leading numbering from each line in the indicated text
    optional func changeCaseMaking(making: TextWranglerCact) // Changes the case of text
    optional func clearUndoHistoryConfirming(confirming: Bool) // Deletes all Undo/Redo history information for this document
    optional func convertToASCIIReplacingTarget(replacingTarget: Bool) -> String // Converts 8-bit characters to 7-bit characters
    optional func decrementQuoteLevel() // removes one level of Internet-style quoting from each line of the specified text
    optional func detabTabWidth(tabWidth: Int) // Replace tabs with runs of spaces.
    optional func entabTabWidth(tabWidth: Int) // Replace runs of spaces with tabs.
    optional func educateQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert straight quotes into curly (typographer’s) quotes
    optional func straightenQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert curly (typographer’s) quotes into straight quotes
    optional func hardWrapLimit(limit: TextWranglerWrMd, paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool) // hard-wraps text to conform to the parameters
    optional func incrementQuoteLevelQuoteString(quoteString: String!) // adds one level of Internet-style quoting to each line of the specified text
    optional func markOptions(options: TextWranglerMarkOptions!) // mark matches of a specified search pattern with a string
    optional func normalizeLineEndings() -> String // convert any CRLF pairs and LF characters remaining after line-break conversion
    optional func processDuplicateLinesDuplicatesOptions(duplicatesOptions: TextWranglerProcessDuplicatesOptions!, outputOptions: TextWranglerProcessDuplicatesOutputOptions!) -> TextWranglerProcessDuplicatesResults // analyze the specified text for duplicate lines
    optional func processLinesContainingMatchingString(matchingString: String!, matchingWithGrep: Bool, caseSensitive: Bool, outputOptions: TextWranglerProcessLinesContainingOutputOptions!) -> TextWranglerProcessLinesContainingResults // search for lines in the specified text containing the indicated string
    optional func removeLineBreaks() // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
    optional func rewrapQuotedTextParagraphFill(paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool, removingQuoteSpaces: Bool, leavingTrailingQuoteSpaces: Bool) // hard-wraps text, taking Internet-style line quoting into account
    optional func shiftDirection(direction: TextWranglerShDr, shiftingBySpaces: Bool) // shift the specified text left or right, optionally by one space
    optional func sortLinesSortingOptions(sortingOptions: TextWranglerSortLinesOptions!, outputOptions: TextWranglerSortLinesOutputOptions!) -> String // order the lines in the specified text
    optional func stripQuotes() // removes all Internet-style quoting from each line of the specified text
    optional func zapGremlinsZapAction(zapAction: TextWranglerZAct, zapCharacter: String!, nulls: Bool, controls: Bool, nonASCIICharacters: Bool) -> String // Removes or replaces unwanted characters from text
    optional func appendToScratchpad() // Appends the specified text to the global scratchpad.
}
extension SBObject: TextWranglerProcessDuplicatesOptions {}

// MARK: TextWranglerProcessDuplicatesOutputOptions
@objc public protocol TextWranglerProcessDuplicatesOutputOptions: SBObjectProtocol {
    optional var deletingDuplicates: Bool { get }
    optional var duplicatesToClipboard: Bool { get }
    optional var duplicatesToNewDocument: Bool { get }
    optional var uniqueLinesToClipboard: Bool { get }
    optional var uniqueLinesToNewDocument: Bool { get }
    optional func openWithProperties(withProperties: [NSObject : AnyObject]!, openingIn: AnyObject!, stationeryAwareness: Bool, LFTranslation: Bool, readOnly: Bool, readingAs: TextWranglerRAsE, addingToRecentList: Bool) // Opens the specified item(s)
    optional func printWithProperties(withProperties: TextWranglerPrintSettings!, printDialog: Bool) // Print the specified object(s)
    optional func closeSaving(saving: TextWranglerSavo, savingIn: AnyObject!) // Closes the designated window.
    optional func delete() // Delete an element from an object
    optional func duplicateTo(to: SBObject!) -> SBObject // Duplicate object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!) -> SBObject // Move object(s) to a new location
    optional func saveTo(to: AnyObject!, savingAsStationery: Bool, addToRecentList: Bool) // Save a window or document.
    optional func activate() // activate the application or a window
    optional func copyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard
    optional func extendedCopyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
    optional func cutAppendingToClipboard(appendingToClipboard: Bool) // Cut an object to the clipboard
    optional func paste() // Paste an object from the clipboard
    optional func pasteColumn() // Paste an text from the clipboard forcing insertion as a rectangular column
    optional func redo() // Reverses the effects of the most recent Undo, if possible.
    optional func revertDiscardingUnsavedChanges(discardingUnsavedChanges: TextWranglerRevo) // Restore the object to its last saved state
    optional func select() // Select the specified object
    optional func undo() // Undoes the effects of the last command, if possible.
    optional func exportTo(to: AnyObject!) // Export an object
    optional func addLineBreaks() // Inserts a hard line break character at the end of each soft-wrapped line
    optional func addPrefixPrefix(`prefix`: String!) -> String // inserts a string at the beginning of each line in the indicated text
    optional func addSuffixSuffix(suffix: String!) -> String // inserts a string at the end of each line in the indicated text
    optional func removePrefixPrefix(`prefix`: String!) -> String // removes a string from the beginning of each line in the indicated text
    optional func removeSuffixSuffix(suffix: String!) -> String // removes a string from the end of each line in the indicated text
    optional func addPrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously adds a prefix and suffix to each line in the indicated text
    optional func removePrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously removes a prefix and suffix from each line in the indicated text
    optional func addLineNumbersStartNumber(startNumber: Int, increment: Int, addingSpace: Bool, keepingJustified: Bool) -> String // numbers each line in the indicated text
    optional func removeLineNumbersAddingSpace(addingSpace: Bool) -> String // removes leading numbering from each line in the indicated text
    optional func changeCaseMaking(making: TextWranglerCact) // Changes the case of text
    optional func clearUndoHistoryConfirming(confirming: Bool) // Deletes all Undo/Redo history information for this document
    optional func convertToASCIIReplacingTarget(replacingTarget: Bool) -> String // Converts 8-bit characters to 7-bit characters
    optional func decrementQuoteLevel() // removes one level of Internet-style quoting from each line of the specified text
    optional func detabTabWidth(tabWidth: Int) // Replace tabs with runs of spaces.
    optional func entabTabWidth(tabWidth: Int) // Replace runs of spaces with tabs.
    optional func educateQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert straight quotes into curly (typographer’s) quotes
    optional func straightenQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert curly (typographer’s) quotes into straight quotes
    optional func hardWrapLimit(limit: TextWranglerWrMd, paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool) // hard-wraps text to conform to the parameters
    optional func incrementQuoteLevelQuoteString(quoteString: String!) // adds one level of Internet-style quoting to each line of the specified text
    optional func markOptions(options: TextWranglerMarkOptions!) // mark matches of a specified search pattern with a string
    optional func normalizeLineEndings() -> String // convert any CRLF pairs and LF characters remaining after line-break conversion
    optional func processDuplicateLinesDuplicatesOptions(duplicatesOptions: TextWranglerProcessDuplicatesOptions!, outputOptions: TextWranglerProcessDuplicatesOutputOptions!) -> TextWranglerProcessDuplicatesResults // analyze the specified text for duplicate lines
    optional func processLinesContainingMatchingString(matchingString: String!, matchingWithGrep: Bool, caseSensitive: Bool, outputOptions: TextWranglerProcessLinesContainingOutputOptions!) -> TextWranglerProcessLinesContainingResults // search for lines in the specified text containing the indicated string
    optional func removeLineBreaks() // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
    optional func rewrapQuotedTextParagraphFill(paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool, removingQuoteSpaces: Bool, leavingTrailingQuoteSpaces: Bool) // hard-wraps text, taking Internet-style line quoting into account
    optional func shiftDirection(direction: TextWranglerShDr, shiftingBySpaces: Bool) // shift the specified text left or right, optionally by one space
    optional func sortLinesSortingOptions(sortingOptions: TextWranglerSortLinesOptions!, outputOptions: TextWranglerSortLinesOutputOptions!) -> String // order the lines in the specified text
    optional func stripQuotes() // removes all Internet-style quoting from each line of the specified text
    optional func zapGremlinsZapAction(zapAction: TextWranglerZAct, zapCharacter: String!, nulls: Bool, controls: Bool, nonASCIICharacters: Bool) -> String // Removes or replaces unwanted characters from text
    optional func appendToScratchpad() // Appends the specified text to the global scratchpad.
}
extension SBObject: TextWranglerProcessDuplicatesOutputOptions {}

// MARK: TextWranglerProcessDuplicatesResults
@objc public protocol TextWranglerProcessDuplicatesResults: SBObjectProtocol {
    optional var duplicateLines: String { get } // the duplicate lines in the input
    optional var uniqueLines: String { get } // the unique lines in the input
    optional func openWithProperties(withProperties: [NSObject : AnyObject]!, openingIn: AnyObject!, stationeryAwareness: Bool, LFTranslation: Bool, readOnly: Bool, readingAs: TextWranglerRAsE, addingToRecentList: Bool) // Opens the specified item(s)
    optional func printWithProperties(withProperties: TextWranglerPrintSettings!, printDialog: Bool) // Print the specified object(s)
    optional func closeSaving(saving: TextWranglerSavo, savingIn: AnyObject!) // Closes the designated window.
    optional func delete() // Delete an element from an object
    optional func duplicateTo(to: SBObject!) -> SBObject // Duplicate object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!) -> SBObject // Move object(s) to a new location
    optional func saveTo(to: AnyObject!, savingAsStationery: Bool, addToRecentList: Bool) // Save a window or document.
    optional func activate() // activate the application or a window
    optional func copyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard
    optional func extendedCopyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
    optional func cutAppendingToClipboard(appendingToClipboard: Bool) // Cut an object to the clipboard
    optional func paste() // Paste an object from the clipboard
    optional func pasteColumn() // Paste an text from the clipboard forcing insertion as a rectangular column
    optional func redo() // Reverses the effects of the most recent Undo, if possible.
    optional func revertDiscardingUnsavedChanges(discardingUnsavedChanges: TextWranglerRevo) // Restore the object to its last saved state
    optional func select() // Select the specified object
    optional func undo() // Undoes the effects of the last command, if possible.
    optional func exportTo(to: AnyObject!) // Export an object
    optional func addLineBreaks() // Inserts a hard line break character at the end of each soft-wrapped line
    optional func addPrefixPrefix(`prefix`: String!) -> String // inserts a string at the beginning of each line in the indicated text
    optional func addSuffixSuffix(suffix: String!) -> String // inserts a string at the end of each line in the indicated text
    optional func removePrefixPrefix(`prefix`: String!) -> String // removes a string from the beginning of each line in the indicated text
    optional func removeSuffixSuffix(suffix: String!) -> String // removes a string from the end of each line in the indicated text
    optional func addPrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously adds a prefix and suffix to each line in the indicated text
    optional func removePrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously removes a prefix and suffix from each line in the indicated text
    optional func addLineNumbersStartNumber(startNumber: Int, increment: Int, addingSpace: Bool, keepingJustified: Bool) -> String // numbers each line in the indicated text
    optional func removeLineNumbersAddingSpace(addingSpace: Bool) -> String // removes leading numbering from each line in the indicated text
    optional func changeCaseMaking(making: TextWranglerCact) // Changes the case of text
    optional func clearUndoHistoryConfirming(confirming: Bool) // Deletes all Undo/Redo history information for this document
    optional func convertToASCIIReplacingTarget(replacingTarget: Bool) -> String // Converts 8-bit characters to 7-bit characters
    optional func decrementQuoteLevel() // removes one level of Internet-style quoting from each line of the specified text
    optional func detabTabWidth(tabWidth: Int) // Replace tabs with runs of spaces.
    optional func entabTabWidth(tabWidth: Int) // Replace runs of spaces with tabs.
    optional func educateQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert straight quotes into curly (typographer’s) quotes
    optional func straightenQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert curly (typographer’s) quotes into straight quotes
    optional func hardWrapLimit(limit: TextWranglerWrMd, paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool) // hard-wraps text to conform to the parameters
    optional func incrementQuoteLevelQuoteString(quoteString: String!) // adds one level of Internet-style quoting to each line of the specified text
    optional func markOptions(options: TextWranglerMarkOptions!) // mark matches of a specified search pattern with a string
    optional func normalizeLineEndings() -> String // convert any CRLF pairs and LF characters remaining after line-break conversion
    optional func processDuplicateLinesDuplicatesOptions(duplicatesOptions: TextWranglerProcessDuplicatesOptions!, outputOptions: TextWranglerProcessDuplicatesOutputOptions!) -> TextWranglerProcessDuplicatesResults // analyze the specified text for duplicate lines
    optional func processLinesContainingMatchingString(matchingString: String!, matchingWithGrep: Bool, caseSensitive: Bool, outputOptions: TextWranglerProcessLinesContainingOutputOptions!) -> TextWranglerProcessLinesContainingResults // search for lines in the specified text containing the indicated string
    optional func removeLineBreaks() // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
    optional func rewrapQuotedTextParagraphFill(paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool, removingQuoteSpaces: Bool, leavingTrailingQuoteSpaces: Bool) // hard-wraps text, taking Internet-style line quoting into account
    optional func shiftDirection(direction: TextWranglerShDr, shiftingBySpaces: Bool) // shift the specified text left or right, optionally by one space
    optional func sortLinesSortingOptions(sortingOptions: TextWranglerSortLinesOptions!, outputOptions: TextWranglerSortLinesOutputOptions!) -> String // order the lines in the specified text
    optional func stripQuotes() // removes all Internet-style quoting from each line of the specified text
    optional func zapGremlinsZapAction(zapAction: TextWranglerZAct, zapCharacter: String!, nulls: Bool, controls: Bool, nonASCIICharacters: Bool) -> String // Removes or replaces unwanted characters from text
    optional func appendToScratchpad() // Appends the specified text to the global scratchpad.
}
extension SBObject: TextWranglerProcessDuplicatesResults {}

// MARK: TextWranglerProcessLinesContainingOutputOptions
@objc public protocol TextWranglerProcessLinesContainingOutputOptions: SBObjectProtocol {
    optional var deletingMatchedLines: Bool { get }
    optional var copyingToClipboard: Bool { get }
    optional var copyingToNewDocument: Bool { get }
    optional var reportingResults: Bool { get }
    optional func openWithProperties(withProperties: [NSObject : AnyObject]!, openingIn: AnyObject!, stationeryAwareness: Bool, LFTranslation: Bool, readOnly: Bool, readingAs: TextWranglerRAsE, addingToRecentList: Bool) // Opens the specified item(s)
    optional func printWithProperties(withProperties: TextWranglerPrintSettings!, printDialog: Bool) // Print the specified object(s)
    optional func closeSaving(saving: TextWranglerSavo, savingIn: AnyObject!) // Closes the designated window.
    optional func delete() // Delete an element from an object
    optional func duplicateTo(to: SBObject!) -> SBObject // Duplicate object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!) -> SBObject // Move object(s) to a new location
    optional func saveTo(to: AnyObject!, savingAsStationery: Bool, addToRecentList: Bool) // Save a window or document.
    optional func activate() // activate the application or a window
    optional func copyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard
    optional func extendedCopyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
    optional func cutAppendingToClipboard(appendingToClipboard: Bool) // Cut an object to the clipboard
    optional func paste() // Paste an object from the clipboard
    optional func pasteColumn() // Paste an text from the clipboard forcing insertion as a rectangular column
    optional func redo() // Reverses the effects of the most recent Undo, if possible.
    optional func revertDiscardingUnsavedChanges(discardingUnsavedChanges: TextWranglerRevo) // Restore the object to its last saved state
    optional func select() // Select the specified object
    optional func undo() // Undoes the effects of the last command, if possible.
    optional func exportTo(to: AnyObject!) // Export an object
    optional func addLineBreaks() // Inserts a hard line break character at the end of each soft-wrapped line
    optional func addPrefixPrefix(`prefix`: String!) -> String // inserts a string at the beginning of each line in the indicated text
    optional func addSuffixSuffix(suffix: String!) -> String // inserts a string at the end of each line in the indicated text
    optional func removePrefixPrefix(`prefix`: String!) -> String // removes a string from the beginning of each line in the indicated text
    optional func removeSuffixSuffix(suffix: String!) -> String // removes a string from the end of each line in the indicated text
    optional func addPrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously adds a prefix and suffix to each line in the indicated text
    optional func removePrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously removes a prefix and suffix from each line in the indicated text
    optional func addLineNumbersStartNumber(startNumber: Int, increment: Int, addingSpace: Bool, keepingJustified: Bool) -> String // numbers each line in the indicated text
    optional func removeLineNumbersAddingSpace(addingSpace: Bool) -> String // removes leading numbering from each line in the indicated text
    optional func changeCaseMaking(making: TextWranglerCact) // Changes the case of text
    optional func clearUndoHistoryConfirming(confirming: Bool) // Deletes all Undo/Redo history information for this document
    optional func convertToASCIIReplacingTarget(replacingTarget: Bool) -> String // Converts 8-bit characters to 7-bit characters
    optional func decrementQuoteLevel() // removes one level of Internet-style quoting from each line of the specified text
    optional func detabTabWidth(tabWidth: Int) // Replace tabs with runs of spaces.
    optional func entabTabWidth(tabWidth: Int) // Replace runs of spaces with tabs.
    optional func educateQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert straight quotes into curly (typographer’s) quotes
    optional func straightenQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert curly (typographer’s) quotes into straight quotes
    optional func hardWrapLimit(limit: TextWranglerWrMd, paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool) // hard-wraps text to conform to the parameters
    optional func incrementQuoteLevelQuoteString(quoteString: String!) // adds one level of Internet-style quoting to each line of the specified text
    optional func markOptions(options: TextWranglerMarkOptions!) // mark matches of a specified search pattern with a string
    optional func normalizeLineEndings() -> String // convert any CRLF pairs and LF characters remaining after line-break conversion
    optional func processDuplicateLinesDuplicatesOptions(duplicatesOptions: TextWranglerProcessDuplicatesOptions!, outputOptions: TextWranglerProcessDuplicatesOutputOptions!) -> TextWranglerProcessDuplicatesResults // analyze the specified text for duplicate lines
    optional func processLinesContainingMatchingString(matchingString: String!, matchingWithGrep: Bool, caseSensitive: Bool, outputOptions: TextWranglerProcessLinesContainingOutputOptions!) -> TextWranglerProcessLinesContainingResults // search for lines in the specified text containing the indicated string
    optional func removeLineBreaks() // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
    optional func rewrapQuotedTextParagraphFill(paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool, removingQuoteSpaces: Bool, leavingTrailingQuoteSpaces: Bool) // hard-wraps text, taking Internet-style line quoting into account
    optional func shiftDirection(direction: TextWranglerShDr, shiftingBySpaces: Bool) // shift the specified text left or right, optionally by one space
    optional func sortLinesSortingOptions(sortingOptions: TextWranglerSortLinesOptions!, outputOptions: TextWranglerSortLinesOutputOptions!) -> String // order the lines in the specified text
    optional func stripQuotes() // removes all Internet-style quoting from each line of the specified text
    optional func zapGremlinsZapAction(zapAction: TextWranglerZAct, zapCharacter: String!, nulls: Bool, controls: Bool, nonASCIICharacters: Bool) -> String // Removes or replaces unwanted characters from text
    optional func appendToScratchpad() // Appends the specified text to the global scratchpad.
}
extension SBObject: TextWranglerProcessLinesContainingOutputOptions {}

// MARK: TextWranglerProcessLinesContainingResults
@objc public protocol TextWranglerProcessLinesContainingResults: SBObjectProtocol {
    optional var copiedLines: String { get } // the lines in the input matching the string
    optional var modifiedText: String { get } // the lines in the input not matching the string
    optional func openWithProperties(withProperties: [NSObject : AnyObject]!, openingIn: AnyObject!, stationeryAwareness: Bool, LFTranslation: Bool, readOnly: Bool, readingAs: TextWranglerRAsE, addingToRecentList: Bool) // Opens the specified item(s)
    optional func printWithProperties(withProperties: TextWranglerPrintSettings!, printDialog: Bool) // Print the specified object(s)
    optional func closeSaving(saving: TextWranglerSavo, savingIn: AnyObject!) // Closes the designated window.
    optional func delete() // Delete an element from an object
    optional func duplicateTo(to: SBObject!) -> SBObject // Duplicate object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!) -> SBObject // Move object(s) to a new location
    optional func saveTo(to: AnyObject!, savingAsStationery: Bool, addToRecentList: Bool) // Save a window or document.
    optional func activate() // activate the application or a window
    optional func copyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard
    optional func extendedCopyAppendingToClipboard(appendingToClipboard: Bool) // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
    optional func cutAppendingToClipboard(appendingToClipboard: Bool) // Cut an object to the clipboard
    optional func paste() // Paste an object from the clipboard
    optional func pasteColumn() // Paste an text from the clipboard forcing insertion as a rectangular column
    optional func redo() // Reverses the effects of the most recent Undo, if possible.
    optional func revertDiscardingUnsavedChanges(discardingUnsavedChanges: TextWranglerRevo) // Restore the object to its last saved state
    optional func select() // Select the specified object
    optional func undo() // Undoes the effects of the last command, if possible.
    optional func exportTo(to: AnyObject!) // Export an object
    optional func addLineBreaks() // Inserts a hard line break character at the end of each soft-wrapped line
    optional func addPrefixPrefix(`prefix`: String!) -> String // inserts a string at the beginning of each line in the indicated text
    optional func addSuffixSuffix(suffix: String!) -> String // inserts a string at the end of each line in the indicated text
    optional func removePrefixPrefix(`prefix`: String!) -> String // removes a string from the beginning of each line in the indicated text
    optional func removeSuffixSuffix(suffix: String!) -> String // removes a string from the end of each line in the indicated text
    optional func addPrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously adds a prefix and suffix to each line in the indicated text
    optional func removePrefixAndSuffixPrefix(`prefix`: String!, suffix: String!) -> String // simultaneously removes a prefix and suffix from each line in the indicated text
    optional func addLineNumbersStartNumber(startNumber: Int, increment: Int, addingSpace: Bool, keepingJustified: Bool) -> String // numbers each line in the indicated text
    optional func removeLineNumbersAddingSpace(addingSpace: Bool) -> String // removes leading numbering from each line in the indicated text
    optional func changeCaseMaking(making: TextWranglerCact) // Changes the case of text
    optional func clearUndoHistoryConfirming(confirming: Bool) // Deletes all Undo/Redo history information for this document
    optional func convertToASCIIReplacingTarget(replacingTarget: Bool) -> String // Converts 8-bit characters to 7-bit characters
    optional func decrementQuoteLevel() // removes one level of Internet-style quoting from each line of the specified text
    optional func detabTabWidth(tabWidth: Int) // Replace tabs with runs of spaces.
    optional func entabTabWidth(tabWidth: Int) // Replace runs of spaces with tabs.
    optional func educateQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert straight quotes into curly (typographer’s) quotes
    optional func straightenQuotesReplacingTarget(replacingTarget: Bool) -> String // Convert curly (typographer’s) quotes into straight quotes
    optional func hardWrapLimit(limit: TextWranglerWrMd, paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool) // hard-wraps text to conform to the parameters
    optional func incrementQuoteLevelQuoteString(quoteString: String!) // adds one level of Internet-style quoting to each line of the specified text
    optional func markOptions(options: TextWranglerMarkOptions!) // mark matches of a specified search pattern with a string
    optional func normalizeLineEndings() -> String // convert any CRLF pairs and LF characters remaining after line-break conversion
    optional func processDuplicateLinesDuplicatesOptions(duplicatesOptions: TextWranglerProcessDuplicatesOptions!, outputOptions: TextWranglerProcessDuplicatesOutputOptions!) -> TextWranglerProcessDuplicatesResults // analyze the specified text for duplicate lines
    optional func processLinesContainingMatchingString(matchingString: String!, matchingWithGrep: Bool, caseSensitive: Bool, outputOptions: TextWranglerProcessLinesContainingOutputOptions!) -> TextWranglerProcessLinesContainingResults // search for lines in the specified text containing the indicated string
    optional func removeLineBreaks() // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
    optional func rewrapQuotedTextParagraphFill(paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool, removingQuoteSpaces: Bool, leavingTrailingQuoteSpaces: Bool) // hard-wraps text, taking Internet-style line quoting into account
    optional func shiftDirection(direction: TextWranglerShDr, shiftingBySpaces: Bool) // shift the specified text left or right, optionally by one space
    optional func sortLinesSortingOptions(sortingOptions: TextWranglerSortLinesOptions!, outputOptions: TextWranglerSortLinesOutputOptions!) -> String // order the lines in the specified text
    optional func stripQuotes() // removes all Internet-style quoting from each line of the specified text
    optional func zapGremlinsZapAction(zapAction: TextWranglerZAct, zapCharacter: String!, nulls: Bool, controls: Bool, nonASCIICharacters: Bool) -> String // Removes or replaces unwanted characters from text
    optional func appendToScratchpad() // Appends the specified text to the global scratchpad.
}
extension SBObject: TextWranglerProcessLinesContainingResults {}

// MARK: TextWranglerText_object
@objc public protocol TextWranglerText_object: TextWranglerItem {
    optional var contents: AnyObject { get set } // literal text contents
    optional var length: Int { get } // length of text object (in characters)
    optional var characterOffset: Int { get } // offset of a text object from the beginning of the document (first char has offset 1)
    optional var startLine: Int { get } // line number of the first “hard” line containing this text object (first line has number 1)
    optional var endLine: Int { get } // line number of the last “hard” line containing this text object
    optional var startColumn: Int { get } // character column (1 is first) of the first character of the object
    optional var endColumn: Int { get } // character column (1 is first) of the last character of the object
    optional var startDisplayLine: Int { get } // line number of the first display line containing this text object (first line has number 1)
    optional var endDisplayLine: Int { get } // line number of the last display line containing this text object
}
extension SBObject: TextWranglerText_object {}

// MARK: TextWranglerInsertionPoint
@objc public protocol TextWranglerInsertionPoint: TextWranglerText_object {
}
extension SBObject: TextWranglerInsertionPoint {}

// MARK: TextWranglerCharacter
@objc public protocol TextWranglerCharacter: TextWranglerText_object {
    optional func characters() -> SBElementArray
    optional func words() -> SBElementArray
    optional func lines() -> SBElementArray
    optional func display_lines() -> SBElementArray
    optional func insertionPoints() -> SBElementArray
    optional func texts() -> SBElementArray
}
extension SBObject: TextWranglerCharacter {}

// MARK: TextWranglerWord
@objc public protocol TextWranglerWord: TextWranglerText_object {
    optional func characters() -> SBElementArray
    optional func words() -> SBElementArray
    optional func lines() -> SBElementArray
    optional func display_lines() -> SBElementArray
    optional func insertionPoints() -> SBElementArray
    optional func texts() -> SBElementArray
}
extension SBObject: TextWranglerWord {}

// MARK: TextWranglerLine
@objc public protocol TextWranglerLine: TextWranglerText_object {
    optional func characters() -> SBElementArray
    optional func words() -> SBElementArray
    optional func lines() -> SBElementArray
    optional func display_lines() -> SBElementArray
    optional func insertionPoints() -> SBElementArray
    optional func texts() -> SBElementArray
}
extension SBObject: TextWranglerLine {}

// MARK: TextWranglerDisplay_line
@objc public protocol TextWranglerDisplay_line: TextWranglerText_object {
    optional func characters() -> SBElementArray
    optional func words() -> SBElementArray
    optional func lines() -> SBElementArray
    optional func display_lines() -> SBElementArray
    optional func insertionPoints() -> SBElementArray
    optional func texts() -> SBElementArray
}
extension SBObject: TextWranglerDisplay_line {}

// MARK: TextWranglerText
@objc public protocol TextWranglerText: TextWranglerText_object {
    optional func characters() -> SBElementArray
    optional func words() -> SBElementArray
    optional func lines() -> SBElementArray
    optional func display_lines() -> SBElementArray
    optional func insertionPoints() -> SBElementArray
    optional func texts() -> SBElementArray
    optional func findSearchingIn(searchingIn: AnyObject!, selectingMatch: Bool, options: TextWranglerSearchOptions!, excludingMatches: Bool, filter: TextWranglerFilter!, recursion: Bool, textFilesOnly: Bool, skipShieldedFolders: Bool, searchInvisibleFolders: Bool, searchCompressedFiles: Bool) -> TextWranglerSearchMatch // Searches for text
    optional func replaceUsing(using_: String!, searchingIn: AnyObject!, searchingString: String!, options: TextWranglerSearchOptions!, saving: TextWranglerSavo, recursion: Bool, textFilesOnly: Bool, skipShieldedFolders: Bool) -> AnyObject // performs a Replace All
}
extension SBObject: TextWranglerText {}

