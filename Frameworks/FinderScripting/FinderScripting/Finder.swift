import AppKit
import ScriptingBridge

@objc public protocol SBObjectProtocol: NSObjectProtocol {
    func get() -> AnyObject!
}

@objc public protocol SBApplicationProtocol: SBObjectProtocol {
    func activate()
    var delegate: SBApplicationDelegate! { get set }
}

// MARK: FinderApplication
@objc public protocol FinderApplication: SBApplicationProtocol {
    optional func items() -> SBElementArray
    optional func containers() -> SBElementArray
    optional func disks() -> SBElementArray
    optional func folders() -> SBElementArray
    optional func files() -> SBElementArray
    optional func aliasFiles() -> SBElementArray
    optional func applicationFiles() -> SBElementArray
    optional func documentFiles() -> SBElementArray
    optional func internetLocationFiles() -> SBElementArray
    optional func clippings() -> SBElementArray
    optional func packages() -> SBElementArray
    optional func windows() -> SBElementArray
    optional func FinderWindows() -> SBElementArray
    optional func clippingWindows() -> SBElementArray
    optional var clipboard: SBObject { get } // (NOT AVAILABLE YET) the Finder’s clipboard window
    optional var name: String { get } // the Finder’s name
    optional var visible: Bool { get set } // Is the Finder’s layer visible?
    optional var frontmost: Bool { get set } // Is the Finder the frontmost process?
    optional var selection: SBObject { get set } // the selection in the frontmost Finder window
    optional var insertionLocation: SBObject { get } // the container in which a new folder would appear if “New Folder” was selected
    optional var productVersion: String { get } // the version of the System software running on this computer
    optional var version: String { get } // the version of the Finder
    optional var startupDisk: FinderDisk { get } // the startup disk
    optional var desktop: FinderDesktopObject { get } // the desktop
    optional var trash: FinderTrashObject { get } // the trash
    optional var home: FinderFolder { get } // the home directory
    optional var computerContainer: FinderComputerObject { get } // the computer location (as in Go > Computer)
    optional var FinderPreferences: SBObject { get } // Various preferences that apply to the Finder as a whole
    optional func quit() // Quit the Finder
    optional func activate() // Activate the specified window (or the Finder)
    optional func copy() // (NOT AVAILABLE YET) Copy the selected items to the clipboard (the Finder must be the front application)
    optional func eject() // Eject the specified disk(s)
    optional func emptySecurity(security: Bool) // Empty the trash
    optional func restart() // Restart the computer
    optional func shutDown() // Shut Down the computer
    optional func sleep() // Put the computer to sleep
    optional var desktopPicture: FinderFile { get set } // the desktop picture of the main monitor
}
extension SBApplication: FinderApplication {}

// MARK: FinderItem
@objc public protocol FinderItem: SBObjectProtocol {
    optional var name: String { get set } // the name of the item
    optional var displayedName: String { get } // the user-visible name of the item
    optional var nameExtension: String { get set } // the name extension of the item (such as “txt”)
    optional var extensionHidden: Bool { get set } // Is the item's extension hidden from the user?
    optional var index: Int { get } // the index in the front-to-back ordering within its container
    optional var container: SBObject { get } // the container of the item
    optional var disk: SBObject { get } // the disk on which the item is stored
    optional var position: NSPoint { get set } // the position of the item within its parent window (can only be set for an item in a window viewed as icons or buttons)
    optional var desktopPosition: NSPoint { get set } // the position of the item on the desktop
    optional var bounds: NSRect { get set } // the bounding rectangle of the item (can only be set for an item in a window viewed as icons or buttons)
    optional var labelIndex: Int { get set } // the label of the item
    optional var locked: Bool { get set } // Is the file locked?
    optional var kind: String { get } // the kind of the item
    optional var objectDescription: String { get } // a description of the item
    optional var comment: String { get set } // the comment of the item, displayed in the “Get Info” window
    optional var size: Int64 { get } // the logical size of the item
    optional var physicalSize: Int64 { get } // the actual space used by the item on disk
    optional var creationDate: NSDate { get } // the date on which the item was created
    optional var modificationDate: NSDate { get set } // the date on which the item was last modified
    optional var icon: FinderIconFamily { get set } // the icon bitmap of the item
    optional var URL: String { get } // the URL of the item
    optional var owner: String { get set } // the user that owns the container
    optional var group: String { get set } // the user or group that has special access to the container
    optional var ownerPrivileges: FinderPriv { get set }
    optional var groupPrivileges: FinderPriv { get set }
    optional var everyonesPrivileges: FinderPriv { get set }
    optional var informationWindow: SBObject { get } // the information window for the item
    optional var properties: [NSObject : AnyObject] { get set } // every property of an item
    optional func openUsing(using_: SBObject!, withProperties: [NSObject : AnyObject]!) // Open the specified object(s)
    optional func printWithProperties(withProperties: [NSObject : AnyObject]!) // Print the specified object(s)
    optional func activate() // Activate the specified window (or the Finder)
    optional func close() // Close an object
    optional func dataSizeAs(`as`: NSNumber!) -> Int // Return the size in bytes of an object
    optional func delete() -> SBObject // Move an item from its container to the trash
    optional func duplicateTo(to: SBObject!, replacing: Bool, routingSuppressed: Bool, exactCopy: Bool) -> SBObject // Duplicate one or more object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!, replacing: Bool, positionedAt: [AnyObject]!, routingSuppressed: Bool) -> SBObject // Move object(s) to a new location
    optional func select() // Select the specified object(s)
    optional func sortBy(by: Selector) -> SBObject // Return the specified object(s) in a sorted list
    optional func cleanUpBy(by: Selector) // Arrange items in window nicely (only applies to open windows in icon view that are not kept arranged)
    optional func eject() // Eject the specified disk(s)
    optional func emptySecurity(security: Bool) // Empty the trash
    optional func erase() // (NOT AVAILABLE) Erase the specified disk(s)
    optional func reveal() // Bring the specified object(s) into view
    optional func updateNecessity(necessity: Bool, registeringApplications: Bool) // Update the display of the specified object(s) to match their on-disk representation
}
extension SBObject: FinderItem {}

// MARK: FinderContainer
@objc public protocol FinderContainer: FinderItem {
    optional func items() -> SBElementArray
    optional func containers() -> SBElementArray
    optional func folders() -> SBElementArray
    optional func files() -> SBElementArray
    optional func aliasFiles() -> SBElementArray
    optional func applicationFiles() -> SBElementArray
    optional func documentFiles() -> SBElementArray
    optional func internetLocationFiles() -> SBElementArray
    optional func clippings() -> SBElementArray
    optional func packages() -> SBElementArray
    optional var entireContents: SBObject { get } // the entire contents of the container, including the contents of its children
    optional var expandable: Bool { get } // (NOT AVAILABLE YET) Is the container capable of being expanded as an outline?
    optional var expanded: Bool { get set } // (NOT AVAILABLE YET) Is the container opened as an outline? (can only be set for containers viewed as lists)
    optional var completelyExpanded: Bool { get set } // (NOT AVAILABLE YET) Are the container and all of its children opened as outlines? (can only be set for containers viewed as lists)
    optional var containerWindow: SBObject { get } // the container window for this folder
}
extension SBObject: FinderContainer {}

// MARK: FinderComputerObject
@objc public protocol FinderComputerObject: FinderItem {
}
extension SBObject: FinderComputerObject {}

// MARK: FinderDisk
@objc public protocol FinderDisk: FinderContainer {
    optional func items() -> SBElementArray
    optional func containers() -> SBElementArray
    optional func folders() -> SBElementArray
    optional func files() -> SBElementArray
    optional func aliasFiles() -> SBElementArray
    optional func applicationFiles() -> SBElementArray
    optional func documentFiles() -> SBElementArray
    optional func internetLocationFiles() -> SBElementArray
    optional func clippings() -> SBElementArray
    optional func packages() -> SBElementArray
    optional func id() -> Int // the unique id for this disk (unchanged while disk remains connected and Finder remains running)
    optional var capacity: Int64 { get } // the total number of bytes (free or used) on the disk
    optional var freeSpace: Int64 { get } // the number of free bytes left on the disk
    optional var ejectable: Bool { get } // Can the media be ejected (floppies, CDs, and so on)?
    optional var localVolume: Bool { get } // Is the media a local volume (as opposed to a file server)?
    optional var startup: Bool { get } // Is this disk the boot disk?
    optional var format: FinderEdfm { get } // the filesystem format of this disk
    optional var journalingEnabled: Bool { get } // Does this disk do file system journaling?
    optional var ignorePrivileges: Bool { get set } // Ignore permissions on this disk?
}
extension SBObject: FinderDisk {}

// MARK: FinderFolder
@objc public protocol FinderFolder: FinderContainer {
    optional func items() -> SBElementArray
    optional func containers() -> SBElementArray
    optional func folders() -> SBElementArray
    optional func files() -> SBElementArray
    optional func aliasFiles() -> SBElementArray
    optional func applicationFiles() -> SBElementArray
    optional func documentFiles() -> SBElementArray
    optional func internetLocationFiles() -> SBElementArray
    optional func clippings() -> SBElementArray
    optional func packages() -> SBElementArray
}
extension SBObject: FinderFolder {}

// MARK: FinderDesktopObject
@objc public protocol FinderDesktopObject: FinderContainer {
    optional func items() -> SBElementArray
    optional func containers() -> SBElementArray
    optional func disks() -> SBElementArray
    optional func folders() -> SBElementArray
    optional func files() -> SBElementArray
    optional func aliasFiles() -> SBElementArray
    optional func applicationFiles() -> SBElementArray
    optional func documentFiles() -> SBElementArray
    optional func internetLocationFiles() -> SBElementArray
    optional func clippings() -> SBElementArray
    optional func packages() -> SBElementArray
}
extension SBObject: FinderDesktopObject {}

// MARK: FinderTrashObject
@objc public protocol FinderTrashObject: FinderContainer {
    optional func items() -> SBElementArray
    optional func containers() -> SBElementArray
    optional func folders() -> SBElementArray
    optional func files() -> SBElementArray
    optional func aliasFiles() -> SBElementArray
    optional func applicationFiles() -> SBElementArray
    optional func documentFiles() -> SBElementArray
    optional func internetLocationFiles() -> SBElementArray
    optional func clippings() -> SBElementArray
    optional func packages() -> SBElementArray
    optional var warnsBeforeEmptying: Bool { get set } // Display a dialog when emptying the trash?
}
extension SBObject: FinderTrashObject {}

// MARK: FinderFile
@objc public protocol FinderFile: FinderItem {
    optional var fileType: NSNumber { get set } // the OSType identifying the type of data contained in the item
    optional var creatorType: NSNumber { get set } // the OSType identifying the application that created the item
    optional var stationery: Bool { get set } // Is the file a stationery pad?
    optional var productVersion: String { get } // the version of the product (visible at the top of the “Get Info” window)
    optional var version: String { get } // the version of the file (visible at the bottom of the “Get Info” window)
}
extension SBObject: FinderFile {}

// MARK: FinderAliasFile
@objc public protocol FinderAliasFile: FinderFile {
    optional var originalItem: SBObject { get set } // the original item pointed to by the alias
}
extension SBObject: FinderAliasFile {}

// MARK: FinderApplicationFile
@objc public protocol FinderApplicationFile: FinderFile {
    optional func id() -> String // the bundle identifier or creator type of the application
    optional var suggestedSize: Int { get } // (AVAILABLE IN 10.1 TO 10.4) the memory size with which the developer recommends the application be launched
    optional var minimumSize: Int { get set } // (AVAILABLE IN 10.1 TO 10.4) the smallest memory size with which the application can be launched
    optional var preferredSize: Int { get set } // (AVAILABLE IN 10.1 TO 10.4) the memory size with which the application will be launched
    optional var acceptsHighLevelEvents: Bool { get } // Is the application high-level event aware? (OBSOLETE: always returns true)
    optional var hasScriptingTerminology: Bool { get } // Does the process have a scripting terminology, i.e., can it be scripted?
    optional var opensInClassic: Bool { get set } // (AVAILABLE IN 10.1 TO 10.4) Should the application launch in the Classic environment?
}
extension SBObject: FinderApplicationFile {}

// MARK: FinderDocumentFile
@objc public protocol FinderDocumentFile: FinderFile {
}
extension SBObject: FinderDocumentFile {}

// MARK: FinderInternetLocationFile
@objc public protocol FinderInternetLocationFile: FinderFile {
    optional var location: String { get } // the internet location
}
extension SBObject: FinderInternetLocationFile {}

// MARK: FinderClipping
@objc public protocol FinderClipping: FinderFile {
    optional var clippingWindow: SBObject { get } // (NOT AVAILABLE YET) the clipping window for this clipping
}
extension SBObject: FinderClipping {}

// MARK: FinderPackage
@objc public protocol FinderPackage: FinderItem {
}
extension SBObject: FinderPackage {}

// MARK: FinderWindow
@objc public protocol FinderWindow: SBObjectProtocol {
    optional func id() -> AnyObject // the unique id for this window
    optional var position: NSPoint { get set } // the upper left position of the window
    optional var bounds: NSRect { get set } // the boundary rectangle for the window
    optional var titled: Bool { get } // Does the window have a title bar?
    optional var name: String { get } // the name of the window
    optional var index: Int { get set } // the number of the window in the front-to-back layer ordering
    optional var closeable: Bool { get } // Does the window have a close box?
    optional var floating: Bool { get } // Does the window have a title bar?
    optional var modal: Bool { get } // Is the window modal?
    optional var resizable: Bool { get } // Is the window resizable?
    optional var zoomable: Bool { get } // Is the window zoomable?
    optional var zoomed: Bool { get set } // Is the window zoomed?
    optional var visible: Bool { get } // Is the window visible (always true for open Finder windows)?
    optional var collapsed: Bool { get set } // Is the window collapsed
    optional var properties: [NSObject : AnyObject] { get set } // every property of a window
    optional func openUsing(using_: SBObject!, withProperties: [NSObject : AnyObject]!) // Open the specified object(s)
    optional func printWithProperties(withProperties: [NSObject : AnyObject]!) // Print the specified object(s)
    optional func activate() // Activate the specified window (or the Finder)
    optional func close() // Close an object
    optional func dataSizeAs(`as`: NSNumber!) -> Int // Return the size in bytes of an object
    optional func delete() -> SBObject // Move an item from its container to the trash
    optional func duplicateTo(to: SBObject!, replacing: Bool, routingSuppressed: Bool, exactCopy: Bool) -> SBObject // Duplicate one or more object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!, replacing: Bool, positionedAt: [AnyObject]!, routingSuppressed: Bool) -> SBObject // Move object(s) to a new location
    optional func select() // Select the specified object(s)
    optional func sortBy(by: Selector) -> SBObject // Return the specified object(s) in a sorted list
    optional func cleanUpBy(by: Selector) // Arrange items in window nicely (only applies to open windows in icon view that are not kept arranged)
    optional func eject() // Eject the specified disk(s)
    optional func emptySecurity(security: Bool) // Empty the trash
    optional func erase() // (NOT AVAILABLE) Erase the specified disk(s)
    optional func reveal() // Bring the specified object(s) into view
    optional func updateNecessity(necessity: Bool, registeringApplications: Bool) // Update the display of the specified object(s) to match their on-disk representation
}
extension SBObject: FinderWindow {}

// MARK: FinderFinderWindow
@objc public protocol FinderFinderWindow: FinderWindow {
    optional var target: SBObject { get set } // the container at which this file viewer is targeted
    optional var currentView: FinderEcvw { get set } // the current view for the container window
    optional var iconViewOptions: FinderIconViewOptions { get } // the icon view options for the container window
    optional var listViewOptions: FinderListViewOptions { get } // the list view options for the container window
    optional var columnViewOptions: FinderColumnViewOptions { get } // the column view options for the container window
    optional var toolbarVisible: Bool { get set } // Is the window's toolbar visible?
    optional var statusbarVisible: Bool { get set } // Is the window's status bar visible?
    optional var sidebarWidth: Int { get set } // the width of the sidebar for the container window
}
extension SBObject: FinderFinderWindow {}

// MARK: FinderDesktopWindow
@objc public protocol FinderDesktopWindow: FinderFinderWindow {
}
extension SBObject: FinderDesktopWindow {}

// MARK: FinderInformationWindow
@objc public protocol FinderInformationWindow: FinderWindow {
    optional var item: SBObject { get } // the item from which this window was opened
    optional var currentPanel: FinderIpnl { get set } // the current panel in the information window
}
extension SBObject: FinderInformationWindow {}

// MARK: FinderPreferencesWindow
@objc public protocol FinderPreferencesWindow: FinderWindow {
    optional var currentPanel: FinderPple { get set } // The current panel in the Finder preferences window
}
extension SBObject: FinderPreferencesWindow {}

// MARK: FinderClippingWindow
@objc public protocol FinderClippingWindow: FinderWindow {
}
extension SBObject: FinderClippingWindow {}

// MARK: FinderProcess
@objc public protocol FinderProcess: SBObjectProtocol {
    optional var name: String { get } // the name of the process
    optional var visible: Bool { get set } // Is the process' layer visible?
    optional var frontmost: Bool { get set } // Is the process the frontmost process?
    optional var file: SBObject { get } // the file from which the process was launched
    optional var fileType: NSNumber { get } // the OSType of the file type of the process
    optional var creatorType: NSNumber { get } // the OSType of the creator of the process (the signature)
    optional var acceptsHighLevelEvents: Bool { get } // Is the process high-level event aware (accepts open application, open document, print document, and quit)?
    optional var acceptsRemoteEvents: Bool { get } // Does the process accept remote events?
    optional var hasScriptingTerminology: Bool { get } // Does the process have a scripting terminology, i.e., can it be scripted?
    optional var totalPartitionSize: Int { get } // the size of the partition with which the process was launched
    optional var partitionSpaceUsed: Int { get } // the number of bytes currently used in the process' partition
    optional func openUsing(using_: SBObject!, withProperties: [NSObject : AnyObject]!) // Open the specified object(s)
    optional func printWithProperties(withProperties: [NSObject : AnyObject]!) // Print the specified object(s)
    optional func activate() // Activate the specified window (or the Finder)
    optional func close() // Close an object
    optional func dataSizeAs(`as`: NSNumber!) -> Int // Return the size in bytes of an object
    optional func delete() -> SBObject // Move an item from its container to the trash
    optional func duplicateTo(to: SBObject!, replacing: Bool, routingSuppressed: Bool, exactCopy: Bool) -> SBObject // Duplicate one or more object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!, replacing: Bool, positionedAt: [AnyObject]!, routingSuppressed: Bool) -> SBObject // Move object(s) to a new location
    optional func select() // Select the specified object(s)
    optional func sortBy(by: Selector) -> SBObject // Return the specified object(s) in a sorted list
    optional func cleanUpBy(by: Selector) // Arrange items in window nicely (only applies to open windows in icon view that are not kept arranged)
    optional func eject() // Eject the specified disk(s)
    optional func emptySecurity(security: Bool) // Empty the trash
    optional func erase() // (NOT AVAILABLE) Erase the specified disk(s)
    optional func reveal() // Bring the specified object(s) into view
    optional func updateNecessity(necessity: Bool, registeringApplications: Bool) // Update the display of the specified object(s) to match their on-disk representation
}
extension SBObject: FinderProcess {}

// MARK: FinderApplicationProcess
@objc public protocol FinderApplicationProcess: FinderProcess {
    optional var applicationFile: FinderApplicationFile { get } // the application file from which this process was launched
}
extension SBObject: FinderApplicationProcess {}

// MARK: FinderDeskAccessoryProcess
@objc public protocol FinderDeskAccessoryProcess: FinderProcess {
    optional var deskAccessoryFile: SBObject { get } // the desk accessory file from which this process was launched
}
extension SBObject: FinderDeskAccessoryProcess {}

// MARK: FinderPreferences
@objc public protocol FinderPreferences: SBObjectProtocol {
    optional var window: FinderPreferencesWindow { get } // the window that would open if Finder preferences was opened
    optional var iconViewOptions: FinderIconViewOptions { get } // the default icon view options
    optional var listViewOptions: FinderListViewOptions { get } // the default list view options
    optional var columnViewOptions: FinderColumnViewOptions { get } // the column view options for all windows
    optional var foldersSpringOpen: Bool { get set } // Spring open folders after the specified delay?
    optional var delayBeforeSpringing: Double { get set } // the delay before springing open a container in seconds (from 0.167 to 1.169)
    optional var desktopShowsHardDisks: Bool { get set } // Hard disks appear on the desktop?
    optional var desktopShowsExternalHardDisks: Bool { get set } // External hard disks appear on the desktop?
    optional var desktopShowsRemovableMedia: Bool { get set } // CDs, DVDs, and iPods appear on the desktop?
    optional var desktopShowsConnectedServers: Bool { get set } // Connected servers appear on the desktop?
    optional var newWindowTarget: SBObject { get set } // target location for a newly-opened Finder window
    optional var foldersOpenInNewWindows: Bool { get set } // Folders open into new windows?
    optional var foldersOpenInNewTabs: Bool { get set } // Folders open into new tabs?
    optional var newWindowsOpenInColumnView: Bool { get set } // Open new windows in column view?
    optional var allNameExtensionsShowing: Bool { get set } // Show name extensions, even for items whose “extension hidden” is true?
    optional func openUsing(using_: SBObject!, withProperties: [NSObject : AnyObject]!) // Open the specified object(s)
    optional func printWithProperties(withProperties: [NSObject : AnyObject]!) // Print the specified object(s)
    optional func activate() // Activate the specified window (or the Finder)
    optional func close() // Close an object
    optional func dataSizeAs(`as`: NSNumber!) -> Int // Return the size in bytes of an object
    optional func delete() -> SBObject // Move an item from its container to the trash
    optional func duplicateTo(to: SBObject!, replacing: Bool, routingSuppressed: Bool, exactCopy: Bool) -> SBObject // Duplicate one or more object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!, replacing: Bool, positionedAt: [AnyObject]!, routingSuppressed: Bool) -> SBObject // Move object(s) to a new location
    optional func select() // Select the specified object(s)
    optional func sortBy(by: Selector) -> SBObject // Return the specified object(s) in a sorted list
    optional func cleanUpBy(by: Selector) // Arrange items in window nicely (only applies to open windows in icon view that are not kept arranged)
    optional func eject() // Eject the specified disk(s)
    optional func emptySecurity(security: Bool) // Empty the trash
    optional func erase() // (NOT AVAILABLE) Erase the specified disk(s)
    optional func reveal() // Bring the specified object(s) into view
    optional func updateNecessity(necessity: Bool, registeringApplications: Bool) // Update the display of the specified object(s) to match their on-disk representation
}
extension SBObject: FinderPreferences {}

// MARK: FinderLabel
@objc public protocol FinderLabel: SBObjectProtocol {
    optional var name: String { get set } // the name associated with the label
    optional var index: Int { get set } // the index in the front-to-back ordering within its container
    optional var color: AnyObject { get set } // the color associated with the label
    optional func openUsing(using_: SBObject!, withProperties: [NSObject : AnyObject]!) // Open the specified object(s)
    optional func printWithProperties(withProperties: [NSObject : AnyObject]!) // Print the specified object(s)
    optional func activate() // Activate the specified window (or the Finder)
    optional func close() // Close an object
    optional func dataSizeAs(`as`: NSNumber!) -> Int // Return the size in bytes of an object
    optional func delete() -> SBObject // Move an item from its container to the trash
    optional func duplicateTo(to: SBObject!, replacing: Bool, routingSuppressed: Bool, exactCopy: Bool) -> SBObject // Duplicate one or more object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!, replacing: Bool, positionedAt: [AnyObject]!, routingSuppressed: Bool) -> SBObject // Move object(s) to a new location
    optional func select() // Select the specified object(s)
    optional func sortBy(by: Selector) -> SBObject // Return the specified object(s) in a sorted list
    optional func cleanUpBy(by: Selector) // Arrange items in window nicely (only applies to open windows in icon view that are not kept arranged)
    optional func eject() // Eject the specified disk(s)
    optional func emptySecurity(security: Bool) // Empty the trash
    optional func erase() // (NOT AVAILABLE) Erase the specified disk(s)
    optional func reveal() // Bring the specified object(s) into view
    optional func updateNecessity(necessity: Bool, registeringApplications: Bool) // Update the display of the specified object(s) to match their on-disk representation
}
extension SBObject: FinderLabel {}

// MARK: FinderIconFamily
@objc public protocol FinderIconFamily: SBObjectProtocol {
    optional var largeMonochromeIconAndMask: AnyObject { get } // the large black-and-white icon and the mask for large icons
    optional var large8BitMask: AnyObject { get } // the large 8-bit mask for large 32-bit icons
    optional var large32BitIcon: AnyObject { get } // the large 32-bit color icon
    optional var large8BitIcon: AnyObject { get } // the large 8-bit color icon
    optional var large4BitIcon: AnyObject { get } // the large 4-bit color icon
    optional var smallMonochromeIconAndMask: AnyObject { get } // the small black-and-white icon and the mask for small icons
    optional var small8BitMask: AnyObject { get } // the small 8-bit mask for small 32-bit icons
    optional var small32BitIcon: AnyObject { get } // the small 32-bit color icon
    optional var small8BitIcon: AnyObject { get } // the small 8-bit color icon
    optional var small4BitIcon: AnyObject { get } // the small 4-bit color icon
    optional func openUsing(using_: SBObject!, withProperties: [NSObject : AnyObject]!) // Open the specified object(s)
    optional func printWithProperties(withProperties: [NSObject : AnyObject]!) // Print the specified object(s)
    optional func activate() // Activate the specified window (or the Finder)
    optional func close() // Close an object
    optional func dataSizeAs(`as`: NSNumber!) -> Int // Return the size in bytes of an object
    optional func delete() -> SBObject // Move an item from its container to the trash
    optional func duplicateTo(to: SBObject!, replacing: Bool, routingSuppressed: Bool, exactCopy: Bool) -> SBObject // Duplicate one or more object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!, replacing: Bool, positionedAt: [AnyObject]!, routingSuppressed: Bool) -> SBObject // Move object(s) to a new location
    optional func select() // Select the specified object(s)
    optional func sortBy(by: Selector) -> SBObject // Return the specified object(s) in a sorted list
    optional func cleanUpBy(by: Selector) // Arrange items in window nicely (only applies to open windows in icon view that are not kept arranged)
    optional func eject() // Eject the specified disk(s)
    optional func emptySecurity(security: Bool) // Empty the trash
    optional func erase() // (NOT AVAILABLE) Erase the specified disk(s)
    optional func reveal() // Bring the specified object(s) into view
    optional func updateNecessity(necessity: Bool, registeringApplications: Bool) // Update the display of the specified object(s) to match their on-disk representation
}
extension SBObject: FinderIconFamily {}

// MARK: FinderIconViewOptions
@objc public protocol FinderIconViewOptions: SBObjectProtocol {
    optional var arrangement: FinderEarr { get set } // the property by which to keep icons arranged
    optional var iconSize: Int { get set } // the size of icons displayed in the icon view
    optional var showsItemInfo: Bool { get set } // additional info about an item displayed in icon view
    optional var showsIconPreview: Bool { get set } // displays a preview of the item in icon view
    optional var textSize: Int { get set } // the size of the text displayed in the icon view
    optional var labelPosition: FinderEpos { get set } // the location of the label in reference to the icon
    optional var backgroundPicture: FinderFile { get set } // the background picture of the icon view
    optional var backgroundColor: AnyObject { get set } // the background color of the icon view
    optional func openUsing(using_: SBObject!, withProperties: [NSObject : AnyObject]!) // Open the specified object(s)
    optional func printWithProperties(withProperties: [NSObject : AnyObject]!) // Print the specified object(s)
    optional func activate() // Activate the specified window (or the Finder)
    optional func close() // Close an object
    optional func dataSizeAs(`as`: NSNumber!) -> Int // Return the size in bytes of an object
    optional func delete() -> SBObject // Move an item from its container to the trash
    optional func duplicateTo(to: SBObject!, replacing: Bool, routingSuppressed: Bool, exactCopy: Bool) -> SBObject // Duplicate one or more object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!, replacing: Bool, positionedAt: [AnyObject]!, routingSuppressed: Bool) -> SBObject // Move object(s) to a new location
    optional func select() // Select the specified object(s)
    optional func sortBy(by: Selector) -> SBObject // Return the specified object(s) in a sorted list
    optional func cleanUpBy(by: Selector) // Arrange items in window nicely (only applies to open windows in icon view that are not kept arranged)
    optional func eject() // Eject the specified disk(s)
    optional func emptySecurity(security: Bool) // Empty the trash
    optional func erase() // (NOT AVAILABLE) Erase the specified disk(s)
    optional func reveal() // Bring the specified object(s) into view
    optional func updateNecessity(necessity: Bool, registeringApplications: Bool) // Update the display of the specified object(s) to match their on-disk representation
}
extension SBObject: FinderIconViewOptions {}

// MARK: FinderColumnViewOptions
@objc public protocol FinderColumnViewOptions: SBObjectProtocol {
    optional var textSize: Int { get set } // the size of the text displayed in the column view
    optional var showsIcon: Bool { get set } // displays an icon next to the label in column view
    optional var showsIconPreview: Bool { get set } // displays a preview of the item in column view
    optional var showsPreviewColumn: Bool { get set } // displays the preview column in column view
    optional var disclosesPreviewPane: Bool { get set } // discloses the preview pane of the preview column in column view
    optional func openUsing(using_: SBObject!, withProperties: [NSObject : AnyObject]!) // Open the specified object(s)
    optional func printWithProperties(withProperties: [NSObject : AnyObject]!) // Print the specified object(s)
    optional func activate() // Activate the specified window (or the Finder)
    optional func close() // Close an object
    optional func dataSizeAs(`as`: NSNumber!) -> Int // Return the size in bytes of an object
    optional func delete() -> SBObject // Move an item from its container to the trash
    optional func duplicateTo(to: SBObject!, replacing: Bool, routingSuppressed: Bool, exactCopy: Bool) -> SBObject // Duplicate one or more object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!, replacing: Bool, positionedAt: [AnyObject]!, routingSuppressed: Bool) -> SBObject // Move object(s) to a new location
    optional func select() // Select the specified object(s)
    optional func sortBy(by: Selector) -> SBObject // Return the specified object(s) in a sorted list
    optional func cleanUpBy(by: Selector) // Arrange items in window nicely (only applies to open windows in icon view that are not kept arranged)
    optional func eject() // Eject the specified disk(s)
    optional func emptySecurity(security: Bool) // Empty the trash
    optional func erase() // (NOT AVAILABLE) Erase the specified disk(s)
    optional func reveal() // Bring the specified object(s) into view
    optional func updateNecessity(necessity: Bool, registeringApplications: Bool) // Update the display of the specified object(s) to match their on-disk representation
}
extension SBObject: FinderColumnViewOptions {}

// MARK: FinderListViewOptions
@objc public protocol FinderListViewOptions: SBObjectProtocol {
    optional func columns() -> SBElementArray
    optional var calculatesFolderSizes: Bool { get set } // Are folder sizes calculated and displayed in the window?
    optional var showsIconPreview: Bool { get set } // displays a preview of the item in list view
    optional var iconSize: FinderLvic { get set } // the size of icons displayed in the list view
    optional var textSize: Int { get set } // the size of the text displayed in the list view
    optional var sortColumn: FinderColumn { get set } // the column that the list view is sorted on
    optional var usesRelativeDates: Bool { get set } // Are relative dates (e.g., today, yesterday) shown in the list view?
    optional func openUsing(using_: SBObject!, withProperties: [NSObject : AnyObject]!) // Open the specified object(s)
    optional func printWithProperties(withProperties: [NSObject : AnyObject]!) // Print the specified object(s)
    optional func activate() // Activate the specified window (or the Finder)
    optional func close() // Close an object
    optional func dataSizeAs(`as`: NSNumber!) -> Int // Return the size in bytes of an object
    optional func delete() -> SBObject // Move an item from its container to the trash
    optional func duplicateTo(to: SBObject!, replacing: Bool, routingSuppressed: Bool, exactCopy: Bool) -> SBObject // Duplicate one or more object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!, replacing: Bool, positionedAt: [AnyObject]!, routingSuppressed: Bool) -> SBObject // Move object(s) to a new location
    optional func select() // Select the specified object(s)
    optional func sortBy(by: Selector) -> SBObject // Return the specified object(s) in a sorted list
    optional func cleanUpBy(by: Selector) // Arrange items in window nicely (only applies to open windows in icon view that are not kept arranged)
    optional func eject() // Eject the specified disk(s)
    optional func emptySecurity(security: Bool) // Empty the trash
    optional func erase() // (NOT AVAILABLE) Erase the specified disk(s)
    optional func reveal() // Bring the specified object(s) into view
    optional func updateNecessity(necessity: Bool, registeringApplications: Bool) // Update the display of the specified object(s) to match their on-disk representation
}
extension SBObject: FinderListViewOptions {}

// MARK: FinderColumn
@objc public protocol FinderColumn: SBObjectProtocol {
    optional var index: Int { get set } // the index in the front-to-back ordering within its container
    optional var name: FinderElsv { get } // the column name
    optional var sortDirection: FinderSodr { get set } // The direction in which the window is sorted
    optional var width: Int { get set } // the width of this column
    optional var minimumWidth: Int { get } // the minimum allowed width of this column
    optional var maximumWidth: Int { get } // the maximum allowed width of this column
    optional var visible: Bool { get set } // is this column visible
    optional func openUsing(using_: SBObject!, withProperties: [NSObject : AnyObject]!) // Open the specified object(s)
    optional func printWithProperties(withProperties: [NSObject : AnyObject]!) // Print the specified object(s)
    optional func activate() // Activate the specified window (or the Finder)
    optional func close() // Close an object
    optional func dataSizeAs(`as`: NSNumber!) -> Int // Return the size in bytes of an object
    optional func delete() -> SBObject // Move an item from its container to the trash
    optional func duplicateTo(to: SBObject!, replacing: Bool, routingSuppressed: Bool, exactCopy: Bool) -> SBObject // Duplicate one or more object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!, replacing: Bool, positionedAt: [AnyObject]!, routingSuppressed: Bool) -> SBObject // Move object(s) to a new location
    optional func select() // Select the specified object(s)
    optional func sortBy(by: Selector) -> SBObject // Return the specified object(s) in a sorted list
    optional func cleanUpBy(by: Selector) // Arrange items in window nicely (only applies to open windows in icon view that are not kept arranged)
    optional func eject() // Eject the specified disk(s)
    optional func emptySecurity(security: Bool) // Empty the trash
    optional func erase() // (NOT AVAILABLE) Erase the specified disk(s)
    optional func reveal() // Bring the specified object(s) into view
    optional func updateNecessity(necessity: Bool, registeringApplications: Bool) // Update the display of the specified object(s) to match their on-disk representation
}
extension SBObject: FinderColumn {}

// MARK: FinderAliasList
@objc public protocol FinderAliasList: SBObjectProtocol {
    optional func openUsing(using_: SBObject!, withProperties: [NSObject : AnyObject]!) // Open the specified object(s)
    optional func printWithProperties(withProperties: [NSObject : AnyObject]!) // Print the specified object(s)
    optional func activate() // Activate the specified window (or the Finder)
    optional func close() // Close an object
    optional func dataSizeAs(`as`: NSNumber!) -> Int // Return the size in bytes of an object
    optional func delete() -> SBObject // Move an item from its container to the trash
    optional func duplicateTo(to: SBObject!, replacing: Bool, routingSuppressed: Bool, exactCopy: Bool) -> SBObject // Duplicate one or more object(s)
    optional func exists() -> Bool // Verify if an object exists
    optional func moveTo(to: SBObject!, replacing: Bool, positionedAt: [AnyObject]!, routingSuppressed: Bool) -> SBObject // Move object(s) to a new location
    optional func select() // Select the specified object(s)
    optional func sortBy(by: Selector) -> SBObject // Return the specified object(s) in a sorted list
    optional func cleanUpBy(by: Selector) // Arrange items in window nicely (only applies to open windows in icon view that are not kept arranged)
    optional func eject() // Eject the specified disk(s)
    optional func emptySecurity(security: Bool) // Empty the trash
    optional func erase() // (NOT AVAILABLE) Erase the specified disk(s)
    optional func reveal() // Bring the specified object(s) into view
    optional func updateNecessity(necessity: Bool, registeringApplications: Bool) // Update the display of the specified object(s) to match their on-disk representation
}
extension SBObject: FinderAliasList {}

