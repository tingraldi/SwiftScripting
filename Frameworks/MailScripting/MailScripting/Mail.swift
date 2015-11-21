import AppKit
import ScriptingBridge

@objc public protocol SBObjectProtocol: NSObjectProtocol {
    func get() -> AnyObject!
}

@objc public protocol SBApplicationProtocol: SBObjectProtocol {
    func activate()
    var delegate: SBApplicationDelegate! { get set }
}

// MARK: MailSaveOptions
@objc public enum MailSaveOptions : AEKeyword {
    case Yes = 0x79657320 /* 'yes ' */
    case No = 0x6e6f2020 /* 'no  ' */
    case Ask = 0x61736b20 /* 'ask ' */
}

// MARK: MailPrintingErrorHandling
@objc public enum MailPrintingErrorHandling : AEKeyword {
    case Standard = 0x6c777374 /* 'lwst' */
    case Detailed = 0x6c776474 /* 'lwdt' */
}

// MARK: MailSaveableFileFormat
@objc public enum MailSaveableFileFormat : AEKeyword {
    case NativeFormat = 0x6974656d /* 'item' */
}

// MARK: MailDefaultMessageFormat
@objc public enum MailDefaultMessageFormat : AEKeyword {
    case PlainFormat = 0x646d7074 /* 'dmpt' */
    case RichFormat = 0x646d7274 /* 'dmrt' */
}

// MARK: MailQuotingColor
@objc public enum MailQuotingColor : AEKeyword {
    case Blue = 0x6363626c /* 'ccbl' */
    case Green = 0x63636772 /* 'ccgr' */
    case Orange = 0x63636f72 /* 'ccor' */
    case Other = 0x63636f74 /* 'ccot' */
    case Purple = 0x63637075 /* 'ccpu' */
    case Red = 0x63637265 /* 'ccre' */
    case Yellow = 0x63637965 /* 'ccye' */
}

// MARK: MailViewerColumns
@objc public enum MailViewerColumns : AEKeyword {
    case AttachmentsColumn = 0x65636174 /* 'ecat' */
    case MessageColor = 0x6563636c /* 'eccl' */
    case DateReceivedColumn = 0x65636472 /* 'ecdr' */
    case DateSentColumn = 0x65636473 /* 'ecds' */
    case FlagsColumn = 0x6563666c /* 'ecfl' */
    case FromColumn = 0x65636672 /* 'ecfr' */
    case MailboxColumn = 0x65636d62 /* 'ecmb' */
    case MessageStatusColumn = 0x65636d73 /* 'ecms' */
    case NumberColumn = 0x65636e6d /* 'ecnm' */
    case SizeColumn = 0x6563737a /* 'ecsz' */
    case SubjectColumn = 0x65637375 /* 'ecsu' */
    case ToColumn = 0x6563746f /* 'ecto' */
    case DateLastSavedColumn = 0x65636c73 /* 'ecls' */
}

// MARK: MailAuthentication
@objc public enum MailAuthentication : AEKeyword {
    case Password = 0x61786374 /* 'axct' */
    case Apop = 0x6161706f /* 'aapo' */
    case Kerberos5 = 0x61786b35 /* 'axk5' */
    case Ntlm = 0x61786e74 /* 'axnt' */
    case Md5 = 0x61786d64 /* 'axmd' */
    case External = 0x61657874 /* 'aext' */
    case AppleToken = 0x61746f6b /* 'atok' */
    case None = 0x63636e6f /* 'ccno' */
}

// MARK: MailHighlightColors
@objc public enum MailHighlightColors : AEKeyword {
    case Blue = 0x6363626c /* 'ccbl' */
    case Gray = 0x63636779 /* 'ccgy' */
    case Green = 0x63636772 /* 'ccgr' */
    case None = 0x63636e6f /* 'ccno' */
    case Orange = 0x63636f72 /* 'ccor' */
    case Other = 0x63636f74 /* 'ccot' */
    case Purple = 0x63637075 /* 'ccpu' */
    case Red = 0x63637265 /* 'ccre' */
    case Yellow = 0x63637965 /* 'ccye' */
}

// MARK: MailMessageCachingPolicy
@objc public enum MailMessageCachingPolicy : AEKeyword {
    case DoNotKeepCopiesOfAnyMessages = 0x78396e6f /* 'x9no' */
    case OnlyMessagesIHaveRead = 0x78397772 /* 'x9wr' */
    case AllMessagesButOmitAttachments = 0x7839626f /* 'x9bo' */
    case AllMessagesAndTheirAttachments = 0x7839616c /* 'x9al' */
}

// MARK: MailRuleQualifier
@objc public enum MailRuleQualifier : AEKeyword {
    case BeginsWithValue = 0x72716277 /* 'rqbw' */
    case DoesContainValue = 0x7271636f /* 'rqco' */
    case DoesNotContainValue = 0x7271646e /* 'rqdn' */
    case EndsWithValue = 0x72716577 /* 'rqew' */
    case EqualToValue = 0x72716965 /* 'rqie' */
    case LessThanValue = 0x72716c74 /* 'rqlt' */
    case GreaterThanValue = 0x72716774 /* 'rqgt' */
    case None = 0x72716e6f /* 'rqno' */
}

// MARK: MailRuleType
@objc public enum MailRuleType : AEKeyword {
    case Account = 0x74616363 /* 'tacc' */
    case AnyRecipient = 0x74616e72 /* 'tanr' */
    case CcHeader = 0x74636363 /* 'tccc' */
    case MatchesEveryMessage = 0x7465766d /* 'tevm' */
    case FromHeader = 0x7466726f /* 'tfro' */
    case HeaderKey = 0x7468646b /* 'thdk' */
    case MessageContent = 0x746d6563 /* 'tmec' */
    case MessageIsJunkMail = 0x746d696a /* 'tmij' */
    case SenderIsInMyContacts = 0x74736969 /* 'tsii' */
    case SenderIsInMyPreviousRecipients = 0x74736168 /* 'tsah' */
    case SenderIsMemberOfGroup = 0x7473696d /* 'tsim' */
    case SenderIsNotInMyContacts = 0x7473696e /* 'tsin' */
    case SenderIsNotInMyPreviousRecipients = 0x746e6168 /* 'tnah' */
    case SenderIsNotMemberOfGroup = 0x74736967 /* 'tsig' */
    case SubjectHeader = 0x74737562 /* 'tsub' */
    case ToHeader = 0x74746f6f /* 'ttoo' */
    case ToOrCcHeader = 0x74746f63 /* 'ttoc' */
    case AttachmentType = 0x74617474 /* 'tatt' */
}

// MARK: MailTypeOfAccount
@objc public enum MailTypeOfAccount : AEKeyword {
    case Pop = 0x6574706f /* 'etpo' */
    case Smtp = 0x6574736d /* 'etsm' */
    case Imap = 0x6574696d /* 'etim' */
    case ICloud = 0x65746974 /* 'etit' */
    case Unknown = 0x6574756e /* 'etun' */
}

// MARK: MailGenericMethods
@objc public protocol MailGenericMethods {
    optional func closeSaving(saving: MailSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(in_: NSURL!, `as`: MailSaveableFileFormat) // Save a document.
    optional func printWithProperties(withProperties: [NSObject : AnyObject]!, printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
}

// MARK: MailApplication
@objc public protocol MailApplication: SBApplicationProtocol {
    optional func documents() -> SBElementArray
    optional func windows() -> SBElementArray
    optional var name: String { get } // The name of the application.
    optional var frontmost: Bool { get } // Is this the active application?
    optional var version: String { get } // The version number of the application.
    optional func open(x: AnyObject!) -> AnyObject // Open a document.
    optional func print(x: AnyObject!, withProperties: [NSObject : AnyObject]!, printDialog: Bool) // Print a document.
    optional func quitSaving(saving: MailSaveOptions) // Quit the application.
    optional func exists(x: AnyObject!) -> Bool // Verify that an object exists.
    optional func checkForNewMailFor(for_: MailAccount!) // Triggers a check for email.
    optional func extractNameFrom(x: String!) -> String // Command to get the full name out of a fully specified email address. E.g. Calling this with "John Doe <jdoe@example.com>" as the direct object would return "John Doe"
    optional func extractAddressFrom(x: String!) -> String // Command to get just the email address of a fully specified email address. E.g. Calling this with "John Doe <jdoe@example.com>" as the direct object would return "jdoe@example.com"
    optional func GetURL(x: String!) // Opens a mailto URL.
    optional func importMailMailboxAt(at: NSURL!) // Imports a mailbox created by Mail.
    optional func mailto(x: String!) // Opens a mailto URL.
    optional func performMailActionWithMessages(x: [AnyObject]!, inMailboxes: MailMailbox!, forRule: MailRule!) // Script handler invoked by rules and menus that execute AppleScripts. The direct parameter of this handler is a list of messages being acted upon.
    optional func synchronizeWith(with: MailAccount!) // Command to trigger synchronizing of an IMAP account with the server.
    optional func accounts() -> SBElementArray
    optional func popAccounts() -> SBElementArray
    optional func imapAccounts() -> SBElementArray
    optional func iCloudAccounts() -> SBElementArray
    optional func smtpServers() -> SBElementArray
    optional func outgoingMessages() -> SBElementArray
    optional func mailboxes() -> SBElementArray
    optional func messageViewers() -> SBElementArray
    optional func rules() -> SBElementArray
    optional func signatures() -> SBElementArray
    optional var alwaysBccMyself: Bool { get } // Indicates whether you will be included in the Bcc: field of messages which you are composing
    optional var alwaysCcMyself: Bool { get } // Indicates whether you will be included in the Cc: field of messages which you are composing
    optional var selection: [AnyObject] { get } // List of messages that the user has selected
    optional var applicationVersion: String { get } // The build number for the Mail application bundle
    optional var fetchInterval: Int { get } // The interval (in minutes) between automatic fetches of new mail, -1 means to use an automatically determined interval
    optional var backgroundActivityCount: Int { get } // Number of background activities currently running in Mail, according to the Activity window
    optional var chooseSignatureWhenComposing: Bool { get } // Indicates whether user can choose a signature directly in a new compose window
    optional var colorQuotedText: Bool { get } // Indicates whether quoted text should be colored
    optional var defaultMessageFormat: MailDefaultMessageFormat { get } // Default format for messages being composed or message replies
    optional var downloadHtmlAttachments: Bool { get } // Indicates whether images and attachments in HTML messages should be downloaded and displayed
    optional var draftsMailbox: MailMailbox { get } // The top level Drafts mailbox
    optional var expandGroupAddresses: Bool { get } // Indicates whether group addresses will be expanded when entered into the address fields of a new compose message
    optional var fixedWidthFont: String { get } // Font for plain text messages, only used if 'use fixed width font' is set to true
    optional var fixedWidthFontSize: Double { get } // Font size for plain text messages, only used if 'use fixed width font' is set to true
    optional var frameworkVersion: String { get } // The build number for the Mail framework
    optional var inbox: MailMailbox { get } // The top level In mailbox
    optional var includeAllOriginalMessageText: Bool { get } // Indicates whether all of the original message will be quoted or only the text you have selected (if any)
    optional var quoteOriginalMessage: Bool { get } // Indicates whether the text of the original message will be included in replies
    optional var checkSpellingWhileTyping: Bool { get } // Indicates whether spelling will be checked automatically in messages being composed
    optional var junkMailbox: MailMailbox { get } // The top level Junk mailbox
    optional var levelOneQuotingColor: MailQuotingColor { get } // Color for quoted text with one level of indentation
    optional var levelTwoQuotingColor: MailQuotingColor { get } // Color for quoted text with two levels of indentation
    optional var levelThreeQuotingColor: MailQuotingColor { get } // Color for quoted text with three levels of indentation
    optional var messageFont: String { get } // Font for messages (proportional font)
    optional var messageFontSize: Double { get } // Font size for messages (proportional font)
    optional var messageListFont: String { get } // Font for message list
    optional var messageListFontSize: Double { get } // Font size for message list
    optional var newMailSound: String { get } // Name of new mail sound or 'None' if no sound is selected
    optional var outbox: MailMailbox { get } // The top level Out mailbox
    optional var shouldPlayOtherMailSounds: Bool { get } // Indicates whether sounds will be played for various things such as when a messages is sent or if no mail is found when manually checking for new mail or if there is a fetch error
    optional var sameReplyFormat: Bool { get } // Indicates whether replies will be in the same text format as the message to which you are replying
    optional var selectedSignature: String { get } // Name of current selected signature (or 'randomly', 'sequentially', or 'none')
    optional var sentMailbox: MailMailbox { get } // The top level Sent mailbox
    optional var fetchesAutomatically: Bool { get } // Indicates whether mail will automatically be fetched at a specific interval
    optional var highlightSelectedConversation: Bool { get } // Indicates whether messages in conversations should be highlighted in the Mail viewer window when not grouped
    optional var trashMailbox: MailMailbox { get } // The top level Trash mailbox
    optional var useAddressCompletion: Bool { get } // This always returns true, and setting it doesn't do anything (deprecated)
    optional var useFixedWidthFont: Bool { get } // Should fixed-width font be used for plain text messages?
    optional var primaryEmail: String { get } // The user's primary email address
    optional func setAlwaysBccMyself(alwaysBccMyself: Bool) // Indicates whether you will be included in the Bcc: field of messages which you are composing
    optional func setAlwaysCcMyself(alwaysCcMyself: Bool) // Indicates whether you will be included in the Cc: field of messages which you are composing
    optional func setFetchInterval(fetchInterval: Int) // The interval (in minutes) between automatic fetches of new mail, -1 means to use an automatically determined interval
    optional func setChooseSignatureWhenComposing(chooseSignatureWhenComposing: Bool) // Indicates whether user can choose a signature directly in a new compose window
    optional func setColorQuotedText(colorQuotedText: Bool) // Indicates whether quoted text should be colored
    optional func setDefaultMessageFormat(defaultMessageFormat: MailDefaultMessageFormat) // Default format for messages being composed or message replies
    optional func setDownloadHtmlAttachments(downloadHtmlAttachments: Bool) // Indicates whether images and attachments in HTML messages should be downloaded and displayed
    optional func setExpandGroupAddresses(expandGroupAddresses: Bool) // Indicates whether group addresses will be expanded when entered into the address fields of a new compose message
    optional func setFixedWidthFont(fixedWidthFont: String!) // Font for plain text messages, only used if 'use fixed width font' is set to true
    optional func setFixedWidthFontSize(fixedWidthFontSize: Double) // Font size for plain text messages, only used if 'use fixed width font' is set to true
    optional func setIncludeAllOriginalMessageText(includeAllOriginalMessageText: Bool) // Indicates whether all of the original message will be quoted or only the text you have selected (if any)
    optional func setQuoteOriginalMessage(quoteOriginalMessage: Bool) // Indicates whether the text of the original message will be included in replies
    optional func setCheckSpellingWhileTyping(checkSpellingWhileTyping: Bool) // Indicates whether spelling will be checked automatically in messages being composed
    optional func setLevelOneQuotingColor(levelOneQuotingColor: MailQuotingColor) // Color for quoted text with one level of indentation
    optional func setLevelTwoQuotingColor(levelTwoQuotingColor: MailQuotingColor) // Color for quoted text with two levels of indentation
    optional func setLevelThreeQuotingColor(levelThreeQuotingColor: MailQuotingColor) // Color for quoted text with three levels of indentation
    optional func setMessageFont(messageFont: String!) // Font for messages (proportional font)
    optional func setMessageFontSize(messageFontSize: Double) // Font size for messages (proportional font)
    optional func setMessageListFont(messageListFont: String!) // Font for message list
    optional func setMessageListFontSize(messageListFontSize: Double) // Font size for message list
    optional func setNewMailSound(newMailSound: String!) // Name of new mail sound or 'None' if no sound is selected
    optional func setShouldPlayOtherMailSounds(shouldPlayOtherMailSounds: Bool) // Indicates whether sounds will be played for various things such as when a messages is sent or if no mail is found when manually checking for new mail or if there is a fetch error
    optional func setSameReplyFormat(sameReplyFormat: Bool) // Indicates whether replies will be in the same text format as the message to which you are replying
    optional func setSelectedSignature(selectedSignature: String!) // Name of current selected signature (or 'randomly', 'sequentially', or 'none')
    optional func setFetchesAutomatically(fetchesAutomatically: Bool) // Indicates whether mail will automatically be fetched at a specific interval
    optional func setHighlightSelectedConversation(highlightSelectedConversation: Bool) // Indicates whether messages in conversations should be highlighted in the Mail viewer window when not grouped
    optional func setUseAddressCompletion(useAddressCompletion: Bool) // This always returns true, and setting it doesn't do anything (deprecated)
    optional func setUseFixedWidthFont(useFixedWidthFont: Bool) // Should fixed-width font be used for plain text messages?
}
extension SBApplication: MailApplication {}

// MARK: MailDocument
@objc public protocol MailDocument: SBObjectProtocol, MailGenericMethods {
    optional var name: String { get } // Its name.
    optional var modified: Bool { get } // Has it been modified since the last save?
    optional var file: NSURL { get } // Its location on disk, if it has one.
}
extension SBObject: MailDocument {}

// MARK: MailWindow
@objc public protocol MailWindow: SBObjectProtocol, MailGenericMethods {
    optional var name: String { get } // The title of the window.
    optional func id() -> Int // The unique identifier of the window.
    optional var index: Int { get } // The index of the window, ordered front to back.
    optional var bounds: NSRect { get } // The bounding rectangle of the window.
    optional var closeable: Bool { get } // Does the window have a close button?
    optional var miniaturizable: Bool { get } // Does the window have a minimize button?
    optional var miniaturized: Bool { get } // Is the window minimized right now?
    optional var resizable: Bool { get } // Can the window be resized?
    optional var visible: Bool { get } // Is the window visible right now?
    optional var zoomable: Bool { get } // Does the window have a zoom button?
    optional var zoomed: Bool { get } // Is the window zoomed right now?
    optional var document: MailDocument { get } // The document whose contents are displayed in the window.
    optional func setIndex(index: Int) // The index of the window, ordered front to back.
    optional func setBounds(bounds: NSRect) // The bounding rectangle of the window.
    optional func setMiniaturized(miniaturized: Bool) // Is the window minimized right now?
    optional func setVisible(visible: Bool) // Is the window visible right now?
    optional func setZoomed(zoomed: Bool) // Is the window zoomed right now?
}
extension SBObject: MailWindow {}

// MARK: MailRichText
@objc public protocol MailRichText: SBObjectProtocol, MailGenericMethods {
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func characters() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get } // The color of the first character.
    optional var font: String { get } // The name of the font of the first character.
    optional var size: NSNumber { get } // The size in points of the first character.
    optional func setColor(color: NSColor!) // The color of the first character.
    optional func setFont(font: String!) // The name of the font of the first character.
    optional func setSize(size: NSNumber!) // The size in points of the first character.
}
extension SBObject: MailRichText {}

// MARK: MailAttachment
@objc public protocol MailAttachment: MailRichText {
    optional var fileName: NSURL { get } // The file for the attachment
    optional func setFileName(fileName: NSURL!) // The file for the attachment
}
extension SBObject: MailAttachment {}

// MARK: MailParagraph
@objc public protocol MailParagraph: SBObjectProtocol, MailGenericMethods {
    optional func words() -> SBElementArray
    optional func characters() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get } // The color of the first character.
    optional var font: String { get } // The name of the font of the first character.
    optional var size: NSNumber { get } // The size in points of the first character.
    optional func setColor(color: NSColor!) // The color of the first character.
    optional func setFont(font: String!) // The name of the font of the first character.
    optional func setSize(size: NSNumber!) // The size in points of the first character.
}
extension SBObject: MailParagraph {}

// MARK: MailWord
@objc public protocol MailWord: SBObjectProtocol, MailGenericMethods {
    optional func characters() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get } // The color of the first character.
    optional var font: String { get } // The name of the font of the first character.
    optional var size: NSNumber { get } // The size in points of the first character.
    optional func setColor(color: NSColor!) // The color of the first character.
    optional func setFont(font: String!) // The name of the font of the first character.
    optional func setSize(size: NSNumber!) // The size in points of the first character.
}
extension SBObject: MailWord {}

// MARK: MailCharacter
@objc public protocol MailCharacter: SBObjectProtocol, MailGenericMethods {
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get } // The color of the character.
    optional var font: String { get } // The name of the font of the character.
    optional var size: NSNumber { get } // The size in points of the character.
    optional func setColor(color: NSColor!) // The color of the character.
    optional func setFont(font: String!) // The name of the font of the character.
    optional func setSize(size: NSNumber!) // The size in points of the character.
}
extension SBObject: MailCharacter {}

// MARK: MailAttributeRun
@objc public protocol MailAttributeRun: SBObjectProtocol, MailGenericMethods {
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func characters() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get } // The color of the first character.
    optional var font: String { get } // The name of the font of the first character.
    optional var size: NSNumber { get } // The size in points of the first character.
    optional func setColor(color: NSColor!) // The color of the first character.
    optional func setFont(font: String!) // The name of the font of the first character.
    optional func setSize(size: NSNumber!) // The size in points of the first character.
}
extension SBObject: MailAttributeRun {}

// MARK: MailOutgoingMessage
@objc public protocol MailOutgoingMessage: SBObjectProtocol, MailGenericMethods {
    optional func bccRecipients() -> SBElementArray
    optional func ccRecipients() -> SBElementArray
    optional func recipients() -> SBElementArray
    optional func toRecipients() -> SBElementArray
    optional var sender: String { get } // The sender of the message
    optional var subject: String { get } // The subject of the message
    optional var content: MailRichText { get } // The contents of the message
    optional var visible: Bool { get } // Controls whether the message window is shown on the screen. The default is false
    optional var messageSignature: AnyObject { get } // The signature of the message
    optional func id() -> Int // The unique identifier of the message
    optional func send() -> Bool // Sends a message.
    optional func setSender(sender: String!) // The sender of the message
    optional func setSubject(subject: String!) // The subject of the message
    optional func setContent(content: MailRichText!) // The contents of the message
    optional func setVisible(visible: Bool) // Controls whether the message window is shown on the screen. The default is false
    optional func setMessageSignature(messageSignature: AnyObject!) // The signature of the message
}
extension SBObject: MailOutgoingMessage {}

// MARK: MailMessageViewer
@objc public protocol MailMessageViewer: SBObjectProtocol, MailGenericMethods {
    optional func messages() -> SBElementArray
    optional var draftsMailbox: MailMailbox { get } // The top level Drafts mailbox
    optional var inbox: MailMailbox { get } // The top level In mailbox
    optional var junkMailbox: MailMailbox { get } // The top level Junk mailbox
    optional var outbox: MailMailbox { get } // The top level Out mailbox
    optional var sentMailbox: MailMailbox { get } // The top level Sent mailbox
    optional var trashMailbox: MailMailbox { get } // The top level Trash mailbox
    optional var sortColumn: MailViewerColumns { get } // The column that is currently sorted in the viewer
    optional var sortedAscending: Bool { get } // Whether the viewer is sorted ascending or not
    optional var mailboxListVisible: Bool { get } // Controls whether the list of mailboxes is visible or not
    optional var previewPaneIsVisible: Bool { get } // Controls whether the preview pane of the message viewer window is visible or not
    optional var visibleColumns: [AnyObject] { get } // List of columns that are visible. The subject column and the message status column will always be visible
    optional func id() -> Int // The unique identifier of the message viewer
    optional var visibleMessages: [AnyObject] { get } // List of messages currently being displayed in the viewer
    optional var selectedMessages: [AnyObject] { get } // List of messages currently selected
    optional var selectedMailboxes: [AnyObject] { get } // List of mailboxes currently selected in the list of mailboxes
    optional var window: MailWindow { get } // The window for the message viewer
    optional func setSortColumn(sortColumn: MailViewerColumns) // The column that is currently sorted in the viewer
    optional func setSortedAscending(sortedAscending: Bool) // Whether the viewer is sorted ascending or not
    optional func setMailboxListVisible(mailboxListVisible: Bool) // Controls whether the list of mailboxes is visible or not
    optional func setPreviewPaneIsVisible(previewPaneIsVisible: Bool) // Controls whether the preview pane of the message viewer window is visible or not
    optional func setVisibleColumns(visibleColumns: [AnyObject]!) // List of columns that are visible. The subject column and the message status column will always be visible
    optional func setVisibleMessages(visibleMessages: [AnyObject]!) // List of messages currently being displayed in the viewer
    optional func setSelectedMessages(selectedMessages: [AnyObject]!) // List of messages currently selected
    optional func setSelectedMailboxes(selectedMailboxes: [AnyObject]!) // List of mailboxes currently selected in the list of mailboxes
    optional func setWindow(window: MailWindow!) // The window for the message viewer
}
extension SBObject: MailMessageViewer {}

// MARK: MailSignature
@objc public protocol MailSignature: SBObjectProtocol, MailGenericMethods {
    optional var content: String { get } // Contents of email signature. If there is a version with fonts and/or styles, that will be returned over the plain text version
    optional var name: String { get } // Name of the signature
    optional func setContent(content: String!) // Contents of email signature. If there is a version with fonts and/or styles, that will be returned over the plain text version
    optional func setName(name: String!) // Name of the signature
}
extension SBObject: MailSignature {}

// MARK: MailMessage
@objc public protocol MailMessage: SBObjectProtocol, MailGenericMethods {
    optional func bccRecipients() -> SBElementArray
    optional func ccRecipients() -> SBElementArray
    optional func recipients() -> SBElementArray
    optional func toRecipients() -> SBElementArray
    optional func headers() -> SBElementArray
    optional func mailAttachments() -> SBElementArray
    optional func id() -> Int // The unique identifier of the message.
    optional var allHeaders: String { get } // All the headers of the message
    optional var backgroundColor: MailHighlightColors { get } // The background color of the message
    optional var mailbox: MailMailbox { get } // The mailbox in which this message is filed
    optional var content: MailRichText { get } // Contents of an email message
    optional var dateReceived: NSDate { get } // The date a message was received
    optional var dateSent: NSDate { get } // The date a message was sent
    optional var deletedStatus: Bool { get } // Indicates whether the message is deleted or not
    optional var flaggedStatus: Bool { get } // Indicates whether the message is flagged or not
    optional var flagIndex: Int { get } // The flag on the message, or -1 if the message is not flagged
    optional var junkMailStatus: Bool { get } // Indicates whether the message has been marked junk or evaluated to be junk by the junk mail filter.
    optional var readStatus: Bool { get } // Indicates whether the message is read or not
    optional var messageId: String { get } // The unique message ID string
    optional var source: String { get } // Raw source of the message
    optional var replyTo: String { get } // The address that replies should be sent to
    optional var messageSize: Int { get } // The size (in bytes) of a message
    optional var sender: String { get } // The sender of the message
    optional var subject: String { get } // The subject of the message
    optional var wasForwarded: Bool { get } // Indicates whether the message was forwarded or not
    optional var wasRedirected: Bool { get } // Indicates whether the message was redirected or not
    optional var wasRepliedTo: Bool { get } // Indicates whether the message was replied to or not
    optional func forwardOpeningWindow(openingWindow: Bool) -> MailOutgoingMessage // Creates a forwarded message.
    optional func redirectOpeningWindow(openingWindow: Bool) -> MailOutgoingMessage // Creates a redirected message.
    optional func replyOpeningWindow(openingWindow: Bool, replyToAll: Bool) -> MailOutgoingMessage // Creates a reply message.
    optional func setBackgroundColor(backgroundColor: MailHighlightColors) // The background color of the message
    optional func setMailbox(mailbox: MailMailbox!) // The mailbox in which this message is filed
    optional func setDeletedStatus(deletedStatus: Bool) // Indicates whether the message is deleted or not
    optional func setFlaggedStatus(flaggedStatus: Bool) // Indicates whether the message is flagged or not
    optional func setFlagIndex(flagIndex: Int) // The flag on the message, or -1 if the message is not flagged
    optional func setJunkMailStatus(junkMailStatus: Bool) // Indicates whether the message has been marked junk or evaluated to be junk by the junk mail filter.
    optional func setReadStatus(readStatus: Bool) // Indicates whether the message is read or not
}
extension SBObject: MailMessage {}

// MARK: MailAccount
@objc public protocol MailAccount: SBObjectProtocol, MailGenericMethods {
    optional func mailboxes() -> SBElementArray
    optional var deliveryAccount: AnyObject { get } // The delivery account used when sending mail from this account
    optional var name: String { get } // The name of an account
    optional var password: String { get } // Password for this account. Can be set, but not read via scripting
    optional var authentication: MailAuthentication { get } // Preferred authentication scheme for account
    optional var accountType: MailTypeOfAccount { get } // The type of an account
    optional var emailAddresses: [AnyObject] { get } // The list of email addresses configured for an account
    optional var fullName: String { get } // The users full name configured for an account
    optional var emptyJunkMessagesFrequency: Int { get } // Number of days before junk messages are deleted (0 = delete on quit, -1 = never delete)
    optional var emptySentMessagesFrequency: Int { get } // Number of days before archived sent messages are deleted (0 = delete on quit, -1 = never delete)
    optional var emptyTrashFrequency: Int { get } // Number of days before messages in the trash are permanently deleted (0 = delete on quit, -1 = never delete)
    optional var emptyJunkMessagesOnQuit: Bool { get } // Indicates whether the messages in the junk messages mailboxes will be deleted on quit
    optional var emptySentMessagesOnQuit: Bool { get } // Indicates whether the messages in the sent messages mailboxes will be deleted on quit
    optional var emptyTrashOnQuit: Bool { get } // Indicates whether the messages in deleted messages mailboxes will be permanently deleted on quit
    optional var enabled: Bool { get } // Indicates whether the account is enabled or not
    optional var userName: String { get } // The user name used to connect to an account
    optional var accountDirectory: NSURL { get } // The directory where the account stores things on disk
    optional var port: Int { get } // The port used to connect to an account
    optional var serverName: String { get } // The host name used to connect to an account
    optional var includeWhenGettingNewMail: Bool { get } // Indicates whether the account will be included when getting new mail
    optional var moveDeletedMessagesToTrash: Bool { get } // Indicates whether messages that are deleted will be moved to the trash mailbox
    optional var usesSsl: Bool { get } // Indicates whether SSL is enabled for this receiving account
    optional func setDeliveryAccount(deliveryAccount: AnyObject!) // The delivery account used when sending mail from this account
    optional func setName(name: String!) // The name of an account
    optional func setPassword(password: String!) // Password for this account. Can be set, but not read via scripting
    optional func setAuthentication(authentication: MailAuthentication) // Preferred authentication scheme for account
    optional func setEmailAddresses(emailAddresses: [AnyObject]!) // The list of email addresses configured for an account
    optional func setFullName(fullName: String!) // The users full name configured for an account
    optional func setEmptyJunkMessagesFrequency(emptyJunkMessagesFrequency: Int) // Number of days before junk messages are deleted (0 = delete on quit, -1 = never delete)
    optional func setEmptySentMessagesFrequency(emptySentMessagesFrequency: Int) // Number of days before archived sent messages are deleted (0 = delete on quit, -1 = never delete)
    optional func setEmptyTrashFrequency(emptyTrashFrequency: Int) // Number of days before messages in the trash are permanently deleted (0 = delete on quit, -1 = never delete)
    optional func setEmptyJunkMessagesOnQuit(emptyJunkMessagesOnQuit: Bool) // Indicates whether the messages in the junk messages mailboxes will be deleted on quit
    optional func setEmptySentMessagesOnQuit(emptySentMessagesOnQuit: Bool) // Indicates whether the messages in the sent messages mailboxes will be deleted on quit
    optional func setEmptyTrashOnQuit(emptyTrashOnQuit: Bool) // Indicates whether the messages in deleted messages mailboxes will be permanently deleted on quit
    optional func setEnabled(enabled: Bool) // Indicates whether the account is enabled or not
    optional func setUserName(userName: String!) // The user name used to connect to an account
    optional func setPort(port: Int) // The port used to connect to an account
    optional func setServerName(serverName: String!) // The host name used to connect to an account
    optional func setIncludeWhenGettingNewMail(includeWhenGettingNewMail: Bool) // Indicates whether the account will be included when getting new mail
    optional func setMoveDeletedMessagesToTrash(moveDeletedMessagesToTrash: Bool) // Indicates whether messages that are deleted will be moved to the trash mailbox
    optional func setUsesSsl(usesSsl: Bool) // Indicates whether SSL is enabled for this receiving account
}
extension SBObject: MailAccount {}

// MARK: MailImapAccount
@objc public protocol MailImapAccount: MailAccount {
    optional var compactMailboxesWhenClosing: Bool { get } // Indicates whether an IMAP mailbox is automatically compacted when you quit Mail or switch to another mailbox
    optional var messageCaching: MailMessageCachingPolicy { get } // Message caching setting for this account
    optional var storeDraftsOnServer: Bool { get } // Indicates whether drafts will be stored on the IMAP server
    optional var storeJunkMailOnServer: Bool { get } // Indicates whether junk mail will be stored on the IMAP server
    optional var storeSentMessagesOnServer: Bool { get } // Indicates whether sent messages will be stored on the IMAP server
    optional var storeDeletedMessagesOnServer: Bool { get } // Indicates whether deleted messages will be stored on the IMAP server
    optional func setCompactMailboxesWhenClosing(compactMailboxesWhenClosing: Bool) // Indicates whether an IMAP mailbox is automatically compacted when you quit Mail or switch to another mailbox
    optional func setMessageCaching(messageCaching: MailMessageCachingPolicy) // Message caching setting for this account
    optional func setStoreDraftsOnServer(storeDraftsOnServer: Bool) // Indicates whether drafts will be stored on the IMAP server
    optional func setStoreJunkMailOnServer(storeJunkMailOnServer: Bool) // Indicates whether junk mail will be stored on the IMAP server
    optional func setStoreSentMessagesOnServer(storeSentMessagesOnServer: Bool) // Indicates whether sent messages will be stored on the IMAP server
    optional func setStoreDeletedMessagesOnServer(storeDeletedMessagesOnServer: Bool) // Indicates whether deleted messages will be stored on the IMAP server
}
extension SBObject: MailImapAccount {}

// MARK: MailICloudAccount
@objc public protocol MailICloudAccount: MailImapAccount {
}
extension SBObject: MailICloudAccount {}

// MARK: MailPopAccount
@objc public protocol MailPopAccount: MailAccount {
    optional var bigMessageWarningSize: Int { get } // If message size (in bytes) is over this amount, Mail will prompt you asking whether you want to download the message (-1 = do not prompt)
    optional var delayedMessageDeletionInterval: Int { get } // Number of days before messages that have been downloaded will be deleted from the server (0 = delete immediately after downloading)
    optional var deleteMailOnServer: Bool { get } // Indicates whether POP account deletes messages on the server after downloading
    optional var deleteMessagesWhenMovedFromInbox: Bool { get } // Indicates whether messages will be deleted from the server when moved from your POP inbox
    optional func setBigMessageWarningSize(bigMessageWarningSize: Int) // If message size (in bytes) is over this amount, Mail will prompt you asking whether you want to download the message (-1 = do not prompt)
    optional func setDelayedMessageDeletionInterval(delayedMessageDeletionInterval: Int) // Number of days before messages that have been downloaded will be deleted from the server (0 = delete immediately after downloading)
    optional func setDeleteMailOnServer(deleteMailOnServer: Bool) // Indicates whether POP account deletes messages on the server after downloading
    optional func setDeleteMessagesWhenMovedFromInbox(deleteMessagesWhenMovedFromInbox: Bool) // Indicates whether messages will be deleted from the server when moved from your POP inbox
}
extension SBObject: MailPopAccount {}

// MARK: MailSmtpServer
@objc public protocol MailSmtpServer: SBObjectProtocol, MailGenericMethods {
    optional var name: String { get } // The name of an account
    optional var password: String { get } // Password for this account. Can be set, but not read via scripting
    optional var accountType: MailTypeOfAccount { get } // The type of an account
    optional var authentication: MailAuthentication { get } // Preferred authentication scheme for account
    optional var enabled: Bool { get } // Indicates whether the account is enabled or not
    optional var userName: String { get } // The user name used to connect to an account
    optional var port: Int { get } // The port used to connect to an account
    optional var serverName: String { get } // The host name used to connect to an account
    optional var usesSsl: Bool { get } // Indicates whether SSL is enabled for this receiving account
    optional func setPassword(password: String!) // Password for this account. Can be set, but not read via scripting
    optional func setAuthentication(authentication: MailAuthentication) // Preferred authentication scheme for account
    optional func setEnabled(enabled: Bool) // Indicates whether the account is enabled or not
    optional func setUserName(userName: String!) // The user name used to connect to an account
    optional func setPort(port: Int) // The port used to connect to an account
    optional func setServerName(serverName: String!) // The host name used to connect to an account
    optional func setUsesSsl(usesSsl: Bool) // Indicates whether SSL is enabled for this receiving account
}
extension SBObject: MailSmtpServer {}

// MARK: MailMailbox
@objc public protocol MailMailbox: SBObjectProtocol, MailGenericMethods {
    optional func mailboxes() -> SBElementArray
    optional func messages() -> SBElementArray
    optional var name: String { get } // The name of a mailbox
    optional var unreadCount: Int { get } // The number of unread messages in the mailbox
    optional var account: MailAccount { get }
    optional var container: MailMailbox { get }
    optional func setName(name: String!) // The name of a mailbox
}
extension SBObject: MailMailbox {}

// MARK: MailRule
@objc public protocol MailRule: SBObjectProtocol, MailGenericMethods {
    optional func ruleConditions() -> SBElementArray
    optional var colorMessage: MailHighlightColors { get } // If rule matches, apply this color
    optional var deleteMessage: Bool { get } // If rule matches, delete message
    optional var forwardText: String { get } // If rule matches, prepend this text to the forwarded message. Set to empty string to include no prepended text
    optional var forwardMessage: String { get } // If rule matches, forward message to this address, or multiple addresses, separated by commas. Set to empty string to disable this action
    optional var markFlagged: Bool { get } // If rule matches, mark message as flagged
    optional var markFlagIndex: Int { get } // If rule matches, mark message with the specified flag. Set to -1 to disable this action
    optional var markRead: Bool { get } // If rule matches, mark message as read
    optional var playSound: String { get } // If rule matches, play this sound (specify name of sound or path to sound)
    optional var redirectMessage: String { get } // If rule matches, redirect message to this address or multiple addresses, separate by commas. Set to empty string to disable this action
    optional var replyText: String { get } // If rule matches, reply to message and prepend with this text. Set to empty string to disable this action
    optional var runScript: AnyObject { get } // If rule matches, run this compiled AppleScript file. Set to empty string to disable this action
    optional var allConditionsMustBeMet: Bool { get } // Indicates whether all conditions must be met for rule to execute
    optional var copyMessage: MailMailbox { get } // If rule matches, copy to this mailbox
    optional var moveMessage: MailMailbox { get } // If rule matches, move to this mailbox
    optional var highlightTextUsingColor: Bool { get } // Indicates whether the color will be used to highlight the text or background of a message in the message list
    optional var enabled: Bool { get } // Indicates whether the rule is enabled
    optional var name: String { get } // Name of rule
    optional var shouldCopyMessage: Bool { get } // Indicates whether the rule has a copy action
    optional var shouldMoveMessage: Bool { get } // Indicates whether the rule has a move action
    optional var stopEvaluatingRules: Bool { get } // If rule matches, stop rule evaluation for this message
    optional func setColorMessage(colorMessage: MailHighlightColors) // If rule matches, apply this color
    optional func setDeleteMessage(deleteMessage: Bool) // If rule matches, delete message
    optional func setForwardText(forwardText: String!) // If rule matches, prepend this text to the forwarded message. Set to empty string to include no prepended text
    optional func setForwardMessage(forwardMessage: String!) // If rule matches, forward message to this address, or multiple addresses, separated by commas. Set to empty string to disable this action
    optional func setMarkFlagged(markFlagged: Bool) // If rule matches, mark message as flagged
    optional func setMarkFlagIndex(markFlagIndex: Int) // If rule matches, mark message with the specified flag. Set to -1 to disable this action
    optional func setMarkRead(markRead: Bool) // If rule matches, mark message as read
    optional func setPlaySound(playSound: String!) // If rule matches, play this sound (specify name of sound or path to sound)
    optional func setRedirectMessage(redirectMessage: String!) // If rule matches, redirect message to this address or multiple addresses, separate by commas. Set to empty string to disable this action
    optional func setReplyText(replyText: String!) // If rule matches, reply to message and prepend with this text. Set to empty string to disable this action
    optional func setRunScript(runScript: AnyObject!) // If rule matches, run this compiled AppleScript file. Set to empty string to disable this action
    optional func setAllConditionsMustBeMet(allConditionsMustBeMet: Bool) // Indicates whether all conditions must be met for rule to execute
    optional func setCopyMessage(copyMessage: MailMailbox!) // If rule matches, copy to this mailbox
    optional func setMoveMessage(moveMessage: MailMailbox!) // If rule matches, move to this mailbox
    optional func setHighlightTextUsingColor(highlightTextUsingColor: Bool) // Indicates whether the color will be used to highlight the text or background of a message in the message list
    optional func setEnabled(enabled: Bool) // Indicates whether the rule is enabled
    optional func setName(name: String!) // Name of rule
    optional func setShouldCopyMessage(shouldCopyMessage: Bool) // Indicates whether the rule has a copy action
    optional func setShouldMoveMessage(shouldMoveMessage: Bool) // Indicates whether the rule has a move action
    optional func setStopEvaluatingRules(stopEvaluatingRules: Bool) // If rule matches, stop rule evaluation for this message
}
extension SBObject: MailRule {}

// MARK: MailRuleCondition
@objc public protocol MailRuleCondition: SBObjectProtocol, MailGenericMethods {
    optional var expression: String { get } // Rule expression field
    optional var header: String { get } // Rule header key
    optional var qualifier: MailRuleQualifier { get } // Rule qualifier
    optional var ruleType: MailRuleType { get } // Rule type
    optional func setExpression(expression: String!) // Rule expression field
    optional func setHeader(header: String!) // Rule header key
    optional func setQualifier(qualifier: MailRuleQualifier) // Rule qualifier
    optional func setRuleType(ruleType: MailRuleType) // Rule type
}
extension SBObject: MailRuleCondition {}

// MARK: MailRecipient
@objc public protocol MailRecipient: SBObjectProtocol, MailGenericMethods {
    optional var address: String { get } // The recipients email address
    optional var name: String { get } // The name used for display
    optional func setAddress(address: String!) // The recipients email address
    optional func setName(name: String!) // The name used for display
}
extension SBObject: MailRecipient {}

// MARK: MailBccRecipient
@objc public protocol MailBccRecipient: MailRecipient {
}
extension SBObject: MailBccRecipient {}

// MARK: MailCcRecipient
@objc public protocol MailCcRecipient: MailRecipient {
}
extension SBObject: MailCcRecipient {}

// MARK: MailToRecipient
@objc public protocol MailToRecipient: MailRecipient {
}
extension SBObject: MailToRecipient {}

// MARK: MailContainer
@objc public protocol MailContainer: MailMailbox {
}
extension SBObject: MailContainer {}

// MARK: MailHeader
@objc public protocol MailHeader: SBObjectProtocol, MailGenericMethods {
    optional var content: String { get } // Contents of the header
    optional var name: String { get } // Name of the header value
    optional func setContent(content: String!) // Contents of the header
    optional func setName(name: String!) // Name of the header value
}
extension SBObject: MailHeader {}

// MARK: MailMailAttachment
@objc public protocol MailMailAttachment: SBObjectProtocol, MailGenericMethods {
    optional var name: String { get } // Name of the attachment
    optional var MIMEType: String { get } // MIME type of the attachment E.g. text/plain.
    optional var fileSize: Int { get } // Approximate size in bytes.
    optional var downloaded: Bool { get } // Indicates whether the attachment has been downloaded.
    optional func id() -> String // The unique identifier of the attachment.
}
extension SBObject: MailMailAttachment {}

