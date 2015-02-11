
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
