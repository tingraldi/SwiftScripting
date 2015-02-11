
enum MessagesSaveOptions {
	MessagesSaveOptionsYes = 'yes ' /* Save the file. */,
	MessagesSaveOptionsNo = 'no  ' /* Do not save the file. */,
	MessagesSaveOptionsAsk = 'ask ' /* Ask the user whether or not to save the file. */
};
typedef enum MessagesSaveOptions MessagesSaveOptions;

enum MessagesInviteType {
	MessagesInviteTypeAudioInvitation = 'acon',
	MessagesInviteTypeTextChatInvitation = 'tcon',
	MessagesInviteTypeVideoInvitation = 'vcon'
};
typedef enum MessagesInviteType MessagesInviteType;

enum MessagesAccountStatus {
	MessagesAccountStatusAvailable = 'aval',
	MessagesAccountStatusAway = 'away',
	MessagesAccountStatusOffline = 'offl',
	MessagesAccountStatusInvisible = 'invs',
	MessagesAccountStatusIdle = 'idle',
	MessagesAccountStatusUnknown = 'unkn'
};
typedef enum MessagesAccountStatus MessagesAccountStatus;

enum MessagesMyStatus {
	MessagesMyStatusAway = 'away',
	MessagesMyStatusAvailable = 'aval',
	MessagesMyStatusOffline = 'offl',
	MessagesMyStatusInvisible = 'invs'
};
typedef enum MessagesMyStatus MessagesMyStatus;

enum MessagesConnectionStatus {
	MessagesConnectionStatusDisconnecting = 'dcng',
	MessagesConnectionStatusConnected = 'conn',
	MessagesConnectionStatusConnecting = 'cong',
	MessagesConnectionStatusDisconnected = 'dcon'
};
typedef enum MessagesConnectionStatus MessagesConnectionStatus;

enum MessagesCapabilities {
	MessagesCapabilitiesVideoChat = 'vcon',
	MessagesCapabilitiesAudioChat = 'acon',
	MessagesCapabilitiesMultipersonVideo = 'mwvc',
	MessagesCapabilitiesMultipersonAudio = 'mwac'
};
typedef enum MessagesCapabilities MessagesCapabilities;

enum MessagesScreenSharing {
	MessagesScreenSharingNone = 'ssns',
	MessagesScreenSharingLocalScreen = 'ssls',
	MessagesScreenSharingRemoteScreen = 'ssrs'
};
typedef enum MessagesScreenSharing MessagesScreenSharing;

enum MessagesServiceType {
	MessagesServiceTypeAIM = 'saim',
	MessagesServiceTypeBonjour = 'ssub',
	MessagesServiceTypeJabber = 'sjab',
	MessagesServiceTypeIMessage = 'sims'
};
typedef enum MessagesServiceType MessagesServiceType;

enum MessagesDirection {
	MessagesDirectionIncoming = 'FTic',
	MessagesDirectionOutgoing = 'FTog'
};
typedef enum MessagesDirection MessagesDirection;

enum MessagesTransferStatus {
	MessagesTransferStatusPreparing = 'FTsp',
	MessagesTransferStatusWaiting = 'FTsw',
	MessagesTransferStatusTransferring = 'FTsg',
	MessagesTransferStatusFinalizing = 'FTsz',
	MessagesTransferStatusFinished = 'FTsf',
	MessagesTransferStatusFailed = 'FTse'
};
typedef enum MessagesTransferStatus MessagesTransferStatus;

enum MessagesAvType {
	MessagesAvTypeAudio = 'ICAa',
	MessagesAvTypeVideo = 'ICAv'
};
typedef enum MessagesAvType MessagesAvType;

enum MessagesChatType {
	MessagesChatTypeInstantMessage = 'ICim',
	MessagesChatTypeDirectInstantMessage = 'ICdi',
	MessagesChatTypeChatRoom = 'ICcr'
};
typedef enum MessagesChatType MessagesChatType;

enum MessagesJoinState {
	MessagesJoinStateNotJoined = 'ICJc',
	MessagesJoinStateJoining = 'ICJg',
	MessagesJoinStateJoined = 'ICJj'
};
typedef enum MessagesJoinState MessagesJoinState;

enum MessagesAvConnectionStatus {
	MessagesAvConnectionStatusInvited = 'ICAi',
	MessagesAvConnectionStatusWaiting = 'ICAw',
	MessagesAvConnectionStatusConnecting = 'ICAx',
	MessagesAvConnectionStatusConnected = 'ICAc',
	MessagesAvConnectionStatusEnded = 'ICAn'
};
typedef enum MessagesAvConnectionStatus MessagesAvConnectionStatus;
