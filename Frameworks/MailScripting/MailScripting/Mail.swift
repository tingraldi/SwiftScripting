import AppKit
import ScriptingBridge

@objc public protocol SBObjectProtocol: NSObjectProtocol {
    func get() -> AnyObject!
}

@objc public protocol SBApplicationProtocol: SBObjectProtocol {
    func activate()
    var delegate: SBApplicationDelegate! { get set }
    var running: Bool { @objc(isRunning) get }
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
    @objc optional func closeSaving(saving: MailSaveOptions, savingIn: NSURL!) // Close a document.
    @objc optional func saveIn(in_: NSURL!, `as`: MailSaveableFileFormat) // Save a document.
    @objc optional func printWithProperties(withProperties: [NSObject : AnyObject]!, printDialog: Bool) // Print a document.
    @objc optional func delete() // Delete an object.
    @objc optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    @objc optional func moveTo(to: SBObject!) // Move an object to a new location.
}

// MARK: MailApplication
@objc public protocol MailApplication: SBApplicationProtocol {
    @objc optional func documents() -> SBElementArray
    @objc optional func windows() -> SBElementArray
    @objc optional var name: String { get } // The name of the application.
    @objc optional var frontmost: Bool { get } // Is this the active application?
    @objc optional var version: String { get } // The version number of the application.
    @objc optional func open(x: AnyObject!) -> AnyObject // Open a document.
    @objc optional func print(x: AnyObject!, withProperties: [NSObject : AnyObject]!, printDialog: Bool) // Print a document.
    @objc optional func quitSaving(saving: MailSaveOptions) // Quit the application.
    @objc optional func exists(x: AnyObject!) -> Bool // Verify that an object exists.
    @objc optional func checkForNewMailFor(for_: MailAccount!) // Triggers a check for email.
    @objc optional func extractNameFrom(x: String!) -> String // Command to get the full name out of a fully specified email address. E.g. Calling this with "John Doe <jdoe@example.com>" as the direct object would return "John Doe"
    @objc optional func extractAddressFrom(x: String!) -> String // Command to get just the email address of a fully specified email address. E.g. Calling this with "John Doe <jdoe@example.com>" as the direct object would return "jdoe@example.com"
    @objc optional func GetURL(x: String!) // Opens a mailto URL.
    @objc optional func importMailMailboxAt(at: NSURL!) // Imports a mailbox created by Mail.
    @objc optional func mailto(x: String!) // Opens a mailto URL.
    @objc optional func performMailActionWithMessages(x: [MailMessage]!, inMailboxes: MailMailbox!, forRule: MailRule!) // Script handler invoked by rules and menus that execute AppleScripts. The direct parameter of this handler is a list of messages being acted upon.
    @objc optional func synchronizeWith(with: MailAccount!) // Command to trigger synchronizing of an IMAP account with the server.
    @objc optional func accounts() -> SBElementArray
    @objc optional func popAccounts() -> SBElementArray
    @objc optional func imapAccounts() -> SBElementArray
    @objc optional func iCloudAccounts() -> SBElementArray
    @objc optional func smtpServers() -> SBElementArray
    @objc optional func outgoingMessages() -> SBElementArray
    @objc optional func mailboxes() -> SBElementArray
    @objc optional func messageViewers() -> SBElementArray
    @objc optional func rules() -> SBElementArray
    @objc optional func signatures() -> SBElementArray
    @objc optional var alwaysBccMyself: Bool { get } // Indicates whether you will be included in the Bcc: field of messages which you are composing
    @objc optional var alwaysCcMyself: Bool { get } // Indicates whether you will be included in the Cc: field of messages which you are composing
    @objc optional var selection: [MailMessage] { get } // List of messages that the user has selected
    @objc optional var applicationVersion: String { get } // The build number for the Mail application bundle
    @objc optional var fetchInterval: Int { get } // The interval (in minutes) between automatic fetches of new mail, -1 means to use an automatically determined interval
    @objc optional var backgroundActivityCount: Int { get } // Number of background activities currently running in Mail, according to the Activity window
    @objc optional var chooseSignatureWhenComposing: Bool { get } // Indicates whether user can choose a signature directly in a new compose window
    @objc optional var colorQuotedText: Bool { get } // Indicates whether quoted text should be colored
    @objc optional var defaultMessageFormat: MailDefaultMessageFormat { get } // Default format for messages being composed or message replies
    @objc optional var downloadHtmlAttachments: Bool { get } // Indicates whether images and attachments in HTML messages should be downloaded and displayed
    @objc optional var draftsMailbox: MailMailbox { get } // The top level Drafts mailbox
    @objc optional var expandGroupAddresses: Bool { get } // Indicates whether group addresses will be expanded when entered into the address fields of a new compose message
    @objc optional var fixedWidthFont: String { get } // Font for plain text messages, only used if 'use fixed width font' is set to true
    @objc optional var fixedWidthFontSize: Double { get } // Font size for plain text messages, only used if 'use fixed width font' is set to true
    @objc optional var frameworkVersion: String { get } // The build number for the Mail framework
    @objc optional var inbox: MailMailbox { get } // The top level In mailbox
    @objc optional var includeAllOriginalMessageText: Bool { get } // Indicates whether all of the original message will be quoted or only the text you have selected (if any)
    @objc optional var quoteOriginalMessage: Bool { get } // Indicates whether the text of the original message will be included in replies
    @objc optional var checkSpellingWhileTyping: Bool { get } // Indicates whether spelling will be checked automatically in messages being composed
    @objc optional var junkMailbox: MailMailbox { get } // The top level Junk mailbox
    @objc optional var levelOneQuotingColor: MailQuotingColor { get } // Color for quoted text with one level of indentation
    @objc optional var levelTwoQuotingColor: MailQuotingColor { get } // Color for quoted text with two levels of indentation
    @objc optional var levelThreeQuotingColor: MailQuotingColor { get } // Color for quoted text with three levels of indentation
    @objc optional var messageFont: String { get } // Font for messages (proportional font)
    @objc optional var messageFontSize: Double { get } // Font size for messages (proportional font)
    @objc optional var messageListFont: String { get } // Font for message list
    @objc optional var messageListFontSize: Double { get } // Font size for message list
    @objc optional var newMailSound: String { get } // Name of new mail sound or 'None' if no sound is selected
    @objc optional var outbox: MailMailbox { get } // The top level Out mailbox
    @objc optional var shouldPlayOtherMailSounds: Bool { get } // Indicates whether sounds will be played for various things such as when a messages is sent or if no mail is found when manually checking for new mail or if there is a fetch error
    @objc optional var sameReplyFormat: Bool { get } // Indicates whether replies will be in the same text format as the message to which you are replying
    @objc optional var selectedSignature: String { get } // Name of current selected signature (or 'randomly', 'sequentially', or 'none')
    @objc optional var sentMailbox: MailMailbox { get } // The top level Sent mailbox
    @objc optional var fetchesAutomatically: Bool { get } // Indicates whether mail will automatically be fetched at a specific interval
    @objc optional var highlightSelectedConversation: Bool { get } // Indicates whether messages in conversations should be highlighted in the Mail viewer window when not grouped
    @objc optional var trashMailbox: MailMailbox { get } // The top level Trash mailbox
    @objc optional var useAddressCompletion: Bool { get } // This always returns true, and setting it doesn't do anything (deprecated)
    @objc optional var useFixedWidthFont: Bool { get } // Should fixed-width font be used for plain text messages?
    @objc optional var primaryEmail: String { get } // The user's primary email address
    @objc optional func setAlwaysBccMyself(alwaysBccMyself: Bool) // Indicates whether you will be included in the Bcc: field of messages which you are composing
    @objc optional func setAlwaysCcMyself(alwaysCcMyself: Bool) // Indicates whether you will be included in the Cc: field of messages which you are composing
    @objc optional func setFetchInterval(fetchInterval: Int) // The interval (in minutes) between automatic fetches of new mail, -1 means to use an automatically determined interval
    @objc optional func setChooseSignatureWhenComposing(chooseSignatureWhenComposing: Bool) // Indicates whether user can choose a signature directly in a new compose window
    @objc optional func setColorQuotedText(colorQuotedText: Bool) // Indicates whether quoted text should be colored
    @objc optional func setDefaultMessageFormat(defaultMessageFormat: MailDefaultMessageFormat) // Default format for messages being composed or message replies
    @objc optional func setDownloadHtmlAttachments(downloadHtmlAttachments: Bool) // Indicates whether images and attachments in HTML messages should be downloaded and displayed
    @objc optional func setExpandGroupAddresses(expandGroupAddresses: Bool) // Indicates whether group addresses will be expanded when entered into the address fields of a new compose message
    @objc optional func setFixedWidthFont(fixedWidthFont: String!) // Font for plain text messages, only used if 'use fixed width font' is set to true
    @objc optional func setFixedWidthFontSize(fixedWidthFontSize: Double) // Font size for plain text messages, only used if 'use fixed width font' is set to true
    @objc optional func setIncludeAllOriginalMessageText(includeAllOriginalMessageText: Bool) // Indicates whether all of the original message will be quoted or only the text you have selected (if any)
    @objc optional func setQuoteOriginalMessage(quoteOriginalMessage: Bool) // Indicates whether the text of the original message will be included in replies
    @objc optional func setCheckSpellingWhileTyping(checkSpellingWhileTyping: Bool) // Indicates whether spelling will be checked automatically in messages being composed
    @objc optional func setLevelOneQuotingColor(levelOneQuotingColor: MailQuotingColor) // Color for quoted text with one level of indentation
    @objc optional func setLevelTwoQuotingColor(levelTwoQuotingColor: MailQuotingColor) // Color for quoted text with two levels of indentation
    @objc optional func setLevelThreeQuotingColor(levelThreeQuotingColor: MailQuotingColor) // Color for quoted text with three levels of indentation
    @objc optional func setMessageFont(messageFont: String!) // Font for messages (proportional font)
    @objc optional func setMessageFontSize(messageFontSize: Double) // Font size for messages (proportional font)
    @objc optional func setMessageListFont(messageListFont: String!) // Font for message list
    @objc optional func setMessageListFontSize(messageListFontSize: Double) // Font size for message list
    @objc optional func setNewMailSound(newMailSound: String!) // Name of new mail sound or 'None' if no sound is selected
    @objc optional func setShouldPlayOtherMailSounds(shouldPlayOtherMailSounds: Bool) // Indicates whether sounds will be played for various things such as when a messages is sent or if no mail is found when manually checking for new mail or if there is a fetch error
    @objc optional func setSameReplyFormat(sameReplyFormat: Bool) // Indicates whether replies will be in the same text format as the message to which you are replying
    @objc optional func setSelectedSignature(selectedSignature: String!) // Name of current selected signature (or 'randomly', 'sequentially', or 'none')
    @objc optional func setFetchesAutomatically(fetchesAutomatically: Bool) // Indicates whether mail will automatically be fetched at a specific interval
    @objc optional func setHighlightSelectedConversation(highlightSelectedConversation: Bool) // Indicates whether messages in conversations should be highlighted in the Mail viewer window when not grouped
    @objc optional func setUseAddressCompletion(useAddressCompletion: Bool) // This always returns true, and setting it doesn't do anything (deprecated)
    @objc optional func setUseFixedWidthFont(useFixedWidthFont: Bool) // Should fixed-width font be used for plain text messages?
}
extension SBApplication: MailApplication {}

// MARK: MailDocument
@objc public protocol MailDocument: SBObjectProtocol, MailGenericMethods {
    @objc optional var name: String { get } // Its name.
    @objc optional var modified: Bool { get } // Has it been modified since the last save?
    @objc optional var file: NSURL { get } // Its location on disk, if it has one.
}
extension SBObject: MailDocument {}

// MARK: MailWindow
@objc public protocol MailWindow: SBObjectProtocol, MailGenericMethods {
    @objc optional var name: String { get } // The title of the window.
    @objc optional func id() -> Int // The unique identifier of the window.
    @objc optional var index: Int { get } // The index of the window, ordered front to back.
    @objc optional var bounds: NSRect { get } // The bounding rectangle of the window.
    @objc optional var closeable: Bool { get } // Does the window have a close button?
    @objc optional var miniaturizable: Bool { get } // Does the window have a minimize button?
    @objc optional var miniaturized: Bool { get } // Is the window minimized right now?
    @objc optional var resizable: Bool { get } // Can the window be resized?
    @objc optional var visible: Bool { get } // Is the window visible right now?
    @objc optional var zoomable: Bool { get } // Does the window have a zoom button?
    @objc optional var zoomed: Bool { get } // Is the window zoomed right now?
    @objc optional var document: MailDocument { get } // The document whose contents are displayed in the window.
    @objc optional func setIndex(index: Int) // The index of the window, ordered front to back.
    @objc optional func setBounds(bounds: NSRect) // The bounding rectangle of the window.
    @objc optional func setMiniaturized(miniaturized: Bool) // Is the window minimized right now?
    @objc optional func setVisible(visible: Bool) // Is the window visible right now?
    @objc optional func setZoomed(zoomed: Bool) // Is the window zoomed right now?
}
extension SBObject: MailWindow {}

// MARK: MailRichText
@objc public protocol MailRichText: SBObjectProtocol, MailGenericMethods {
    @objc optional func paragraphs() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional func characters() -> SBElementArray
    @objc optional func attributeRuns() -> SBElementArray
    @objc optional func attachments() -> SBElementArray
    @objc optional var color: NSColor { get } // The color of the first character.
    @objc optional var font: String { get } // The name of the font of the first character.
    @objc optional var size: NSNumber { get } // The size in points of the first character.
    @objc optional func setColor(color: NSColor!) // The color of the first character.
    @objc optional func setFont(font: String!) // The name of the font of the first character.
    @objc optional func setSize(size: NSNumber!) // The size in points of the first character.
}
extension SBObject: MailRichText {}

// MARK: MailAttachment
@objc public protocol MailAttachment: MailRichText {
    @objc optional var fileName: NSURL { get } // The file for the attachment
    @objc optional func setFileName(fileName: NSURL!) // The file for the attachment
}
extension SBObject: MailAttachment {}

// MARK: MailParagraph
@objc public protocol MailParagraph: SBObjectProtocol, MailGenericMethods {
    @objc optional func words() -> SBElementArray
    @objc optional func characters() -> SBElementArray
    @objc optional func attributeRuns() -> SBElementArray
    @objc optional func attachments() -> SBElementArray
    @objc optional var color: NSColor { get } // The color of the first character.
    @objc optional var font: String { get } // The name of the font of the first character.
    @objc optional var size: NSNumber { get } // The size in points of the first character.
    @objc optional func setColor(color: NSColor!) // The color of the first character.
    @objc optional func setFont(font: String!) // The name of the font of the first character.
    @objc optional func setSize(size: NSNumber!) // The size in points of the first character.
}
extension SBObject: MailParagraph {}

// MARK: MailWord
@objc public protocol MailWord: SBObjectProtocol, MailGenericMethods {
    @objc optional func characters() -> SBElementArray
    @objc optional func attributeRuns() -> SBElementArray
    @objc optional func attachments() -> SBElementArray
    @objc optional var color: NSColor { get } // The color of the first character.
    @objc optional var font: String { get } // The name of the font of the first character.
    @objc optional var size: NSNumber { get } // The size in points of the first character.
    @objc optional func setColor(color: NSColor!) // The color of the first character.
    @objc optional func setFont(font: String!) // The name of the font of the first character.
    @objc optional func setSize(size: NSNumber!) // The size in points of the first character.
}
extension SBObject: MailWord {}

// MARK: MailCharacter
@objc public protocol MailCharacter: SBObjectProtocol, MailGenericMethods {
    @objc optional func attributeRuns() -> SBElementArray
    @objc optional func attachments() -> SBElementArray
    @objc optional var color: NSColor { get } // The color of the character.
    @objc optional var font: String { get } // The name of the font of the character.
    @objc optional var size: NSNumber { get } // The size in points of the character.
    @objc optional func setColor(color: NSColor!) // The color of the character.
    @objc optional func setFont(font: String!) // The name of the font of the character.
    @objc optional func setSize(size: NSNumber!) // The size in points of the character.
}
extension SBObject: MailCharacter {}

// MARK: MailAttributeRun
@objc public protocol MailAttributeRun: SBObjectProtocol, MailGenericMethods {
    @objc optional func paragraphs() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional func characters() -> SBElementArray
    @objc optional func attachments() -> SBElementArray
    @objc optional var color: NSColor { get } // The color of the first character.
    @objc optional var font: String { get } // The name of the font of the first character.
    @objc optional var size: NSNumber { get } // The size in points of the first character.
    @objc optional func setColor(color: NSColor!) // The color of the first character.
    @objc optional func setFont(font: String!) // The name of the font of the first character.
    @objc optional func setSize(size: NSNumber!) // The size in points of the first character.
}
extension SBObject: MailAttributeRun {}

// MARK: MailOutgoingMessage
@objc public protocol MailOutgoingMessage: SBObjectProtocol, MailGenericMethods {
    @objc optional func bccRecipients() -> SBElementArray
    @objc optional func ccRecipients() -> SBElementArray
    @objc optional func recipients() -> SBElementArray
    @objc optional func toRecipients() -> SBElementArray
    @objc optional var sender: String { get } // The sender of the message
    @objc optional var subject: String { get } // The subject of the message
    @objc optional var content: MailRichText { get } // The contents of the message
    @objc optional var visible: Bool { get } // Controls whether the message window is shown on the screen. The default is false
    @objc optional var messageSignature: AnyObject { get } // The signature of the message
    @objc optional func id() -> Int // The unique identifier of the message
    @objc optional func send() -> Bool // Sends a message.
    @objc optional func setSender(sender: String!) // The sender of the message
    @objc optional func setSubject(subject: String!) // The subject of the message
    @objc optional func setContent(content: MailRichText!) // The contents of the message
    @objc optional func setVisible(visible: Bool) // Controls whether the message window is shown on the screen. The default is false
    @objc optional func setMessageSignature(messageSignature: AnyObject!) // The signature of the message
}
extension SBObject: MailOutgoingMessage {}

// MARK: MailMessageViewer
@objc public protocol MailMessageViewer: SBObjectProtocol, MailGenericMethods {
    @objc optional func messages() -> SBElementArray
    @objc optional var draftsMailbox: MailMailbox { get } // The top level Drafts mailbox
    @objc optional var inbox: MailMailbox { get } // The top level In mailbox
    @objc optional var junkMailbox: MailMailbox { get } // The top level Junk mailbox
    @objc optional var outbox: MailMailbox { get } // The top level Out mailbox
    @objc optional var sentMailbox: MailMailbox { get } // The top level Sent mailbox
    @objc optional var trashMailbox: MailMailbox { get } // The top level Trash mailbox
    @objc optional var sortColumn: MailViewerColumns { get } // The column that is currently sorted in the viewer
    @objc optional var sortedAscending: Bool { get } // Whether the viewer is sorted ascending or not
    @objc optional var mailboxListVisible: Bool { get } // Controls whether the list of mailboxes is visible or not
    @objc optional var previewPaneIsVisible: Bool { get } // Controls whether the preview pane of the message viewer window is visible or not
    @objc optional var visibleColumns: [NSAppleEventDescriptor] { get } // List of columns that are visible. The subject column and the message status column will always be visible
    @objc optional func id() -> Int // The unique identifier of the message viewer
    @objc optional var visibleMessages: [MailMessage] { get } // List of messages currently being displayed in the viewer
    @objc optional var selectedMessages: [MailMessage] { get } // List of messages currently selected
    @objc optional var selectedMailboxes: [MailMailbox] { get } // List of mailboxes currently selected in the list of mailboxes
    @objc optional var window: MailWindow { get } // The window for the message viewer
    @objc optional func setSortColumn(sortColumn: MailViewerColumns) // The column that is currently sorted in the viewer
    @objc optional func setSortedAscending(sortedAscending: Bool) // Whether the viewer is sorted ascending or not
    @objc optional func setMailboxListVisible(mailboxListVisible: Bool) // Controls whether the list of mailboxes is visible or not
    @objc optional func setPreviewPaneIsVisible(previewPaneIsVisible: Bool) // Controls whether the preview pane of the message viewer window is visible or not
    @objc optional func setVisibleColumns(visibleColumns: [NSAppleEventDescriptor]!) // List of columns that are visible. The subject column and the message status column will always be visible
    @objc optional func setVisibleMessages(visibleMessages: [MailMessage]!) // List of messages currently being displayed in the viewer
    @objc optional func setSelectedMessages(selectedMessages: [MailMessage]!) // List of messages currently selected
    @objc optional func setSelectedMailboxes(selectedMailboxes: [MailMailbox]!) // List of mailboxes currently selected in the list of mailboxes
    @objc optional func setWindow(window: MailWindow!) // The window for the message viewer
}
extension SBObject: MailMessageViewer {}

// MARK: MailSignature
@objc public protocol MailSignature: SBObjectProtocol, MailGenericMethods {
    @objc optional var content: String { get } // Contents of email signature. If there is a version with fonts and/or styles, that will be returned over the plain text version
    @objc optional var name: String { get } // Name of the signature
    @objc optional func setContent(content: String!) // Contents of email signature. If there is a version with fonts and/or styles, that will be returned over the plain text version
    @objc optional func setName(name: String!) // Name of the signature
}
extension SBObject: MailSignature {}

// MARK: MailMessage
@objc public protocol MailMessage: SBObjectProtocol, MailGenericMethods {
    @objc optional func bccRecipients() -> SBElementArray
    @objc optional func ccRecipients() -> SBElementArray
    @objc optional func recipients() -> SBElementArray
    @objc optional func toRecipients() -> SBElementArray
    @objc optional func headers() -> SBElementArray
    @objc optional func mailAttachments() -> SBElementArray
    @objc optional func id() -> Int // The unique identifier of the message.
    @objc optional var allHeaders: String { get } // All the headers of the message
    @objc optional var backgroundColor: MailHighlightColors { get } // The background color of the message
    @objc optional var mailbox: MailMailbox { get } // The mailbox in which this message is filed
    @objc optional var content: MailRichText { get } // Contents of an email message
    @objc optional var dateReceived: NSDate { get } // The date a message was received
    @objc optional var dateSent: NSDate { get } // The date a message was sent
    @objc optional var deletedStatus: Bool { get } // Indicates whether the message is deleted or not
    @objc optional var flaggedStatus: Bool { get } // Indicates whether the message is flagged or not
    @objc optional var flagIndex: Int { get } // The flag on the message, or -1 if the message is not flagged
    @objc optional var junkMailStatus: Bool { get } // Indicates whether the message has been marked junk or evaluated to be junk by the junk mail filter.
    @objc optional var readStatus: Bool { get } // Indicates whether the message is read or not
    @objc optional var messageId: String { get } // The unique message ID string
    @objc optional var source: String { get } // Raw source of the message
    @objc optional var replyTo: String { get } // The address that replies should be sent to
    @objc optional var messageSize: Int { get } // The size (in bytes) of a message
    @objc optional var sender: String { get } // The sender of the message
    @objc optional var subject: String { get } // The subject of the message
    @objc optional var wasForwarded: Bool { get } // Indicates whether the message was forwarded or not
    @objc optional var wasRedirected: Bool { get } // Indicates whether the message was redirected or not
    @objc optional var wasRepliedTo: Bool { get } // Indicates whether the message was replied to or not
    @objc optional func forwardOpeningWindow(openingWindow: Bool) -> MailOutgoingMessage // Creates a forwarded message.
    @objc optional func redirectOpeningWindow(openingWindow: Bool) -> MailOutgoingMessage // Creates a redirected message.
    @objc optional func replyOpeningWindow(openingWindow: Bool, replyToAll: Bool) -> MailOutgoingMessage // Creates a reply message.
    @objc optional func setBackgroundColor(backgroundColor: MailHighlightColors) // The background color of the message
    @objc optional func setMailbox(mailbox: MailMailbox!) // The mailbox in which this message is filed
    @objc optional func setDeletedStatus(deletedStatus: Bool) // Indicates whether the message is deleted or not
    @objc optional func setFlaggedStatus(flaggedStatus: Bool) // Indicates whether the message is flagged or not
    @objc optional func setFlagIndex(flagIndex: Int) // The flag on the message, or -1 if the message is not flagged
    @objc optional func setJunkMailStatus(junkMailStatus: Bool) // Indicates whether the message has been marked junk or evaluated to be junk by the junk mail filter.
    @objc optional func setReadStatus(readStatus: Bool) // Indicates whether the message is read or not
}
extension SBObject: MailMessage {}

// MARK: MailAccount
@objc public protocol MailAccount: SBObjectProtocol, MailGenericMethods {
    @objc optional func mailboxes() -> SBElementArray
    @objc optional var deliveryAccount: AnyObject { get } // The delivery account used when sending mail from this account
    @objc optional var name: String { get } // The name of an account
    @objc optional var password: String { get } // Password for this account. Can be set, but not read via scripting
    @objc optional var authentication: MailAuthentication { get } // Preferred authentication scheme for account
    @objc optional var accountType: MailTypeOfAccount { get } // The type of an account
    @objc optional var emailAddresses: [String] { get } // The list of email addresses configured for an account
    @objc optional var fullName: String { get } // The users full name configured for an account
    @objc optional var emptyJunkMessagesFrequency: Int { get } // Number of days before junk messages are deleted (0 = delete on quit, -1 = never delete)
    @objc optional var emptySentMessagesFrequency: Int { get } // Number of days before archived sent messages are deleted (0 = delete on quit, -1 = never delete)
    @objc optional var emptyTrashFrequency: Int { get } // Number of days before messages in the trash are permanently deleted (0 = delete on quit, -1 = never delete)
    @objc optional var emptyJunkMessagesOnQuit: Bool { get } // Indicates whether the messages in the junk messages mailboxes will be deleted on quit
    @objc optional var emptySentMessagesOnQuit: Bool { get } // Indicates whether the messages in the sent messages mailboxes will be deleted on quit
    @objc optional var emptyTrashOnQuit: Bool { get } // Indicates whether the messages in deleted messages mailboxes will be permanently deleted on quit
    @objc optional var enabled: Bool { get } // Indicates whether the account is enabled or not
    @objc optional var userName: String { get } // The user name used to connect to an account
    @objc optional var accountDirectory: NSURL { get } // The directory where the account stores things on disk
    @objc optional var port: Int { get } // The port used to connect to an account
    @objc optional var serverName: String { get } // The host name used to connect to an account
    @objc optional var includeWhenGettingNewMail: Bool { get } // Indicates whether the account will be included when getting new mail
    @objc optional var moveDeletedMessagesToTrash: Bool { get } // Indicates whether messages that are deleted will be moved to the trash mailbox
    @objc optional var usesSsl: Bool { get } // Indicates whether SSL is enabled for this receiving account
    @objc optional func setDeliveryAccount(deliveryAccount: AnyObject!) // The delivery account used when sending mail from this account
    @objc optional func setName(name: String!) // The name of an account
    @objc optional func setPassword(password: String!) // Password for this account. Can be set, but not read via scripting
    @objc optional func setAuthentication(authentication: MailAuthentication) // Preferred authentication scheme for account
    @objc optional func setEmailAddresses(emailAddresses: [String]!) // The list of email addresses configured for an account
    @objc optional func setFullName(fullName: String!) // The users full name configured for an account
    @objc optional func setEmptyJunkMessagesFrequency(emptyJunkMessagesFrequency: Int) // Number of days before junk messages are deleted (0 = delete on quit, -1 = never delete)
    @objc optional func setEmptySentMessagesFrequency(emptySentMessagesFrequency: Int) // Number of days before archived sent messages are deleted (0 = delete on quit, -1 = never delete)
    @objc optional func setEmptyTrashFrequency(emptyTrashFrequency: Int) // Number of days before messages in the trash are permanently deleted (0 = delete on quit, -1 = never delete)
    @objc optional func setEmptyJunkMessagesOnQuit(emptyJunkMessagesOnQuit: Bool) // Indicates whether the messages in the junk messages mailboxes will be deleted on quit
    @objc optional func setEmptySentMessagesOnQuit(emptySentMessagesOnQuit: Bool) // Indicates whether the messages in the sent messages mailboxes will be deleted on quit
    @objc optional func setEmptyTrashOnQuit(emptyTrashOnQuit: Bool) // Indicates whether the messages in deleted messages mailboxes will be permanently deleted on quit
    @objc optional func setEnabled(enabled: Bool) // Indicates whether the account is enabled or not
    @objc optional func setUserName(userName: String!) // The user name used to connect to an account
    @objc optional func setPort(port: Int) // The port used to connect to an account
    @objc optional func setServerName(serverName: String!) // The host name used to connect to an account
    @objc optional func setIncludeWhenGettingNewMail(includeWhenGettingNewMail: Bool) // Indicates whether the account will be included when getting new mail
    @objc optional func setMoveDeletedMessagesToTrash(moveDeletedMessagesToTrash: Bool) // Indicates whether messages that are deleted will be moved to the trash mailbox
    @objc optional func setUsesSsl(usesSsl: Bool) // Indicates whether SSL is enabled for this receiving account
}
extension SBObject: MailAccount {}

// MARK: MailImapAccount
@objc public protocol MailImapAccount: MailAccount {
    @objc optional var compactMailboxesWhenClosing: Bool { get } // Indicates whether an IMAP mailbox is automatically compacted when you quit Mail or switch to another mailbox
    @objc optional var messageCaching: MailMessageCachingPolicy { get } // Message caching setting for this account
    @objc optional var storeDraftsOnServer: Bool { get } // Indicates whether drafts will be stored on the IMAP server
    @objc optional var storeJunkMailOnServer: Bool { get } // Indicates whether junk mail will be stored on the IMAP server
    @objc optional var storeSentMessagesOnServer: Bool { get } // Indicates whether sent messages will be stored on the IMAP server
    @objc optional var storeDeletedMessagesOnServer: Bool { get } // Indicates whether deleted messages will be stored on the IMAP server
    @objc optional func setCompactMailboxesWhenClosing(compactMailboxesWhenClosing: Bool) // Indicates whether an IMAP mailbox is automatically compacted when you quit Mail or switch to another mailbox
    @objc optional func setMessageCaching(messageCaching: MailMessageCachingPolicy) // Message caching setting for this account
    @objc optional func setStoreDraftsOnServer(storeDraftsOnServer: Bool) // Indicates whether drafts will be stored on the IMAP server
    @objc optional func setStoreJunkMailOnServer(storeJunkMailOnServer: Bool) // Indicates whether junk mail will be stored on the IMAP server
    @objc optional func setStoreSentMessagesOnServer(storeSentMessagesOnServer: Bool) // Indicates whether sent messages will be stored on the IMAP server
    @objc optional func setStoreDeletedMessagesOnServer(storeDeletedMessagesOnServer: Bool) // Indicates whether deleted messages will be stored on the IMAP server
}
extension SBObject: MailImapAccount {}

// MARK: MailICloudAccount
@objc public protocol MailICloudAccount: MailImapAccount {
}
extension SBObject: MailICloudAccount {}

// MARK: MailPopAccount
@objc public protocol MailPopAccount: MailAccount {
    @objc optional var bigMessageWarningSize: Int { get } // If message size (in bytes) is over this amount, Mail will prompt you asking whether you want to download the message (-1 = do not prompt)
    @objc optional var delayedMessageDeletionInterval: Int { get } // Number of days before messages that have been downloaded will be deleted from the server (0 = delete immediately after downloading)
    @objc optional var deleteMailOnServer: Bool { get } // Indicates whether POP account deletes messages on the server after downloading
    @objc optional var deleteMessagesWhenMovedFromInbox: Bool { get } // Indicates whether messages will be deleted from the server when moved from your POP inbox
    @objc optional func setBigMessageWarningSize(bigMessageWarningSize: Int) // If message size (in bytes) is over this amount, Mail will prompt you asking whether you want to download the message (-1 = do not prompt)
    @objc optional func setDelayedMessageDeletionInterval(delayedMessageDeletionInterval: Int) // Number of days before messages that have been downloaded will be deleted from the server (0 = delete immediately after downloading)
    @objc optional func setDeleteMailOnServer(deleteMailOnServer: Bool) // Indicates whether POP account deletes messages on the server after downloading
    @objc optional func setDeleteMessagesWhenMovedFromInbox(deleteMessagesWhenMovedFromInbox: Bool) // Indicates whether messages will be deleted from the server when moved from your POP inbox
}
extension SBObject: MailPopAccount {}

// MARK: MailSmtpServer
@objc public protocol MailSmtpServer: SBObjectProtocol, MailGenericMethods {
    @objc optional var name: String { get } // The name of an account
    @objc optional var password: String { get } // Password for this account. Can be set, but not read via scripting
    @objc optional var accountType: MailTypeOfAccount { get } // The type of an account
    @objc optional var authentication: MailAuthentication { get } // Preferred authentication scheme for account
    @objc optional var enabled: Bool { get } // Indicates whether the account is enabled or not
    @objc optional var userName: String { get } // The user name used to connect to an account
    @objc optional var port: Int { get } // The port used to connect to an account
    @objc optional var serverName: String { get } // The host name used to connect to an account
    @objc optional var usesSsl: Bool { get } // Indicates whether SSL is enabled for this receiving account
    @objc optional func setPassword(password: String!) // Password for this account. Can be set, but not read via scripting
    @objc optional func setAuthentication(authentication: MailAuthentication) // Preferred authentication scheme for account
    @objc optional func setEnabled(enabled: Bool) // Indicates whether the account is enabled or not
    @objc optional func setUserName(userName: String!) // The user name used to connect to an account
    @objc optional func setPort(port: Int) // The port used to connect to an account
    @objc optional func setServerName(serverName: String!) // The host name used to connect to an account
    @objc optional func setUsesSsl(usesSsl: Bool) // Indicates whether SSL is enabled for this receiving account
}
extension SBObject: MailSmtpServer {}

// MARK: MailMailbox
@objc public protocol MailMailbox: SBObjectProtocol, MailGenericMethods {
    @objc optional func mailboxes() -> SBElementArray
    @objc optional func messages() -> SBElementArray
    @objc optional var name: String { get } // The name of a mailbox
    @objc optional var unreadCount: Int { get } // The number of unread messages in the mailbox
    @objc optional var account: MailAccount { get }
    @objc optional var container: MailMailbox { get }
    @objc optional func setName(name: String!) // The name of a mailbox
}
extension SBObject: MailMailbox {}

// MARK: MailRule
@objc public protocol MailRule: SBObjectProtocol, MailGenericMethods {
    @objc optional func ruleConditions() -> SBElementArray
    @objc optional var colorMessage: MailHighlightColors { get } // If rule matches, apply this color
    @objc optional var deleteMessage: Bool { get } // If rule matches, delete message
    @objc optional var forwardText: String { get } // If rule matches, prepend this text to the forwarded message. Set to empty string to include no prepended text
    @objc optional var forwardMessage: String { get } // If rule matches, forward message to this address, or multiple addresses, separated by commas. Set to empty string to disable this action
    @objc optional var markFlagged: Bool { get } // If rule matches, mark message as flagged
    @objc optional var markFlagIndex: Int { get } // If rule matches, mark message with the specified flag. Set to -1 to disable this action
    @objc optional var markRead: Bool { get } // If rule matches, mark message as read
    @objc optional var playSound: String { get } // If rule matches, play this sound (specify name of sound or path to sound)
    @objc optional var redirectMessage: String { get } // If rule matches, redirect message to this address or multiple addresses, separate by commas. Set to empty string to disable this action
    @objc optional var replyText: String { get } // If rule matches, reply to message and prepend with this text. Set to empty string to disable this action
    @objc optional var runScript: AnyObject { get } // If rule matches, run this compiled AppleScript file. Set to empty string to disable this action
    @objc optional var allConditionsMustBeMet: Bool { get } // Indicates whether all conditions must be met for rule to execute
    @objc optional var copyMessage: MailMailbox { get } // If rule matches, copy to this mailbox
    @objc optional var moveMessage: MailMailbox { get } // If rule matches, move to this mailbox
    @objc optional var highlightTextUsingColor: Bool { get } // Indicates whether the color will be used to highlight the text or background of a message in the message list
    @objc optional var enabled: Bool { get } // Indicates whether the rule is enabled
    @objc optional var name: String { get } // Name of rule
    @objc optional var shouldCopyMessage: Bool { get } // Indicates whether the rule has a copy action
    @objc optional var shouldMoveMessage: Bool { get } // Indicates whether the rule has a move action
    @objc optional var stopEvaluatingRules: Bool { get } // If rule matches, stop rule evaluation for this message
    @objc optional func setColorMessage(colorMessage: MailHighlightColors) // If rule matches, apply this color
    @objc optional func setDeleteMessage(deleteMessage: Bool) // If rule matches, delete message
    @objc optional func setForwardText(forwardText: String!) // If rule matches, prepend this text to the forwarded message. Set to empty string to include no prepended text
    @objc optional func setForwardMessage(forwardMessage: String!) // If rule matches, forward message to this address, or multiple addresses, separated by commas. Set to empty string to disable this action
    @objc optional func setMarkFlagged(markFlagged: Bool) // If rule matches, mark message as flagged
    @objc optional func setMarkFlagIndex(markFlagIndex: Int) // If rule matches, mark message with the specified flag. Set to -1 to disable this action
    @objc optional func setMarkRead(markRead: Bool) // If rule matches, mark message as read
    @objc optional func setPlaySound(playSound: String!) // If rule matches, play this sound (specify name of sound or path to sound)
    @objc optional func setRedirectMessage(redirectMessage: String!) // If rule matches, redirect message to this address or multiple addresses, separate by commas. Set to empty string to disable this action
    @objc optional func setReplyText(replyText: String!) // If rule matches, reply to message and prepend with this text. Set to empty string to disable this action
    @objc optional func setRunScript(runScript: AnyObject!) // If rule matches, run this compiled AppleScript file. Set to empty string to disable this action
    @objc optional func setAllConditionsMustBeMet(allConditionsMustBeMet: Bool) // Indicates whether all conditions must be met for rule to execute
    @objc optional func setCopyMessage(copyMessage: MailMailbox!) // If rule matches, copy to this mailbox
    @objc optional func setMoveMessage(moveMessage: MailMailbox!) // If rule matches, move to this mailbox
    @objc optional func setHighlightTextUsingColor(highlightTextUsingColor: Bool) // Indicates whether the color will be used to highlight the text or background of a message in the message list
    @objc optional func setEnabled(enabled: Bool) // Indicates whether the rule is enabled
    @objc optional func setName(name: String!) // Name of rule
    @objc optional func setShouldCopyMessage(shouldCopyMessage: Bool) // Indicates whether the rule has a copy action
    @objc optional func setShouldMoveMessage(shouldMoveMessage: Bool) // Indicates whether the rule has a move action
    @objc optional func setStopEvaluatingRules(stopEvaluatingRules: Bool) // If rule matches, stop rule evaluation for this message
}
extension SBObject: MailRule {}

// MARK: MailRuleCondition
@objc public protocol MailRuleCondition: SBObjectProtocol, MailGenericMethods {
    @objc optional var expression: String { get } // Rule expression field
    @objc optional var header: String { get } // Rule header key
    @objc optional var qualifier: MailRuleQualifier { get } // Rule qualifier
    @objc optional var ruleType: MailRuleType { get } // Rule type
    @objc optional func setExpression(expression: String!) // Rule expression field
    @objc optional func setHeader(header: String!) // Rule header key
    @objc optional func setQualifier(qualifier: MailRuleQualifier) // Rule qualifier
    @objc optional func setRuleType(ruleType: MailRuleType) // Rule type
}
extension SBObject: MailRuleCondition {}

// MARK: MailRecipient
@objc public protocol MailRecipient: SBObjectProtocol, MailGenericMethods {
    @objc optional var address: String { get } // The recipients email address
    @objc optional var name: String { get } // The name used for display
    @objc optional func setAddress(address: String!) // The recipients email address
    @objc optional func setName(name: String!) // The name used for display
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
    @objc optional var content: String { get } // Contents of the header
    @objc optional var name: String { get } // Name of the header value
    @objc optional func setContent(content: String!) // Contents of the header
    @objc optional func setName(name: String!) // Name of the header value
}
extension SBObject: MailHeader {}

// MARK: MailMailAttachment
@objc public protocol MailMailAttachment: SBObjectProtocol, MailGenericMethods {
    @objc optional var name: String { get } // Name of the attachment
    @objc optional var MIMEType: String { get } // MIME type of the attachment E.g. text/plain.
    @objc optional var fileSize: Int { get } // Approximate size in bytes.
    @objc optional var downloaded: Bool { get } // Indicates whether the attachment has been downloaded.
    @objc optional func id() -> String // The unique identifier of the attachment.
}
extension SBObject: MailMailAttachment {}

