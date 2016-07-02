import AppKit
import ScriptingBridge

@objc public protocol SBObjectProtocol: NSObjectProtocol {
    func get() -> AnyObject!
}

@objc public protocol SBApplicationProtocol: SBObjectProtocol {
    func activate()
    var delegate: SBApplicationDelegate! { get set }
}

// MARK: FinderPriv
@objc public enum FinderPriv : AEKeyword {
    case ReadOnly = 0x72656164 /* 'read' */
    case ReadWrite = 0x72647772 /* 'rdwr' */
    case WriteOnly = 0x77726974 /* 'writ' */
    case None = 0x6e6f6e65 /* 'none' */
}

// MARK: FinderEdfm
@objc public enum FinderEdfm : AEKeyword {
    case MacOSFormat = 0x64666866 /* 'dfhf' */
    case MacOSExtendedFormat = 0x6466682b /* 'dfh+' */
    case UFSFormat = 0x64667566 /* 'dfuf' */
    case NFSFormat = 0x64666e66 /* 'dfnf' */
    case AudioFormat = 0x64666175 /* 'dfau' */
    case ProDOSFormat = 0x64667072 /* 'dfpr' */
    case MSDOSFormat = 0x64666d73 /* 'dfms' */
    case NTFSFormat = 0x64666e74 /* 'dfnt' */
    case ISO9660Format = 0x64663936 /* 'df96' */
    case HighSierraFormat = 0x64666873 /* 'dfhs' */
    case QuickTakeFormat = 0x64667174 /* 'dfqt' */
    case ApplePhotoFormat = 0x64667068 /* 'dfph' */
    case AppleShareFormat = 0x64666173 /* 'dfas' */
    case UDFFormat = 0x64667564 /* 'dfud' */
    case WebDAVFormat = 0x64667764 /* 'dfwd' */
    case FTPFormat = 0x64666674 /* 'dfft' */
    case PacketWrittenUDFFormat = 0x64667075 /* 'dfpu' */
    case XsanFormat = 0x64666163 /* 'dfac' */
    case UnknownFormat = 0x64663f3f /* 'df??' */
}

// MARK: FinderIpnl
@objc public enum FinderIpnl : AEKeyword {
    case GeneralInformationPanel = 0x67706e6c /* 'gpnl' */
    case SharingPanel = 0x73706e6c /* 'spnl' */
    case MemoryPanel = 0x6d706e6c /* 'mpnl' */
    case PreviewPanel = 0x76706e6c /* 'vpnl' */
    case ApplicationPanel = 0x61706e6c /* 'apnl' */
    case LanguagesPanel = 0x706b6c67 /* 'pklg' */
    case PluginsPanel = 0x706b7067 /* 'pkpg' */
    case NameExtensionPanel = 0x6e706e6c /* 'npnl' */
    case CommentsPanel = 0x63706e6c /* 'cpnl' */
    case ContentIndexPanel = 0x63696e6c /* 'cinl' */
    case BurningPanel = 0x62706e6c /* 'bpnl' */
    case MoreInfoPanel = 0x6d696e6c /* 'minl' */
    case SimpleHeaderPanel = 0x73686e6c /* 'shnl' */
}

// MARK: FinderPple
@objc public enum FinderPple : AEKeyword {
    case GeneralPreferencesPanel = 0x70676e70 /* 'pgnp' */
    case LabelPreferencesPanel = 0x706c6270 /* 'plbp' */
    case SidebarPreferencesPanel = 0x70736964 /* 'psid' */
    case AdvancedPreferencesPanel = 0x70616476 /* 'padv' */
}

// MARK: FinderEcvw
@objc public enum FinderEcvw : AEKeyword {
    case IconView = 0x69636e76 /* 'icnv' */
    case ListView = 0x6c737677 /* 'lsvw' */
    case ColumnView = 0x636c7677 /* 'clvw' */
    case GroupView = 0x67727677 /* 'grvw' */
    case FlowView = 0x666c7677 /* 'flvw' */
}

// MARK: FinderEarr
@objc public enum FinderEarr : AEKeyword {
    case NotArranged = 0x6e617272 /* 'narr' */
    case SnapToGrid = 0x67726461 /* 'grda' */
    case ArrangedByName = 0x6e616d61 /* 'nama' */
    case ArrangedByModificationDate = 0x6d647461 /* 'mdta' */
    case ArrangedByCreationDate = 0x63647461 /* 'cdta' */
    case ArrangedBySize = 0x73697a61 /* 'siza' */
    case ArrangedByKind = 0x6b696e61 /* 'kina' */
    case ArrangedByLabel = 0x6c616261 /* 'laba' */
}

// MARK: FinderEpos
@objc public enum FinderEpos : AEKeyword {
    case Right = 0x6c726774 /* 'lrgt' */
    case Bottom = 0x6c626f74 /* 'lbot' */
}

// MARK: FinderSodr
@objc public enum FinderSodr : AEKeyword {
    case Normal = 0x736e726d /* 'snrm' */
    case Reversed = 0x73727673 /* 'srvs' */
}

// MARK: FinderElsv
@objc public enum FinderElsv : AEKeyword {
    case NameColumn = 0x656c736e /* 'elsn' */
    case ModificationDateColumn = 0x656c736d /* 'elsm' */
    case CreationDateColumn = 0x656c7363 /* 'elsc' */
    case SizeColumn = 0x656c7373 /* 'elss' */
    case KindColumn = 0x656c736b /* 'elsk' */
    case LabelColumn = 0x656c736c /* 'elsl' */
    case VersionColumn = 0x656c7376 /* 'elsv' */
    case CommentColumn = 0x656c7343 /* 'elsC' */
}

// MARK: FinderLvic
@objc public enum FinderLvic : AEKeyword {
    case SmallIcon = 0x736d6963 /* 'smic' */
    case LargeIcon = 0x6c676963 /* 'lgic' */
}

// MARK: FinderGenericMethods
@objc public protocol FinderGenericMethods {
    @objc optional func openUsing(using_: SBObject!, withProperties: [NSObject : AnyObject]!) // Open the specified object(s)
    @objc optional func printWithProperties(withProperties: [NSObject : AnyObject]!) // Print the specified object(s)
    @objc optional func activate() // Activate the specified window (or the Finder)
    @objc optional func close() // Close an object
    @objc optional func dataSizeAs(`as`: NSNumber!) -> Int // Return the size in bytes of an object
    @objc optional func delete() -> SBObject // Move an item from its container to the trash
    @objc optional func duplicateTo(to: SBObject!, replacing: Bool, routingSuppressed: Bool, exactCopy: Bool) -> SBObject // Duplicate one or more object(s)
    @objc optional func exists() -> Bool // Verify if an object exists
    @objc optional func moveTo(to: SBObject!, replacing: Bool, positionedAt: [AnyObject]!, routingSuppressed: Bool) -> SBObject // Move object(s) to a new location
    @objc optional func select() // Select the specified object(s)
    @objc optional func sortBy(by: Selector) -> SBObject // Return the specified object(s) in a sorted list
    @objc optional func cleanUpBy(by: Selector) // Arrange items in window nicely (only applies to open windows in icon view that are not kept arranged)
    @objc optional func eject() // Eject the specified disk(s)
    @objc optional func emptySecurity(security: Bool) // Empty the trash
    @objc optional func erase() // (NOT AVAILABLE) Erase the specified disk(s)
    @objc optional func reveal() // Bring the specified object(s) into view
    @objc optional func updateNecessity(necessity: Bool, registeringApplications: Bool) // Update the display of the specified object(s) to match their on-disk representation
}

// MARK: FinderApplication
@objc public protocol FinderApplication: SBApplicationProtocol {
    @objc optional func items() -> SBElementArray
    @objc optional func containers() -> SBElementArray
    @objc optional func disks() -> SBElementArray
    @objc optional func folders() -> SBElementArray
    @objc optional func files() -> SBElementArray
    @objc optional func aliasFiles() -> SBElementArray
    @objc optional func applicationFiles() -> SBElementArray
    @objc optional func documentFiles() -> SBElementArray
    @objc optional func internetLocationFiles() -> SBElementArray
    @objc optional func clippings() -> SBElementArray
    @objc optional func packages() -> SBElementArray
    @objc optional func windows() -> SBElementArray
    @objc optional func FinderWindows() -> SBElementArray
    @objc optional func clippingWindows() -> SBElementArray
    @objc optional var clipboard: SBObject { get } // (NOT AVAILABLE YET) the Finder’s clipboard window
    @objc optional var name: String { get } // the Finder’s name
    @objc optional var visible: Bool { get } // Is the Finder’s layer visible?
    @objc optional var frontmost: Bool { get } // Is the Finder the frontmost process?
    @objc optional var selection: SBObject { get } // the selection in the frontmost Finder window
    @objc optional var insertionLocation: SBObject { get } // the container in which a new folder would appear if “New Folder” was selected
    @objc optional var productVersion: String { get } // the version of the System software running on this computer
    @objc optional var version: String { get } // the version of the Finder
    @objc optional var startupDisk: FinderDisk { get } // the startup disk
    @objc optional var desktop: FinderDesktopObject { get } // the desktop
    @objc optional var trash: FinderTrashObject { get } // the trash
    @objc optional var home: FinderFolder { get } // the home directory
    @objc optional var computerContainer: FinderComputerObject { get } // the computer location (as in Go > Computer)
    @objc optional var FinderPreferences: SBObject { get } // Various preferences that apply to the Finder as a whole
    @objc optional func quit() // Quit the Finder
    @objc optional func activate() // Activate the specified window (or the Finder)
    @objc optional func copy() // (NOT AVAILABLE YET) Copy the selected items to the clipboard (the Finder must be the front application)
    @objc optional func eject() // Eject the specified disk(s)
    @objc optional func emptySecurity(security: Bool) // Empty the trash
    @objc optional func restart() // Restart the computer
    @objc optional func shutDown() // Shut Down the computer
    @objc optional func sleep() // Put the computer to sleep
    @objc optional func setVisible(visible: Bool) // Is the Finder’s layer visible?
    @objc optional func setFrontmost(frontmost: Bool) // Is the Finder the frontmost process?
    @objc optional func setSelection(selection: SBObject!) // the selection in the frontmost Finder window
    @objc optional var desktopPicture: FinderFile { get } // the desktop picture of the main monitor
    @objc optional func setDesktopPicture(desktopPicture: FinderFile!) // the desktop picture of the main monitor
}
extension SBApplication: FinderApplication {}

// MARK: FinderItem
@objc public protocol FinderItem: SBObjectProtocol, FinderGenericMethods {
    @objc optional var name: String { get } // the name of the item
    @objc optional var displayedName: String { get } // the user-visible name of the item
    @objc optional var nameExtension: String { get } // the name extension of the item (such as “txt”)
    @objc optional var extensionHidden: Bool { get } // Is the item's extension hidden from the user?
    @objc optional var index: Int { get } // the index in the front-to-back ordering within its container
    @objc optional var container: SBObject { get } // the container of the item
    @objc optional var disk: SBObject { get } // the disk on which the item is stored
    @objc optional var position: NSPoint { get } // the position of the item within its parent window (can only be set for an item in a window viewed as icons or buttons)
    @objc optional var desktopPosition: NSPoint { get } // the position of the item on the desktop
    @objc optional var bounds: NSRect { get } // the bounding rectangle of the item (can only be set for an item in a window viewed as icons or buttons)
    @objc optional var labelIndex: Int { get } // the label of the item
    @objc optional var locked: Bool { get } // Is the file locked?
    @objc optional var kind: String { get } // the kind of the item
    @objc optional var objectDescription: String { get } // a description of the item
    @objc optional var comment: String { get } // the comment of the item, displayed in the “Get Info” window
    @objc optional var size: Int64 { get } // the logical size of the item
    @objc optional var physicalSize: Int64 { get } // the actual space used by the item on disk
    @objc optional var creationDate: NSDate { get } // the date on which the item was created
    @objc optional var modificationDate: NSDate { get } // the date on which the item was last modified
    @objc optional var icon: FinderIconFamily { get } // the icon bitmap of the item
    @objc optional var URL: String { get } // the URL of the item
    @objc optional var owner: String { get } // the user that owns the container
    @objc optional var group: String { get } // the user or group that has special access to the container
    @objc optional var ownerPrivileges: FinderPriv { get }
    @objc optional var groupPrivileges: FinderPriv { get }
    @objc optional var everyonesPrivileges: FinderPriv { get }
    @objc optional var informationWindow: SBObject { get } // the information window for the item
    @objc optional var properties: [NSObject : AnyObject] { get } // every property of an item
    @objc optional func setName(name: String!) // the name of the item
    @objc optional func setNameExtension(nameExtension: String!) // the name extension of the item (such as “txt”)
    @objc optional func setExtensionHidden(extensionHidden: Bool) // Is the item's extension hidden from the user?
    @objc optional func setPosition(position: NSPoint) // the position of the item within its parent window (can only be set for an item in a window viewed as icons or buttons)
    @objc optional func setDesktopPosition(desktopPosition: NSPoint) // the position of the item on the desktop
    @objc optional func setBounds(bounds: NSRect) // the bounding rectangle of the item (can only be set for an item in a window viewed as icons or buttons)
    @objc optional func setLabelIndex(labelIndex: Int) // the label of the item
    @objc optional func setLocked(locked: Bool) // Is the file locked?
    @objc optional func setComment(comment: String!) // the comment of the item, displayed in the “Get Info” window
    @objc optional func setModificationDate(modificationDate: NSDate!) // the date on which the item was last modified
    @objc optional func setIcon(icon: FinderIconFamily!) // the icon bitmap of the item
    @objc optional func setOwner(owner: String!) // the user that owns the container
    @objc optional func setGroup(group: String!) // the user or group that has special access to the container
    @objc optional func setOwnerPrivileges(ownerPrivileges: FinderPriv)
    @objc optional func setGroupPrivileges(groupPrivileges: FinderPriv)
    @objc optional func setEveryonesPrivileges(everyonesPrivileges: FinderPriv)
    @objc optional func setProperties(properties: [NSObject : AnyObject]!) // every property of an item
}
extension SBObject: FinderItem {}

// MARK: FinderContainer
@objc public protocol FinderContainer: FinderItem {
    @objc optional func items() -> SBElementArray
    @objc optional func containers() -> SBElementArray
    @objc optional func folders() -> SBElementArray
    @objc optional func files() -> SBElementArray
    @objc optional func aliasFiles() -> SBElementArray
    @objc optional func applicationFiles() -> SBElementArray
    @objc optional func documentFiles() -> SBElementArray
    @objc optional func internetLocationFiles() -> SBElementArray
    @objc optional func clippings() -> SBElementArray
    @objc optional func packages() -> SBElementArray
    @objc optional var entireContents: SBObject { get } // the entire contents of the container, including the contents of its children
    @objc optional var expandable: Bool { get } // (NOT AVAILABLE YET) Is the container capable of being expanded as an outline?
    @objc optional var expanded: Bool { get } // (NOT AVAILABLE YET) Is the container opened as an outline? (can only be set for containers viewed as lists)
    @objc optional var completelyExpanded: Bool { get } // (NOT AVAILABLE YET) Are the container and all of its children opened as outlines? (can only be set for containers viewed as lists)
    @objc optional var containerWindow: SBObject { get } // the container window for this folder
    @objc optional func setExpanded(expanded: Bool) // (NOT AVAILABLE YET) Is the container opened as an outline? (can only be set for containers viewed as lists)
    @objc optional func setCompletelyExpanded(completelyExpanded: Bool) // (NOT AVAILABLE YET) Are the container and all of its children opened as outlines? (can only be set for containers viewed as lists)
}
extension SBObject: FinderContainer {}

// MARK: FinderComputerObject
@objc public protocol FinderComputerObject: FinderItem {
}
extension SBObject: FinderComputerObject {}

// MARK: FinderDisk
@objc public protocol FinderDisk: FinderContainer {
    @objc optional func items() -> SBElementArray
    @objc optional func containers() -> SBElementArray
    @objc optional func folders() -> SBElementArray
    @objc optional func files() -> SBElementArray
    @objc optional func aliasFiles() -> SBElementArray
    @objc optional func applicationFiles() -> SBElementArray
    @objc optional func documentFiles() -> SBElementArray
    @objc optional func internetLocationFiles() -> SBElementArray
    @objc optional func clippings() -> SBElementArray
    @objc optional func packages() -> SBElementArray
    @objc optional func id() -> Int // the unique id for this disk (unchanged while disk remains connected and Finder remains running)
    @objc optional var capacity: Int64 { get } // the total number of bytes (free or used) on the disk
    @objc optional var freeSpace: Int64 { get } // the number of free bytes left on the disk
    @objc optional var ejectable: Bool { get } // Can the media be ejected (floppies, CDs, and so on)?
    @objc optional var localVolume: Bool { get } // Is the media a local volume (as opposed to a file server)?
    @objc optional var startup: Bool { get } // Is this disk the boot disk?
    @objc optional var format: FinderEdfm { get } // the filesystem format of this disk
    @objc optional var journalingEnabled: Bool { get } // Does this disk do file system journaling?
    @objc optional var ignorePrivileges: Bool { get } // Ignore permissions on this disk?
    @objc optional func setIgnorePrivileges(ignorePrivileges: Bool) // Ignore permissions on this disk?
}
extension SBObject: FinderDisk {}

// MARK: FinderFolder
@objc public protocol FinderFolder: FinderContainer {
    @objc optional func items() -> SBElementArray
    @objc optional func containers() -> SBElementArray
    @objc optional func folders() -> SBElementArray
    @objc optional func files() -> SBElementArray
    @objc optional func aliasFiles() -> SBElementArray
    @objc optional func applicationFiles() -> SBElementArray
    @objc optional func documentFiles() -> SBElementArray
    @objc optional func internetLocationFiles() -> SBElementArray
    @objc optional func clippings() -> SBElementArray
    @objc optional func packages() -> SBElementArray
}
extension SBObject: FinderFolder {}

// MARK: FinderDesktopObject
@objc public protocol FinderDesktopObject: FinderContainer {
    @objc optional func items() -> SBElementArray
    @objc optional func containers() -> SBElementArray
    @objc optional func disks() -> SBElementArray
    @objc optional func folders() -> SBElementArray
    @objc optional func files() -> SBElementArray
    @objc optional func aliasFiles() -> SBElementArray
    @objc optional func applicationFiles() -> SBElementArray
    @objc optional func documentFiles() -> SBElementArray
    @objc optional func internetLocationFiles() -> SBElementArray
    @objc optional func clippings() -> SBElementArray
    @objc optional func packages() -> SBElementArray
}
extension SBObject: FinderDesktopObject {}

// MARK: FinderTrashObject
@objc public protocol FinderTrashObject: FinderContainer {
    @objc optional func items() -> SBElementArray
    @objc optional func containers() -> SBElementArray
    @objc optional func folders() -> SBElementArray
    @objc optional func files() -> SBElementArray
    @objc optional func aliasFiles() -> SBElementArray
    @objc optional func applicationFiles() -> SBElementArray
    @objc optional func documentFiles() -> SBElementArray
    @objc optional func internetLocationFiles() -> SBElementArray
    @objc optional func clippings() -> SBElementArray
    @objc optional func packages() -> SBElementArray
    @objc optional var warnsBeforeEmptying: Bool { get } // Display a dialog when emptying the trash?
    @objc optional func setWarnsBeforeEmptying(warnsBeforeEmptying: Bool) // Display a dialog when emptying the trash?
}
extension SBObject: FinderTrashObject {}

// MARK: FinderFile
@objc public protocol FinderFile: FinderItem {
    @objc optional var fileType: NSNumber { get } // the OSType identifying the type of data contained in the item
    @objc optional var creatorType: NSNumber { get } // the OSType identifying the application that created the item
    @objc optional var stationery: Bool { get } // Is the file a stationery pad?
    @objc optional var productVersion: String { get } // the version of the product (visible at the top of the “Get Info” window)
    @objc optional var version: String { get } // the version of the file (visible at the bottom of the “Get Info” window)
    @objc optional func setFileType(fileType: NSNumber!) // the OSType identifying the type of data contained in the item
    @objc optional func setCreatorType(creatorType: NSNumber!) // the OSType identifying the application that created the item
    @objc optional func setStationery(stationery: Bool) // Is the file a stationery pad?
}
extension SBObject: FinderFile {}

// MARK: FinderAliasFile
@objc public protocol FinderAliasFile: FinderFile {
    @objc optional var originalItem: SBObject { get } // the original item pointed to by the alias
    @objc optional func setOriginalItem(originalItem: SBObject!) // the original item pointed to by the alias
}
extension SBObject: FinderAliasFile {}

// MARK: FinderApplicationFile
@objc public protocol FinderApplicationFile: FinderFile {
    @objc optional func id() -> String // the bundle identifier or creator type of the application
    @objc optional var suggestedSize: Int { get } // (AVAILABLE IN 10.1 TO 10.4) the memory size with which the developer recommends the application be launched
    @objc optional var minimumSize: Int { get } // (AVAILABLE IN 10.1 TO 10.4) the smallest memory size with which the application can be launched
    @objc optional var preferredSize: Int { get } // (AVAILABLE IN 10.1 TO 10.4) the memory size with which the application will be launched
    @objc optional var acceptsHighLevelEvents: Bool { get } // Is the application high-level event aware? (OBSOLETE: always returns true)
    @objc optional var hasScriptingTerminology: Bool { get } // Does the process have a scripting terminology, i.e., can it be scripted?
    @objc optional var opensInClassic: Bool { get } // (AVAILABLE IN 10.1 TO 10.4) Should the application launch in the Classic environment?
    @objc optional func setMinimumSize(minimumSize: Int) // (AVAILABLE IN 10.1 TO 10.4) the smallest memory size with which the application can be launched
    @objc optional func setPreferredSize(preferredSize: Int) // (AVAILABLE IN 10.1 TO 10.4) the memory size with which the application will be launched
    @objc optional func setOpensInClassic(opensInClassic: Bool) // (AVAILABLE IN 10.1 TO 10.4) Should the application launch in the Classic environment?
}
extension SBObject: FinderApplicationFile {}

// MARK: FinderDocumentFile
@objc public protocol FinderDocumentFile: FinderFile {
}
extension SBObject: FinderDocumentFile {}

// MARK: FinderInternetLocationFile
@objc public protocol FinderInternetLocationFile: FinderFile {
    @objc optional var location: String { get } // the internet location
}
extension SBObject: FinderInternetLocationFile {}

// MARK: FinderClipping
@objc public protocol FinderClipping: FinderFile {
    @objc optional var clippingWindow: SBObject { get } // (NOT AVAILABLE YET) the clipping window for this clipping
}
extension SBObject: FinderClipping {}

// MARK: FinderPackage
@objc public protocol FinderPackage: FinderItem {
}
extension SBObject: FinderPackage {}

// MARK: FinderWindow
@objc public protocol FinderWindow: SBObjectProtocol, FinderGenericMethods {
    @objc optional func id() -> Int // the unique id for this window
    @objc optional var position: NSPoint { get } // the upper left position of the window
    @objc optional var bounds: NSRect { get } // the boundary rectangle for the window
    @objc optional var titled: Bool { get } // Does the window have a title bar?
    @objc optional var name: String { get } // the name of the window
    @objc optional var index: Int { get } // the number of the window in the front-to-back layer ordering
    @objc optional var closeable: Bool { get } // Does the window have a close box?
    @objc optional var floating: Bool { get } // Does the window have a title bar?
    @objc optional var modal: Bool { get } // Is the window modal?
    @objc optional var resizable: Bool { get } // Is the window resizable?
    @objc optional var zoomable: Bool { get } // Is the window zoomable?
    @objc optional var zoomed: Bool { get } // Is the window zoomed?
    @objc optional var visible: Bool { get } // Is the window visible (always true for open Finder windows)?
    @objc optional var collapsed: Bool { get } // Is the window collapsed
    @objc optional var properties: [NSObject : AnyObject] { get } // every property of a window
    @objc optional func setPosition(position: NSPoint) // the upper left position of the window
    @objc optional func setBounds(bounds: NSRect) // the boundary rectangle for the window
    @objc optional func setIndex(index: Int) // the number of the window in the front-to-back layer ordering
    @objc optional func setZoomed(zoomed: Bool) // Is the window zoomed?
    @objc optional func setCollapsed(collapsed: Bool) // Is the window collapsed
    @objc optional func setProperties(properties: [NSObject : AnyObject]!) // every property of a window
}
extension SBObject: FinderWindow {}

// MARK: FinderFinderWindow
@objc public protocol FinderFinderWindow: FinderWindow {
    @objc optional var target: SBObject { get } // the container at which this file viewer is targeted
    @objc optional var currentView: FinderEcvw { get } // the current view for the container window
    @objc optional var iconViewOptions: FinderIconViewOptions { get } // the icon view options for the container window
    @objc optional var listViewOptions: FinderListViewOptions { get } // the list view options for the container window
    @objc optional var columnViewOptions: FinderColumnViewOptions { get } // the column view options for the container window
    @objc optional var toolbarVisible: Bool { get } // Is the window's toolbar visible?
    @objc optional var statusbarVisible: Bool { get } // Is the window's status bar visible?
    @objc optional var sidebarWidth: Int { get } // the width of the sidebar for the container window
    @objc optional func setTarget(target: SBObject!) // the container at which this file viewer is targeted
    @objc optional func setCurrentView(currentView: FinderEcvw) // the current view for the container window
    @objc optional func setToolbarVisible(toolbarVisible: Bool) // Is the window's toolbar visible?
    @objc optional func setStatusbarVisible(statusbarVisible: Bool) // Is the window's status bar visible?
    @objc optional func setSidebarWidth(sidebarWidth: Int) // the width of the sidebar for the container window
}
extension SBObject: FinderFinderWindow {}

// MARK: FinderDesktopWindow
@objc public protocol FinderDesktopWindow: FinderFinderWindow {
}
extension SBObject: FinderDesktopWindow {}

// MARK: FinderInformationWindow
@objc public protocol FinderInformationWindow: FinderWindow {
    @objc optional var item: SBObject { get } // the item from which this window was opened
    @objc optional var currentPanel: FinderIpnl { get } // the current panel in the information window
    @objc optional func setCurrentPanel(currentPanel: FinderIpnl) // the current panel in the information window
}
extension SBObject: FinderInformationWindow {}

// MARK: FinderPreferencesWindow
@objc public protocol FinderPreferencesWindow: FinderWindow {
    @objc optional var currentPanel: FinderPple { get } // The current panel in the Finder preferences window
    @objc optional func setCurrentPanel(currentPanel: FinderPple) // The current panel in the Finder preferences window
}
extension SBObject: FinderPreferencesWindow {}

// MARK: FinderClippingWindow
@objc public protocol FinderClippingWindow: FinderWindow {
}
extension SBObject: FinderClippingWindow {}

// MARK: FinderProcess
@objc public protocol FinderProcess: SBObjectProtocol, FinderGenericMethods {
    @objc optional var name: String { get } // the name of the process
    @objc optional var visible: Bool { get } // Is the process' layer visible?
    @objc optional var frontmost: Bool { get } // Is the process the frontmost process?
    @objc optional var file: SBObject { get } // the file from which the process was launched
    @objc optional var fileType: NSNumber { get } // the OSType of the file type of the process
    @objc optional var creatorType: NSNumber { get } // the OSType of the creator of the process (the signature)
    @objc optional var acceptsHighLevelEvents: Bool { get } // Is the process high-level event aware (accepts open application, open document, print document, and quit)?
    @objc optional var acceptsRemoteEvents: Bool { get } // Does the process accept remote events?
    @objc optional var hasScriptingTerminology: Bool { get } // Does the process have a scripting terminology, i.e., can it be scripted?
    @objc optional var totalPartitionSize: Int { get } // the size of the partition with which the process was launched
    @objc optional var partitionSpaceUsed: Int { get } // the number of bytes currently used in the process' partition
    @objc optional func setVisible(visible: Bool) // Is the process' layer visible?
    @objc optional func setFrontmost(frontmost: Bool) // Is the process the frontmost process?
}
extension SBObject: FinderProcess {}

// MARK: FinderApplicationProcess
@objc public protocol FinderApplicationProcess: FinderProcess {
    @objc optional var applicationFile: FinderApplicationFile { get } // the application file from which this process was launched
}
extension SBObject: FinderApplicationProcess {}

// MARK: FinderDeskAccessoryProcess
@objc public protocol FinderDeskAccessoryProcess: FinderProcess {
    @objc optional var deskAccessoryFile: SBObject { get } // the desk accessory file from which this process was launched
}
extension SBObject: FinderDeskAccessoryProcess {}

// MARK: FinderPreferences
@objc public protocol FinderPreferences: SBObjectProtocol, FinderGenericMethods {
    @objc optional var window: FinderPreferencesWindow { get } // the window that would open if Finder preferences was opened
    @objc optional var iconViewOptions: FinderIconViewOptions { get } // the default icon view options
    @objc optional var listViewOptions: FinderListViewOptions { get } // the default list view options
    @objc optional var columnViewOptions: FinderColumnViewOptions { get } // the column view options for all windows
    @objc optional var foldersSpringOpen: Bool { get } // Spring open folders after the specified delay?
    @objc optional var delayBeforeSpringing: Double { get } // the delay before springing open a container in seconds (from 0.167 to 1.169)
    @objc optional var desktopShowsHardDisks: Bool { get } // Hard disks appear on the desktop?
    @objc optional var desktopShowsExternalHardDisks: Bool { get } // External hard disks appear on the desktop?
    @objc optional var desktopShowsRemovableMedia: Bool { get } // CDs, DVDs, and iPods appear on the desktop?
    @objc optional var desktopShowsConnectedServers: Bool { get } // Connected servers appear on the desktop?
    @objc optional var newWindowTarget: SBObject { get } // target location for a newly-opened Finder window
    @objc optional var foldersOpenInNewWindows: Bool { get } // Folders open into new windows?
    @objc optional var foldersOpenInNewTabs: Bool { get } // Folders open into new tabs?
    @objc optional var newWindowsOpenInColumnView: Bool { get } // Open new windows in column view?
    @objc optional var allNameExtensionsShowing: Bool { get } // Show name extensions, even for items whose “extension hidden” is true?
    @objc optional func setFoldersSpringOpen(foldersSpringOpen: Bool) // Spring open folders after the specified delay?
    @objc optional func setDelayBeforeSpringing(delayBeforeSpringing: Double) // the delay before springing open a container in seconds (from 0.167 to 1.169)
    @objc optional func setDesktopShowsHardDisks(desktopShowsHardDisks: Bool) // Hard disks appear on the desktop?
    @objc optional func setDesktopShowsExternalHardDisks(desktopShowsExternalHardDisks: Bool) // External hard disks appear on the desktop?
    @objc optional func setDesktopShowsRemovableMedia(desktopShowsRemovableMedia: Bool) // CDs, DVDs, and iPods appear on the desktop?
    @objc optional func setDesktopShowsConnectedServers(desktopShowsConnectedServers: Bool) // Connected servers appear on the desktop?
    @objc optional func setNewWindowTarget(newWindowTarget: SBObject!) // target location for a newly-opened Finder window
    @objc optional func setFoldersOpenInNewWindows(foldersOpenInNewWindows: Bool) // Folders open into new windows?
    @objc optional func setFoldersOpenInNewTabs(foldersOpenInNewTabs: Bool) // Folders open into new tabs?
    @objc optional func setNewWindowsOpenInColumnView(newWindowsOpenInColumnView: Bool) // Open new windows in column view?
    @objc optional func setAllNameExtensionsShowing(allNameExtensionsShowing: Bool) // Show name extensions, even for items whose “extension hidden” is true?
}
extension SBObject: FinderPreferences {}

// MARK: FinderLabel
@objc public protocol FinderLabel: SBObjectProtocol, FinderGenericMethods {
    @objc optional var name: String { get } // the name associated with the label
    @objc optional var index: Int { get } // the index in the front-to-back ordering within its container
    @objc optional var color: NSColor { get } // the color associated with the label
    @objc optional func setName(name: String!) // the name associated with the label
    @objc optional func setIndex(index: Int) // the index in the front-to-back ordering within its container
    @objc optional func setColor(color: NSColor!) // the color associated with the label
}
extension SBObject: FinderLabel {}

// MARK: FinderIconFamily
@objc public protocol FinderIconFamily: SBObjectProtocol, FinderGenericMethods {
    @objc optional var largeMonochromeIconAndMask: AnyObject { get } // the large black-and-white icon and the mask for large icons
    @objc optional var large8BitMask: AnyObject { get } // the large 8-bit mask for large 32-bit icons
    @objc optional var large32BitIcon: AnyObject { get } // the large 32-bit color icon
    @objc optional var large8BitIcon: AnyObject { get } // the large 8-bit color icon
    @objc optional var large4BitIcon: AnyObject { get } // the large 4-bit color icon
    @objc optional var smallMonochromeIconAndMask: AnyObject { get } // the small black-and-white icon and the mask for small icons
    @objc optional var small8BitMask: AnyObject { get } // the small 8-bit mask for small 32-bit icons
    @objc optional var small32BitIcon: AnyObject { get } // the small 32-bit color icon
    @objc optional var small8BitIcon: AnyObject { get } // the small 8-bit color icon
    @objc optional var small4BitIcon: AnyObject { get } // the small 4-bit color icon
}
extension SBObject: FinderIconFamily {}

// MARK: FinderIconViewOptions
@objc public protocol FinderIconViewOptions: SBObjectProtocol, FinderGenericMethods {
    @objc optional var arrangement: FinderEarr { get } // the property by which to keep icons arranged
    @objc optional var iconSize: Int { get } // the size of icons displayed in the icon view
    @objc optional var showsItemInfo: Bool { get } // additional info about an item displayed in icon view
    @objc optional var showsIconPreview: Bool { get } // displays a preview of the item in icon view
    @objc optional var textSize: Int { get } // the size of the text displayed in the icon view
    @objc optional var labelPosition: FinderEpos { get } // the location of the label in reference to the icon
    @objc optional var backgroundPicture: FinderFile { get } // the background picture of the icon view
    @objc optional var backgroundColor: NSColor { get } // the background color of the icon view
    @objc optional func setArrangement(arrangement: FinderEarr) // the property by which to keep icons arranged
    @objc optional func setIconSize(iconSize: Int) // the size of icons displayed in the icon view
    @objc optional func setShowsItemInfo(showsItemInfo: Bool) // additional info about an item displayed in icon view
    @objc optional func setShowsIconPreview(showsIconPreview: Bool) // displays a preview of the item in icon view
    @objc optional func setTextSize(textSize: Int) // the size of the text displayed in the icon view
    @objc optional func setLabelPosition(labelPosition: FinderEpos) // the location of the label in reference to the icon
    @objc optional func setBackgroundPicture(backgroundPicture: FinderFile!) // the background picture of the icon view
    @objc optional func setBackgroundColor(backgroundColor: NSColor!) // the background color of the icon view
}
extension SBObject: FinderIconViewOptions {}

// MARK: FinderColumnViewOptions
@objc public protocol FinderColumnViewOptions: SBObjectProtocol, FinderGenericMethods {
    @objc optional var textSize: Int { get } // the size of the text displayed in the column view
    @objc optional var showsIcon: Bool { get } // displays an icon next to the label in column view
    @objc optional var showsIconPreview: Bool { get } // displays a preview of the item in column view
    @objc optional var showsPreviewColumn: Bool { get } // displays the preview column in column view
    @objc optional var disclosesPreviewPane: Bool { get } // discloses the preview pane of the preview column in column view
    @objc optional func setTextSize(textSize: Int) // the size of the text displayed in the column view
    @objc optional func setShowsIcon(showsIcon: Bool) // displays an icon next to the label in column view
    @objc optional func setShowsIconPreview(showsIconPreview: Bool) // displays a preview of the item in column view
    @objc optional func setShowsPreviewColumn(showsPreviewColumn: Bool) // displays the preview column in column view
    @objc optional func setDisclosesPreviewPane(disclosesPreviewPane: Bool) // discloses the preview pane of the preview column in column view
}
extension SBObject: FinderColumnViewOptions {}

// MARK: FinderListViewOptions
@objc public protocol FinderListViewOptions: SBObjectProtocol, FinderGenericMethods {
    @objc optional func columns() -> SBElementArray
    @objc optional var calculatesFolderSizes: Bool { get } // Are folder sizes calculated and displayed in the window?
    @objc optional var showsIconPreview: Bool { get } // displays a preview of the item in list view
    @objc optional var iconSize: FinderLvic { get } // the size of icons displayed in the list view
    @objc optional var textSize: Int { get } // the size of the text displayed in the list view
    @objc optional var sortColumn: FinderColumn { get } // the column that the list view is sorted on
    @objc optional var usesRelativeDates: Bool { get } // Are relative dates (e.g., today, yesterday) shown in the list view?
    @objc optional func setCalculatesFolderSizes(calculatesFolderSizes: Bool) // Are folder sizes calculated and displayed in the window?
    @objc optional func setShowsIconPreview(showsIconPreview: Bool) // displays a preview of the item in list view
    @objc optional func setIconSize(iconSize: FinderLvic) // the size of icons displayed in the list view
    @objc optional func setTextSize(textSize: Int) // the size of the text displayed in the list view
    @objc optional func setSortColumn(sortColumn: FinderColumn!) // the column that the list view is sorted on
    @objc optional func setUsesRelativeDates(usesRelativeDates: Bool) // Are relative dates (e.g., today, yesterday) shown in the list view?
}
extension SBObject: FinderListViewOptions {}

// MARK: FinderColumn
@objc public protocol FinderColumn: SBObjectProtocol, FinderGenericMethods {
    @objc optional var index: Int { get } // the index in the front-to-back ordering within its container
    @objc optional var name: FinderElsv { get } // the column name
    @objc optional var sortDirection: FinderSodr { get } // The direction in which the window is sorted
    @objc optional var width: Int { get } // the width of this column
    @objc optional var minimumWidth: Int { get } // the minimum allowed width of this column
    @objc optional var maximumWidth: Int { get } // the maximum allowed width of this column
    @objc optional var visible: Bool { get } // is this column visible
    @objc optional func setIndex(index: Int) // the index in the front-to-back ordering within its container
    @objc optional func setSortDirection(sortDirection: FinderSodr) // The direction in which the window is sorted
    @objc optional func setWidth(width: Int) // the width of this column
    @objc optional func setVisible(visible: Bool) // is this column visible
}
extension SBObject: FinderColumn {}

// MARK: FinderAliasList
@objc public protocol FinderAliasList: SBObjectProtocol, FinderGenericMethods {
}
extension SBObject: FinderAliasList {}

