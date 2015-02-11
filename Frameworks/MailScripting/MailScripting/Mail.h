/*
 * Mail.h
 */

#import <AppKit/AppKit.h>
#import <ScriptingBridge/ScriptingBridge.h>


@class MailApplication, MailDocument, MailWindow, MailRichText, MailAttachment, MailParagraph, MailWord, MailCharacter, MailAttributeRun, MailOutgoingMessage, MailLdapServer, MailOLDMessageEditor, MailMessageViewer, MailSignature, MailMessage, MailAccount, MailImapAccount, MailICloudAccount, MailPopAccount, MailSmtpServer, MailMailbox, MailRule, MailRuleCondition, MailRecipient, MailBccRecipient, MailCcRecipient, MailToRecipient, MailContainer, MailHeader, MailMailAttachment;

enum MailSaveOptions {
	MailSaveOptionsYes = 'yes ' /* Save the file. */,
	MailSaveOptionsNo = 'no  ' /* Do not save the file. */,
	MailSaveOptionsAsk = 'ask ' /* Ask the user whether or not to save the file. */
};
typedef enum MailSaveOptions MailSaveOptions;

enum MailPrintingErrorHandling {
	MailPrintingErrorHandlingStandard = 'lwst' /* Standard PostScript error handling */,
	MailPrintingErrorHandlingDetailed = 'lwdt' /* print a detailed report of PostScript errors */
};
typedef enum MailPrintingErrorHandling MailPrintingErrorHandling;

enum MailSaveableFileFormat {
	MailSaveableFileFormatNativeFormat = 'item' /* Native format */
};
typedef enum MailSaveableFileFormat MailSaveableFileFormat;

enum MailDefaultMessageFormat {
	MailDefaultMessageFormatPlainFormat = 'dmpt' /* Plain Text */,
	MailDefaultMessageFormatRichFormat = 'dmrt' /* Rich Text */
};
typedef enum MailDefaultMessageFormat MailDefaultMessageFormat;

enum MailQuotingColor {
	MailQuotingColorBlue = 'ccbl' /* Blue */,
	MailQuotingColorGreen = 'ccgr' /* Green */,
	MailQuotingColorOrange = 'ccor' /* Orange */,
	MailQuotingColorOther = 'ccot' /* Other */,
	MailQuotingColorPurple = 'ccpu' /* Purple */,
	MailQuotingColorRed = 'ccre' /* Red */,
	MailQuotingColorYellow = 'ccye' /* Yellow */
};
typedef enum MailQuotingColor MailQuotingColor;

enum MailViewerColumns {
	MailViewerColumnsAttachmentsColumn = 'ecat' /* Column containing the number of attachments a message contains */,
	MailViewerColumnsMessageColor = 'eccl' /* Used to indicate sorting should be done by color */,
	MailViewerColumnsDateReceivedColumn = 'ecdr' /* Column containing the date a message was received */,
	MailViewerColumnsDateSentColumn = 'ecds' /* Column containing the date a message was sent */,
	MailViewerColumnsFlagsColumn = 'ecfl' /* Column containing the flags of a message */,
	MailViewerColumnsFromColumn = 'ecfr' /* Column containing the sender's name */,
	MailViewerColumnsMailboxColumn = 'ecmb' /* Column containing the name of the mailbox or account a message is in */,
	MailViewerColumnsMessageStatusColumn = 'ecms' /* Column indicating a messages status (read, unread, replied to, forwarded, etc) */,
	MailViewerColumnsNumberColumn = 'ecnm' /* Column containing the number of a message in a mailbox */,
	MailViewerColumnsSizeColumn = 'ecsz' /* Column containing the size of a message */,
	MailViewerColumnsSubjectColumn = 'ecsu' /* Column containing the subject of a message */,
	MailViewerColumnsToColumn = 'ecto' /* Column containing the recipients of a message */,
	MailViewerColumnsDateLastSavedColumn = 'ecls' /* Column containing the date a draft message was saved */
};
typedef enum MailViewerColumns MailViewerColumns;

enum MailAuthentication {
	MailAuthenticationPassword = 'axct' /* Clear text password */,
	MailAuthenticationApop = 'aapo' /* APOP */,
	MailAuthenticationKerberos5 = 'axk5' /* Kerberos V5 (GSSAPI) */,
	MailAuthenticationNtlm = 'axnt' /* NTLM */,
	MailAuthenticationMd5 = 'axmd' /* CRAM-MD5 */,
	MailAuthenticationExternal = 'aext' /* External authentication (TLS client certificate) */,
	MailAuthenticationAppleToken = 'atok' /* Apple token */,
	MailAuthenticationNone = 'ccno' /* None */
};
typedef enum MailAuthentication MailAuthentication;

enum MailHighlightColors {
	MailHighlightColorsBlue = 'ccbl' /* Blue */,
	MailHighlightColorsGray = 'ccgy' /* Gray */,
	MailHighlightColorsGreen = 'ccgr' /* Green */,
	MailHighlightColorsNone = 'ccno' /* None */,
	MailHighlightColorsOrange = 'ccor' /* Orange */,
	MailHighlightColorsOther = 'ccot' /* Other */,
	MailHighlightColorsPurple = 'ccpu' /* Purple */,
	MailHighlightColorsRed = 'ccre' /* Red */,
	MailHighlightColorsYellow = 'ccye' /* Yellow */
};
typedef enum MailHighlightColors MailHighlightColors;

enum MailMessageCachingPolicy {
	MailMessageCachingPolicyDoNotKeepCopiesOfAnyMessages = 'x9no' /* Do not use this option (deprecated). If you do, Mail will use the 'all messages but omit attachments' policy */,
	MailMessageCachingPolicyOnlyMessagesIHaveRead = 'x9wr' /* Do not use this option (deprecated). If you do, Mail will use the 'all messages but omit attachments' policy */,
	MailMessageCachingPolicyAllMessagesButOmitAttachments = 'x9bo' /* All messages but omit attachments */,
	MailMessageCachingPolicyAllMessagesAndTheirAttachments = 'x9al' /* All messages and their attachments */
};
typedef enum MailMessageCachingPolicy MailMessageCachingPolicy;

enum MailRuleQualifier {
	MailRuleQualifierBeginsWithValue = 'rqbw' /* Begins with value */,
	MailRuleQualifierDoesContainValue = 'rqco' /* Does contain value */,
	MailRuleQualifierDoesNotContainValue = 'rqdn' /* Does not contain value */,
	MailRuleQualifierEndsWithValue = 'rqew' /* Ends with value */,
	MailRuleQualifierEqualToValue = 'rqie' /* Equal to value */,
	MailRuleQualifierLessThanValue = 'rqlt' /* Less than value */,
	MailRuleQualifierGreaterThanValue = 'rqgt' /* Greater than value */,
	MailRuleQualifierNone = 'rqno' /* Indicates no qualifier is applicable */
};
typedef enum MailRuleQualifier MailRuleQualifier;

enum MailRuleType {
	MailRuleTypeAccount = 'tacc' /* Account */,
	MailRuleTypeAnyRecipient = 'tanr' /* Any recipient */,
	MailRuleTypeCcHeader = 'tccc' /* Cc header */,
	MailRuleTypeMatchesEveryMessage = 'tevm' /* Every message */,
	MailRuleTypeFromHeader = 'tfro' /* From header */,
	MailRuleTypeHeaderKey = 'thdk' /* An arbitrary header key */,
	MailRuleTypeMessageContent = 'tmec' /* Message content */,
	MailRuleTypeMessageIsJunkMail = 'tmij' /* Message is junk mail */,
	MailRuleTypeSenderIsInMyContacts = 'tsii' /* Sender is in my contacts */,
	MailRuleTypeSenderIsInMyPreviousRecipients = 'tsah' /* Sender is in my previous recipients */,
	MailRuleTypeSenderIsMemberOfGroup = 'tsim' /* Sender is member of group */,
	MailRuleTypeSenderIsNotInMyContacts = 'tsin' /* Sender is not in my contacts */,
	MailRuleTypeSenderIsNotInMyPreviousRecipients = 'tnah' /* sender is not in my previous recipients */,
	MailRuleTypeSenderIsNotMemberOfGroup = 'tsig' /* Sender is not member of group */,
	MailRuleTypeSenderIsVIP = 'tsig' /* Sender is VIP */,
	MailRuleTypeSubjectHeader = 'tsub' /* Subject header */,
	MailRuleTypeToHeader = 'ttoo' /* To header */,
	MailRuleTypeToOrCcHeader = 'ttoc' /* To or Cc header */,
	MailRuleTypeAttachmentType = 'tatt' /* Attachment Type */
};
typedef enum MailRuleType MailRuleType;

enum MailTypeOfAccount {
	MailTypeOfAccountPop = 'etpo' /* POP */,
	MailTypeOfAccountSmtp = 'etsm' /* SMTP */,
	MailTypeOfAccountImap = 'etim' /* IMAP */,
	MailTypeOfAccountICloud = 'etit' /* iCloud */,
	MailTypeOfAccountUnknown = 'etun' /* Unknown */
};
typedef enum MailTypeOfAccount MailTypeOfAccount;



/*
 * Standard Suite
 */

// The application's top-level scripting object.
@interface MailApplication : SBApplication

- (SBElementArray *) documents;
- (SBElementArray *) windows;

@property (copy, readonly) NSString *name;  // The name of the application.
@property (readonly) BOOL frontmost;  // Is this the active application?
@property (copy, readonly) NSString *version;  // The version number of the application.

- (id) open:(id)x;  // Open a document.
- (void) print:(id)x withProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) quitSaving:(MailSaveOptions)saving;  // Quit the application.
- (BOOL) exists:(id)x;  // Verify that an object exists.
- (void) checkForNewMailFor:(MailAccount *)for_;  // Triggers a check for email.
- (NSString *) extractNameFrom:(NSString *)x;  // Command to get the full name out of a fully specified email address. E.g. Calling this with "John Doe <jdoe@example.com>" as the direct object would return "John Doe"
- (NSString *) extractAddressFrom:(NSString *)x;  // Command to get just the email address of a fully specified email address. E.g. Calling this with "John Doe <jdoe@example.com>" as the direct object would return "jdoe@example.com"
- (void) GetURL:(NSString *)x;  // Opens a mailto URL.
- (void) importMailMailboxAt:(NSURL *)at;  // Imports a mailbox created by Mail.
- (void) mailto:(NSString *)x;  // Opens a mailto URL.
- (void) performMailActionWithMessages:(NSArray *)x inMailboxes:(MailMailbox *)inMailboxes forRule:(MailRule *)forRule;  // Script handler invoked by rules and menus that execute AppleScripts. The direct parameter of this handler is a list of messages being acted upon.
- (void) synchronizeWith:(MailAccount *)with;  // Command to trigger synchronizing of an IMAP account with the server.

@end

// A document.
@interface MailDocument : SBObject

@property (copy, readonly) NSString *name;  // Its name.
@property (readonly) BOOL modified;  // Has it been modified since the last save?
@property (copy, readonly) NSURL *file;  // Its location on disk, if it has one.

- (void) closeSaving:(MailSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(MailSaveableFileFormat)as;  // Save a document.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end

// A window.
@interface MailWindow : SBObject

@property (copy, readonly) NSString *name;  // The title of the window.
- (NSInteger) id;  // The unique identifier of the window.
@property NSInteger index;  // The index of the window, ordered front to back.
@property NSRect bounds;  // The bounding rectangle of the window.
@property (readonly) BOOL closeable;  // Does the window have a close button?
@property (readonly) BOOL miniaturizable;  // Does the window have a minimize button?
@property BOOL miniaturized;  // Is the window minimized right now?
@property (readonly) BOOL resizable;  // Can the window be resized?
@property BOOL visible;  // Is the window visible right now?
@property (readonly) BOOL zoomable;  // Does the window have a zoom button?
@property BOOL zoomed;  // Is the window zoomed right now?
@property (copy, readonly) MailDocument *document;  // The document whose contents are displayed in the window.

- (void) closeSaving:(MailSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(MailSaveableFileFormat)as;  // Save a document.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end



/*
 * Text Suite
 */

// Rich (styled) text
@interface MailRichText : SBObject

- (SBElementArray *) paragraphs;
- (SBElementArray *) words;
- (SBElementArray *) characters;
- (SBElementArray *) attributeRuns;
- (SBElementArray *) attachments;

@property (copy) NSColor *color;  // The color of the first character.
@property (copy) NSString *font;  // The name of the font of the first character.
@property (copy) NSNumber *size;  // The size in points of the first character.

- (void) closeSaving:(MailSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(MailSaveableFileFormat)as;  // Save a document.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end

// Represents an inline text attachment. This class is used mainly for make commands.
@interface MailAttachment : MailRichText

@property (copy) NSURL *fileName;  // The file for the attachment


@end

// This subdivides the text into paragraphs.
@interface MailParagraph : SBObject

- (SBElementArray *) words;
- (SBElementArray *) characters;
- (SBElementArray *) attributeRuns;
- (SBElementArray *) attachments;

@property (copy) NSColor *color;  // The color of the first character.
@property (copy) NSString *font;  // The name of the font of the first character.
@property (copy) NSNumber *size;  // The size in points of the first character.

- (void) closeSaving:(MailSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(MailSaveableFileFormat)as;  // Save a document.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end

// This subdivides the text into words.
@interface MailWord : SBObject

- (SBElementArray *) characters;
- (SBElementArray *) attributeRuns;
- (SBElementArray *) attachments;

@property (copy) NSColor *color;  // The color of the first character.
@property (copy) NSString *font;  // The name of the font of the first character.
@property (copy) NSNumber *size;  // The size in points of the first character.

- (void) closeSaving:(MailSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(MailSaveableFileFormat)as;  // Save a document.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end

// This subdivides the text into characters.
@interface MailCharacter : SBObject

- (SBElementArray *) attributeRuns;
- (SBElementArray *) attachments;

@property (copy) NSColor *color;  // The color of the character.
@property (copy) NSString *font;  // The name of the font of the character.
@property (copy) NSNumber *size;  // The size in points of the character.

- (void) closeSaving:(MailSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(MailSaveableFileFormat)as;  // Save a document.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end

// This subdivides the text into chunks that all have the same attributes.
@interface MailAttributeRun : SBObject

- (SBElementArray *) paragraphs;
- (SBElementArray *) words;
- (SBElementArray *) characters;
- (SBElementArray *) attachments;

@property (copy) NSColor *color;  // The color of the first character.
@property (copy) NSString *font;  // The name of the font of the first character.
@property (copy) NSNumber *size;  // The size in points of the first character.

- (void) closeSaving:(MailSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(MailSaveableFileFormat)as;  // Save a document.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end



/*
 * Mail
 */

// A new email message
@interface MailOutgoingMessage : SBObject

- (SBElementArray *) bccRecipients;
- (SBElementArray *) ccRecipients;
- (SBElementArray *) recipients;
- (SBElementArray *) toRecipients;

@property (copy) NSString *sender;  // The sender of the message
@property (copy) NSString *subject;  // The subject of the message
@property (copy) MailRichText *content;  // The contents of the message
@property BOOL visible;  // Controls whether the message window is shown on the screen. The default is false
@property (copy) id messageSignature;  // The signature of the message
- (NSInteger) id;  // The unique identifier of the message

- (void) closeSaving:(MailSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(MailSaveableFileFormat)as;  // Save a document.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (BOOL) send;  // Sends a message.

@end

// Mail's top level scripting object.
@interface MailApplication (Mail)

- (SBElementArray *) accounts;
- (SBElementArray *) popAccounts;
- (SBElementArray *) imapAccounts;
- (SBElementArray *) iCloudAccounts;
- (SBElementArray *) smtpServers;
- (SBElementArray *) outgoingMessages;
- (SBElementArray *) mailboxes;
- (SBElementArray *) messageViewers;
- (SBElementArray *) rules;
- (SBElementArray *) signatures;

@property (copy, readonly) NSString *version;  // The version of the application.
@property BOOL alwaysBccMyself;  // Indicates whether you will be included in the Bcc: field of messages which you are composing
@property BOOL alwaysCcMyself;  // Indicates whether you will be included in the Cc: field of messages which you are composing
@property (copy, readonly) NSArray *selection;  // List of messages that the user has selected
@property (copy, readonly) NSString *applicationVersion;  // The build number for the Mail application bundle
@property NSInteger fetchInterval;  // The interval (in minutes) between automatic fetches of new mail, -1 means to use an automatically determined interval
@property (readonly) NSInteger backgroundActivityCount;  // Number of background activities currently running in Mail, according to the Activity window
@property BOOL chooseSignatureWhenComposing;  // Indicates whether user can choose a signature directly in a new compose window
@property BOOL colorQuotedText;  // Indicates whether quoted text should be colored
@property MailDefaultMessageFormat defaultMessageFormat;  // Default format for messages being composed or message replies
@property BOOL downloadHtmlAttachments;  // Indicates whether images and attachments in HTML messages should be downloaded and displayed
@property (copy, readonly) MailMailbox *draftsMailbox;  // The top level Drafts mailbox
@property BOOL expandGroupAddresses;  // Indicates whether group addresses will be expanded when entered into the address fields of a new compose message
@property (copy) NSString *fixedWidthFont;  // Font for plain text messages, only used if 'use fixed width font' is set to true
@property double fixedWidthFontSize;  // Font size for plain text messages, only used if 'use fixed width font' is set to true
@property (copy, readonly) NSString *frameworkVersion;  // The build number for the Mail framework
@property (copy, readonly) MailMailbox *inbox;  // The top level In mailbox
@property BOOL includeAllOriginalMessageText;  // Indicates whether all of the original message will be quoted or only the text you have selected (if any)
@property BOOL quoteOriginalMessage;  // Indicates whether the text of the original message will be included in replies
@property BOOL checkSpellingWhileTyping;  // Indicates whether spelling will be checked automatically in messages being composed
@property (copy, readonly) MailMailbox *junkMailbox;  // The top level Junk mailbox
@property MailQuotingColor levelOneQuotingColor;  // Color for quoted text with one level of indentation
@property MailQuotingColor levelTwoQuotingColor;  // Color for quoted text with two levels of indentation
@property MailQuotingColor levelThreeQuotingColor;  // Color for quoted text with three levels of indentation
@property (copy) NSString *messageFont;  // Font for messages (proportional font)
@property double messageFontSize;  // Font size for messages (proportional font)
@property (copy) NSString *messageListFont;  // Font for message list
@property double messageListFontSize;  // Font size for message list
@property (copy) NSString *newMailSound;  // Name of new mail sound or 'None' if no sound is selected
@property (copy, readonly) MailMailbox *outbox;  // The top level Out mailbox
@property BOOL shouldPlayOtherMailSounds;  // Indicates whether sounds will be played for various things such as when a messages is sent or if no mail is found when manually checking for new mail or if there is a fetch error
@property BOOL sameReplyFormat;  // Indicates whether replies will be in the same text format as the message to which you are replying
@property (copy) NSString *selectedSignature;  // Name of current selected signature (or 'randomly', 'sequentially', or 'none')
@property (copy, readonly) MailMailbox *sentMailbox;  // The top level Sent mailbox
@property BOOL fetchesAutomatically;  // Indicates whether mail will automatically be fetched at a specific interval
@property BOOL highlightSelectedConversation;  // Indicates whether messages in conversations should be highlighted in the Mail viewer window when not grouped
@property (copy, readonly) MailMailbox *trashMailbox;  // The top level Trash mailbox
@property BOOL useAddressCompletion;  // This always returns true, and setting it doesn't do anything (deprecated)
@property BOOL useFixedWidthFont;  // Should fixed-width font be used for plain text messages?
@property (copy, readonly) NSString *primaryEmail;  // The user's primary email address

@end

// Represents the object responsible for managing a viewer window
@interface MailMessageViewer : SBObject

- (SBElementArray *) messages;

@property (copy, readonly) MailMailbox *draftsMailbox;  // The top level Drafts mailbox
@property (copy, readonly) MailMailbox *inbox;  // The top level In mailbox
@property (copy, readonly) MailMailbox *junkMailbox;  // The top level Junk mailbox
@property (copy, readonly) MailMailbox *outbox;  // The top level Out mailbox
@property (copy, readonly) MailMailbox *sentMailbox;  // The top level Sent mailbox
@property (copy, readonly) MailMailbox *trashMailbox;  // The top level Trash mailbox
@property MailViewerColumns sortColumn;  // The column that is currently sorted in the viewer
@property BOOL sortedAscending;  // Whether the viewer is sorted ascending or not
@property BOOL mailboxListVisible;  // Controls whether the list of mailboxes is visible or not
@property BOOL previewPaneIsVisible;  // Controls whether the preview pane of the message viewer window is visible or not
@property (copy) NSArray *visibleColumns;  // List of columns that are visible. The subject column and the message status column will always be visible
- (NSInteger) id;  // The unique identifier of the message viewer
@property (copy) NSArray *visibleMessages;  // List of messages currently being displayed in the viewer
@property (copy) NSArray *selectedMessages;  // List of messages currently selected
@property (copy) NSArray *selectedMailboxes;  // List of mailboxes currently selected in the list of mailboxes
@property (copy) MailWindow *window;  // The window for the message viewer

- (void) closeSaving:(MailSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(MailSaveableFileFormat)as;  // Save a document.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end

// Email signatures
@interface MailSignature : SBObject

@property (copy) NSString *content;  // Contents of email signature. If there is a version with fonts and/or styles, that will be returned over the plain text version
@property (copy) NSString *name;  // Name of the signature

- (void) closeSaving:(MailSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(MailSaveableFileFormat)as;  // Save a document.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end



/*
 * Mail Framework
 */

// An email message
@interface MailMessage : SBObject

- (SBElementArray *) bccRecipients;
- (SBElementArray *) ccRecipients;
- (SBElementArray *) recipients;
- (SBElementArray *) toRecipients;
- (SBElementArray *) headers;
- (SBElementArray *) mailAttachments;

- (NSInteger) id;  // The unique identifier of the message.
@property (copy, readonly) NSString *allHeaders;  // All the headers of the message
@property MailHighlightColors backgroundColor;  // The background color of the message
@property (copy) MailMailbox *mailbox;  // The mailbox in which this message is filed
@property (copy, readonly) MailRichText *content;  // Contents of an email message
@property (copy, readonly) NSDate *dateReceived;  // The date a message was received
@property (copy, readonly) NSDate *dateSent;  // The date a message was sent
@property BOOL deletedStatus;  // Indicates whether the message is deleted or not
@property BOOL flaggedStatus;  // Indicates whether the message is flagged or not
@property NSInteger flagIndex;  // The flag on the message, or -1 if the message is not flagged
@property BOOL junkMailStatus;  // Indicates whether the message has been marked junk or evaluated to be junk by the junk mail filter.
@property BOOL readStatus;  // Indicates whether the message is read or not
@property (copy, readonly) NSString *messageId;  // The unique message ID string
@property (copy, readonly) NSString *source;  // Raw source of the message
@property (copy, readonly) NSString *replyTo;  // The address that replies should be sent to
@property (readonly) NSInteger messageSize;  // The size (in bytes) of a message
@property (copy, readonly) NSString *sender;  // The sender of the message
@property (copy, readonly) NSString *subject;  // The subject of the message
@property (readonly) BOOL wasForwarded;  // Indicates whether the message was forwarded or not
@property (readonly) BOOL wasRedirected;  // Indicates whether the message was redirected or not
@property (readonly) BOOL wasRepliedTo;  // Indicates whether the message was replied to or not

- (void) closeSaving:(MailSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(MailSaveableFileFormat)as;  // Save a document.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (MailOutgoingMessage *) forwardOpeningWindow:(BOOL)openingWindow;  // Creates a forwarded message.
- (MailOutgoingMessage *) redirectOpeningWindow:(BOOL)openingWindow;  // Creates a redirected message.
- (MailOutgoingMessage *) replyOpeningWindow:(BOOL)openingWindow replyToAll:(BOOL)replyToAll;  // Creates a reply message.

@end

// A Mail account for receiving messages (POP/IMAP). To create a new receiving account, use the 'pop account', 'imap account', and 'iCloud account' objects
@interface MailAccount : SBObject

- (SBElementArray *) mailboxes;

@property (copy) id deliveryAccount;  // The delivery account used when sending mail from this account
@property (copy) NSString *name;  // The name of an account
@property (copy) NSString *password;  // Password for this account. Can be set, but not read via scripting
@property MailAuthentication authentication;  // Preferred authentication scheme for account
@property (readonly) MailTypeOfAccount accountType;  // The type of an account
@property (copy) NSArray *emailAddresses;  // The list of email addresses configured for an account
@property (copy) NSString *fullName;  // The users full name configured for an account
@property NSInteger emptyJunkMessagesFrequency;  // Number of days before junk messages are deleted (0 = delete on quit, -1 = never delete)
@property NSInteger emptySentMessagesFrequency;  // Number of days before archived sent messages are deleted (0 = delete on quit, -1 = never delete)
@property NSInteger emptyTrashFrequency;  // Number of days before messages in the trash are permanently deleted (0 = delete on quit, -1 = never delete)
@property BOOL emptyJunkMessagesOnQuit;  // Indicates whether the messages in the junk messages mailboxes will be deleted on quit
@property BOOL emptySentMessagesOnQuit;  // Indicates whether the messages in the sent messages mailboxes will be deleted on quit
@property BOOL emptyTrashOnQuit;  // Indicates whether the messages in deleted messages mailboxes will be permanently deleted on quit
@property BOOL enabled;  // Indicates whether the account is enabled or not
@property (copy) NSString *userName;  // The user name used to connect to an account
@property (copy, readonly) NSURL *accountDirectory;  // The directory where the account stores things on disk
@property NSInteger port;  // The port used to connect to an account
@property (copy) NSString *serverName;  // The host name used to connect to an account
@property BOOL includeWhenGettingNewMail;  // Indicates whether the account will be included when getting new mail
@property BOOL moveDeletedMessagesToTrash;  // Indicates whether messages that are deleted will be moved to the trash mailbox
@property BOOL usesSsl;  // Indicates whether SSL is enabled for this receiving account

- (void) closeSaving:(MailSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(MailSaveableFileFormat)as;  // Save a document.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end

// An IMAP email account
@interface MailImapAccount : MailAccount

@property BOOL compactMailboxesWhenClosing;  // Indicates whether an IMAP mailbox is automatically compacted when you quit Mail or switch to another mailbox
@property MailMessageCachingPolicy messageCaching;  // Message caching setting for this account
@property BOOL storeDraftsOnServer;  // Indicates whether drafts will be stored on the IMAP server
@property BOOL storeJunkMailOnServer;  // Indicates whether junk mail will be stored on the IMAP server
@property BOOL storeSentMessagesOnServer;  // Indicates whether sent messages will be stored on the IMAP server
@property BOOL storeDeletedMessagesOnServer;  // Indicates whether deleted messages will be stored on the IMAP server


@end

// An iCloud or MobileMe email account
@interface MailICloudAccount : MailImapAccount


@end

// A POP email account
@interface MailPopAccount : MailAccount

@property NSInteger bigMessageWarningSize;  // If message size (in bytes) is over this amount, Mail will prompt you asking whether you want to download the message (-1 = do not prompt)
@property NSInteger delayedMessageDeletionInterval;  // Number of days before messages that have been downloaded will be deleted from the server (0 = delete immediately after downloading)
@property BOOL deleteMailOnServer;  // Indicates whether POP account deletes messages on the server after downloading
@property BOOL deleteMessagesWhenMovedFromInbox;  // Indicates whether messages will be deleted from the server when moved from your POP inbox


@end

// An SMTP account (for sending email)
@interface MailSmtpServer : SBObject

@property (copy, readonly) NSString *name;  // The name of an account
@property (copy) NSString *password;  // Password for this account. Can be set, but not read via scripting
@property (readonly) MailTypeOfAccount accountType;  // The type of an account
@property MailAuthentication authentication;  // Preferred authentication scheme for account
@property BOOL enabled;  // Indicates whether the account is enabled or not
@property (copy) NSString *userName;  // The user name used to connect to an account
@property NSInteger port;  // The port used to connect to an account
@property (copy) NSString *serverName;  // The host name used to connect to an account
@property BOOL usesSsl;  // Indicates whether SSL is enabled for this receiving account

- (void) closeSaving:(MailSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(MailSaveableFileFormat)as;  // Save a document.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end

// A mailbox that holds messages
@interface MailMailbox : SBObject

- (SBElementArray *) mailboxes;
- (SBElementArray *) messages;

@property (copy) NSString *name;  // The name of a mailbox
@property (readonly) NSInteger unreadCount;  // The number of unread messages in the mailbox
@property (copy, readonly) MailAccount *account;
@property (copy, readonly) MailMailbox *container;

- (void) closeSaving:(MailSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(MailSaveableFileFormat)as;  // Save a document.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end

// Class for message rules
@interface MailRule : SBObject

- (SBElementArray *) ruleConditions;

@property MailHighlightColors colorMessage;  // If rule matches, apply this color
@property BOOL deleteMessage;  // If rule matches, delete message
@property (copy) NSString *forwardText;  // If rule matches, prepend this text to the forwarded message. Set to empty string to include no prepended text
@property (copy) NSString *forwardMessage;  // If rule matches, forward message to this address, or multiple addresses, separated by commas. Set to empty string to disable this action
@property BOOL markFlagged;  // If rule matches, mark message as flagged
@property NSInteger markFlagIndex;  // If rule matches, mark message with the specified flag. Set to -1 to disable this action
@property BOOL markRead;  // If rule matches, mark message as read
@property (copy) NSString *playSound;  // If rule matches, play this sound (specify name of sound or path to sound)
@property (copy) NSString *redirectMessage;  // If rule matches, redirect message to this address or multiple addresses, separate by commas. Set to empty string to disable this action
@property (copy) NSString *replyText;  // If rule matches, reply to message and prepend with this text. Set to empty string to disable this action
@property (copy) id runScript;  // If rule matches, run this compiled AppleScript file. Set to empty string to disable this action
@property BOOL allConditionsMustBeMet;  // Indicates whether all conditions must be met for rule to execute
@property (copy) MailMailbox *copyMessage;  // If rule matches, copy to this mailbox
@property (copy) MailMailbox *moveMessage;  // If rule matches, move to this mailbox
@property BOOL highlightTextUsingColor;  // Indicates whether the color will be used to highlight the text or background of a message in the message list
@property BOOL enabled;  // Indicates whether the rule is enabled
@property (copy) NSString *name;  // Name of rule
@property BOOL shouldCopyMessage;  // Indicates whether the rule has a copy action
@property BOOL shouldMoveMessage;  // Indicates whether the rule has a move action
@property BOOL stopEvaluatingRules;  // If rule matches, stop rule evaluation for this message

- (void) closeSaving:(MailSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(MailSaveableFileFormat)as;  // Save a document.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end

// Class for conditions that can be attached to a single rule
@interface MailRuleCondition : SBObject

@property (copy) NSString *expression;  // Rule expression field
@property (copy) NSString *header;  // Rule header key
@property MailRuleQualifier qualifier;  // Rule qualifier
@property MailRuleType ruleType;  // Rule type

- (void) closeSaving:(MailSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(MailSaveableFileFormat)as;  // Save a document.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end

// An email recipient
@interface MailRecipient : SBObject

@property (copy) NSString *address;  // The recipients email address
@property (copy) NSString *name;  // The name used for display

- (void) closeSaving:(MailSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(MailSaveableFileFormat)as;  // Save a document.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end

// An email recipient in the Bcc: field
@interface MailBccRecipient : MailRecipient


@end

// An email recipient in the Cc: field
@interface MailCcRecipient : MailRecipient


@end

// An email recipient in the To: field
@interface MailToRecipient : MailRecipient


@end

// A mailbox that contains other mailboxes.
@interface MailContainer : MailMailbox


@end

// A header value for a message. E.g. To, Subject, From.
@interface MailHeader : SBObject

@property (copy) NSString *content;  // Contents of the header
@property (copy) NSString *name;  // Name of the header value

- (void) closeSaving:(MailSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(MailSaveableFileFormat)as;  // Save a document.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end

// A file attached to a received message.
@interface MailMailAttachment : SBObject

@property (copy, readonly) NSString *name;  // Name of the attachment
@property (copy, readonly) NSString *MIMEType;  // MIME type of the attachment E.g. text/plain.
@property (readonly) NSInteger fileSize;  // Approximate size in bytes.
@property (readonly) BOOL downloaded;  // Indicates whether the attachment has been downloaded.
- (NSString *) id;  // The unique identifier of the attachment.

- (void) closeSaving:(MailSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(MailSaveableFileFormat)as;  // Save a document.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end

