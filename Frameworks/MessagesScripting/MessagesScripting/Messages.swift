import AppKit
import ScriptingBridge

@objc public protocol SBObjectProtocol: NSObjectProtocol {
    func get() -> AnyObject!
}

@objc public protocol SBApplicationProtocol: SBObjectProtocol {
    func activate()
    var delegate: SBApplicationDelegate! { get set }
}

// MARK: MessagesSaveOptions
@objc public enum MessagesSaveOptions : AEKeyword {
    case Yes = 0x79657320 /* 'yes ' */
    case No = 0x6e6f2020 /* 'no  ' */
    case Ask = 0x61736b20 /* 'ask ' */
}

// MARK: MessagesInviteType
@objc public enum MessagesInviteType : AEKeyword {
    case AudioInvitation = 0x61636f6e /* 'acon' */
    case TextChatInvitation = 0x74636f6e /* 'tcon' */
    case VideoInvitation = 0x76636f6e /* 'vcon' */
}

// MARK: MessagesAccountStatus
@objc public enum MessagesAccountStatus : AEKeyword {
    case Available = 0x6176616c /* 'aval' */
    case Away = 0x61776179 /* 'away' */
    case Offline = 0x6f66666c /* 'offl' */
    case Invisible = 0x696e7673 /* 'invs' */
    case Idle = 0x69646c65 /* 'idle' */
    case Unknown = 0x756e6b6e /* 'unkn' */
}

// MARK: MessagesMyStatus
@objc public enum MessagesMyStatus : AEKeyword {
    case Away = 0x61776179 /* 'away' */
    case Available = 0x6176616c /* 'aval' */
    case Offline = 0x6f66666c /* 'offl' */
    case Invisible = 0x696e7673 /* 'invs' */
}

// MARK: MessagesConnectionStatus
@objc public enum MessagesConnectionStatus : AEKeyword {
    case Disconnecting = 0x64636e67 /* 'dcng' */
    case Connected = 0x636f6e6e /* 'conn' */
    case Connecting = 0x636f6e67 /* 'cong' */
    case Disconnected = 0x64636f6e /* 'dcon' */
}

// MARK: MessagesCapabilities
@objc public enum MessagesCapabilities : AEKeyword {
    case VideoChat = 0x76636f6e /* 'vcon' */
    case AudioChat = 0x61636f6e /* 'acon' */
    case MultipersonVideo = 0x6d777663 /* 'mwvc' */
    case MultipersonAudio = 0x6d776163 /* 'mwac' */
}

// MARK: MessagesScreenSharing
@objc public enum MessagesScreenSharing : AEKeyword {
    case None = 0x73736e73 /* 'ssns' */
    case LocalScreen = 0x73736c73 /* 'ssls' */
    case RemoteScreen = 0x73737273 /* 'ssrs' */
}

// MARK: MessagesServiceType
@objc public enum MessagesServiceType : AEKeyword {
    case AIM = 0x7361696d /* 'saim' */
    case Bonjour = 0x73737562 /* 'ssub' */
    case Jabber = 0x736a6162 /* 'sjab' */
    case IMessage = 0x73696d73 /* 'sims' */
}

// MARK: MessagesDirection
@objc public enum MessagesDirection : AEKeyword {
    case Incoming = 0x46546963 /* 'FTic' */
    case Outgoing = 0x46546f67 /* 'FTog' */
}

// MARK: MessagesTransferStatus
@objc public enum MessagesTransferStatus : AEKeyword {
    case Preparing = 0x46547370 /* 'FTsp' */
    case Waiting = 0x46547377 /* 'FTsw' */
    case Transferring = 0x46547367 /* 'FTsg' */
    case Finalizing = 0x4654737a /* 'FTsz' */
    case Finished = 0x46547366 /* 'FTsf' */
    case Failed = 0x46547365 /* 'FTse' */
}

// MARK: MessagesAvType
@objc public enum MessagesAvType : AEKeyword {
    case Audio = 0x49434161 /* 'ICAa' */
    case Video = 0x49434176 /* 'ICAv' */
}

// MARK: MessagesChatType
@objc public enum MessagesChatType : AEKeyword {
    case InstantMessage = 0x4943696d /* 'ICim' */
    case DirectInstantMessage = 0x49436469 /* 'ICdi' */
    case ChatRoom = 0x49436372 /* 'ICcr' */
}

// MARK: MessagesJoinState
@objc public enum MessagesJoinState : AEKeyword {
    case NotJoined = 0x49434a63 /* 'ICJc' */
    case Joining = 0x49434a67 /* 'ICJg' */
    case Joined = 0x49434a6a /* 'ICJj' */
}

// MARK: MessagesAvConnectionStatus
@objc public enum MessagesAvConnectionStatus : AEKeyword {
    case Invited = 0x49434169 /* 'ICAi' */
    case Waiting = 0x49434177 /* 'ICAw' */
    case Connecting = 0x49434178 /* 'ICAx' */
    case Connected = 0x49434163 /* 'ICAc' */
    case Ended = 0x4943416e /* 'ICAn' */
}

// MARK: MessagesGenericMethods
@objc public protocol MessagesGenericMethods {
    optional func closeSaving(saving: MessagesSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(in_: NSURL!, `as`: String!) // Save a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) -> SBObject // Copy object(s) and put the copies at a new location.
    optional func exists() -> Bool // Verify if an object exists.
    optional func moveTo(to: SBObject!) -> SBObject // Move object(s) to a new location.
}

// MARK: MessagesItem
@objc public protocol MessagesItem: SBObjectProtocol, MessagesGenericMethods {
    optional var properties: [NSObject : AnyObject] { get set } // All of the object's properties.
}
extension SBObject: MessagesItem {}

// MARK: MessagesColor
@objc public protocol MessagesColor: SBObjectProtocol, MessagesGenericMethods {
}
extension SBObject: MessagesColor {}

// MARK: MessagesDocument
@objc public protocol MessagesDocument: SBObjectProtocol, MessagesGenericMethods {
    optional var name: String { get } // The document's name.
    optional var modified: Bool { get } // Has the document been modified since the last save?
    optional var file: NSURL { get } // The document's location on disk.
}
extension SBObject: MessagesDocument {}

// MARK: MessagesWindow
@objc public protocol MessagesWindow: SBObjectProtocol, MessagesGenericMethods {
    optional var name: String { get } // The full title of the window.
    optional func id() -> Int // The unique identifier of the window.
    optional var index: Int { get set } // The index of the window, ordered front to back.
    optional var bounds: NSRect { get set } // The bounding rectangle of the window.
    optional var closeable: Bool { get } // Whether the window has a close box.
    optional var minimizable: Bool { get } // Whether the window can be minimized.
    optional var minimized: Bool { get set } // Whether the window is currently minimized.
    optional var resizable: Bool { get } // Whether the window can be resized.
    optional var visible: Bool { get set } // Whether the window is currently visible.
    optional var zoomable: Bool { get } // Whether the window can be zoomed.
    optional var zoomed: Bool { get set } // Whether the window is currently zoomed.
    optional var document: MessagesDocument { get } // The document whose contents are being displayed in the window.
}
extension SBObject: MessagesWindow {}

// MARK: MessagesRichText
@objc public protocol MessagesRichText: SBObjectProtocol, MessagesGenericMethods {
    optional func characters() -> SBElementArray
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get set } // The color of the first character.
    optional var font: String { get set } // The name of the font of the first character.
    optional var size: Double { get set } // The size in points of the first character.
}
extension SBObject: MessagesRichText {}

// MARK: MessagesCharacter
@objc public protocol MessagesCharacter: SBObjectProtocol, MessagesGenericMethods {
    optional func characters() -> SBElementArray
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get set } // The color of the first character.
    optional var font: String { get set } // The name of the font of the first character.
    optional var size: Int { get set } // The size in points of the first character.
}
extension SBObject: MessagesCharacter {}

// MARK: MessagesParagraph
@objc public protocol MessagesParagraph: SBObjectProtocol, MessagesGenericMethods {
    optional func characters() -> SBElementArray
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get set } // The color of the first character.
    optional var font: String { get set } // The name of the font of the first character.
    optional var size: Int { get set } // The size in points of the first character.
}
extension SBObject: MessagesParagraph {}

// MARK: MessagesWord
@objc public protocol MessagesWord: SBObjectProtocol, MessagesGenericMethods {
    optional func characters() -> SBElementArray
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get set } // The color of the first character.
    optional var font: String { get set } // The name of the font of the first character.
    optional var size: Int { get set } // The size in points of the first character.
}
extension SBObject: MessagesWord {}

// MARK: MessagesAttributeRun
@objc public protocol MessagesAttributeRun: SBObjectProtocol, MessagesGenericMethods {
    optional func characters() -> SBElementArray
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get set } // The color of the first character.
    optional var font: String { get set } // The name of the font of the first character.
    optional var size: Int { get set } // The size in points of the first character.
}
extension SBObject: MessagesAttributeRun {}

// MARK: MessagesAttachment
@objc public protocol MessagesAttachment: MessagesRichText {
    optional var file: NSURL { get } // The path to the file for the attachment
}
extension SBObject: MessagesAttachment {}

// MARK: MessagesApplication
@objc public protocol MessagesApplication: SBApplicationProtocol {
    optional func buddies() -> SBElementArray
    optional func services() -> SBElementArray
    optional func fileTransfers() -> SBElementArray
    optional func chats() -> SBElementArray
    optional func textChats() -> SBElementArray
    optional func audioChats() -> SBElementArray
    optional func videoChats() -> SBElementArray
    optional func authorizationRequests() -> SBElementArray
    optional func documents() -> SBElementArray
    optional func windows() -> SBElementArray
    optional var idleTime: Int { get } // Time in seconds that I have been idle.
    optional var image: NSImage { get set } // My image as it appears in all services.
    optional var status: MessagesMyStatus { get set } // My status on all services.
    optional var statusMessage: String { get set } // My status message, visible to other people while I am online.
    optional var activeAvChat: MessagesAudioChat { get set } // The currently active audio or video chat.
    optional var name: String { get } // The name of the application.
    optional var frontmost: Bool { get } // Is this the frontmost (active) application?
    optional var version: String { get } // The version of the application.
    optional func open(x: [AnyObject]!) // Open a document.
    optional func print(x: NSURL!) // Print an object.
    optional func quitSaving(saving: MessagesSaveOptions) // Quit the application.
    optional func invite(x: [AnyObject]!, to: AnyObject!, withMessage: String!) // Invites a buddy to join an existing chat.
    optional func logIn() // Log in to the specified service, or all services if none is specified. If the account password is not in the keychain the user will be prompted to enter one.
    optional func logOut() // Logs out of a service, or all services if none is specified.
    optional func send(x: AnyObject!, to: AnyObject!) // Sends a message or file to a buddy or to a chat.
    optional func storeRecentPicture() // Stores the currently set buddy picture into your recent pictures.
    optional func showChatChooserFor(for_: MessagesBuddy!) // displays a dialog in Messages to start a new chat with the specified buddy
}
extension SBApplication: MessagesApplication {}

// MARK: MessagesBuddy
@objc public protocol MessagesBuddy: MessagesItem {
    optional func id() -> String // The buddy's service and handle. For example: AIM:JohnDoe007
    optional var service: MessagesService { get } // The service on which this buddy exists.
    optional var name: String { get } // The buddy's name as it appears in the buddy list.
    optional var handle: String { get } // The buddy's online account name.
    optional var status: MessagesAccountStatus { get } // The buddy's current status.
    optional var statusMessage: String { get } // The buddy's current status message.
    optional var idleTime: Int { get } // The time in seconds the buddy has been idle.
    optional var capabilities: [AnyObject] { get } // The buddy's messaging capabilities.
    optional var image: NSImage { get } // The buddy's custom image.
    optional var firstName: String { get } // The first name from this buddy's Contacts card, if available
    optional var lastName: String { get } // The last name from this buddy's Contacts card, if available
    optional var fullName: String { get } // The full name from this buddy's Contacts card, if available
}
extension SBObject: MessagesBuddy {}

// MARK: MessagesService
@objc public protocol MessagesService: MessagesItem {
    optional func buddies() -> SBElementArray
    optional func chats() -> SBElementArray
    optional func id() -> String // A guid identifier for this service.
    optional var name: String { get set } // The name of this service as defined in Account preferences description field
    optional var enabled: Bool { get set } // Is the service enabled?
    optional var connectionStatus: MessagesConnectionStatus { get } // The connection status for this account.
    optional var status: MessagesMyStatus { get set } // My status on this service.
    optional var statusMessage: String { get set } // My status message, visible to other people on this service while I am online.
    optional var serviceType: MessagesServiceType { get } // The type of protocol for this service
    optional func logIn() // Log in to the specified service, or all services if none is specified. If the account password is not in the keychain the user will be prompted to enter one.
    optional func logOut() // Logs out of a service, or all services if none is specified.
}
extension SBObject: MessagesService {}

// MARK: MessagesChat
@objc public protocol MessagesChat: SBObjectProtocol, MessagesGenericMethods {
    optional func id() -> String // A guid identifier for this chat.
    optional var service: MessagesService { get } // The service which is participating in this chat.
    optional var participants: [AnyObject] { get } // Other participants of this chat. This property may be specified at time of creation.
    optional var secure: Bool { get } // Is this chat secure?
    optional var invitation: Bool { get } // Is this an invitation to a chat?
    optional var active: Bool { get } // Is this chat currently active?
    optional var started: NSDate { get } // The date on which this chat started.
    optional var updated: NSDate { get } // The date when this chat was last updated.
    optional func accept() // Accepts an incoming text, audio, or video chat invitation, or file transfer
    optional func decline() // Declines an incoming text, audio, or video chat invitation, or file transfer
}
extension SBObject: MessagesChat {}

// MARK: MessagesTextChat
@objc public protocol MessagesTextChat: MessagesChat {
    optional var subject: String { get } // The subject of this chat, if available.
    optional var invitationMessage: String { get } // An invitation message. This may only be specified at the time of creation. This message will be sent to chat participants when the chat is created.
    optional var joinState: MessagesJoinState { get } // How you are joined to this chat
    optional var name: String { get } // The address or room name of this chat. This property may be specified at time of creation.
    optional var chatType: MessagesChatType { get } // The type of this chat.
}
extension SBObject: MessagesTextChat {}

// MARK: MessagesAudioChat
@objc public protocol MessagesAudioChat: MessagesChat {
    optional var screenSharing: MessagesScreenSharing { get } // Type of screen sharing session taking place within this chat.
    optional var muted: Bool { get set } // Is the chat muted?
    optional var avConnectionStatus: MessagesAvConnectionStatus { get } // The connection state for this av chat.
    optional func requestRecording() // Sends a recording request to all participants of an audio or video chat. Recording will not start until all participants have agreed to allow recording.
    optional func stopRecording() // Ends recording of an audio or video chat.
}
extension SBObject: MessagesAudioChat {}

// MARK: MessagesVideoChat
@objc public protocol MessagesVideoChat: MessagesAudioChat {
    optional var paused: Bool { get set } // Is the chat paused?
    optional var showingFullScreen: Bool { get set } // Is the chat being displayed in full screen mode?
    optional var showingLocalVideo: Bool { get set } // Is the local video preview being displayed?
    optional func takeSnapshot() // Takes a snapshot of a video chat and saves it to a desktop.
}
extension SBObject: MessagesVideoChat {}

// MARK: MessagesAuthorizationRequest
@objc public protocol MessagesAuthorizationRequest: MessagesItem {
    optional func id() -> String // The guid for this authorization request
    optional var service: MessagesService { get } // The service on which authorization was requested.
    optional var buddy: MessagesBuddy { get } // The buddy requesting authorization
}
extension SBObject: MessagesAuthorizationRequest {}

// MARK: MessagesFileTransfer
@objc public protocol MessagesFileTransfer: MessagesItem {
    optional func id() -> String // The guid for this file transfer
    optional var name: String { get } // The name of this file
    optional var file: NSURL { get } // The local path to this file transfer
    optional var direction: MessagesDirection { get } // The direction in which this file is being sent
    optional var service: MessagesService { get } // The service on which this file transfer is taking place
    optional var buddy: MessagesBuddy { get } // The account participating in this file transfer
    optional var secure: Bool { get } // Is this file transfer secure?
    optional var fileSize: Int { get } // The total size in bytes of the completed file transfer
    optional var fileProgress: Int { get } // The number of bytes that have been transferred
    optional var transferStatus: MessagesTransferStatus { get } // The current status of this file transfer
    optional var started: NSDate { get } // The date that this file transfer started
    optional func accept() // Accepts an incoming text, audio, or video chat invitation, or file transfer
    optional func decline() // Declines an incoming text, audio, or video chat invitation, or file transfer
}
extension SBObject: MessagesFileTransfer {}

