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

// MARK: BBEditEnum
@objc public enum BBEditEnum : AEKeyword {
    case standard = 0x6c777374 /* 'lwst' */
    case detailed = 0x6c776474 /* 'lwdt' */
}

// MARK: BBEditRAsE
@objc public enum BBEditRAsE : AEKeyword {
    case auto_detectFile = 0x52644144 /* 'RdAD' */
    case utf8File = 0x52645538 /* 'RdU8' */
    case unicodeFile = 0x52645562 /* 'RdUb' */
    case byteSwappedUnicodeFile = 0x5264556c /* 'RdUl' */
}

// MARK: BBEditPstp
@objc public enum BBEditPstp : AEKeyword {
    case modificationDate = 0x61736d6f /* 'asmo' */
    case printingDate = 0x50726e44 /* 'PrnD' */
}

// MARK: BBEditOpnE
@objc public enum BBEditOpnE : AEKeyword {
    case front_window = 0x46727457 /* 'FrtW' */
    case new_window = 0x4e657757 /* 'NewW' */
    case separate_windows = 0x53657057 /* 'SepW' */
}

// MARK: BBEditSavo
@objc public enum BBEditSavo : AEKeyword {
    case yes = 0x79657320 /* 'yes ' */
    case no = 0x6e6f2020 /* 'no  ' */
    case ask = 0x61736b20 /* 'ask ' */
}

// MARK: BBEditKfrm
@objc public enum BBEditKfrm : AEKeyword {
    case index = 0x696e6478 /* 'indx' */
    case named = 0x6e616d65 /* 'name' */
    case id = 0x49442020 /* 'ID  ' */
}

// MARK: BBEditRevo
@objc public enum BBEditRevo : AEKeyword {
    case yes = 0x79657320 /* 'yes ' */
    case ask = 0x61736b20 /* 'ask ' */
}

// MARK: BBEditStyl
@objc public enum BBEditStyl : AEKeyword {
    case plain = 0x706c616e /* 'plan' */
    case bold = 0x626f6c64 /* 'bold' */
    case italic = 0x6974616c /* 'ital' */
    case outline = 0x6f75746c /* 'outl' */
    case shadow = 0x73686164 /* 'shad' */
    case underline = 0x756e646c /* 'undl' */
    case condensed = 0x636f6e64 /* 'cond' */
    case extended = 0x45787464 /* 'Extd' */
}

// MARK: BBEditLinB
@objc public enum BBEditLinB : AEKeyword {
    case mac = 0x43522020 /* 'CR  ' */
    case unix = 0x4c462020 /* 'LF  ' */
    case dos = 0x43524c46 /* 'CRLF' */
}

// MARK: BBEditWrMd
@objc public enum BBEditWrMd : AEKeyword {
    case pageGuide = 0x57725068 /* 'WrPh' */
    case windowWidth = 0x5772576e /* 'WrWn' */
    case characterWidth = 0x57724368 /* 'WrCh' */
}

// MARK: BBEditSMod
@objc public enum BBEditSMod : AEKeyword {
    case literal = 0x4c74726c /* 'Ltrl' */
    case grep = 0x47726570 /* 'Grep' */
}

// MARK: BBEditCact
@objc public enum BBEditCact : AEKeyword {
    case raiseCase = 0x52617365 /* 'Rase' */
    case lowerCase = 0x4c6f7772 /* 'Lowr' */
    case capitalizeWords = 0x43617057 /* 'CapW' */
    case capitalizeSentences = 0x43617053 /* 'CapS' */
    case capitalizeLines = 0x4361704c /* 'CapL' */
}

// MARK: BBEditIndt
@objc public enum BBEditIndt : AEKeyword {
    case none = 0x6e496e64 /* 'nInd' */
    case first_line = 0x46727374 /* 'Frst' */
    case all_lines = 0x416c6c4c /* 'AllL' */
    case reverse_indent = 0x52657649 /* 'RevI' */
    case same_as_first_line = 0x53467273 /* 'SFrs' */
}

// MARK: BBEditZAct
@objc public enum BBEditZAct : AEKeyword {
    case delete_gremlin = 0x5a64656c /* 'Zdel' */
    case replace_with_code = 0x5a726364 /* 'Zrcd' */
    case replace_with_char = 0x5a726368 /* 'Zrch' */
    case replace_with_entity = 0x5a656e74 /* 'Zent' */
}

// MARK: BBEditCFop
@objc public enum BBEditCFop : AEKeyword {
    case file_contains = 0x2b436e74 /* '+Cnt' */
    case file_does_not_contain = 0x2d436e74 /* '-Cnt' */
    case file_matches = 0x2b477270 /* '+Grp' */
    case file_does_not_match = 0x2d477270 /* '-Grp' */
}

// MARK: BBEditErsl
@objc public enum BBEditErsl : AEKeyword {
    case error_kind = 0x45727220 /* 'Err ' */
    case warning_kind = 0x57726e67 /* 'Wrng' */
    case note_kind = 0x4e6f7465 /* 'Note' */
}

// MARK: BBEditShDr
@objc public enum BBEditShDr : AEKeyword {
    case left = 0x6c656674 /* 'left' */
    case right = 0x72676874 /* 'rght' */
}

// MARK: BBEditFltM
@objc public enum BBEditFltM : AEKeyword {
    case and_mode = 0x616e6446 /* 'andF' */
    case or_mode = 0x6f724620 /* 'orF ' */
}

// MARK: BBEditFiel
@objc public enum BBEditFiel : AEKeyword {
    case file_name = 0x466e616d /* 'Fnam' */
    // negative integer '-999399059' overflows when stored into unsigned type 'AEKeyword' (aka 'UInt32')
    //case parent_name = -0x3b919e93 /* '\xc4nam' */
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

// MARK: BBEditOper
@objc public enum BBEditOper : AEKeyword {
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

// MARK: BBEditMMod
@objc public enum BBEditMMod : AEKeyword {
    case matching_all = 0x4d416c6c /* 'MAll' */
    case leaving_one = 0x4c657631 /* 'Lev1' */
}

// MARK: BBEditESbM
@objc public enum BBEditESbM : AEKeyword {
    case entire_match = 0x456e744c /* 'EntL' */
    case all_subpatterns = 0x41537562 /* 'ASub' */
    case use_subpattern = 0x53756250 /* 'SubP' */
}

// MARK: BBEditFRMT
@objc public enum BBEditFRMT : AEKeyword {
    case hierarchical = 0x68696572 /* 'hier' */
    case gentleHierarchical = 0x67656e74 /* 'gent' */
    case plain = 0x706c616e /* 'plan' */
    case compact = 0x636f6d70 /* 'comp' */
    case gentleCompact = 0x67636d70 /* 'gcmp' */
    case source_format_profile = 0x7366706d /* 'sfpm' */
    case documentSkeleton = 0x736b656c /* 'skel' */
    case noReorganization = 0x6e6f726d /* 'norm' */
}

// MARK: BBEditPRVW
@objc public enum BBEditPRVW : AEKeyword {
    case useTemporaryFile = 0x74656d70 /* 'temp' */
    case autoSave = 0x6175746f /* 'auto' */
    case confirmSave = 0x61736b3f /* 'ask?' */
}

// MARK: BBEditENTK
@objc public enum BBEditENTK : AEKeyword {
    case errorKind = 0x45727245 /* 'ErrE' */
    case warningKind = 0x57617245 /* 'WarE' */
    case noteKind = 0x4e6f7445 /* 'NotE' */
}

// MARK: BBEditEAtr
@objc public enum BBEditEAtr : AEKeyword {
    case no_value = 0x456d4174 /* 'EmAt' */
}

// MARK: BBEditEEcM
@objc public enum BBEditEEcM : AEKeyword {
    case entityNameValue = 0x454e6156 /* 'ENaV' */
    case entityDecimalValue = 0x45446556 /* 'EDeV' */
    case entityHexValue = 0x45487856 /* 'EHxV' */
}

// MARK: BBEditGenericMethods
@objc public protocol BBEditGenericMethods {
    @objc optional func openWithProperties(_ withProperties: [AnyHashable : Any]!, openingIn: Any!, stationeryAwareness: Bool, LFTranslation: Bool, readOnly: Bool, readingAs: BBEditRAsE, addingToRecentList: Bool) // Opens the specified item(s)
    @objc optional func printWithProperties(_ withProperties: BBEditPrintSettings!, printDialog: Bool) // Print the specified object(s)
    @objc optional func closeSaving(_ saving: BBEditSavo, savingIn: URL!) // Closes the designated window.
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
    @objc optional func revertDiscardingUnsavedChanges(_ discardingUnsavedChanges: BBEditRevo) // Restore the object to its last saved state
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
    @objc optional func changeCaseMaking(_ making: BBEditCact) // Changes the case of text
    @objc optional func clearUndoHistoryConfirming(_ confirming: Bool) // Deletes all Undo/Redo history information for this document
    @objc optional func convertToASCIIReplacingTarget(_ replacingTarget: Bool) -> String // Converts 8-bit characters to 7-bit characters
    @objc optional func decrementQuoteLevel() // removes one level of Internet-style quoting from each line of the specified text
    @objc optional func detabTabWidth(_ tabWidth: Int) // Replace tabs with runs of spaces.
    @objc optional func entabTabWidth(_ tabWidth: Int) // Replace runs of spaces with tabs.
    @objc optional func educateQuotesReplacingTarget(_ replacingTarget: Bool) -> String // Convert straight quotes into curly (typographer’s) quotes
    @objc optional func straightenQuotesReplacingTarget(_ replacingTarget: Bool) -> String // Convert curly (typographer’s) quotes into straight quotes
    @objc optional func hardWrapLimit(_ limit: BBEditWrMd, paragraphFill: Bool, width: Int, indentation: BBEditIndt, relative: Bool) // hard-wraps text to conform to the parameters
    @objc optional func incrementQuoteLevelQuoteString(_ quoteString: String!) // adds one level of Internet-style quoting to each line of the specified text
    @objc optional func markOptions(_ options: BBEditMarkOptions!) // mark matches of a specified search pattern with a string
    @objc optional func normalizeLineEndings() -> String // convert any CRLF pairs and LF characters remaining after line-break conversion
    @objc optional func processDuplicateLinesDuplicatesOptions(_ duplicatesOptions: BBEditProcessDuplicatesOptions!, outputOptions: BBEditProcessDuplicatesOutputOptions!) -> BBEditProcessDuplicatesResults // analyze the specified text for duplicate lines
    @objc optional func processLinesContainingMatchingString(_ matchingString: String!, matchingWithGrep: Bool, caseSensitive: Bool, outputOptions: BBEditProcessLinesContainingOutputOptions!) -> BBEditProcessLinesContainingResults // search for lines in the specified text containing the indicated string
    @objc optional func removeLineBreaks() // Removes hard line-break characters and line-leading white space from the specified text, making it suitable for soft-wrapping.
    @objc optional func rewrapQuotedTextParagraphFill(_ paragraphFill: Bool, width: Int, indentation: BBEditIndt, relative: Bool, removingQuoteSpaces: Bool, leavingTrailingQuoteSpaces: Bool) // hard-wraps text, taking Internet-style line quoting into account
    @objc optional func shiftDirection(_ direction: BBEditShDr, shiftingBySpaces: Bool) // shift the specified text left or right, optionally by one space
    @objc optional func sortLinesSortingOptions(_ sortingOptions: BBEditSortLinesOptions!, outputOptions: BBEditSortLinesOutputOptions!) -> String // order the lines in the specified text
    @objc optional func stripQuotes() // removes all Internet-style quoting from each line of the specified text
    @objc optional func zapGremlinsZapAction(_ zapAction: BBEditZAct, zapCharacter: String!, nulls: Bool, controls: Bool, nonASCIICharacters: Bool, useASCIIEquivalents: Bool, useNamedEntities: Bool) -> String // Removes or replaces unwanted characters from text
    @objc optional func appendToScratchpad() // Appends the specified text to the global scratchpad.
}

// MARK: BBEditPrintSettings
@objc public protocol BBEditPrintSettings: SBObjectProtocol, BBEditGenericMethods {
    @objc optional var copies: Int { get } // the number of copies of a document to be printed
    @objc optional var collating: Bool { get } // Should printed copies be collated?
    @objc optional var startingPage: Int { get } // the first page of the document to be printed
    @objc optional var endingPage: Int { get } // the last page of the document to be printed
    @objc optional var pagesAcross: Int { get } // number of logical pages laid across a physical page
    @objc optional var pagesDown: Int { get } // number of logical pages laid out down a physical page
    @objc optional var requestedPrintTime: Date { get } // the time at which the desktop printer should print the document...
    @objc optional var errorHandling: BBEditEnum { get } // how errors are handled
    @objc optional var printerFeatures: [[Any]] { get } // for printer specific features
    @objc optional var faxNumber: String { get } // for fax number
    @objc optional var targetPrinter: String { get } // for target printer
    @objc optional var usingDocumentFont: Bool { get }
    @objc optional var framingPage: Bool { get }
    @objc optional var pageHeaders: Bool { get }
    @objc optional var lineNumbers: Bool { get }
    @objc optional var gutter: Bool { get }
    @objc optional var fullPath: Bool { get }
    @objc optional var printColorSyntax: Bool { get }
    @objc optional var timeStamp: BBEditPstp { get }
}
extension SBObject: BBEditPrintSettings {}

// MARK: BBEditItem
@objc public protocol BBEditItem: SBObjectProtocol, BBEditGenericMethods {
    @objc optional var properties: [AnyHashable : Any] { get } // all of this object’s properties
    @objc optional var container: SBObject { get } // object’s container (if any)
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // all of this object’s properties
}
extension SBObject: BBEditItem {}

// MARK: BBEditApplication
@objc public protocol BBEditApplication: SBApplicationProtocol {
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
    @objc optional var currentSearchOptions: BBEditSearchOptions { get } // search options used by the most recent search/replace operation
    @objc optional var currentSearchStrings: BBEditSearchStringProperties { get } // search strings used by the most recent search/replace operation
    @objc optional var scratchpadDocument: BBEditTextDocument { get } // the “Scratchpad” document
    @objc optional var UnixWorksheetWindow: BBEditShellDocument { get } // the “Unix Worksheet” document
    @objc optional var clippingList: BBEditPalette { get } // the floating window displaying available clippings
    @objc optional var windowList: BBEditPalette { get } // the floating window displaying the open windows in the application
    @objc optional var characterInspector: BBEditPalette { get } // the floating window displaying ASCII and Unicode character and escape sequences
    @objc optional var findWindow: BBEditFind_window { get } // the Find window
    @objc optional var findMultipleWindow: BBEditMultifile_search_window { get } // the Multi-File Search window
    @objc optional var functionsList: BBEditPalette { get } // the floating window displaying functions in the current document
    @objc optional var jumpPointsList: BBEditPalette { get } // the floating window displaying the jump points for the current document
    @objc optional var markersList: BBEditPalette { get } // the floating window displaying markers in the current document
    @objc optional var OpenFileByNameWindow: BBEditOpen_file_by_name_window { get } // the Open File by Name window
    @objc optional var scriptsList: BBEditPalette { get } // the floating window displaying available OSA scripts
    @objc optional var UnixFiltersList: BBEditPalette { get } // the floating window displaying items in the “Unix Filters” folder (uses “Perl Filters”)
    @objc optional var HTMLToolsPalette: BBEditPalette { get } // the main HTML tools palette
    @objc optional var FontElementsPalette: BBEditPalette { get } // the Font Style Elements palette
    @objc optional var CSSToolsPalette: BBEditPalette { get } // the CSS tools palette
    @objc optional var HTMLUtilitiesPalette: BBEditPalette { get } // the HTML utilities palette
    @objc optional var HTMLEntitiesList: BBEditPalette { get } // the list of HTML entities
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
    @objc optional func applyTextFactory(_ x: URL!, to: Any!, options: BBEditSearchOptions!, filter: BBEditFilter!, saving: BBEditSavo, recursion: Bool, textFilesOnly: Bool, skipShieldedFolders: Bool, searchInvisibleFolders: Bool, searchCompressedFiles: Bool, searchGitIgnoredFiles: Bool) // Applies the operations in a specified text factory to the designated items
    @objc optional func clearUndoHistoryConfirming(_ confirming: Bool) // Deletes all Undo/Redo history information for this document
    @objc optional func compare(_ x: URL!, against: URL!, options: BBEditCompareOptions!, filter: BBEditFilter!) -> BBEditCompareResults // compares two files or folders
    @objc optional func find(_ x: String!, searchingIn: Any!, selectingMatch: Bool, options: BBEditSearchOptions!, excludingMatches: Bool, filter: BBEditFilter!, recursion: Bool, textFilesOnly: Bool, skipShieldedFolders: Bool, searchInvisibleFolders: Bool, searchCompressedFiles: Bool, searchGitIgnoredFiles: Bool) -> BBEditSearchMatch // Searches for text
    @objc optional func grepSubstitutionOf(_ of: String!) -> String // computes the Grep replacement string based on the results of the most recent scripted Grep search
    @objc optional func insertClipping(_ x: URL!, inserting: URL!, into: SBObject!) // inserts the specified clipping
    @objc optional func replace(_ x: String!, using using_: String!, searchingIn: Any!, searchingString: String!, options: BBEditSearchOptions!, filter: BBEditFilter!, saving: BBEditSavo, recursion: Bool, textFilesOnly: Bool, skipShieldedFolders: Bool, searchInvisibleFolders: Bool, searchCompressedFiles: Bool, searchGitIgnoredFiles: Bool) -> Int // performs a Replace All
    @objc optional func sleep() // save application state and quit immediately
    @objc optional func balanceTags() -> Bool // balance html tags in the frontmost window
    @objc optional func checkLinks(_ x: URL!, showResults: Bool, skipShielded: Bool, nested: Bool) -> BBEditResultEntry // checks the validity of all links in the file/folder specified
    @objc optional func checkSyntax(_ x: URL!, showResults: Bool, skipShielded: Bool, nested: Bool) -> BBEditResultEntry // checks the html syntax of the file/folder specified
    @objc optional func findTag(_ x: String!, start_offset: Int, isCloseTag: Bool) -> BBEditTagResult // looks for the html tag with the given name, starting at offset in the front document
    @objc optional func formatMode(_ mode: BBEditFRMT, selectionOnly: Bool, normalizingTagCase: Bool, normalizingAttributeQuotes: Bool, encodeEntitiesInAttributes: Bool) // formats the html in the frontmost window
    @objc optional func generateTagText(_ x: [AnyHashable : Any]!) -> String // generates the tag text for the given tag info record
    @objc optional func getHtmlPreferences() -> BBEditHTMLPrefs // gets the current html preferences
    @objc optional func insideOpenTag(_ x: String!, startRange: Int, endRange: Int) -> BBEditTagResult // looks to see if the given range is contained within an open html tag with the given name
    @objc optional func insideTagPair(_ x: String!, startRange: Int, endRange: Int) -> BBEditTagPairResult // looks to see if the given range is contained within an html tag pair with the given name
    @objc optional func insideTagStartRange(_ startRange: Int, endRange: Int) -> BBEditTagResult // looks to see if the given range is contained within an html tag
    @objc optional func makeTagsLowerCase() // makes the tags in the frontmost window lowercase
    @objc optional func makeTagsUpperCase() // makes the tags in the frontmost window uppercase
    @objc optional func normalizeTagCase() // changes the tag case in the front most window to reflect the preference setting
    @objc optional func optimize() // optimizes the html in the frontmost window
    @objc optional func previewAsText() // preview the frontmost window as text in BBEdit
    @objc optional func previewInBrowser() // preview the frontmost window in the preferred web browser
    @objc optional func translateHtmlToTextEntityConversion(_ entityConversion: Bool, tagRemoval: Bool, paragraphConversion: Bool, createNewDocument: Bool, selectionOnly: Bool) // converts the HTML in the frontmost window into text
    @objc optional func translateTextToHtmlEntityConversion(_ entityConversion: Bool, entityEncodingMethod: BBEditEEcM, ignoreAngleBrackets: Bool, encodeAllUnicodeCharacters: Bool, paragraphConversion: Bool, createNewDocument: Bool, selectionOnly: Bool) // converts the text in the frontmost window into HTML
    @objc optional func update(_ x: URL!, skipShielded: Bool, nested: Bool, showResults: Bool) // updates the file/folder specified
    @objc optional func updateImages(_ x: URL!, skipShielded: Bool, nested: Bool, showResults: Bool) // updates the image dimensions in the file/folder specified
    @objc optional func setFrontmost(_ frontmost: Bool) // Is this the frontmost application?
    @objc optional func setCurrentClipboard(_ currentClipboard: Any!) // the clipboard
    @objc optional func setCurrentSearchStrings(_ currentSearchStrings: BBEditSearchStringProperties!) // search strings used by the most recent search/replace operation
    @objc optional func setScratchpadDocument(_ scratchpadDocument: BBEditTextDocument!) // the “Scratchpad” document
    @objc optional func setUnixWorksheetWindow(_ UnixWorksheetWindow: BBEditShellDocument!) // the “Unix Worksheet” document
}
extension SBApplication: BBEditApplication {}

// MARK: BBEditClipboard
@objc public protocol BBEditClipboard: SBObjectProtocol, BBEditGenericMethods {
    @objc optional var contents: String { get } // contents of the clipboard
    @objc optional var length: Int { get } // length of the clipboard text in characters
    @objc optional var index: Int { get } // the index of this clipboard
    @objc optional var sourceLanguage: String { get } // name of the source language, for syntax coloring and function navigation
    @objc optional func setContents(_ contents: String!) // contents of the clipboard
}
extension SBObject: BBEditClipboard {}

// MARK: BBEditDocument
@objc public protocol BBEditDocument: BBEditItem {
    @objc optional var ID: Int { get } // object’s unique id
    @objc optional var modified: Bool { get } // does this document have unsaved changes?
    @objc optional var modifiable: Bool { get } // can this document be modified?
    @objc optional var modificationDate: Date { get } // date and time this document was last modified
    @objc optional var name: String { get } // the title of the window (r/o if on disk is true)
    @objc optional var onDisk: Bool { get } // does this document exist on disk?
    @objc optional var file: URL { get } // the disk file containing the document’s data
    @objc optional var creatorType: NSNumber { get } // the OSType identifying the application that created the item
    @objc optional var window: BBEditWindow { get } // this document’s window
    @objc optional func setName(_ name: String!) // the title of the window (r/o if on disk is true)
    @objc optional func setCreatorType(_ creatorType: NSNumber!) // the OSType identifying the application that created the item
}
extension SBObject: BBEditDocument {}

// MARK: BBEditFactoryDocument
@objc public protocol BBEditFactoryDocument: BBEditDocument {
}
extension SBObject: BBEditFactoryDocument {}

// MARK: BBEditFile
@objc public protocol BBEditFile: BBEditItem {
}
extension SBObject: BBEditFile {}

// MARK: BBEditFilter
@objc public protocol BBEditFilter: SBObjectProtocol, BBEditGenericMethods {
    @objc optional var name: String { get } // filter name
    @objc optional var filter_mode: BBEditFltM { get } // criteria interpretation mode
    @objc optional var filter_terms: [BBEditFilter_term] { get } // filter criteria terms
}
extension SBObject: BBEditFilter {}

// MARK: BBEditFilter_term
@objc public protocol BBEditFilter_term: SBObjectProtocol, BBEditGenericMethods {
    @objc optional var field: BBEditFiel { get } // criteria match field
    @objc optional func `operator`() -> BBEditOper // comparison operator
    @objc optional var operand: Any { get } // comparison operand data
}
extension SBObject: BBEditFilter_term {}

// MARK: BBEditProjectItem
@objc public protocol BBEditProjectItem: BBEditItem {
    @objc optional func projectItems() -> SBElementArray
    @objc optional var name: String { get } // the name
    @objc optional var file: URL { get } // if the item refers to a file on disk: the file
    @objc optional var url: String { get } // if the item refers to a remote URL: the url to the remote resource
    @objc optional var expand: Bool { get } // is this item expanded?
    @objc optional func setFile(_ file: URL!) // if the item refers to a file on disk: the file
    @objc optional func setUrl(_ url: String!) // if the item refers to a remote URL: the url to the remote resource
}
extension SBObject: BBEditProjectItem {}

// MARK: BBEditProjectCollection
@objc public protocol BBEditProjectCollection: BBEditProjectItem {
    @objc optional func projectItems() -> SBElementArray
}
extension SBObject: BBEditProjectCollection {}

// MARK: BBEditProjectDocument
@objc public protocol BBEditProjectDocument: BBEditDocument {
    @objc optional func projectItems() -> SBElementArray
    @objc optional func projectCollections() -> SBElementArray
    @objc optional var showInvisibleFiles: Bool { get } // are invisible files displayed?
    @objc optional var textFilesOnly: Bool { get } // only show text files?
    @objc optional func setShowInvisibleFiles(_ showInvisibleFiles: Bool) // are invisible files displayed?
    @objc optional func setTextFilesOnly(_ textFilesOnly: Bool) // only show text files?
}
extension SBObject: BBEditProjectDocument {}

// MARK: BBEditImageDocument
@objc public protocol BBEditImageDocument: BBEditDocument {
}
extension SBObject: BBEditImageDocument {}

// MARK: BBEditShellDocument
@objc public protocol BBEditShellDocument: BBEditDocument {
    @objc optional var shellPath: String { get } // path to the Unix shell used for executing commands in this worksheet
    @objc optional var workingDirectory: String { get } // path to this worksheet’s current Unix working directory
    @objc optional func setShellPath(_ shellPath: String!) // path to the Unix shell used for executing commands in this worksheet
    @objc optional func setWorkingDirectory(_ workingDirectory: String!) // path to this worksheet’s current Unix working directory
}
extension SBObject: BBEditShellDocument {}

// MARK: BBEditTextDocument
@objc public protocol BBEditTextDocument: BBEditDocument {
    @objc optional func texts() -> SBElementArray
    @objc optional var encoding: String { get } // name of the file’s character set encoding
    @objc optional var FTPInfo: BBEditFTPInfo { get } // FTP information for this document
    @objc optional var isFTP: Bool { get } // was this document opened from (or saved to) an FTP server?
    @objc optional var lineBreaks: BBEditLinB { get } // type of line endings in this document
    @objc optional var sourceLanguage: String { get } // name of the source language, for syntax coloring and function navigation
    @objc optional var stateModified: Bool { get } // has the document’s state (window position, etc) been modified?
    @objc optional var URL: String { get } // if on disk, the URL to this document’s location
    @objc optional var contents: Any { get } // contents of the document (if any)
    @objc optional var text: BBEditText { get } // the document’s text object (if any)
    @objc optional func setEncoding(_ encoding: String!) // name of the file’s character set encoding
    @objc optional func setLineBreaks(_ lineBreaks: BBEditLinB) // type of line endings in this document
    @objc optional func setSourceLanguage(_ sourceLanguage: String!) // name of the source language, for syntax coloring and function navigation
    @objc optional func setContents(_ contents: Any!) // contents of the document (if any)
    @objc optional func setText(_ text: BBEditText!) // the document’s text object (if any)
}
extension SBObject: BBEditTextDocument {}

// MARK: BBEditWindow
@objc public protocol BBEditWindow: BBEditItem {
    @objc optional func texts() -> SBElementArray
    @objc optional func documents() -> SBElementArray
    @objc optional var ID: Int { get } // object’s unique id
    @objc optional var document: BBEditDocument { get } // the document associated with this window
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
    @objc optional var text: BBEditText { get } // the window's text object (if any)
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
    @objc optional func setText(_ text: BBEditText!) // the window's text object (if any)
    @objc optional func setZoomed(_ zoomed: Bool) // Is the window zoomed?
}
extension SBObject: BBEditWindow {}

// MARK: BBEditDifferencesWindow
@objc public protocol BBEditDifferencesWindow: BBEditWindow {
    @objc optional var widescreen: Bool { get } // use the ‘widescreen’ layout in this window?
    @objc optional var syncScrolling: Bool { get } // synchronize scrolling between the two text panes?
    @objc optional var compareOptions: BBEditCompareOptions { get } // single-file comparison options
    @objc optional func setWidescreen(_ widescreen: Bool) // use the ‘widescreen’ layout in this window?
    @objc optional func setSyncScrolling(_ syncScrolling: Bool) // synchronize scrolling between the two text panes?
    @objc optional func setCompareOptions(_ compareOptions: BBEditCompareOptions!) // single-file comparison options
}
extension SBObject: BBEditDifferencesWindow {}

// MARK: BBEditDiskBrowserWindow
@objc public protocol BBEditDiskBrowserWindow: BBEditWindow {
    @objc optional var rootPath: String { get } // path to the root of this disk browser
    @objc optional func setRootPath(_ rootPath: String!) // path to the root of this disk browser
}
extension SBObject: BBEditDiskBrowserWindow {}

// MARK: BBEditFactoryWindow
@objc public protocol BBEditFactoryWindow: BBEditWindow {
}
extension SBObject: BBEditFactoryWindow {}

// MARK: BBEditFind_window
@objc public protocol BBEditFind_window: BBEditWindow {
}
extension SBObject: BBEditFind_window {}

// MARK: BBEditMultifile_search_window
@objc public protocol BBEditMultifile_search_window: BBEditWindow {
}
extension SBObject: BBEditMultifile_search_window {}

// MARK: BBEditFTPBrowserWindow
@objc public protocol BBEditFTPBrowserWindow: BBEditWindow {
}
extension SBObject: BBEditFTPBrowserWindow {}

// MARK: BBEditOpen_file_by_name_window
@objc public protocol BBEditOpen_file_by_name_window: BBEditWindow {
    @objc optional var searchString: String { get } // the string entered into the search box
    @objc optional func setSearchString(_ searchString: String!) // the string entered into the search box
}
extension SBObject: BBEditOpen_file_by_name_window {}

// MARK: BBEditPalette
@objc public protocol BBEditPalette: BBEditWindow {
}
extension SBObject: BBEditPalette {}

// MARK: BBEditPlugin_info_window
@objc public protocol BBEditPlugin_info_window: BBEditWindow {
}
extension SBObject: BBEditPlugin_info_window {}

// MARK: BBEditPreferences_window
@objc public protocol BBEditPreferences_window: BBEditWindow {
}
extension SBObject: BBEditPreferences_window {}

// MARK: BBEditImageWindow
@objc public protocol BBEditImageWindow: BBEditWindow {
}
extension SBObject: BBEditImageWindow {}

// MARK: BBEditResultsBrowser
@objc public protocol BBEditResultsBrowser: BBEditWindow {
}
extension SBObject: BBEditResultsBrowser {}

// MARK: BBEditSearchResultsBrowser
@objc public protocol BBEditSearchResultsBrowser: BBEditResultsBrowser {
}
extension SBObject: BBEditSearchResultsBrowser {}

// MARK: BBEditTextWindow
@objc public protocol BBEditTextWindow: BBEditWindow {
    @objc optional func textDocuments() -> SBElementArray
    @objc optional var activeDocument: BBEditDocument { get } // the current document being displayed/edited
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
    @objc optional var softWrapMode: BBEditWrMd { get } // how line breaks are computed when soft-wrapping
    @objc optional var softWrapWidth: Int { get } // if soft-wrapping to character width, the maximum number of characters per line
    @objc optional var showSpaces: Bool { get } // are spaces displayed (only if “show invisibles” is true)?
    @objc optional var showPathBar: Bool { get } // display the editor path bar in this window?
    @objc optional var showStatusBar: Bool { get } // display the editor status bar in this window?
    @objc optional var showNavigationBar: Bool { get } // display the navigation bar in this window?
    @objc optional var showPageGuide: Bool { get } // display the page guide in this window?
    @objc optional var showTabStops: Bool { get } // display tab stops in the window's status bar?
    @objc optional var showLineNumbers: Bool { get } // display line numbers next to text in the window?
    @objc optional var showGutter: Bool { get } // display the gutter next to the text in the window?
    @objc optional var sourceLanguage: String { get } // name of the source language, for syntax coloring and function navigation
    @objc optional var colorSyntax: Bool { get } // color language keywords and other recognized structures? *** this setting is obsolete and will always be 'true' ***
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
    @objc optional func setSoftWrapMode(_ softWrapMode: BBEditWrMd) // how line breaks are computed when soft-wrapping
    @objc optional func setSoftWrapWidth(_ softWrapWidth: Int) // if soft-wrapping to character width, the maximum number of characters per line
    @objc optional func setShowSpaces(_ showSpaces: Bool) // are spaces displayed (only if “show invisibles” is true)?
    @objc optional func setShowPathBar(_ showPathBar: Bool) // display the editor path bar in this window?
    @objc optional func setShowStatusBar(_ showStatusBar: Bool) // display the editor status bar in this window?
    @objc optional func setShowNavigationBar(_ showNavigationBar: Bool) // display the navigation bar in this window?
    @objc optional func setShowPageGuide(_ showPageGuide: Bool) // display the page guide in this window?
    @objc optional func setShowTabStops(_ showTabStops: Bool) // display tab stops in the window's status bar?
    @objc optional func setShowLineNumbers(_ showLineNumbers: Bool) // display line numbers next to text in the window?
    @objc optional func setShowGutter(_ showGutter: Bool) // display the gutter next to the text in the window?
    @objc optional func setSourceLanguage(_ sourceLanguage: String!) // name of the source language, for syntax coloring and function navigation
    @objc optional func setSplitProportion(_ splitProportion: Int) // vertical position of split bar, expressed as a percentage of window height
}
extension SBObject: BBEditTextWindow {}

// MARK: BBEditScratchpadWindow
@objc public protocol BBEditScratchpadWindow: BBEditTextWindow {
}
extension SBObject: BBEditScratchpadWindow {}

// MARK: BBEditProjectWindow
@objc public protocol BBEditProjectWindow: BBEditTextWindow {
    @objc optional var selectedItems: SBObject { get } // list of items selected in the project list
    @objc optional var filesVisible: Bool { get } // is the file list visible?
    @objc optional func setFilesVisible(_ filesVisible: Bool) // is the file list visible?
}
extension SBObject: BBEditProjectWindow {}

// MARK: BBEditPerl_reference_window
@objc public protocol BBEditPerl_reference_window: BBEditTextWindow {
}
extension SBObject: BBEditPerl_reference_window {}

// MARK: BBEditSource_control_form_window
@objc public protocol BBEditSource_control_form_window: BBEditTextWindow {
}
extension SBObject: BBEditSource_control_form_window {}

// MARK: BBEditWeb_preview_window
@objc public protocol BBEditWeb_preview_window: BBEditWindow {
}
extension SBObject: BBEditWeb_preview_window {}

// MARK: BBEditCompareOptions
@objc public protocol BBEditCompareOptions: SBObjectProtocol, BBEditGenericMethods {
    @objc optional var ignoreAllSpaces: Bool { get } // ignore all spaces? (overrides all other space-related options)
    @objc optional var ignoreLeadingSpaces: Bool { get } // ignore leading whitespace on lines?
    @objc optional var ignoreTrailingSpaces: Bool { get } // ignore trailing whitespace on lines?
    @objc optional var ignoreExtraSpaces: Bool { get } // ignore whitespace runs in lines?
    @objc optional var ignoreRCSKeywords: Bool { get } // ignore RCS keywords?
    @objc optional var ignoreBlankLines: Bool { get } // ignore blank lines?
    @objc optional var caseSensitive: Bool { get } // honor character case differences when comparing?
    @objc optional var ignoreCurlyQuotes: Bool { get } // ignore curly quotes (“, ”, ‘, ’) when comparing?
    @objc optional var showIdenticalFiles: Bool { get } // list identical files when doing a multi-file compare?
    @objc optional var textFilesOnly: Bool { get } // only compare text files in a multi-file compare?
    @objc optional var flattenFolders: Bool { get } // flatten folder hierarchies when comparing folders?
    @objc optional var skipShieldedFolders: Bool { get } // skip folders whose names are enclosed in (parentheses)?
    @objc optional var commonFilesOnly: Bool { get } // when comparing folders, only list files that are common to both folders?
    @objc optional var searchGitIgnoredFiles: Bool { get } // process Git ignored files?
    @objc optional func setIgnoreAllSpaces(_ ignoreAllSpaces: Bool) // ignore all spaces? (overrides all other space-related options)
    @objc optional func setIgnoreLeadingSpaces(_ ignoreLeadingSpaces: Bool) // ignore leading whitespace on lines?
    @objc optional func setIgnoreTrailingSpaces(_ ignoreTrailingSpaces: Bool) // ignore trailing whitespace on lines?
    @objc optional func setIgnoreExtraSpaces(_ ignoreExtraSpaces: Bool) // ignore whitespace runs in lines?
    @objc optional func setIgnoreRCSKeywords(_ ignoreRCSKeywords: Bool) // ignore RCS keywords?
    @objc optional func setIgnoreBlankLines(_ ignoreBlankLines: Bool) // ignore blank lines?
    @objc optional func setCaseSensitive(_ caseSensitive: Bool) // honor character case differences when comparing?
    @objc optional func setIgnoreCurlyQuotes(_ ignoreCurlyQuotes: Bool) // ignore curly quotes (“, ”, ‘, ’) when comparing?
    @objc optional func setShowIdenticalFiles(_ showIdenticalFiles: Bool) // list identical files when doing a multi-file compare?
    @objc optional func setTextFilesOnly(_ textFilesOnly: Bool) // only compare text files in a multi-file compare?
    @objc optional func setFlattenFolders(_ flattenFolders: Bool) // flatten folder hierarchies when comparing folders?
    @objc optional func setSkipShieldedFolders(_ skipShieldedFolders: Bool) // skip folders whose names are enclosed in (parentheses)?
    @objc optional func setCommonFilesOnly(_ commonFilesOnly: Bool) // when comparing folders, only list files that are common to both folders?
    @objc optional func setSearchGitIgnoredFiles(_ searchGitIgnoredFiles: Bool) // process Git ignored files?
}
extension SBObject: BBEditCompareOptions {}

// MARK: BBEditCompareResults
@objc public protocol BBEditCompareResults: SBObjectProtocol, BBEditGenericMethods {
    @objc optional var differencesFound: Bool { get } // were any differences found?
    @objc optional var reasonForNoDifferences: String { get } // reason for there being no differences
    @objc optional var differencesWindow: SBObject { get } // if differences were found, refers to the resulting Differences window
}
extension SBObject: BBEditCompareResults {}

// MARK: BBEditFTPInfo
@objc public protocol BBEditFTPInfo: SBObjectProtocol, BBEditGenericMethods {
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
extension SBObject: BBEditFTPInfo {}

// MARK: BBEditMarkOptions
@objc public protocol BBEditMarkOptions: SBObjectProtocol, BBEditGenericMethods {
    @objc optional var searchingFor: String { get } // the search pattern (Grep is implicit)
    @objc optional func using() -> String // the Grep replacement pattern to use for generating the marker name
    @objc optional var clearingExisting: Bool { get } // clear existing markers before setting the new ones?
    @objc optional func setClearingExisting(_ clearingExisting: Bool) // clear existing markers before setting the new ones?
}
extension SBObject: BBEditMarkOptions {}

// MARK: BBEditResultEntry
@objc public protocol BBEditResultEntry: SBObjectProtocol, BBEditGenericMethods {
    @objc optional var result_kind: BBEditErsl { get } // the type of result entry
    @objc optional var result_document: SBObject { get } // reference to the document, if not on disk
    @objc optional var result_file: URL { get } // reference to the file, if saved to disk
    @objc optional var start_offset: Int { get } // starting offset in the file
    @objc optional var end_offset: Int { get } // ending offset in the file
    @objc optional var result_line: Int { get } // line in the file (may be -1 if line information is not available)
    @objc optional var message: String { get } // explanatory text (line context, if it’s a search result)
    @objc optional var match_string: String { get } // for Grep search results, contains the text matched by the pattern
    @objc optional func setResult_kind(_ result_kind: BBEditErsl) // the type of result entry
    @objc optional func setResult_document(_ result_document: SBObject!) // reference to the document, if not on disk
    @objc optional func setResult_file(_ result_file: URL!) // reference to the file, if saved to disk
    @objc optional func setStart_offset(_ start_offset: Int) // starting offset in the file
    @objc optional func setEnd_offset(_ end_offset: Int) // ending offset in the file
    @objc optional func setResult_line(_ result_line: Int) // line in the file (may be -1 if line information is not available)
    @objc optional func setMessage(_ message: String!) // explanatory text (line context, if it’s a search result)
    @objc optional func setMatch_string(_ match_string: String!) // for Grep search results, contains the text matched by the pattern
}
extension SBObject: BBEditResultEntry {}

// MARK: BBEditSearchOptions
@objc public protocol BBEditSearchOptions: SBObjectProtocol, BBEditGenericMethods {
    @objc optional var searchMode: BBEditSMod { get } // the type of search (literal search if omitted)
    @objc optional var startingAtTop: Bool { get } // start from the top of the document? (false if omitted)
    @objc optional var wrapAround: Bool { get } // should the search wrap from the end of the document? (false if omitted)
    @objc optional var backwards: Bool { get } // should the search proceed backwards? (false if omitted)
    @objc optional var caseSensitive: Bool { get } // should the search be case-sensitive? (false if omitted)
    @objc optional var matchWords: Bool { get } // should the search only find whole words? (false if omitted)
    @objc optional var extendSelection: Bool { get } // should the selection range include the original selection start through the end of the match? (false if omitted)
    @objc optional var returningResults: Bool { get } // if performing a batch or multi-file search, return a list of matches? (false if omitted)
    @objc optional var showingResults: Bool { get } // if performing a batch or multi-file search, open the list of results? (true if omitted)
    @objc optional func setSearchMode(_ searchMode: BBEditSMod) // the type of search (literal search if omitted)
    @objc optional func setStartingAtTop(_ startingAtTop: Bool) // start from the top of the document? (false if omitted)
    @objc optional func setWrapAround(_ wrapAround: Bool) // should the search wrap from the end of the document? (false if omitted)
    @objc optional func setBackwards(_ backwards: Bool) // should the search proceed backwards? (false if omitted)
    @objc optional func setCaseSensitive(_ caseSensitive: Bool) // should the search be case-sensitive? (false if omitted)
    @objc optional func setMatchWords(_ matchWords: Bool) // should the search only find whole words? (false if omitted)
    @objc optional func setExtendSelection(_ extendSelection: Bool) // should the selection range include the original selection start through the end of the match? (false if omitted)
    @objc optional func setReturningResults(_ returningResults: Bool) // if performing a batch or multi-file search, return a list of matches? (false if omitted)
    @objc optional func setShowingResults(_ showingResults: Bool) // if performing a batch or multi-file search, open the list of results? (true if omitted)
}
extension SBObject: BBEditSearchOptions {}

// MARK: BBEditSearchMatch
@objc public protocol BBEditSearchMatch: SBObjectProtocol, BBEditGenericMethods {
    @objc optional var found: Bool { get } // was a match found?
    @objc optional var foundObject: SBObject { get } // for a single-file search, a reference to the found text
    @objc optional var foundText: String { get } // for a single-file search, the found text
    @objc optional var foundMatches: [BBEditResultEntry] { get } // for a multi-file or batch search, a list of the found occurrences
    @objc optional var matchListWindow: SBObject { get } // for a multi-file or batch search, the window listing the matches
}
extension SBObject: BBEditSearchMatch {}

// MARK: BBEditSearchStringProperties
@objc public protocol BBEditSearchStringProperties: SBObjectProtocol, BBEditGenericMethods {
    @objc optional var searchString: String { get } // search text
    @objc optional var replacementString: String { get } // replace text
}
extension SBObject: BBEditSearchStringProperties {}

// MARK: BBEditSortLinesOptions
@objc public protocol BBEditSortLinesOptions: SBObjectProtocol, BBEditGenericMethods {
    @objc optional var sortingCaseSensitive: Bool { get }
    @objc optional var sortIgnoringLeadingSpace: Bool { get }
    @objc optional var reversingSortOrder: Bool { get }
    @objc optional var sortingNumerically: Bool { get }
    @objc optional var sortUsingStoredPattern: String { get }
    @objc optional var sortPattern: String { get }
    @objc optional var sortSubpatternKey: BBEditESbM { get }
    @objc optional var sortSubpattern: String { get }
}
extension SBObject: BBEditSortLinesOptions {}

// MARK: BBEditSortLinesOutputOptions
@objc public protocol BBEditSortLinesOutputOptions: SBObjectProtocol, BBEditGenericMethods {
    @objc optional var replacingTarget: Bool { get }
    @objc optional var copyingToClipboard: Bool { get }
    @objc optional var copyingToNewDocument: Bool { get }
}
extension SBObject: BBEditSortLinesOutputOptions {}

// MARK: BBEditProcessDuplicatesOptions
@objc public protocol BBEditProcessDuplicatesOptions: SBObjectProtocol, BBEditGenericMethods {
    @objc optional var matchMode: BBEditMMod { get }
    @objc optional var matchingCaseSensitive: Bool { get }
    @objc optional var matchIgnoringLeadingSpace: Bool { get }
    @objc optional var matchingNumerically: Bool { get }
    @objc optional var matchUsingStoredPattern: String { get }
    @objc optional var matchPattern: String { get }
    @objc optional var matchSubpatternKey: BBEditESbM { get }
    @objc optional var matchSubpattern: String { get }
}
extension SBObject: BBEditProcessDuplicatesOptions {}

// MARK: BBEditProcessDuplicatesOutputOptions
@objc public protocol BBEditProcessDuplicatesOutputOptions: SBObjectProtocol, BBEditGenericMethods {
    @objc optional var deletingDuplicates: Bool { get }
    @objc optional var duplicatesToClipboard: Bool { get }
    @objc optional var duplicatesToNewDocument: Bool { get }
    @objc optional var uniqueLinesToClipboard: Bool { get }
    @objc optional var uniqueLinesToNewDocument: Bool { get }
}
extension SBObject: BBEditProcessDuplicatesOutputOptions {}

// MARK: BBEditProcessDuplicatesResults
@objc public protocol BBEditProcessDuplicatesResults: SBObjectProtocol, BBEditGenericMethods {
    @objc optional var duplicateLines: String { get } // the duplicate lines in the input
    @objc optional var uniqueLines: String { get } // the unique lines in the input
}
extension SBObject: BBEditProcessDuplicatesResults {}

// MARK: BBEditProcessLinesContainingOutputOptions
@objc public protocol BBEditProcessLinesContainingOutputOptions: SBObjectProtocol, BBEditGenericMethods {
    @objc optional var deletingMatchedLines: Bool { get }
    @objc optional var copyingToClipboard: Bool { get }
    @objc optional var copyingToNewDocument: Bool { get }
    @objc optional var reportingResults: Bool { get }
}
extension SBObject: BBEditProcessLinesContainingOutputOptions {}

// MARK: BBEditProcessLinesContainingResults
@objc public protocol BBEditProcessLinesContainingResults: SBObjectProtocol, BBEditGenericMethods {
    @objc optional var copiedLines: String { get } // the lines in the input matching the string
    @objc optional var modifiedText: String { get } // the lines in the input not matching the string
}
extension SBObject: BBEditProcessLinesContainingResults {}

// MARK: BBEditText_object
@objc public protocol BBEditText_object: BBEditItem {
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
extension SBObject: BBEditText_object {}

// MARK: BBEditInsertionPoint
@objc public protocol BBEditInsertionPoint: BBEditText_object {
}
extension SBObject: BBEditInsertionPoint {}

// MARK: BBEditCharacter
@objc public protocol BBEditCharacter: BBEditText_object {
    @objc optional func characters() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional func lines() -> SBElementArray
    @objc optional func display_lines() -> SBElementArray
    @objc optional func insertionPoints() -> SBElementArray
    @objc optional func texts() -> SBElementArray
}
extension SBObject: BBEditCharacter {}

// MARK: BBEditWord
@objc public protocol BBEditWord: BBEditText_object {
    @objc optional func characters() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional func lines() -> SBElementArray
    @objc optional func display_lines() -> SBElementArray
    @objc optional func insertionPoints() -> SBElementArray
    @objc optional func texts() -> SBElementArray
}
extension SBObject: BBEditWord {}

// MARK: BBEditLine
@objc public protocol BBEditLine: BBEditText_object {
    @objc optional func characters() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional func lines() -> SBElementArray
    @objc optional func display_lines() -> SBElementArray
    @objc optional func insertionPoints() -> SBElementArray
    @objc optional func texts() -> SBElementArray
}
extension SBObject: BBEditLine {}

// MARK: BBEditDisplay_line
@objc public protocol BBEditDisplay_line: BBEditText_object {
    @objc optional func characters() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional func lines() -> SBElementArray
    @objc optional func display_lines() -> SBElementArray
    @objc optional func insertionPoints() -> SBElementArray
    @objc optional func texts() -> SBElementArray
}
extension SBObject: BBEditDisplay_line {}

// MARK: BBEditText
@objc public protocol BBEditText: BBEditText_object {
    @objc optional func characters() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional func lines() -> SBElementArray
    @objc optional func display_lines() -> SBElementArray
    @objc optional func insertionPoints() -> SBElementArray
    @objc optional func texts() -> SBElementArray
    @objc optional func findSearchingIn(_ searchingIn: Any!, selectingMatch: Bool, options: BBEditSearchOptions!, excludingMatches: Bool, filter: BBEditFilter!, recursion: Bool, textFilesOnly: Bool, skipShieldedFolders: Bool, searchInvisibleFolders: Bool, searchCompressedFiles: Bool, searchGitIgnoredFiles: Bool) -> BBEditSearchMatch // Searches for text
    @objc optional func replaceUsing(_ using_: String!, searchingIn: Any!, searchingString: String!, options: BBEditSearchOptions!, filter: BBEditFilter!, saving: BBEditSavo, recursion: Bool, textFilesOnly: Bool, skipShieldedFolders: Bool, searchInvisibleFolders: Bool, searchCompressedFiles: Bool, searchGitIgnoredFiles: Bool) -> Int // performs a Replace All
    @objc optional func findTagStart_offset(_ start_offset: Int, isCloseTag: Bool) -> BBEditTagResult // looks for the html tag with the given name, starting at offset in the front document
    @objc optional func insideOpenTagStartRange(_ startRange: Int, endRange: Int) -> BBEditTagResult // looks to see if the given range is contained within an open html tag with the given name
    @objc optional func insideTagPairStartRange(_ startRange: Int, endRange: Int) -> BBEditTagPairResult // looks to see if the given range is contained within an html tag pair with the given name
}
extension SBObject: BBEditText {}

// MARK: BBEditHTMLPrefs
@objc public protocol BBEditHTMLPrefs: SBObjectProtocol, BBEditGenericMethods {
    @objc optional var lowerCaseTags: Bool { get } // true if you want the tools to generate lower case tags, false if you want the tools to generate uppercase tags
    @objc optional var alwaysQuoteAttributes: Bool { get } // true if you want the tools to generate quotes for all attributes, false if you only want quotes generated for attributes which require them
    @objc optional var useXmlRulesInUnspecifiedDocuments: Bool { get } // true if you want to use XML markup rules when the document has neither an XML declaration nor a DOCTYPE, false otherwise
    @objc optional func setHtmlPreferencesTo() // sets the html preferences (the accessors for the web site preferences are maintained for backwards compatability, but new scripts should use the web site element(s) of the application)
    @objc optional func setLowerCaseTags(_ lowerCaseTags: Bool) // true if you want the tools to generate lower case tags, false if you want the tools to generate uppercase tags
    @objc optional func setAlwaysQuoteAttributes(_ alwaysQuoteAttributes: Bool) // true if you want the tools to generate quotes for all attributes, false if you only want quotes generated for attributes which require them
    @objc optional func setUseXmlRulesInUnspecifiedDocuments(_ useXmlRulesInUnspecifiedDocuments: Bool) // true if you want to use XML markup rules when the document has neither an XML declaration nor a DOCTYPE, false otherwise
}
extension SBObject: BBEditHTMLPrefs {}

// MARK: BBEditTagInfo
@objc public protocol BBEditTagInfo: SBObjectProtocol, BBEditGenericMethods {
    @objc optional var name: String { get } // the name of the tag
    @objc optional var isCloseTag: Bool { get } // true if the tag is a close tag (for example </html>)
    @objc optional var isEmptyXmlElement: Bool { get } // true if the tag is an empty xml element (for example <foo bar="value"/>)
    @objc optional var start_offset: Int { get } // starting offset in the file
    @objc optional var end_offset: Int { get } // ending offset in the file
    @objc optional var attributes: [AnyHashable : Any] { get } // a record containing all attributes for the tag
    @objc optional func setName(_ name: String!) // the name of the tag
    @objc optional func setIsCloseTag(_ isCloseTag: Bool) // true if the tag is a close tag (for example </html>)
    @objc optional func setIsEmptyXmlElement(_ isEmptyXmlElement: Bool) // true if the tag is an empty xml element (for example <foo bar="value"/>)
    @objc optional func setStart_offset(_ start_offset: Int) // starting offset in the file
    @objc optional func setEnd_offset(_ end_offset: Int) // ending offset in the file
    @objc optional func setAttributes(_ attributes: [AnyHashable : Any]!) // a record containing all attributes for the tag
}
extension SBObject: BBEditTagInfo {}

// MARK: BBEditTagResult
@objc public protocol BBEditTagResult: SBObjectProtocol, BBEditGenericMethods {
    @objc optional var foundTag: Bool { get } // whether or not the tag was found
    @objc optional var tag: BBEditTagInfo { get } // the tag record of the found tag
    @objc optional func setFoundTag(_ foundTag: Bool) // whether or not the tag was found
    @objc optional func setTag(_ tag: BBEditTagInfo!) // the tag record of the found tag
}
extension SBObject: BBEditTagResult {}

// MARK: BBEditTagPairResult
@objc public protocol BBEditTagPairResult: SBObjectProtocol, BBEditGenericMethods {
    @objc optional var foundTag: Bool { get } // whether or not the tag was found
    @objc optional var tag: BBEditTagInfo { get } // the tag record of the found tag (open tag)
    @objc optional var closeTag: BBEditTagInfo { get } // the tag record of the close tag of the pair
    @objc optional func setFoundTag(_ foundTag: Bool) // whether or not the tag was found
    @objc optional func setTag(_ tag: BBEditTagInfo!) // the tag record of the found tag (open tag)
    @objc optional func setCloseTag(_ closeTag: BBEditTagInfo!) // the tag record of the close tag of the pair
}
extension SBObject: BBEditTagPairResult {}

