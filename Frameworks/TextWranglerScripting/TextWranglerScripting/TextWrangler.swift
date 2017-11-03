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

// MARK: TextWranglerEnum
@objc public enum TextWranglerEnum : AEKeyword {
    case standard = 0x6c777374 /* 'lwst' */
    case detailed = 0x6c776474 /* 'lwdt' */
}

// MARK: TextWranglerRAsE
@objc public enum TextWranglerRAsE : AEKeyword {
    case auto_detectFile = 0x52644144 /* 'RdAD' */
    case utf8File = 0x52645538 /* 'RdU8' */
    case unicodeFile = 0x52645562 /* 'RdUb' */
    case byteSwappedUnicodeFile = 0x5264556c /* 'RdUl' */
}

// MARK: TextWranglerPstp
@objc public enum TextWranglerPstp : AEKeyword {
    case modificationDate = 0x61736d6f /* 'asmo' */
    case printingDate = 0x50726e44 /* 'PrnD' */
}

// MARK: TextWranglerOpnE
@objc public enum TextWranglerOpnE : AEKeyword {
    case front_window = 0x46727457 /* 'FrtW' */
    case new_window = 0x4e657757 /* 'NewW' */
    case separate_windows = 0x53657057 /* 'SepW' */
}

// MARK: TextWranglerSavo
@objc public enum TextWranglerSavo : AEKeyword {
    case yes = 0x79657320 /* 'yes ' */
    case no = 0x6e6f2020 /* 'no  ' */
    case ask = 0x61736b20 /* 'ask ' */
}

// MARK: TextWranglerKfrm
@objc public enum TextWranglerKfrm : AEKeyword {
    case index = 0x696e6478 /* 'indx' */
    case named = 0x6e616d65 /* 'name' */
    case id = 0x49442020 /* 'ID  ' */
}

// MARK: TextWranglerRevo
@objc public enum TextWranglerRevo : AEKeyword {
    case yes = 0x79657320 /* 'yes ' */
    case ask = 0x61736b20 /* 'ask ' */
}

// MARK: TextWranglerStyl
@objc public enum TextWranglerStyl : AEKeyword {
    case plain = 0x706c616e /* 'plan' */
    case bold = 0x626f6c64 /* 'bold' */
    case italic = 0x6974616c /* 'ital' */
    case outline = 0x6f75746c /* 'outl' */
    case shadow = 0x73686164 /* 'shad' */
    case underline = 0x756e646c /* 'undl' */
    case condensed = 0x636f6e64 /* 'cond' */
    case extended = 0x45787464 /* 'Extd' */
}

// MARK: TextWranglerLinB
@objc public enum TextWranglerLinB : AEKeyword {
    case mac = 0x43522020 /* 'CR  ' */
    case unix = 0x4c462020 /* 'LF  ' */
    case dos = 0x43524c46 /* 'CRLF' */
}

// MARK: TextWranglerWrMd
@objc public enum TextWranglerWrMd : AEKeyword {
    case pageGuide = 0x57725068 /* 'WrPh' */
    case windowWidth = 0x5772576e /* 'WrWn' */
    case characterWidth = 0x57724368 /* 'WrCh' */
}

// MARK: TextWranglerSMod
@objc public enum TextWranglerSMod : AEKeyword {
    case literal = 0x4c74726c /* 'Ltrl' */
    case grep = 0x47726570 /* 'Grep' */
}

// MARK: TextWranglerCact
@objc public enum TextWranglerCact : AEKeyword {
    case raiseCase = 0x52617365 /* 'Rase' */
    case lowerCase = 0x4c6f7772 /* 'Lowr' */
    case capitalizeWords = 0x43617057 /* 'CapW' */
    case capitalizeSentences = 0x43617053 /* 'CapS' */
    case capitalizeLines = 0x4361704c /* 'CapL' */
}

// MARK: TextWranglerIndt
@objc public enum TextWranglerIndt : AEKeyword {
    case none = 0x6e496e64 /* 'nInd' */
    case first_line = 0x46727374 /* 'Frst' */
    case all_lines = 0x416c6c4c /* 'AllL' */
    case reverse_indent = 0x52657649 /* 'RevI' */
    case same_as_first_line = 0x53467273 /* 'SFrs' */
}

// MARK: TextWranglerZAct
@objc public enum TextWranglerZAct : AEKeyword {
    case delete_gremlin = 0x5a64656c /* 'Zdel' */
    case replace_with_code = 0x5a726364 /* 'Zrcd' */
    case replace_with_char = 0x5a726368 /* 'Zrch' */
}

// MARK: TextWranglerCFop
@objc public enum TextWranglerCFop : AEKeyword {
    case file_contains = 0x2b436e74 /* '+Cnt' */
    case file_does_not_contain = 0x2d436e74 /* '-Cnt' */
    case file_matches = 0x2b477270 /* '+Grp' */
    case file_does_not_match = 0x2d477270 /* '-Grp' */
}

// MARK: TextWranglerErsl
@objc public enum TextWranglerErsl : AEKeyword {
    case error_kind = 0x45727220 /* 'Err ' */
    case warning_kind = 0x57726e67 /* 'Wrng' */
    case note_kind = 0x4e6f7465 /* 'Note' */
}

// MARK: TextWranglerShDr
@objc public enum TextWranglerShDr : AEKeyword {
    case left = 0x6c656674 /* 'left' */
    case right = 0x72676874 /* 'rght' */
}

// MARK: TextWranglerFltM
@objc public enum TextWranglerFltM : AEKeyword {
    case and_mode = 0x616e6446 /* 'andF' */
    case or_mode = 0x6f724620 /* 'orF ' */
}

// MARK: TextWranglerFiel
@objc public enum TextWranglerFiel : AEKeyword {
    case file_name = 0x466e616d /* 'Fnam' */
    case file_type = 0x46747970 /* 'Ftyp' */
    case file_creator = 0x46637274 /* 'Fcrt' */
    case creation_date_only = 0x43646174 /* 'Cdat' */
    case creation_date_and_time = 0x43646154 /* 'CdaT' */
    case mod_date_only = 0x4d646174 /* 'Mdat' */
    case mod_date_and_time = 0x4d646154 /* 'MdaT' */
    case file_label = 0x466c6162 /* 'Flab' */
    case file_visible = 0x46766973 /* 'Fvis' */
    case file_locked = 0x466c636b /* 'Flck' */
    case file_language = 0x466c616e /* 'Flan' */
}

// MARK: TextWranglerOper
@objc public enum TextWranglerOper : AEKeyword {
    case op_is_equal = 0x2b457175 /* '+Equ' */
    case op_is_not_equal = 0x2d457175 /* '-Equ' */
    case op_less_than = 0x2b4c7420 /* '+Lt ' */
    case op_less_than_or_equal = 0x2b4c4571 /* '+LEq' */
    case op_greater_than = 0x2b477420 /* '+Gt ' */
    case op_greater_than_or_equal = 0x2b474571 /* '+GEq' */
    case op_starts_with = 0x2b426567 /* '+Beg' */
    case op_does_not_start_with = 0x2d426567 /* '-Beg' */
    case op_ends_with = 0x2b456e64 /* '+End' */
    case op_does_not_end_with = 0x2d456e64 /* '-End' */
    case op_contains = 0x2b436e74 /* '+Cnt' */
    case op_does_not_contain = 0x2d436e74 /* '-Cnt' */
    case op_matches_grep = 0x2b477270 /* '+Grp' */
    case op_does_not_match_grep = 0x2d477270 /* '-Grp' */
    case op_matches_wildcard = 0x2b576c64 /* '+Wld' */
    case op_does_not_match_wildcard = 0x2d576c64 /* '-Wld' */
}

// MARK: TextWranglerMMod
@objc public enum TextWranglerMMod : AEKeyword {
    case matching_all = 0x4d416c6c /* 'MAll' */
    case leaving_one = 0x4c657631 /* 'Lev1' */
}

// MARK: TextWranglerESbM
@objc public enum TextWranglerESbM : AEKeyword {
    case entire_match = 0x456e744c /* 'EntL' */
    case all_subpatterns = 0x41537562 /* 'ASub' */
    case use_subpattern = 0x53756250 /* 'SubP' */
}

// MARK: TextWranglerOMd
@objc public enum TextWranglerOMd : AEKeyword {
    case unixScriptOutputWindow = 0x6d70726c /* 'mprl' */
    case newUntitledWindow = 0x6e77696e /* 'nwin' */
    case scriptLogOutputWindow = 0x6c77696e /* 'lwin' */
}

// MARK: TextWranglerFOM
@objc public enum TextWranglerFOM : AEKeyword {
    case unixScriptOutputWindow = 0x6d70726c /* 'mprl' */
    case newUntitledWindow = 0x6e77696e /* 'nwin' */
}

// MARK: TextWranglerGenericMethods
@objc public protocol TextWranglerGenericMethods {
    @objc optional func openWithProperties(_ withProperties: [AnyHashable : Any]!, openingIn: Any!, stationeryAwareness: Bool, LFTranslation: Bool, readOnly: Bool, readingAs: TextWranglerRAsE, addingToRecentList: Bool) // Opens the specified item(s)
    @objc optional func printWithProperties(_ withProperties: TextWranglerPrintSettings!, printDialog: Bool) // Print the specified object(s)
    @objc optional func closeSaving(_ saving: TextWranglerSavo, savingIn: URL!) // Closes the designated window.
    @objc optional func delete() // Delete an element from an object
    @objc optional func duplicateTo(_ to: SBObject!) -> SBObject // Duplicate object(s)
    @objc optional func exists() -> Bool // Verify if an object exists
    @objc optional func moveTo(_ to: SBObject!) -> SBObject // Move object(s) to a new location
    @objc optional func saveTo(_ to: URL!, savingAsStationery: Bool, addToRecentList: Bool) // Save a window or document.
    @objc optional func activate() // activate the application or a window
    @objc optional func copyAppendingToClipboard(_ appendingToClipboard: Bool) // Copy an object to the clipboard
    @objc optional func extendedCopyAppendingToClipboard(_ appendingToClipboard: Bool) // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
    @objc optional func cutAppendingToClipboard(_ appendingToClipboard: Bool) // Cut an object to the clipboard
    @objc optional func paste() // Paste an object from the clipboard
    @objc optional func pasteColumn() // Paste an text from the clipboard forcing insertion as a rectangular column
    @objc optional func redo() // Reverses the effects of the most recent Undo, if possible.
    @objc optional func revertDiscardingUnsavedChanges(_ discardingUnsavedChanges: TextWranglerRevo) // Restore the object to its last saved state
    @objc optional func select() // Select the specified object
    @objc optional func undo() // Undoes the effects of the last command, if possible.
    @objc optional func exportTo(_ to: URL!) // Export an object
    @objc optional func addLineBreaks() // Inserts a hard line break character at the end of each soft-wrapped line
    @objc optional func addPrefixPrefix(_ prefix: String!) -> String // inserts a string at the beginning of each line in the indicated text
    @objc optional func addSuffixSuffix(_ suffix: String!) -> String // inserts a string at the end of each line in the indicated text
    @objc optional func removePrefixPrefix(_ prefix: String!) -> String // removes a string from the beginning of each line in the indicated text
    @objc optional func removeSuffixSuffix(_ suffix: String!) -> String // removes a string from the end of each line in the indicated text
    @objc optional func addPrefixAndSuffixPrefix(_ prefix: String!, suffix: String!) -> String // simultaneously adds a prefix and suffix to each line in the indicated text
    @objc optional func removePrefixAndSuffixPrefix(_ prefix: String!, suffix: String!) -> String // simultaneously removes a prefix and suffix from each line in the indicated text
    @objc optional func addLineNumbersStartNumber(_ startNumber: Int, increment: Int, addingSpace: Bool, keepingJustified: Bool) -> String // numbers each line in the indicated text
    @objc optional func removeLineNumbersAddingSpace(_ addingSpace: Bool) -> String // removes leading numbering from each line in the indicated text
    @objc optional func changeCaseMaking(_ making: TextWranglerCact) // Changes the case of text
    @objc optional func clearUndoHistoryConfirming(_ confirming: Bool) // Deletes all Undo/Redo history information for this document
    @objc optional func convertToASCIIReplacingTarget(_ replacingTarget: Bool) -> String // Converts 8-bit characters to 7-bit characters
    @objc optional func decrementQuoteLevel() // removes one level of Internet-style quoting from each line of the specified text
    @objc optional func detabTabWidth(_ tabWidth: Int) // Replace tabs with runs of spaces.
    @objc optional func entabTabWidth(_ tabWidth: Int) // Replace runs of spaces with tabs.
    @objc optional func educateQuotesReplacingTarget(_ replacingTarget: Bool) -> String // Convert straight quotes into curly (typographer’s) quotes
    @objc optional func straightenQuotesReplacingTarget(_ replacingTarget: Bool) -> String // Convert curly (typographer’s) quotes into straight quotes
    @objc optional func hardWrapLimit(_ limit: TextWranglerWrMd, paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool) // hard-wraps text to conform to the parameters
    @objc optional func incrementQuoteLevelQuoteString(_ quoteString: String!) // adds one level of Internet-style quoting to each line of the specified text
    @objc optional func markOptions(_ options: TextWranglerMarkOptions!) // mark matches of a specified search pattern with a string
    @objc optional func normalizeLineEndings() -> String // convert any CRLF pairs and LF characters remaining after line-break conversion
    @objc optional func processDuplicateLinesDuplicatesOptions(_ duplicatesOptions: TextWranglerProcessDuplicatesOptions!, outputOptions: TextWranglerProcessDuplicatesOutputOptions!) -> TextWranglerProcessDuplicatesResults // analyze the specified text for duplicate lines
    @objc optional func processLinesContainingMatchingString(_ matchingString: String!, matchingWithGrep: Bool, caseSensitive: Bool, outputOptions: TextWranglerProcessLinesContainingOutputOptions!) -> TextWranglerProcessLinesContainingResults // search for lines in the specified text containing the indicated string
    @objc optional func removeLineBreaks() // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
    @objc optional func rewrapQuotedTextParagraphFill(_ paragraphFill: Bool, width: Int, indentation: TextWranglerIndt, relative: Bool, removingQuoteSpaces: Bool, leavingTrailingQuoteSpaces: Bool) // hard-wraps text, taking Internet-style line quoting into account
    @objc optional func shiftDirection(_ direction: TextWranglerShDr, shiftingBySpaces: Bool) // shift the specified text left or right, optionally by one space
    @objc optional func sortLinesSortingOptions(_ sortingOptions: TextWranglerSortLinesOptions!, outputOptions: TextWranglerSortLinesOutputOptions!) -> String // order the lines in the specified text
    @objc optional func stripQuotes() // removes all Internet-style quoting from each line of the specified text
    @objc optional func zapGremlinsZapAction(_ zapAction: TextWranglerZAct, zapCharacter: String!, nulls: Bool, controls: Bool, nonASCIICharacters: Bool) -> String // Removes or replaces unwanted characters from text
    @objc optional func appendToScratchpad() // Appends the specified text to the global scratchpad.
}

// MARK: TextWranglerPrintSettings
@objc public protocol TextWranglerPrintSettings: SBObjectProtocol, TextWranglerGenericMethods {
    @objc optional var copies: Int { get } // the number of copies of a document to be printed
    @objc optional var collating: Bool { get } // Should printed copies be collated?
    @objc optional var startingPage: Int { get } // the first page of the document to be printed
    @objc optional var endingPage: Int { get } // the last page of the document to be printed
    @objc optional var pagesAcross: Int { get } // number of logical pages laid across a physical page
    @objc optional var pagesDown: Int { get } // number of logical pages laid out down a physical page
    @objc optional var requestedPrintTime: Date { get } // the time at which the desktop printer should print the document...
    @objc optional var errorHandling: TextWranglerEnum { get } // how errors are handled
    @objc optional var printerFeatures: [[Any]] { get } // for printer specific features
    @objc optional var faxNumber: String { get } // for fax number
    @objc optional var targetPrinter: String { get } // for target printer
    @objc optional var printingFont: String { get }
    @objc optional var printingFontSize: Int { get }
    @objc optional var printingFontStyle: String { get }
    @objc optional var printingTabWidth: Int { get }
    @objc optional var usingDocumentFont: Bool { get }
    @objc optional var framingPage: Bool { get }
    @objc optional var pageHeaders: Bool { get }
    @objc optional var lineNumbers: Bool { get }
    @objc optional var gutter: Bool { get }
    @objc optional var fullPath: Bool { get }
    @objc optional var printColorSyntax: Bool { get }
    @objc optional var timeStamp: TextWranglerPstp { get }
}
extension SBObject: TextWranglerPrintSettings {}

// MARK: TextWranglerItem
@objc public protocol TextWranglerItem: SBObjectProtocol, TextWranglerGenericMethods {
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object’s properties
    @objc optional var container: SBObject { get } // object’s container (if any)
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object’s properties
}
extension SBObject: TextWranglerItem {}

// MARK: TextWranglerApplication
@objc public protocol TextWranglerApplication: SBApplicationProtocol {
    @objc optional func windows() -> SBElementArray
    @objc optional func textWindows() -> SBElementArray
    @objc optional func documents() -> SBElementArray
    @objc optional func textDocuments() -> SBElementArray
    @objc optional func palettes() -> SBElementArray
    @objc optional func clipboards() -> SBElementArray
    @objc optional var ID: Int { get } // object’s unique id
    @objc optional var name: String { get } // the name
    @objc optional var selection: SBObject { get } // the selection visible to the user
    @objc optional var frontmost: Bool { get } // Is this the frontmost application?
    @objc optional var version: String { get } // the version number of the application
    @objc optional var buildNumber: Int { get } // the build number of the application
    @objc optional var serialNumber: String { get } // the application’s serial number
    @objc optional var currentClipboard: Any { get } // the clipboard
    @objc optional var currentSearchOptions: TextWranglerSearchOptions { get } // search options used by the most recent search/replace operation
    @objc optional var currentSearchStrings: TextWranglerSearchStringProperties { get } // search strings used by the most recent search/replace operation
    @objc optional var windowList: TextWranglerPalette { get } // the floating window displaying the open windows in the application
    @objc optional var ASCIITable: TextWranglerPalette { get } // the floating window displaying ASCII character and escape sequences
    @objc optional var findWindow: TextWranglerFind_window { get } // the Find window
    @objc optional var findMultipleWindow: TextWranglerMultifile_search_window { get } // the Multi-File Search window
    @objc optional var functionsList: TextWranglerPalette { get } // the floating window displaying functions in the current document
    @objc optional var jumpPointsList: TextWranglerPalette { get } // the floating window displaying the jump points for the current document
    @objc optional var markersList: TextWranglerPalette { get } // the floating window displaying markers in the current document
    @objc optional var OpenFileByNameWindow: TextWranglerOpen_file_by_name_window { get } // the Open File by Name window
    @objc optional var scriptsList: TextWranglerPalette { get } // the floating window displaying available OSA scripts
    @objc optional var UnixFiltersList: TextWranglerPalette { get } // the floating window displaying items in the “Unix Filters” folder (uses “Perl Filters”)
    @objc optional func run() // Sent to an application when it is double-clicked
    @objc optional func quit() // Quit application
    @objc optional func activate() // activate the application or a window
    @objc optional func copyAppendingToClipboard(_ appendingToClipboard: Bool) // Copy an object to the clipboard
    @objc optional func extendedCopyAppendingToClipboard(_ appendingToClipboard: Bool) // Copy an object to the clipboard - supplied as an alternative to AppleScript users since it refuses to compile “copy with append to clipboard”
    @objc optional func cutAppendingToClipboard(_ appendingToClipboard: Bool) // Cut an object to the clipboard
    @objc optional func paste() // Paste an object from the clipboard
    @objc optional func pasteColumn() // Paste an text from the clipboard forcing insertion as a rectangular column
    @objc optional func redo() // Reverses the effects of the most recent Undo, if possible.
    @objc optional func select() // Select the specified object
    @objc optional func undo() // Undoes the effects of the last command, if possible.
    @objc optional func exportTo(_ to: URL!) // Export an object
    @objc optional func applyTextFactory(_ x: URL!, to: Any!, options: TextWranglerSearchOptions!, filter: TextWranglerFilter!, saving: TextWranglerSavo, recursion: Bool, textFilesOnly: Bool, skipShieldedFolders: Bool, searchInvisibleFolders: Bool, searchCompressedFiles: Bool) // Applies the operations in a specified text factory to the designated items
    @objc optional func clearUndoHistoryConfirming(_ confirming: Bool) // Deletes all Undo/Redo history information for this document
    @objc optional func compare(_ x: URL!, against: URL!, options: TextWranglerCompareOptions!, filter: TextWranglerFilter!) -> TextWranglerCompareResults // compares two files or folders
    @objc optional func find(_ x: String!, searchingIn: Any!, selectingMatch: Bool, options: TextWranglerSearchOptions!, excludingMatches: Bool, filter: TextWranglerFilter!, recursion: Bool, textFilesOnly: Bool, skipShieldedFolders: Bool, searchInvisibleFolders: Bool, searchCompressedFiles: Bool) -> TextWranglerSearchMatch // Searches for text
    @objc optional func grepSubstitutionOf(_ of: String!) -> String // computes the Grep replacement string based on the results of the most recent scripted Grep search
    @objc optional func replace(_ x: String!, using using_: String!, searchingIn: Any!, searchingString: String!, options: TextWranglerSearchOptions!, saving: TextWranglerSavo, recursion: Bool, textFilesOnly: Bool, skipShieldedFolders: Bool) -> Int // performs a Replace All
    @objc optional func sleep() // save application state and quit immediately
    @objc optional func runUnixScript(_ x: [Any]!, selectionOnly: Bool, saveBeforeRunning: Bool, useDebugger: Bool, runInTerminal: Bool, chdirToScriptFolder: Bool, outputTo: TextWranglerOMd, clearBeforeWriting: Bool, saveAfterWriting: Bool) // runs the unix script in the front BBEdit window
    @objc optional func runUnixFilter(_ x: URL!, outputSTDERRTo: TextWranglerFOM, clearBeforeWriting: Bool, saveAfterWriting: Bool, replacingSelection: Bool) // runs the specified unix filter on the selection in the frontmost BBEdit window
    @objc optional func setFrontmost(_ frontmost: Bool) // Is this the frontmost application?
    @objc optional func setCurrentClipboard(_ currentClipboard: Any!) // the clipboard
    @objc optional func setCurrentSearchStrings(_ currentSearchStrings: TextWranglerSearchStringProperties!) // search strings used by the most recent search/replace operation
}
extension SBApplication: TextWranglerApplication {}

// MARK: TextWranglerClipboard
@objc public protocol TextWranglerClipboard: SBObjectProtocol, TextWranglerGenericMethods {
    @objc optional var contents: String { get } // contents of the clipboard
    @objc optional var length: Int { get } // length of the clipboard text in characters
    @objc optional var index: Int { get } // the index of this clipboard
    @objc optional var sourceLanguage: String { get } // name of the source language, for syntax coloring and function navigation
    @objc optional func setContents(_ contents: String!) // contents of the clipboard
}
extension SBObject: TextWranglerClipboard {}

// MARK: TextWranglerDocument
@objc public protocol TextWranglerDocument: TextWranglerItem {
    @objc optional var ID: Int { get } // object’s unique id
    @objc optional var modified: Bool { get } // does this document have unsaved changes?
    @objc optional var modifiable: Bool { get } // can this document be modified?
    @objc optional var modificationDate: Date { get } // date and time this document was last modified
    @objc optional var name: String { get } // the title of the window (r/o if on disk is true)
    @objc optional var onDisk: Bool { get } // does this document exist on disk?
    @objc optional var file: URL { get } // the disk file containing the document’s data
    @objc optional var creatorType: NSNumber { get } // the OSType identifying the application that created the item
    @objc optional var window: TextWranglerWindow { get } // this document’s window
    @objc optional func setName(_ name: String!) // the title of the window (r/o if on disk is true)
    @objc optional func setCreatorType(_ creatorType: NSNumber!) // the OSType identifying the application that created the item
}
extension SBObject: TextWranglerDocument {}

// MARK: TextWranglerFile
@objc public protocol TextWranglerFile: TextWranglerItem {
    @objc optional func runUnixFilterOutputSTDERRTo(_ outputSTDERRTo: TextWranglerFOM, clearBeforeWriting: Bool, saveAfterWriting: Bool, replacingSelection: Bool) // runs the specified unix filter on the selection in the frontmost BBEdit window
}
extension SBObject: TextWranglerFile {}

// MARK: TextWranglerFilter
@objc public protocol TextWranglerFilter: SBObjectProtocol, TextWranglerGenericMethods {
    @objc optional var name: String { get } // filter name
    @objc optional var filter_mode: TextWranglerFltM { get } // criteria interpretation mode
    @objc optional var filter_terms: [TextWranglerFilter_term] { get } // filter criteria terms
}
extension SBObject: TextWranglerFilter {}

// MARK: TextWranglerFilter_term
@objc public protocol TextWranglerFilter_term: SBObjectProtocol, TextWranglerGenericMethods {
    @objc optional var field: TextWranglerFiel { get } // criteria match field
    @objc optional func `operator`() -> TextWranglerOper // comparison operator
    @objc optional var operand: Any { get } // comparison operand data
}
extension SBObject: TextWranglerFilter_term {}

// MARK: TextWranglerImageDocument
@objc public protocol TextWranglerImageDocument: TextWranglerDocument {
}
extension SBObject: TextWranglerImageDocument {}

// MARK: TextWranglerShellDocument
@objc public protocol TextWranglerShellDocument: TextWranglerDocument {
    @objc optional var shellPath: String { get } // path to the Unix shell used for executing commands in this worksheet
    @objc optional var workingDirectory: String { get } // path to this worksheet’s current Unix working directory
    @objc optional func setShellPath(_ shellPath: String!) // path to the Unix shell used for executing commands in this worksheet
    @objc optional func setWorkingDirectory(_ workingDirectory: String!) // path to this worksheet’s current Unix working directory
}
extension SBObject: TextWranglerShellDocument {}

// MARK: TextWranglerTextDocument
@objc public protocol TextWranglerTextDocument: TextWranglerDocument {
    @objc optional func texts() -> SBElementArray
    @objc optional var encoding: String { get } // name of the file’s character set encoding
    @objc optional var FTPInfo: TextWranglerFTPInfo { get } // FTP information for this document
    @objc optional var isFTP: Bool { get } // was this document opened from (or saved to) an FTP server?
    @objc optional var lineBreaks: TextWranglerLinB { get } // type of line endings in this document
    @objc optional var sourceLanguage: String { get } // name of the source language, for syntax coloring and function navigation
    @objc optional var stateModified: Bool { get } // has the document’s state (window position, etc) been modified?
    @objc optional var URL: String { get } // if on disk, the URL to this document’s location
    @objc optional var contents: Any { get } // contents of the document (if any)
    @objc optional var text: TextWranglerText { get } // the document’s text object (if any)
    @objc optional func setEncoding(_ encoding: String!) // name of the file’s character set encoding
    @objc optional func setLineBreaks(_ lineBreaks: TextWranglerLinB) // type of line endings in this document
    @objc optional func setSourceLanguage(_ sourceLanguage: String!) // name of the source language, for syntax coloring and function navigation
    @objc optional func setContents(_ contents: Any!) // contents of the document (if any)
    @objc optional func setText(_ text: TextWranglerText!) // the document’s text object (if any)
}
extension SBObject: TextWranglerTextDocument {}

// MARK: TextWranglerWindow
@objc public protocol TextWranglerWindow: TextWranglerItem {
    @objc optional func texts() -> SBElementArray
    @objc optional func documents() -> SBElementArray
    @objc optional var ID: Int { get } // object’s unique id
    @objc optional var document: TextWranglerDocument { get } // the document associated with this window
    @objc optional var bounds: NSRect { get } // the boundary rectangle for the window
    @objc optional var closeable: Bool { get } // Does the window have a close box?
    @objc optional var collapsed: Bool { get } // Is the window collapsed?
    @objc optional var index: Int { get } // the number of the window
    @objc optional var modal: Bool { get } // Is the window modal?
    @objc optional var file: URL { get } // the disk file associated with this window, if any
    @objc optional var modified: Bool { get } // Has the window been modified since the last save?
    @objc optional var name: String { get } // the title of the window (r/o if the window represents a document which has been saved to disk)
    @objc optional var position: NSPoint { get } // upper left coordinates of the window
    @objc optional var resizable: Bool { get } // Is the window resizable?
    @objc optional var selection: SBObject { get } // the selection
    @objc optional var contents: Any { get } // contents of the window (if any)
    @objc optional var text: TextWranglerText { get } // the window's text object (if any)
    @objc optional var titled: Bool { get } // Does the window have a title bar?
    @objc optional var visible: Bool { get } // Is the window visible?
    @objc optional var zoomable: Bool { get } // Is the window zoomable?
    @objc optional var zoomed: Bool { get } // Is the window zoomed?
    @objc optional func setBounds(_ bounds: NSRect) // the boundary rectangle for the window
    @objc optional func setCollapsed(_ collapsed: Bool) // Is the window collapsed?
    @objc optional func setIndex(_ index: Int) // the number of the window
    @objc optional func setName(_ name: String!) // the title of the window (r/o if the window represents a document which has been saved to disk)
    @objc optional func setPosition(_ position: NSPoint) // upper left coordinates of the window
    @objc optional func setSelection(_ selection: SBObject!) // the selection
    @objc optional func setContents(_ contents: Any!) // contents of the window (if any)
    @objc optional func setText(_ text: TextWranglerText!) // the window's text object (if any)
    @objc optional func setZoomed(_ zoomed: Bool) // Is the window zoomed?
}
extension SBObject: TextWranglerWindow {}

// MARK: TextWranglerDifferences_window
@objc public protocol TextWranglerDifferences_window: TextWranglerWindow {
}
extension SBObject: TextWranglerDifferences_window {}

// MARK: TextWranglerDiskBrowserWindow
@objc public protocol TextWranglerDiskBrowserWindow: TextWranglerWindow {
    @objc optional var rootPath: String { get } // path to the root of this disk browser
    @objc optional func setRootPath(_ rootPath: String!) // path to the root of this disk browser
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
    @objc optional var searchString: String { get } // the string entered into the search box
    @objc optional func setSearchString(_ searchString: String!) // the string entered into the search box
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
    @objc optional func textDocuments() -> SBElementArray
    @objc optional var activeDocument: TextWranglerDocument { get } // the current document being displayed/edited
    @objc optional var displayFont: String { get } // font in which text is displayed
    @objc optional var displayFontSize: Int { get } // point size of displayed text
    @objc optional var displayFontStyle: [NSAppleEventDescriptor] { get } // text style(s) of displayed text
    @objc optional var displayMagnification: Double { get } // text display magnification multiplier
    @objc optional var tabWidth: Int { get } // number of spaces per tab
    @objc optional var smartQuotes: Bool { get } // are smart quotes enabled?
    @objc optional var showInvisibles: Bool { get } // are invisible characters displayed?
    @objc optional var expandTabs: Bool { get } // is auto-expansion of tabs enabled?
    @objc optional var liveSearchBarVisible: Bool { get } // is the Live Search bar visible?
    @objc optional var softWrapText: Bool { get } // is automatic text wrapping enabled?
    @objc optional var softWrapMode: TextWranglerWrMd { get } // how line breaks are computed when soft-wrapping
    @objc optional var softWrapWidth: Int { get } // if soft-wrapping to character width, the maximum number of characters per line
    @objc optional var showSpaces: Bool { get } // are spaces displayed (only if “show invisibles” is true)?
    @objc optional var showToolbar: Bool { get } // display the editor toolbar in this window?
    @objc optional var showStatusBar: Bool { get } // display the editor status bar in this window?
    @objc optional var showNavigationBar: Bool { get } // display the navigation bar in this window?
    @objc optional var showPageGuide: Bool { get } // display the page guide in this window?
    @objc optional var showTabStops: Bool { get } // display tab stops in the window's status bar?
    @objc optional var showLineNumbers: Bool { get } // display line numbers next to text in the window?
    @objc optional var showGutter: Bool { get } // display the gutter next to the text in the window?
    @objc optional var sourceLanguage: String { get } // name of the source language, for syntax coloring and function navigation
    @objc optional var colorSyntax: Bool { get } // color language keywords and other recognized structures?
    @objc optional var splitProportion: Int { get } // vertical position of split bar, expressed as a percentage of window height
    @objc optional func setDisplayFont(_ displayFont: String!) // font in which text is displayed
    @objc optional func setDisplayFontSize(_ displayFontSize: Int) // point size of displayed text
    @objc optional func setDisplayFontStyle(_ displayFontStyle: [NSAppleEventDescriptor]!) // text style(s) of displayed text
    @objc optional func setDisplayMagnification(_ displayMagnification: Double) // text display magnification multiplier
    @objc optional func setTabWidth(_ tabWidth: Int) // number of spaces per tab
    @objc optional func setSmartQuotes(_ smartQuotes: Bool) // are smart quotes enabled?
    @objc optional func setShowInvisibles(_ showInvisibles: Bool) // are invisible characters displayed?
    @objc optional func setExpandTabs(_ expandTabs: Bool) // is auto-expansion of tabs enabled?
    @objc optional func setLiveSearchBarVisible(_ liveSearchBarVisible: Bool) // is the Live Search bar visible?
    @objc optional func setSoftWrapText(_ softWrapText: Bool) // is automatic text wrapping enabled?
    @objc optional func setSoftWrapMode(_ softWrapMode: TextWranglerWrMd) // how line breaks are computed when soft-wrapping
    @objc optional func setSoftWrapWidth(_ softWrapWidth: Int) // if soft-wrapping to character width, the maximum number of characters per line
    @objc optional func setShowSpaces(_ showSpaces: Bool) // are spaces displayed (only if “show invisibles” is true)?
    @objc optional func setShowToolbar(_ showToolbar: Bool) // display the editor toolbar in this window?
    @objc optional func setShowStatusBar(_ showStatusBar: Bool) // display the editor status bar in this window?
    @objc optional func setShowNavigationBar(_ showNavigationBar: Bool) // display the navigation bar in this window?
    @objc optional func setShowPageGuide(_ showPageGuide: Bool) // display the page guide in this window?
    @objc optional func setShowTabStops(_ showTabStops: Bool) // display tab stops in the window's status bar?
    @objc optional func setShowLineNumbers(_ showLineNumbers: Bool) // display line numbers next to text in the window?
    @objc optional func setShowGutter(_ showGutter: Bool) // display the gutter next to the text in the window?
    @objc optional func setSourceLanguage(_ sourceLanguage: String!) // name of the source language, for syntax coloring and function navigation
    @objc optional func setColorSyntax(_ colorSyntax: Bool) // color language keywords and other recognized structures?
    @objc optional func setSplitProportion(_ splitProportion: Int) // vertical position of split bar, expressed as a percentage of window height
}
extension SBObject: TextWranglerTextWindow {}

// MARK: TextWranglerScratchpad_window
@objc public protocol TextWranglerScratchpad_window: TextWranglerTextWindow {
}
extension SBObject: TextWranglerScratchpad_window {}

// MARK: TextWranglerProjectWindow
@objc public protocol TextWranglerProjectWindow: TextWranglerTextWindow {
    @objc optional var selectedItems: SBObject { get } // list of items selected in the project list
    @objc optional var filesVisible: Bool { get } // is the file list visible?
    @objc optional func setFilesVisible(_ filesVisible: Bool) // is the file list visible?
}
extension SBObject: TextWranglerProjectWindow {}

// MARK: TextWranglerPerl_reference_window
@objc public protocol TextWranglerPerl_reference_window: TextWranglerTextWindow {
}
extension SBObject: TextWranglerPerl_reference_window {}

// MARK: TextWranglerCompareOptions
@objc public protocol TextWranglerCompareOptions: SBObjectProtocol, TextWranglerGenericMethods {
    @objc optional var ignoreLeadingSpaces: Bool { get } // ignore leading whitespace on lines?
    @objc optional var ignoreTrailingSpaces: Bool { get } // ignore trailing whitespace on lines?
    @objc optional var ignoreExtraSpaces: Bool { get } // ignore whitespace runs in lines?
    @objc optional var ignoreRCSKeywords: Bool { get } // ignore RCS keywords?
    @objc optional var caseSensitive: Bool { get } // honor character case differences when comparing?
    @objc optional var ignoreCurlyQuotes: Bool { get } // ignore curly quotes (“, ”, ‘, ’) when comparing?
    @objc optional var showIdenticalFiles: Bool { get } // list identical files when doing a multi-file compare?
    @objc optional var textFilesOnly: Bool { get } // only compare text files in a multi-file compare?
    @objc optional var flattenFolders: Bool { get } // flatten folder hierarchies when comparing folders?
    @objc optional var skipShieldedFolders: Bool { get } // skip folders whose names are enclosed in (parentheses)?
    @objc optional func setIgnoreLeadingSpaces(_ ignoreLeadingSpaces: Bool) // ignore leading whitespace on lines?
    @objc optional func setIgnoreTrailingSpaces(_ ignoreTrailingSpaces: Bool) // ignore trailing whitespace on lines?
    @objc optional func setIgnoreExtraSpaces(_ ignoreExtraSpaces: Bool) // ignore whitespace runs in lines?
    @objc optional func setIgnoreRCSKeywords(_ ignoreRCSKeywords: Bool) // ignore RCS keywords?
    @objc optional func setCaseSensitive(_ caseSensitive: Bool) // honor character case differences when comparing?
    @objc optional func setIgnoreCurlyQuotes(_ ignoreCurlyQuotes: Bool) // ignore curly quotes (“, ”, ‘, ’) when comparing?
    @objc optional func setShowIdenticalFiles(_ showIdenticalFiles: Bool) // list identical files when doing a multi-file compare?
    @objc optional func setTextFilesOnly(_ textFilesOnly: Bool) // only compare text files in a multi-file compare?
    @objc optional func setFlattenFolders(_ flattenFolders: Bool) // flatten folder hierarchies when comparing folders?
    @objc optional func setSkipShieldedFolders(_ skipShieldedFolders: Bool) // skip folders whose names are enclosed in (parentheses)?
}
extension SBObject: TextWranglerCompareOptions {}

// MARK: TextWranglerCompareResults
@objc public protocol TextWranglerCompareResults: SBObjectProtocol, TextWranglerGenericMethods {
    @objc optional var differencesFound: Bool { get } // were any differences found?
    @objc optional var reasonForNoDifferences: String { get } // reason for there being no differences
    @objc optional var differencesWindow: SBObject { get } // if differences were found, refers to the resulting Differences window
}
extension SBObject: TextWranglerCompareResults {}

// MARK: TextWranglerFTPInfo
@objc public protocol TextWranglerFTPInfo: SBObjectProtocol, TextWranglerGenericMethods {
    @objc optional var file: URL { get } // the disk file in which this file is stored locally
    @objc optional var host: String { get } // name of the FTP server
    @objc optional var port: Int { get } // TCP connection port to the server
    @objc optional var path: String { get } // path to the file on the server
    @objc optional var user: String { get } // login ID for the server
    @objc optional var password: String { get } // login password for the server
    @objc optional var secureTransfer: Bool { get } // was the file transferred securely?
    @objc optional var binaryTransfer: Bool { get } // was the file transferred as raw binary?
    @objc optional var passiveTransfer: Bool { get } // was the file transferred using passive FTP
    @objc optional var URL: String { get } // the URL for this file on the FTP server
}
extension SBObject: TextWranglerFTPInfo {}

// MARK: TextWranglerMarkOptions
@objc public protocol TextWranglerMarkOptions: SBObjectProtocol, TextWranglerGenericMethods {
    @objc optional var searchingFor: String { get } // the search pattern (Grep is implicit)
    @objc optional func using() -> String // the Grep replacement pattern to use for generating the marker name
    @objc optional var clearingExisting: Bool { get } // clear existing markers before setting the new ones?
    @objc optional func setClearingExisting(_ clearingExisting: Bool) // clear existing markers before setting the new ones?
}
extension SBObject: TextWranglerMarkOptions {}

// MARK: TextWranglerResultEntry
@objc public protocol TextWranglerResultEntry: SBObjectProtocol, TextWranglerGenericMethods {
    @objc optional var result_kind: TextWranglerErsl { get } // the type of result entry
    @objc optional var result_document: SBObject { get } // reference to the document, if not on disk
    @objc optional var result_file: URL { get } // reference to the file, if saved to disk
    @objc optional var start_offset: Int { get } // starting offset in the file
    @objc optional var end_offset: Int { get } // ending offset in the file
    @objc optional var result_line: Int { get } // line in the file (may be -1 if line information is not available)
    @objc optional var message: String { get } // explanatory text (line context, if it’s a search result)
    @objc optional var match_string: String { get } // for Grep search results, contains the text matched by the pattern
    @objc optional func setResult_kind(_ result_kind: TextWranglerErsl) // the type of result entry
    @objc optional func setResult_document(_ result_document: SBObject!) // reference to the document, if not on disk
    @objc optional func setResult_file(_ result_file: URL!) // reference to the file, if saved to disk
    @objc optional func setStart_offset(_ start_offset: Int) // starting offset in the file
    @objc optional func setEnd_offset(_ end_offset: Int) // ending offset in the file
    @objc optional func setResult_line(_ result_line: Int) // line in the file (may be -1 if line information is not available)
    @objc optional func setMessage(_ message: String!) // explanatory text (line context, if it’s a search result)
    @objc optional func setMatch_string(_ match_string: String!) // for Grep search results, contains the text matched by the pattern
}
extension SBObject: TextWranglerResultEntry {}

// MARK: TextWranglerSearchOptions
@objc public protocol TextWranglerSearchOptions: SBObjectProtocol, TextWranglerGenericMethods {
    @objc optional var searchMode: TextWranglerSMod { get } // the type of search (literal search if omitted)
    @objc optional var startingAtTop: Bool { get } // start from the top of the document? (false if omitted)
    @objc optional var wrapAround: Bool { get } // should the search wrap from the end of the document? (false if omitted)
    @objc optional var backwards: Bool { get } // should the search proceed backwards? (false if omitted)
    @objc optional var caseSensitive: Bool { get } // should the search be case-sensitive? (false if omitted)
    @objc optional var matchWords: Bool { get } // should the search only find whole words? (false if omitted)
    @objc optional var extendSelection: Bool { get } // should the selection range include the original selection start through the end of the match? (false if omitted)
    @objc optional var returningResults: Bool { get } // if performing a batch or multi-file search, return a list of matches? (false if omitted)
    @objc optional var showingResults: Bool { get } // if performing a batch or multi-file search, open the list of results? (true if omitted)
    @objc optional func setSearchMode(_ searchMode: TextWranglerSMod) // the type of search (literal search if omitted)
    @objc optional func setStartingAtTop(_ startingAtTop: Bool) // start from the top of the document? (false if omitted)
    @objc optional func setWrapAround(_ wrapAround: Bool) // should the search wrap from the end of the document? (false if omitted)
    @objc optional func setBackwards(_ backwards: Bool) // should the search proceed backwards? (false if omitted)
    @objc optional func setCaseSensitive(_ caseSensitive: Bool) // should the search be case-sensitive? (false if omitted)
    @objc optional func setMatchWords(_ matchWords: Bool) // should the search only find whole words? (false if omitted)
    @objc optional func setExtendSelection(_ extendSelection: Bool) // should the selection range include the original selection start through the end of the match? (false if omitted)
    @objc optional func setReturningResults(_ returningResults: Bool) // if performing a batch or multi-file search, return a list of matches? (false if omitted)
    @objc optional func setShowingResults(_ showingResults: Bool) // if performing a batch or multi-file search, open the list of results? (true if omitted)
}
extension SBObject: TextWranglerSearchOptions {}

// MARK: TextWranglerSearchMatch
@objc public protocol TextWranglerSearchMatch: SBObjectProtocol, TextWranglerGenericMethods {
    @objc optional var found: Bool { get } // was a match found?
    @objc optional var foundObject: SBObject { get } // for a single-file search, a reference to the found text
    @objc optional var foundText: String { get } // for a single-file search, the found text
    @objc optional var foundMatches: [TextWranglerResultEntry] { get } // for a multi-file or batch search, a list of the found occurrences
    @objc optional var matchListWindow: SBObject { get } // for a multi-file or batch search, the window listing the matches
}
extension SBObject: TextWranglerSearchMatch {}

// MARK: TextWranglerSearchStringProperties
@objc public protocol TextWranglerSearchStringProperties: SBObjectProtocol, TextWranglerGenericMethods {
    @objc optional var searchString: String { get } // search text
    @objc optional var replacementString: String { get } // replace text
}
extension SBObject: TextWranglerSearchStringProperties {}

// MARK: TextWranglerSortLinesOptions
@objc public protocol TextWranglerSortLinesOptions: SBObjectProtocol, TextWranglerGenericMethods {
    @objc optional var sortingCaseSensitive: Bool { get }
    @objc optional var sortIgnoringLeadingSpace: Bool { get }
    @objc optional var reversingSortOrder: Bool { get }
    @objc optional var sortingNumerically: Bool { get }
    @objc optional var sortUsingStoredPattern: String { get }
    @objc optional var sortPattern: String { get }
    @objc optional var sortSubpatternKey: TextWranglerESbM { get }
    @objc optional var sortSubpattern: String { get }
}
extension SBObject: TextWranglerSortLinesOptions {}

// MARK: TextWranglerSortLinesOutputOptions
@objc public protocol TextWranglerSortLinesOutputOptions: SBObjectProtocol, TextWranglerGenericMethods {
    @objc optional var replacingTarget: Bool { get }
    @objc optional var copyingToClipboard: Bool { get }
    @objc optional var copyingToNewDocument: Bool { get }
}
extension SBObject: TextWranglerSortLinesOutputOptions {}

// MARK: TextWranglerProcessDuplicatesOptions
@objc public protocol TextWranglerProcessDuplicatesOptions: SBObjectProtocol, TextWranglerGenericMethods {
    @objc optional var matchMode: TextWranglerMMod { get }
    @objc optional var matchingCaseSensitive: Bool { get }
    @objc optional var matchIgnoringLeadingSpace: Bool { get }
    @objc optional var matchingNumerically: Bool { get }
    @objc optional var matchUsingStoredPattern: String { get }
    @objc optional var matchPattern: String { get }
    @objc optional var matchSubpatternKey: TextWranglerESbM { get }
    @objc optional var matchSubpattern: String { get }
}
extension SBObject: TextWranglerProcessDuplicatesOptions {}

// MARK: TextWranglerProcessDuplicatesOutputOptions
@objc public protocol TextWranglerProcessDuplicatesOutputOptions: SBObjectProtocol, TextWranglerGenericMethods {
    @objc optional var deletingDuplicates: Bool { get }
    @objc optional var duplicatesToClipboard: Bool { get }
    @objc optional var duplicatesToNewDocument: Bool { get }
    @objc optional var uniqueLinesToClipboard: Bool { get }
    @objc optional var uniqueLinesToNewDocument: Bool { get }
}
extension SBObject: TextWranglerProcessDuplicatesOutputOptions {}

// MARK: TextWranglerProcessDuplicatesResults
@objc public protocol TextWranglerProcessDuplicatesResults: SBObjectProtocol, TextWranglerGenericMethods {
    @objc optional var duplicateLines: String { get } // the duplicate lines in the input
    @objc optional var uniqueLines: String { get } // the unique lines in the input
}
extension SBObject: TextWranglerProcessDuplicatesResults {}

// MARK: TextWranglerProcessLinesContainingOutputOptions
@objc public protocol TextWranglerProcessLinesContainingOutputOptions: SBObjectProtocol, TextWranglerGenericMethods {
    @objc optional var deletingMatchedLines: Bool { get }
    @objc optional var copyingToClipboard: Bool { get }
    @objc optional var copyingToNewDocument: Bool { get }
    @objc optional var reportingResults: Bool { get }
}
extension SBObject: TextWranglerProcessLinesContainingOutputOptions {}

// MARK: TextWranglerProcessLinesContainingResults
@objc public protocol TextWranglerProcessLinesContainingResults: SBObjectProtocol, TextWranglerGenericMethods {
    @objc optional var copiedLines: String { get } // the lines in the input matching the string
    @objc optional var modifiedText: String { get } // the lines in the input not matching the string
}
extension SBObject: TextWranglerProcessLinesContainingResults {}

// MARK: TextWranglerText_object
@objc public protocol TextWranglerText_object: TextWranglerItem {
    @objc optional var contents: Any { get } // literal text contents
    @objc optional var length: Int { get } // length of text object (in characters)
    @objc optional var characterOffset: Int { get } // offset of a text object from the beginning of the document (first char has offset 1)
    @objc optional var startLine: Int { get } // line number of the first “hard” line containing this text object (first line has number 1)
    @objc optional var endLine: Int { get } // line number of the last “hard” line containing this text object
    @objc optional var startColumn: Int { get } // character column (1 is first) of the first character of the object
    @objc optional var endColumn: Int { get } // character column (1 is first) of the last character of the object
    @objc optional var startDisplayLine: Int { get } // line number of the first display line containing this text object (first line has number 1)
    @objc optional var endDisplayLine: Int { get } // line number of the last display line containing this text object
    @objc optional func setContents(_ contents: Any!) // literal text contents
}
extension SBObject: TextWranglerText_object {}

// MARK: TextWranglerInsertionPoint
@objc public protocol TextWranglerInsertionPoint: TextWranglerText_object {
}
extension SBObject: TextWranglerInsertionPoint {}

// MARK: TextWranglerCharacter
@objc public protocol TextWranglerCharacter: TextWranglerText_object {
    @objc optional func characters() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional func lines() -> SBElementArray
    @objc optional func display_lines() -> SBElementArray
    @objc optional func insertionPoints() -> SBElementArray
    @objc optional func texts() -> SBElementArray
}
extension SBObject: TextWranglerCharacter {}

// MARK: TextWranglerWord
@objc public protocol TextWranglerWord: TextWranglerText_object {
    @objc optional func characters() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional func lines() -> SBElementArray
    @objc optional func display_lines() -> SBElementArray
    @objc optional func insertionPoints() -> SBElementArray
    @objc optional func texts() -> SBElementArray
}
extension SBObject: TextWranglerWord {}

// MARK: TextWranglerLine
@objc public protocol TextWranglerLine: TextWranglerText_object {
    @objc optional func characters() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional func lines() -> SBElementArray
    @objc optional func display_lines() -> SBElementArray
    @objc optional func insertionPoints() -> SBElementArray
    @objc optional func texts() -> SBElementArray
}
extension SBObject: TextWranglerLine {}

// MARK: TextWranglerDisplay_line
@objc public protocol TextWranglerDisplay_line: TextWranglerText_object {
    @objc optional func characters() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional func lines() -> SBElementArray
    @objc optional func display_lines() -> SBElementArray
    @objc optional func insertionPoints() -> SBElementArray
    @objc optional func texts() -> SBElementArray
}
extension SBObject: TextWranglerDisplay_line {}

// MARK: TextWranglerText
@objc public protocol TextWranglerText: TextWranglerText_object {
    @objc optional func characters() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional func lines() -> SBElementArray
    @objc optional func display_lines() -> SBElementArray
    @objc optional func insertionPoints() -> SBElementArray
    @objc optional func texts() -> SBElementArray
    @objc optional func findSearchingIn(_ searchingIn: Any!, selectingMatch: Bool, options: TextWranglerSearchOptions!, excludingMatches: Bool, filter: TextWranglerFilter!, recursion: Bool, textFilesOnly: Bool, skipShieldedFolders: Bool, searchInvisibleFolders: Bool, searchCompressedFiles: Bool) -> TextWranglerSearchMatch // Searches for text
    @objc optional func replaceUsing(_ using_: String!, searchingIn: Any!, searchingString: String!, options: TextWranglerSearchOptions!, saving: TextWranglerSavo, recursion: Bool, textFilesOnly: Bool, skipShieldedFolders: Bool) -> Int // performs a Replace All
}
extension SBObject: TextWranglerText {}

