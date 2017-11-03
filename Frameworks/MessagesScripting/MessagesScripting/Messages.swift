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

// MARK: MessagesSaveOptions
@objc public enum MessagesSaveOptions : AEKeyword {
    case yes = 0x79657320 /* 'yes ' */
    case no = 0x6e6f2020 /* 'no  ' */
    case ask = 0x61736b20 /* 'ask ' */
}

// MARK: MessagesInviteType
@objc public enum MessagesInviteType : AEKeyword {
    case audioInvitation = 0x61636f6e /* 'acon' */
    case textChatInvitation = 0x74636f6e /* 'tcon' */
    case videoInvitation = 0x76636f6e /* 'vcon' */
}

// MARK: MessagesAccountStatus
@objc public enum MessagesAccountStatus : AEKeyword {
    case available = 0x6176616c /* 'aval' */
    case away = 0x61776179 /* 'away' */
    case offline = 0x6f66666c /* 'offl' */
    case invisible = 0x696e7673 /* 'invs' */
    case idle = 0x69646c65 /* 'idle' */
    case unknown = 0x756e6b6e /* 'unkn' */
}

// MARK: MessagesMyStatus
@objc public enum MessagesMyStatus : AEKeyword {
    case away = 0x61776179 /* 'away' */
    case available = 0x6176616c /* 'aval' */
    case offline = 0x6f66666c /* 'offl' */
    case invisible = 0x696e7673 /* 'invs' */
}

// MARK: MessagesConnectionStatus
@objc public enum MessagesConnectionStatus : AEKeyword {
    case disconnecting = 0x64636e67 /* 'dcng' */
    case connected = 0x636f6e6e /* 'conn' */
    case connecting = 0x636f6e67 /* 'cong' */
    case disconnected = 0x64636f6e /* 'dcon' */
}

// MARK: MessagesCapabilities
@objc public enum MessagesCapabilities : AEKeyword {
    case videoChat = 0x76636f6e /* 'vcon' */
    case audioChat = 0x61636f6e /* 'acon' */
    case multipersonVideo = 0x6d777663 /* 'mwvc' */
    case multipersonAudio = 0x6d776163 /* 'mwac' */
}

// MARK: MessagesScreenSharing
@objc public enum MessagesScreenSharing : AEKeyword {
    case none = 0x73736e73 /* 'ssns' */
    case localScreen = 0x73736c73 /* 'ssls' */
    case remoteScreen = 0x73737273 /* 'ssrs' */
}

// MARK: MessagesServiceType
@objc public enum MessagesServiceType : AEKeyword {
    case aim = 0x7361696d /* 'saim' */
    case bonjour = 0x73737562 /* 'ssub' */
    case jabber = 0x736a6162 /* 'sjab' */
    case iMessage = 0x73696d73 /* 'sims' */
}

// MARK: MessagesDirection
@objc public enum MessagesDirection : AEKeyword {
    case incoming = 0x46546963 /* 'FTic' */
    case outgoing = 0x46546f67 /* 'FTog' */
}

// MARK: MessagesTransferStatus
@objc public enum MessagesTransferStatus : AEKeyword {
    case preparing = 0x46547370 /* 'FTsp' */
    case waiting = 0x46547377 /* 'FTsw' */
    case transferring = 0x46547367 /* 'FTsg' */
    case finalizing = 0x4654737a /* 'FTsz' */
    case finished = 0x46547366 /* 'FTsf' */
    case failed = 0x46547365 /* 'FTse' */
}

// MARK: MessagesAvType
@objc public enum MessagesAvType : AEKeyword {
    case audio = 0x49434161 /* 'ICAa' */
    case video = 0x49434176 /* 'ICAv' */
}

// MARK: MessagesChatType
@objc public enum MessagesChatType : AEKeyword {
    case instantMessage = 0x4943696d /* 'ICim' */
    case directInstantMessage = 0x49436469 /* 'ICdi' */
    case chatRoom = 0x49436372 /* 'ICcr' */
}

// MARK: MessagesJoinState
@objc public enum MessagesJoinState : AEKeyword {
    case notJoined = 0x49434a63 /* 'ICJc' */
    case joining = 0x49434a67 /* 'ICJg' */
    case joined = 0x49434a6a /* 'ICJj' */
}

// MARK: MessagesAvConnectionStatus
@objc public enum MessagesAvConnectionStatus : AEKeyword {
    case invited = 0x49434169 /* 'ICAi' */
    case waiting = 0x49434177 /* 'ICAw' */
    case connecting = 0x49434178 /* 'ICAx' */
    case connected = 0x49434163 /* 'ICAc' */
    case ended = 0x4943416e /* 'ICAn' */
}

// MARK: MessagesGenericMethods
@objc public protocol MessagesGenericMethods {
    @objc optional func closeSaving(_ saving: MessagesSaveOptions, savingIn: URL!) // Close a document.
    @objc optional func saveIn(_ in_: URL!, as: String!) // Save a document.
    @objc optional func delete() // Delete an object.
    @objc optional func duplicateTo(_ to: SBObject!, withProperties: [AnyHashable : Any]!) -> SBObject // Copy object(s) and put the copies at a new location.
    @objc optional func exists() -> Bool // Verify if an object exists.
    @objc optional func moveTo(_ to: SBObject!) -> SBObject // Move object(s) to a new location.
}

// MARK: MessagesItem
@objc public protocol MessagesItem: SBObjectProtocol, MessagesGenericMethods {
    @objc optional var properties: [AnyHashable : Any] { get } // All of the object's properties.
    @objc optional func setProperties(_ properties: [AnyHashable : Any]!) // All of the object's properties.
}
extension SBObject: MessagesItem {}

// MARK: MessagesColor
@objc public protocol MessagesColor: SBObjectProtocol, MessagesGenericMethods {
}
extension SBObject: MessagesColor {}

// MARK: MessagesDocument
@objc public protocol MessagesDocument: SBObjectProtocol, MessagesGenericMethods {
    @objc optional var name: String { get } // The document's name.
    @objc optional var modified: Bool { get } // Has the document been modified since the last save?
    @objc optional var file: URL { get } // The document's location on disk.
}
extension SBObject: MessagesDocument {}

// MARK: MessagesWindow
@objc public protocol MessagesWindow: SBObjectProtocol, MessagesGenericMethods {
    @objc optional var name: String { get } // The full title of the window.
    @objc optional func id() -> Int // The unique identifier of the window.
    @objc optional var index: Int { get } // The index of the window, ordered front to back.
    @objc optional var bounds: NSRect { get } // The bounding rectangle of the window.
    @objc optional var closeable: Bool { get } // Whether the window has a close box.
    @objc optional var minimizable: Bool { get } // Whether the window can be minimized.
    @objc optional var minimized: Bool { get } // Whether the window is currently minimized.
    @objc optional var resizable: Bool { get } // Whether the window can be resized.
    @objc optional var visible: Bool { get } // Whether the window is currently visible.
    @objc optional var zoomable: Bool { get } // Whether the window can be zoomed.
    @objc optional var zoomed: Bool { get } // Whether the window is currently zoomed.
    @objc optional var document: MessagesDocument { get } // The document whose contents are being displayed in the window.
    @objc optional func setIndex(_ index: Int) // The index of the window, ordered front to back.
    @objc optional func setBounds(_ bounds: NSRect) // The bounding rectangle of the window.
    @objc optional func setMinimized(_ minimized: Bool) // Whether the window is currently minimized.
    @objc optional func setVisible(_ visible: Bool) // Whether the window is currently visible.
    @objc optional func setZoomed(_ zoomed: Bool) // Whether the window is currently zoomed.
}
extension SBObject: MessagesWindow {}

// MARK: MessagesRichText
@objc public protocol MessagesRichText: SBObjectProtocol, MessagesGenericMethods {
    @objc optional func characters() -> SBElementArray
    @objc optional func paragraphs() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional func attributeRuns() -> SBElementArray
    @objc optional func attachments() -> SBElementArray
    @objc optional var color: NSColor { get } // The color of the first character.
    @objc optional var font: String { get } // The name of the font of the first character.
    @objc optional var size: Double { get } // The size in points of the first character.
    @objc optional func setColor(_ color: NSColor!) // The color of the first character.
    @objc optional func setFont(_ font: String!) // The name of the font of the first character.
    @objc optional func setSize(_ size: Double) // The size in points of the first character.
}
extension SBObject: MessagesRichText {}

// MARK: MessagesCharacter
@objc public protocol MessagesCharacter: SBObjectProtocol, MessagesGenericMethods {
    @objc optional func characters() -> SBElementArray
    @objc optional func paragraphs() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional func attributeRuns() -> SBElementArray
    @objc optional func attachments() -> SBElementArray
    @objc optional var color: NSColor { get } // The color of the first character.
    @objc optional var font: String { get } // The name of the font of the first character.
    @objc optional var size: Int { get } // The size in points of the first character.
    @objc optional func setColor(_ color: NSColor!) // The color of the first character.
    @objc optional func setFont(_ font: String!) // The name of the font of the first character.
    @objc optional func setSize(_ size: Int) // The size in points of the first character.
}
extension SBObject: MessagesCharacter {}

// MARK: MessagesParagraph
@objc public protocol MessagesParagraph: SBObjectProtocol, MessagesGenericMethods {
    @objc optional func characters() -> SBElementArray
    @objc optional func paragraphs() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional func attributeRuns() -> SBElementArray
    @objc optional func attachments() -> SBElementArray
    @objc optional var color: NSColor { get } // The color of the first character.
    @objc optional var font: String { get } // The name of the font of the first character.
    @objc optional var size: Int { get } // The size in points of the first character.
    @objc optional func setColor(_ color: NSColor!) // The color of the first character.
    @objc optional func setFont(_ font: String!) // The name of the font of the first character.
    @objc optional func setSize(_ size: Int) // The size in points of the first character.
}
extension SBObject: MessagesParagraph {}

// MARK: MessagesWord
@objc public protocol MessagesWord: SBObjectProtocol, MessagesGenericMethods {
    @objc optional func characters() -> SBElementArray
    @objc optional func paragraphs() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional func attributeRuns() -> SBElementArray
    @objc optional func attachments() -> SBElementArray
    @objc optional var color: NSColor { get } // The color of the first character.
    @objc optional var font: String { get } // The name of the font of the first character.
    @objc optional var size: Int { get } // The size in points of the first character.
    @objc optional func setColor(_ color: NSColor!) // The color of the first character.
    @objc optional func setFont(_ font: String!) // The name of the font of the first character.
    @objc optional func setSize(_ size: Int) // The size in points of the first character.
}
extension SBObject: MessagesWord {}

// MARK: MessagesAttributeRun
@objc public protocol MessagesAttributeRun: SBObjectProtocol, MessagesGenericMethods {
    @objc optional func characters() -> SBElementArray
    @objc optional func paragraphs() -> SBElementArray
    @objc optional func words() -> SBElementArray
    @objc optional func attributeRuns() -> SBElementArray
    @objc optional func attachments() -> SBElementArray
    @objc optional var color: NSColor { get } // The color of the first character.
    @objc optional var font: String { get } // The name of the font of the first character.
    @objc optional var size: Int { get } // The size in points of the first character.
    @objc optional func setColor(_ color: NSColor!) // The color of the first character.
    @objc optional func setFont(_ font: String!) // The name of the font of the first character.
    @objc optional func setSize(_ size: Int) // The size in points of the first character.
}
extension SBObject: MessagesAttributeRun {}

// MARK: MessagesAttachment
@objc public protocol MessagesAttachment: MessagesRichText {
    @objc optional var file: URL { get } // The path to the file for the attachment
}
extension SBObject: MessagesAttachment {}

// MARK: MessagesApplication
@objc public protocol MessagesApplication: SBApplicationProtocol {
    @objc optional func buddies() -> SBElementArray
    @objc optional func services() -> SBElementArray
    @objc optional func fileTransfers() -> SBElementArray
    @objc optional func chats() -> SBElementArray
    @objc optional func textChats() -> SBElementArray
    @objc optional func audioChats() -> SBElementArray
    @objc optional func videoChats() -> SBElementArray
    @objc optional func authorizationRequests() -> SBElementArray
    @objc optional func documents() -> SBElementArray
    @objc optional func windows() -> SBElementArray
    @objc optional var idleTime: Int { get } // Time in seconds that I have been idle.
    @objc optional var image: NSImage { get } // My image as it appears in all services.
    @objc optional var status: MessagesMyStatus { get } // My status on all services.
    @objc optional var statusMessage: String { get } // My status message, visible to other people while I am online.
    @objc optional var activeAvChat: MessagesAudioChat { get } // The currently active audio or video chat.
    @objc optional var name: String { get } // The name of the application.
    @objc optional var frontmost: Bool { get } // Is this the frontmost (active) application?
    @objc optional var version: String { get } // The version of the application.
    @objc optional func `open`(_ x: [URL]!) // Open a document.
    @objc optional func print(_ x: URL!) // Print an object.
    @objc optional func quitSaving(_ saving: MessagesSaveOptions) // Quit the application.
    @objc optional func invite(_ x: [MessagesBuddy]!, to: Any!, withMessage: String!) // Invites a buddy to join an existing chat.
    @objc optional func logIn() // Log in to the specified service, or all services if none is specified. If the account password is not in the keychain the user will be prompted to enter one.
    @objc optional func logOut() // Logs out of a service, or all services if none is specified.
    @objc optional func send(_ x: Any!, to: Any!) // Sends a message or file to a buddy or to a chat.
    @objc optional func storeRecentPicture() // Stores the currently set buddy picture into your recent pictures.
    @objc optional func showChatChooserFor(_ for_: MessagesBuddy!) // displays a dialog in Messages to start a new chat with the specified buddy
    @objc optional func setImage(_ image: NSImage!) // My image as it appears in all services.
    @objc optional func setStatus(_ status: MessagesMyStatus) // My status on all services.
    @objc optional func setStatusMessage(_ statusMessage: String!) // My status message, visible to other people while I am online.
    @objc optional func setActiveAvChat(_ activeAvChat: MessagesAudioChat!) // The currently active audio or video chat.
}
extension SBApplication: MessagesApplication {}

// MARK: MessagesBuddy
@objc public protocol MessagesBuddy: MessagesItem {
    @objc optional func id() -> String // The buddy's service and handle. For example: AIM:JohnDoe007
    @objc optional var service: MessagesService { get } // The service on which this buddy exists.
    @objc optional var name: String { get } // The buddy's name as it appears in the buddy list.
    @objc optional var handle: String { get } // The buddy's online account name.
    @objc optional var status: MessagesAccountStatus { get } // The buddy's current status.
    @objc optional var statusMessage: String { get } // The buddy's current status message.
    @objc optional var idleTime: Int { get } // The time in seconds the buddy has been idle.
    @objc optional var capabilities: [NSAppleEventDescriptor] { get } // The buddy's messaging capabilities.
    @objc optional var image: NSImage { get } // The buddy's custom image.
    @objc optional var firstName: String { get } // The first name from this buddy's Contacts card, if available
    @objc optional var lastName: String { get } // The last name from this buddy's Contacts card, if available
    @objc optional var fullName: String { get } // The full name from this buddy's Contacts card, if available
}
extension SBObject: MessagesBuddy {}

// MARK: MessagesService
@objc public protocol MessagesService: MessagesItem {
    @objc optional func buddies() -> SBElementArray
    @objc optional func chats() -> SBElementArray
    @objc optional func id() -> String // A guid identifier for this service.
    @objc optional var name: String { get } // The name of this service as defined in Account preferences description field
    @objc optional var enabled: Bool { get } // Is the service enabled?
    @objc optional var connectionStatus: MessagesConnectionStatus { get } // The connection status for this account.
    @objc optional var status: MessagesMyStatus { get } // My status on this service.
    @objc optional var statusMessage: String { get } // My status message, visible to other people on this service while I am online.
    @objc optional var serviceType: MessagesServiceType { get } // The type of protocol for this service
    @objc optional func logIn() // Log in to the specified service, or all services if none is specified. If the account password is not in the keychain the user will be prompted to enter one.
    @objc optional func logOut() // Logs out of a service, or all services if none is specified.
    @objc optional func setName(_ name: String!) // The name of this service as defined in Account preferences description field
    @objc optional func setEnabled(_ enabled: Bool) // Is the service enabled?
    @objc optional func setStatus(_ status: MessagesMyStatus) // My status on this service.
    @objc optional func setStatusMessage(_ statusMessage: String!) // My status message, visible to other people on this service while I am online.
}
extension SBObject: MessagesService {}

// MARK: MessagesChat
@objc public protocol MessagesChat: SBObjectProtocol, MessagesGenericMethods {
    @objc optional func id() -> String // A guid identifier for this chat.
    @objc optional var service: MessagesService { get } // The service which is participating in this chat.
    @objc optional var participants: [MessagesBuddy] { get } // Other participants of this chat. This property may be specified at time of creation.
    @objc optional var secure: Bool { get } // Is this chat secure?
    @objc optional var invitation: Bool { get } // Is this an invitation to a chat?
    @objc optional var active: Bool { get } // Is this chat currently active?
    @objc optional var started: Date { get } // The date on which this chat started.
    @objc optional var updated: Date { get } // The date when this chat was last updated.
    @objc optional func accept() // Accepts an incoming text, audio, or video chat invitation, or file transfer
    @objc optional func decline() // Declines an incoming text, audio, or video chat invitation, or file transfer
}
extension SBObject: MessagesChat {}

// MARK: MessagesTextChat
@objc public protocol MessagesTextChat: MessagesChat {
    @objc optional var subject: String { get } // The subject of this chat, if available.
    @objc optional var invitationMessage: String { get } // An invitation message. This may only be specified at the time of creation. This message will be sent to chat participants when the chat is created.
    @objc optional var joinState: MessagesJoinState { get } // How you are joined to this chat
    @objc optional var name: String { get } // The address or room name of this chat. This property may be specified at time of creation.
    @objc optional var chatType: MessagesChatType { get } // The type of this chat.
}
extension SBObject: MessagesTextChat {}

// MARK: MessagesAudioChat
@objc public protocol MessagesAudioChat: MessagesChat {
    @objc optional var screenSharing: MessagesScreenSharing { get } // Type of screen sharing session taking place within this chat.
    @objc optional var muted: Bool { get } // Is the chat muted?
    @objc optional var avConnectionStatus: MessagesAvConnectionStatus { get } // The connection state for this av chat.
    @objc optional func requestRecording() // Sends a recording request to all participants of an audio or video chat. Recording will not start until all participants have agreed to allow recording.
    @objc optional func stopRecording() // Ends recording of an audio or video chat.
    @objc optional func setMuted(_ muted: Bool) // Is the chat muted?
}
extension SBObject: MessagesAudioChat {}

// MARK: MessagesVideoChat
@objc public protocol MessagesVideoChat: MessagesAudioChat {
    @objc optional var paused: Bool { get } // Is the chat paused?
    @objc optional var showingFullScreen: Bool { get } // Is the chat being displayed in full screen mode?
    @objc optional var showingLocalVideo: Bool { get } // Is the local video preview being displayed?
    @objc optional func takeSnapshot() // Takes a snapshot of a video chat and saves it to a desktop.
    @objc optional func setPaused(_ paused: Bool) // Is the chat paused?
    @objc optional func setShowingFullScreen(_ showingFullScreen: Bool) // Is the chat being displayed in full screen mode?
    @objc optional func setShowingLocalVideo(_ showingLocalVideo: Bool) // Is the local video preview being displayed?
}
extension SBObject: MessagesVideoChat {}

// MARK: MessagesAuthorizationRequest
@objc public protocol MessagesAuthorizationRequest: MessagesItem {
    @objc optional func id() -> String // The guid for this authorization request
    @objc optional var service: MessagesService { get } // The service on which authorization was requested.
    @objc optional var buddy: MessagesBuddy { get } // The buddy requesting authorization
}
extension SBObject: MessagesAuthorizationRequest {}

// MARK: MessagesFileTransfer
@objc public protocol MessagesFileTransfer: MessagesItem {
    @objc optional func id() -> String // The guid for this file transfer
    @objc optional var name: String { get } // The name of this file
    @objc optional var file: URL { get } // The local path to this file transfer
    @objc optional var direction: MessagesDirection { get } // The direction in which this file is being sent
    @objc optional var service: MessagesService { get } // The service on which this file transfer is taking place
    @objc optional var buddy: MessagesBuddy { get } // The account participating in this file transfer
    @objc optional var secure: Bool { get } // Is this file transfer secure?
    @objc optional var fileSize: Int { get } // The total size in bytes of the completed file transfer
    @objc optional var fileProgress: Int { get } // The number of bytes that have been transferred
    @objc optional var transferStatus: MessagesTransferStatus { get } // The current status of this file transfer
    @objc optional var started: Date { get } // The date that this file transfer started
    @objc optional func accept() // Accepts an incoming text, audio, or video chat invitation, or file transfer
    @objc optional func decline() // Declines an incoming text, audio, or video chat invitation, or file transfer
}
extension SBObject: MessagesFileTransfer {}

