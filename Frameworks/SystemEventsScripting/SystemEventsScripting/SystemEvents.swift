import AppKit
import ScriptingBridge

@objc public protocol SBObjectProtocol: NSObjectProtocol {
    func get() -> AnyObject!
}

@objc public protocol SBApplicationProtocol: SBObjectProtocol {
    func activate()
    var delegate: SBApplicationDelegate! { get set }
}

// MARK: SystemEventsSaveOptions
@objc public enum SystemEventsSaveOptions : AEKeyword {
    case Yes = 0x79657320 /* 'yes ' */
    case No = 0x6e6f2020 /* 'no  ' */
    case Ask = 0x61736b20 /* 'ask ' */
}

// MARK: SystemEventsPrintingErrorHandling
@objc public enum SystemEventsPrintingErrorHandling : AEKeyword {
    case Standard = 0x6c777374 /* 'lwst' */
    case Detailed = 0x6c776474 /* 'lwdt' */
}

// MARK: SystemEventsSaveableFileFormat
@objc public enum SystemEventsSaveableFileFormat : AEKeyword {
    case Text = 0x63747874 /* 'ctxt' */
}

// MARK: SystemEventsScrollPageBehaviors
@objc public enum SystemEventsScrollPageBehaviors : AEKeyword {
    case JumpToHere = 0x746f6872 /* 'tohr' */
    case JumpToNextPage = 0x6e787067 /* 'nxpg' */
}

// MARK: SystemEventsFontSmoothingStyles
@objc public enum SystemEventsFontSmoothingStyles : AEKeyword {
    case Automatic = 0x6175746d /* 'autm' */
    case Light = 0x6c697465 /* 'lite' */
    case Medium = 0x6d656469 /* 'medi' */
    case Standard = 0x73746e64 /* 'stnd' */
    case Strong = 0x73747267 /* 'strg' */
}

// MARK: SystemEventsAppearances
@objc public enum SystemEventsAppearances : AEKeyword {
    case Blue = 0x626c7565 /* 'blue' */
    case Graphite = 0x67726674 /* 'grft' */
}

// MARK: SystemEventsHighlightColors
@objc public enum SystemEventsHighlightColors : AEKeyword {
    case Blue = 0x626c7565 /* 'blue' */
    case Gold = 0x676f6c64 /* 'gold' */
    case Graphite = 0x67726674 /* 'grft' */
    case Green = 0x6772656e /* 'gren' */
    case Orange = 0x6f726e67 /* 'orng' */
    case Purple = 0x7072706c /* 'prpl' */
    case Red = 0x72656420 /* 'red ' */
    case Silver = 0x736c7672 /* 'slvr' */
}

// MARK: SystemEventsDhac
@objc public enum SystemEventsDhac : AEKeyword {
    case AskWhatToDo = 0x64686173 /* 'dhas' */
    case Ignore = 0x64686967 /* 'dhig' */
    case OpenApplication = 0x64686170 /* 'dhap' */
    case RunAScript = 0x64687273 /* 'dhrs' */
}

// MARK: SystemEventsDpls
@objc public enum SystemEventsDpls : AEKeyword {
    case Bottom = 0x626f7474 /* 'bott' */
    case Left = 0x6c656674 /* 'left' */
    case Right = 0x72696768 /* 'righ' */
}

// MARK: SystemEventsDpef
@objc public enum SystemEventsDpef : AEKeyword {
    case Genie = 0x67656e69 /* 'geni' */
    case Scale = 0x7363616c /* 'scal' */
}

// MARK: SystemEventsEdfm
@objc public enum SystemEventsEdfm : AEKeyword {
    case ApplePhotoFormat = 0x64667068 /* 'dfph' */
    case AppleShareFormat = 0x64666173 /* 'dfas' */
    case AudioFormat = 0x64666175 /* 'dfau' */
    case HighSierraFormat = 0x64666873 /* 'dfhs' */
    case ISO9660Format = 0x64663936 /* 'df96' */
    case MacOSExtendedFormat = 0x6466682b /* 'dfh+' */
    case MacOSFormat = 0x64666866 /* 'dfhf' */
    case MSDOSFormat = 0x64666d73 /* 'dfms' */
    case NFSFormat = 0x64666e66 /* 'dfnf' */
    case ProDOSFormat = 0x64667072 /* 'dfpr' */
    case QuickTakeFormat = 0x64667174 /* 'dfqt' */
    case UDFFormat = 0x64667564 /* 'dfud' */
    case UFSFormat = 0x64667566 /* 'dfuf' */
    case UnknownFormat = 0x64662424 /* 'df$$' */
    case WebDAVFormat = 0x64667764 /* 'dfwd' */
}

// MARK: SystemEventsEMds
@objc public enum SystemEventsEMds : AEKeyword {
    case CommandDown = 0x4b636d64 /* 'Kcmd' */
    case ControlDown = 0x4b63746c /* 'Kctl' */
    case OptionDown = 0x4b6f7074 /* 'Kopt' */
    case ShiftDown = 0x4b736674 /* 'Ksft' */
}

// MARK: SystemEventsEMky
@objc public enum SystemEventsEMky : AEKeyword {
    case Command = 0x65436d64 /* 'eCmd' */
    case Control = 0x65436e74 /* 'eCnt' */
    case Option = 0x654f7074 /* 'eOpt' */
    case Shift = 0x65536674 /* 'eSft' */
}

// MARK: SystemEventsPrmd
@objc public enum SystemEventsPrmd : AEKeyword {
    case Normal = 0x6e6f726d /* 'norm' */
    case SlideShow = 0x706d7373 /* 'pmss' */
}

// MARK: SystemEventsMvsz
@objc public enum SystemEventsMvsz : AEKeyword {
    case Current = 0x63757374 /* 'cust' */
    case Double = 0x646f7562 /* 'doub' */
    case Half = 0x68616c66 /* 'half' */
    case Normal = 0x6e6f726d /* 'norm' */
    case Screen = 0x66697473 /* 'fits' */
}

// MARK: SystemEventsEnum
@objc public enum SystemEventsEnum : AEKeyword {
    case Standard = 0x6c777374 /* 'lwst' */
    case Detailed = 0x6c776474 /* 'lwdt' */
}

// MARK: SystemEventsAccs
@objc public enum SystemEventsAccs : AEKeyword {
    case None = 0x6e6f6e65 /* 'none' */
    case ReadOnly = 0x72656164 /* 'read' */
    case ReadWrite = 0x72647772 /* 'rdwr' */
    case WriteOnly = 0x77726974 /* 'writ' */
}

// MARK: SystemEventsGenericMethods
@objc public protocol SystemEventsGenericMethods {
    @objc optional func closeSaving(saving: SystemEventsSaveOptions, savingIn: SystemEventsFile!) // Close a document.
    @objc optional func saveIn(in_: SystemEventsFile!, `as`: SystemEventsSaveableFileFormat) // Save a document.
    @objc optional func printWithProperties(withProperties: SystemEventsPrintSettings!, printDialog: Bool) // Print a document.
    @objc optional func delete() // Delete an object.
    @objc optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    @objc optional func moveTo(to: SBObject!) // Move an object to a new location.
}

// MARK: SystemEventsApplication
@objc public protocol SystemEventsApplication: SBApplicationProtocol {
    @objc optional func documents() -> SBElementArray
    @objc optional func windows() -> SBElementArray
    @objc optional var name: String { get } // The name of the application.
    @objc optional var frontmost: Bool { get } // Is this the active application?
    @objc optional var version: String { get } // The version number of the application.
    @objc optional func open(x: AnyObject!) -> AnyObject // Open a document.
    @objc optional func print(x: AnyObject!, withProperties: SystemEventsPrintSettings!, printDialog: Bool) // Print a document.
    @objc optional func quitSaving(saving: SystemEventsSaveOptions) // Quit the application.
    @objc optional func exists(x: AnyObject!) -> Bool // Verify that an object exists.
    @objc optional func abortTransaction() // Discard the results of a bounded update session with one or more files.
    @objc optional func beginTransaction() -> Int // Begin a bounded update session with one or more files.
    @objc optional func endTransaction() // Apply the results of a bounded update session with one or more files.
    @objc optional func move(x: AnyObject!, to: AnyObject!) -> AnyObject // Move disk item(s) to a new location.
    @objc optional func logOut() // Log out the current user
    @objc optional func restartStateSavingPreference(stateSavingPreference: Bool) // Restart the computer
    @objc optional func shutDownStateSavingPreference(stateSavingPreference: Bool) // Shut Down the computer
    @objc optional func sleep() // Put the computer to sleep
    @objc optional func clickAt(at: [NSNumber]!) -> AnyObject // cause the target process to behave as if the UI element were clicked
    @objc optional func keyCode(x: AnyObject!, using using_: AnyObject!) // cause the target process to behave as if key codes were entered
    @objc optional func keystroke(x: String!, using using_: AnyObject!) // cause the target process to behave as if keystrokes were entered
    @objc optional var quitDelay: Int { get } // the time in seconds the application will idle before quitting; if set to zero, idle time will not cause the application to quit
    @objc optional var scriptMenuEnabled: Bool { get } // Is the Script menu installed in the menu bar?
    @objc optional func setQuitDelay(quitDelay: Int) // the time in seconds the application will idle before quitting; if set to zero, idle time will not cause the application to quit
    @objc optional func users() -> SBElementArray
    @objc optional var currentUser: SystemEventsUser { get } // the currently logged in user
    @objc optional var appearancePreferences: SystemEventsAppearancePreferencesObject { get } // a collection of appearance preferences
    @objc optional func setAppearancePreferences(appearancePreferences: SystemEventsAppearancePreferencesObject!) // a collection of appearance preferences
    @objc optional var CDAndDVDPreferences: SystemEventsCDAndDVDPreferencesObject { get } // the preferences for the current user when a CD or DVD is inserted
    @objc optional func setCDAndDVDPreferences(CDAndDVDPreferences: SystemEventsCDAndDVDPreferencesObject!) // the preferences for the current user when a CD or DVD is inserted
    @objc optional func desktops() -> SBElementArray
    @objc optional var currentDesktop: SystemEventsDesktop { get } // the primary desktop
    @objc optional var dockPreferences: SystemEventsDockPreferencesObject { get } // the preferences for the current user's dock
    @objc optional func setDockPreferences(dockPreferences: SystemEventsDockPreferencesObject!) // the preferences for the current user's dock
    @objc optional func loginItems() -> SBElementArray
    @objc optional var networkPreferences: SystemEventsNetworkPreferencesObject { get } // the preferences for the current user's network
    @objc optional func setNetworkPreferences(networkPreferences: SystemEventsNetworkPreferencesObject!) // the preferences for the current user's network
    @objc optional func screenSavers() -> SBElementArray
    @objc optional var currentScreenSaver: SystemEventsScreenSaver { get } // the currently selected screen saver
    @objc optional var screenSaverPreferences: SystemEventsScreenSaverPreferencesObject { get } // the preferences common to all screen savers
    @objc optional func setCurrentScreenSaver(currentScreenSaver: SystemEventsScreenSaver!) // the currently selected screen saver
    @objc optional func setScreenSaverPreferences(screenSaverPreferences: SystemEventsScreenSaverPreferencesObject!) // the preferences common to all screen savers
    @objc optional func audioDatas() -> SBElementArray
    @objc optional func audioFiles() -> SBElementArray
    @objc optional var securityPreferences: SystemEventsSecurityPreferencesObject { get } // a collection of security preferences
    @objc optional func setSecurityPreferences(securityPreferences: SystemEventsSecurityPreferencesObject!) // a collection of security preferences
    @objc optional func aliases() -> SBElementArray
    @objc optional func disks() -> SBElementArray
    @objc optional func diskItems() -> SBElementArray
    @objc optional func domains() -> SBElementArray
    @objc optional func files() -> SBElementArray
    @objc optional func filePackages() -> SBElementArray
    @objc optional func folders() -> SBElementArray
    @objc optional var applicationSupportFolder: SystemEventsFolder { get } // The Application Support folder
    @objc optional var applicationsFolder: SystemEventsFolder { get } // The user's Applications folder
    @objc optional var ClassicDomain: SystemEventsClassicDomainObject { get } // the collection of folders belonging to the Classic System
    @objc optional var desktopFolder: SystemEventsFolder { get } // The user's Desktop folder
    @objc optional var desktopPicturesFolder: SystemEventsFolder { get } // The Desktop Pictures folder
    @objc optional var documentsFolder: SystemEventsFolder { get } // The user's Documents folder
    @objc optional var downloadsFolder: SystemEventsFolder { get } // The user's Downloads folder
    @objc optional var favoritesFolder: SystemEventsFolder { get } // The user's Favorites folder
    @objc optional var FolderActionScriptsFolder: SystemEventsFolder { get } // The user's Folder Action Scripts folder
    @objc optional var fontsFolder: SystemEventsFolder { get } // The Fonts folder
    @objc optional var homeFolder: SystemEventsFolder { get } // The Home folder of the currently logged in user
    @objc optional var libraryFolder: SystemEventsFolder { get } // The Library folder
    @objc optional var localDomain: SystemEventsLocalDomainObject { get } // the collection of folders residing on the Local machine
    @objc optional var moviesFolder: SystemEventsFolder { get } // The user's Movies folder
    @objc optional var musicFolder: SystemEventsFolder { get } // The user's Music folder
    @objc optional var networkDomain: SystemEventsNetworkDomainObject { get } // the collection of folders residing on the Network
    @objc optional var picturesFolder: SystemEventsFolder { get } // The user's Pictures folder
    @objc optional var preferencesFolder: SystemEventsFolder { get } // The user's Preferences folder
    @objc optional var publicFolder: SystemEventsFolder { get } // The user's Public folder
    @objc optional var scriptingAdditionsFolder: SystemEventsFolder { get } // The Scripting Additions folder
    @objc optional var scriptsFolder: SystemEventsFolder { get } // The user's Scripts folder
    @objc optional var sharedDocumentsFolder: SystemEventsFolder { get } // The Shared Documents folder
    @objc optional var sitesFolder: SystemEventsFolder { get } // The user's Sites folder
    @objc optional var speakableItemsFolder: SystemEventsFolder { get } // The Speakable Items folder
    @objc optional var startupDisk: SystemEventsDisk { get } // the disk from which Mac OS X was loaded
    @objc optional var systemDomain: SystemEventsSystemDomainObject { get } // the collection of folders belonging to the System
    @objc optional var temporaryItemsFolder: SystemEventsFolder { get } // The Temporary Items folder
    @objc optional var trash: SystemEventsFolder { get } // The user's Trash folder
    @objc optional var userDomain: SystemEventsUserDomainObject { get } // the collection of folders belonging to the User
    @objc optional var utilitiesFolder: SystemEventsFolder { get } // The Utilities folder
    @objc optional var workflowsFolder: SystemEventsFolder { get } // The Automator Workflows folder
    @objc optional func folderActions() -> SBElementArray
    @objc optional var folderActionsEnabled: Bool { get } // Are Folder Actions currently being processed?
    @objc optional func setFolderActionsEnabled(folderActionsEnabled: Bool) // Are Folder Actions currently being processed?
    @objc optional func movieDatas() -> SBElementArray
    @objc optional func movieFiles() -> SBElementArray
    @objc optional func applicationProcesses() -> SBElementArray
    @objc optional func deskAccessoryProcesses() -> SBElementArray
    @objc optional func processes() -> SBElementArray
    @objc optional func UIElements() -> SBElementArray
    @objc optional var UIElementsEnabled: Bool { get } // Are UI element events currently being processed?
    @objc optional func propertyListFiles() -> SBElementArray
    @objc optional func propertyListItems() -> SBElementArray
    @objc optional func QuickTimeDatas() -> SBElementArray
    @objc optional func QuickTimeFiles() -> SBElementArray
    @objc optional func XMLDatas() -> SBElementArray
    @objc optional func XMLFiles() -> SBElementArray
    @objc optional var scriptingDefinition: SystemEventsScriptingDefinitionObject { get } // The scripting definition of the System Events application
}
extension SBApplication: SystemEventsApplication {}

// MARK: SystemEventsDocument
@objc public protocol SystemEventsDocument: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var name: String { get } // Its name.
    @objc optional var modified: Bool { get } // Has it been modified since the last save?
    @objc optional var file: SystemEventsFile { get } // Its location on disk, if it has one.
}
extension SBObject: SystemEventsDocument {}

// MARK: SystemEventsWindow
@objc public protocol SystemEventsWindow: SBObjectProtocol, SystemEventsGenericMethods {
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
    @objc optional var document: SystemEventsDocument { get } // The document whose contents are displayed in the window.
    @objc optional func setIndex(index: Int) // The index of the window, ordered front to back.
    @objc optional func setBounds(bounds: NSRect) // The bounding rectangle of the window.
    @objc optional func setMiniaturized(miniaturized: Bool) // Is the window minimized right now?
    @objc optional func setVisible(visible: Bool) // Is the window visible right now?
    @objc optional func setZoomed(zoomed: Bool) // Is the window zoomed right now?
    @objc optional func actions() -> SBElementArray
    @objc optional func attributes() -> SBElementArray
    @objc optional func browsers() -> SBElementArray
    @objc optional func busyIndicators() -> SBElementArray
    @objc optional func buttons() -> SBElementArray
    @objc optional func checkboxes() -> SBElementArray
    @objc optional func colorWells() -> SBElementArray
    @objc optional func comboBoxes() -> SBElementArray
    @objc optional func drawers() -> SBElementArray
    @objc optional func groups() -> SBElementArray
    @objc optional func growAreas() -> SBElementArray
    @objc optional func images() -> SBElementArray
    @objc optional func incrementors() -> SBElementArray
    @objc optional func lists() -> SBElementArray
    @objc optional func menuButtons() -> SBElementArray
    @objc optional func outlines() -> SBElementArray
    @objc optional func popOvers() -> SBElementArray
    @objc optional func popUpButtons() -> SBElementArray
    @objc optional func progressIndicators() -> SBElementArray
    @objc optional func radioButtons() -> SBElementArray
    @objc optional func radioGroups() -> SBElementArray
    @objc optional func relevanceIndicators() -> SBElementArray
    @objc optional func scrollAreas() -> SBElementArray
    @objc optional func scrollBars() -> SBElementArray
    @objc optional func sheets() -> SBElementArray
    @objc optional func sliders() -> SBElementArray
    @objc optional func splitters() -> SBElementArray
    @objc optional func splitterGroups() -> SBElementArray
    @objc optional func staticTexts() -> SBElementArray
    @objc optional func tabGroups() -> SBElementArray
    @objc optional func tables() -> SBElementArray
    @objc optional func textAreas() -> SBElementArray
    @objc optional func textFields() -> SBElementArray
    @objc optional func toolbars() -> SBElementArray
    @objc optional func UIElements() -> SBElementArray
    @objc optional var accessibilityDescription: AnyObject { get } // a more complete description of the window and its capabilities
    @objc optional var objectDescription: AnyObject { get } // the accessibility description, if available; otherwise, the role description
    @objc optional var enabled: AnyObject { get } // Is the window enabled? ( Does it accept clicks? )
    @objc optional var entireContents: [SBObject] { get } // a list of every UI element contained in this window and its child UI elements, to the limits of the tree
    @objc optional var focused: AnyObject { get } // Is the focus on this window?
    @objc optional var help: AnyObject { get } // an elaborate description of the window and its capabilities
    @objc optional var maximumValue: AnyObject { get } // the maximum value that the UI element can take on
    @objc optional var minimumValue: AnyObject { get } // the minimum value that the UI element can take on
    @objc optional var orientation: AnyObject { get } // the orientation of the window
    @objc optional var position: AnyObject { get } // the position of the window
    @objc optional var role: String { get } // an encoded description of the window and its capabilities
    @objc optional var roleDescription: String { get } // a more complete description of the window's role
    @objc optional var selected: AnyObject { get } // Is the window selected?
    @objc optional var size: AnyObject { get } // the size of the window
    @objc optional var subrole: AnyObject { get } // an encoded description of the window and its capabilities
    @objc optional var title: String { get } // the title of the window as it appears on the screen
    @objc optional var value: AnyObject { get } // the current value of the window
    @objc optional func setFocused(focused: AnyObject!) // Is the focus on this window?
    @objc optional func setPosition(position: AnyObject!) // the position of the window
    @objc optional func setSelected(selected: AnyObject!) // Is the window selected?
    @objc optional func setSize(size: AnyObject!) // the size of the window
    @objc optional func setValue(value: AnyObject!) // the current value of the window
}
extension SBObject: SystemEventsWindow {}

// MARK: SystemEventsUser
@objc public protocol SystemEventsUser: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var fullName: String { get } // user's full name
    @objc optional var homeDirectory: AnyObject { get } // path to user's home directory
    @objc optional var name: String { get } // user's short name
    @objc optional var picturePath: AnyObject { get } // path to user's picture. Can be set for current user only!
    @objc optional func setPicturePath(picturePath: AnyObject!) // path to user's picture. Can be set for current user only!
}
extension SBObject: SystemEventsUser {}

// MARK: SystemEventsAppearancePreferencesObject
@objc public protocol SystemEventsAppearancePreferencesObject: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var appearance: SystemEventsAppearances { get } // the overall look of buttons, menus and windows
    @objc optional var fontSmoothing: Bool { get } // Is font smoothing on?
    @objc optional var fontSmoothingStyle: SystemEventsFontSmoothingStyles { get } // the method used for smoothing fonts
    @objc optional var highlightColor: AnyObject { get } // color used for hightlighting selected text and lists
    @objc optional var recentApplicationsLimit: Int { get } // the number of recent applications to track
    @objc optional var recentDocumentsLimit: Int { get } // the number of recent documents to track
    @objc optional var recentServersLimit: Int { get } // the number of recent servers to track
    @objc optional var scrollBarAction: SystemEventsScrollPageBehaviors { get } // the action performed by clicking the scroll bar
    @objc optional var smoothScrolling: Bool { get } // Is smooth scrolling used?
    @objc optional var darkMode: Bool { get } // use dark menu bar and dock
    @objc optional func setAppearance(appearance: SystemEventsAppearances) // the overall look of buttons, menus and windows
    @objc optional func setFontSmoothing(fontSmoothing: Bool) // Is font smoothing on?
    @objc optional func setFontSmoothingStyle(fontSmoothingStyle: SystemEventsFontSmoothingStyles) // the method used for smoothing fonts
    @objc optional func setHighlightColor(highlightColor: AnyObject!) // color used for hightlighting selected text and lists
    @objc optional func setRecentApplicationsLimit(recentApplicationsLimit: Int) // the number of recent applications to track
    @objc optional func setRecentDocumentsLimit(recentDocumentsLimit: Int) // the number of recent documents to track
    @objc optional func setRecentServersLimit(recentServersLimit: Int) // the number of recent servers to track
    @objc optional func setScrollBarAction(scrollBarAction: SystemEventsScrollPageBehaviors) // the action performed by clicking the scroll bar
    @objc optional func setSmoothScrolling(smoothScrolling: Bool) // Is smooth scrolling used?
    @objc optional func setDarkMode(darkMode: Bool) // use dark menu bar and dock
}
extension SBObject: SystemEventsAppearancePreferencesObject {}

// MARK: SystemEventsCDAndDVDPreferencesObject
@objc public protocol SystemEventsCDAndDVDPreferencesObject: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var blankCD: SystemEventsInsertionPreference { get } // the blank CD insertion preference
    @objc optional var blankDVD: SystemEventsInsertionPreference { get } // the blank DVD insertion preference
    @objc optional var blankBD: SystemEventsInsertionPreference { get } // the blank BD insertion preference
    @objc optional var musicCD: SystemEventsInsertionPreference { get } // the music CD insertion preference
    @objc optional var pictureCD: SystemEventsInsertionPreference { get } // the picture CD insertion preference
    @objc optional var videoDVD: SystemEventsInsertionPreference { get } // the video DVD insertion preference
    @objc optional var videoBD: SystemEventsInsertionPreference { get } // the video BD insertion preference
}
extension SBObject: SystemEventsCDAndDVDPreferencesObject {}

// MARK: SystemEventsInsertionPreference
@objc public protocol SystemEventsInsertionPreference: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var customApplication: AnyObject { get } // application to launch or activate on the insertion of media
    @objc optional var customScript: AnyObject { get } // AppleScript to launch or activate on the insertion of media
    @objc optional var insertionAction: SystemEventsDhac { get } // action to perform on media insertion
    @objc optional func setCustomApplication(customApplication: AnyObject!) // application to launch or activate on the insertion of media
    @objc optional func setCustomScript(customScript: AnyObject!) // AppleScript to launch or activate on the insertion of media
    @objc optional func setInsertionAction(insertionAction: SystemEventsDhac) // action to perform on media insertion
}
extension SBObject: SystemEventsInsertionPreference {}

// MARK: SystemEventsDesktop
@objc public protocol SystemEventsDesktop: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var name: String { get } // name of the desktop
    @objc optional func id() -> Int // unique identifier of the desktop
    @objc optional var changeInterval: Double { get } // number of seconds to wait between changing the desktop picture
    @objc optional var displayName: String { get } // name of display on which this desktop appears
    @objc optional var picture: AnyObject { get } // path to file used as desktop picture
    @objc optional var pictureRotation: Int { get } // never, using interval, using login, after sleep
    @objc optional var picturesFolder: AnyObject { get } // path to folder containing pictures for changing desktop background
    @objc optional var randomOrder: Bool { get } // turn on for random ordering of changing desktop pictures
    @objc optional var translucentMenuBar: Bool { get } // indicates whether the menu bar is translucent
    @objc optional func setChangeInterval(changeInterval: Double) // number of seconds to wait between changing the desktop picture
    @objc optional func setPicture(picture: AnyObject!) // path to file used as desktop picture
    @objc optional func setPictureRotation(pictureRotation: Int) // never, using interval, using login, after sleep
    @objc optional func setPicturesFolder(picturesFolder: AnyObject!) // path to folder containing pictures for changing desktop background
    @objc optional func setRandomOrder(randomOrder: Bool) // turn on for random ordering of changing desktop pictures
    @objc optional func setTranslucentMenuBar(translucentMenuBar: Bool) // indicates whether the menu bar is translucent
}
extension SBObject: SystemEventsDesktop {}

// MARK: SystemEventsDockPreferencesObject
@objc public protocol SystemEventsDockPreferencesObject: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var animate: Bool { get } // is the animation of opening applications on or off?
    @objc optional var autohide: Bool { get } // is autohiding the dock on or off?
    @objc optional var dockSize: Double { get } // size/height of the items (between 0.0 (minimum) and 1.0 (maximum))
    @objc optional var magnification: Bool { get } // is magnification on or off?
    @objc optional var magnificationSize: Double { get } // maximum magnification size when magnification is on (between 0.0 (minimum) and 1.0 (maximum))
    @objc optional var minimizeEffect: SystemEventsDpef { get } // minimization effect
    @objc optional var screenEdge: SystemEventsDpls { get } // location on screen
    @objc optional func setAnimate(animate: Bool) // is the animation of opening applications on or off?
    @objc optional func setAutohide(autohide: Bool) // is autohiding the dock on or off?
    @objc optional func setDockSize(dockSize: Double) // size/height of the items (between 0.0 (minimum) and 1.0 (maximum))
    @objc optional func setMagnification(magnification: Bool) // is magnification on or off?
    @objc optional func setMagnificationSize(magnificationSize: Double) // maximum magnification size when magnification is on (between 0.0 (minimum) and 1.0 (maximum))
    @objc optional func setMinimizeEffect(minimizeEffect: SystemEventsDpef) // minimization effect
    @objc optional func setScreenEdge(screenEdge: SystemEventsDpls) // location on screen
}
extension SBObject: SystemEventsDockPreferencesObject {}

// MARK: SystemEventsLoginItem
@objc public protocol SystemEventsLoginItem: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var hidden: Bool { get } // Is the Login Item hidden when launched?
    @objc optional var kind: String { get } // the file type of the Login Item
    @objc optional var name: String { get } // the name of the Login Item
    @objc optional var path: String { get } // the file system path to the Login Item
    @objc optional func setHidden(hidden: Bool) // Is the Login Item hidden when launched?
}
extension SBObject: SystemEventsLoginItem {}

// MARK: SystemEventsConfiguration
@objc public protocol SystemEventsConfiguration: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var accountName: String { get } // the name used to authenticate
    @objc optional var connected: Bool { get } // Is the configuration connected?
    @objc optional func id() -> String // the unique identifier for the configuration
    @objc optional var name: String { get } // the name of the configuration
    @objc optional func connect() -> SystemEventsConfiguration // connect a configuration or service
    @objc optional func disconnect() -> SystemEventsConfiguration // disconnect a configuration or service
    @objc optional func setAccountName(accountName: String!) // the name used to authenticate
}
extension SBObject: SystemEventsConfiguration {}

// MARK: SystemEventsInterface
@objc public protocol SystemEventsInterface: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var automatic: Bool { get } // configure the interface speed, duplex, and mtu automatically?
    @objc optional var duplex: String { get } // the duplex setting  half | full | full with flow control
    @objc optional func id() -> String // the unique identifier for the interface
    @objc optional var kind: String { get } // the type of interface
    @objc optional var MACAddress: String { get } // the MAC address for the interface
    @objc optional var mtu: Int { get } // the packet size
    @objc optional var name: String { get } // the name of the interface
    @objc optional var speed: Int { get } // ethernet speed 10 | 100 | 1000
    @objc optional func setAutomatic(automatic: Bool) // configure the interface speed, duplex, and mtu automatically?
    @objc optional func setDuplex(duplex: String!) // the duplex setting  half | full | full with flow control
    @objc optional func setMtu(mtu: Int) // the packet size
    @objc optional func setSpeed(speed: Int) // ethernet speed 10 | 100 | 1000
}
extension SBObject: SystemEventsInterface {}

// MARK: SystemEventsLocation
@objc public protocol SystemEventsLocation: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional func services() -> SBElementArray
    @objc optional func id() -> String // the unique identifier for the location
    @objc optional var name: String { get } // the name of the location
    @objc optional func setName(name: String!) // the name of the location
}
extension SBObject: SystemEventsLocation {}

// MARK: SystemEventsNetworkPreferencesObject
@objc public protocol SystemEventsNetworkPreferencesObject: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional func interfaces() -> SBElementArray
    @objc optional func locations() -> SBElementArray
    @objc optional func services() -> SBElementArray
    @objc optional var currentLocation: SystemEventsLocation { get } // the current location
    @objc optional func setCurrentLocation(currentLocation: SystemEventsLocation!) // the current location
}
extension SBObject: SystemEventsNetworkPreferencesObject {}

// MARK: SystemEventsService
@objc public protocol SystemEventsService: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional func configurations() -> SBElementArray
    @objc optional var active: Bool { get } // Is the service active?
    @objc optional var currentConfiguration: SystemEventsConfiguration { get } // the currently selected configuration
    @objc optional func id() -> String // the unique identifier for the service
    @objc optional var interface: SystemEventsInterface { get } // the interface the service is built on
    @objc optional var kind: Int { get } // the type of service
    @objc optional var name: String { get } // the name of the service
    @objc optional func connect() -> SystemEventsConfiguration // connect a configuration or service
    @objc optional func disconnect() -> SystemEventsConfiguration // disconnect a configuration or service
    @objc optional func setCurrentConfiguration(currentConfiguration: SystemEventsConfiguration!) // the currently selected configuration
    @objc optional func setName(name: String!) // the name of the service
}
extension SBObject: SystemEventsService {}

// MARK: SystemEventsScreenSaver
@objc public protocol SystemEventsScreenSaver: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var displayedName: String { get } // name of the screen saver module as displayed to the user
    @objc optional var name: String { get } // name of the screen saver module to be displayed
    @objc optional var path: SystemEventsAlias { get } // path to the screen saver module
    @objc optional var pictureDisplayStyle: String { get } // effect to use when displaying picture-based screen savers (slideshow, collage, or mosaic)
    @objc optional func start() // start the screen saver
    @objc optional func stop() // stop the screen saver
    @objc optional func setPictureDisplayStyle(pictureDisplayStyle: String!) // effect to use when displaying picture-based screen savers (slideshow, collage, or mosaic)
}
extension SBObject: SystemEventsScreenSaver {}

// MARK: SystemEventsScreenSaverPreferencesObject
@objc public protocol SystemEventsScreenSaverPreferencesObject: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var delayInterval: Int { get } // number of seconds of idle time before the screen saver starts; zero for never
    @objc optional var mainScreenOnly: Bool { get } // should the screen saver be shown only on the main screen?
    @objc optional var running: Bool { get } // is the screen saver running?
    @objc optional var showClock: Bool { get } // should a clock appear over the screen saver?
    @objc optional func start() // start the screen saver
    @objc optional func stop() // stop the screen saver
    @objc optional func setDelayInterval(delayInterval: Int) // number of seconds of idle time before the screen saver starts; zero for never
    @objc optional func setMainScreenOnly(mainScreenOnly: Bool) // should the screen saver be shown only on the main screen?
    @objc optional func setShowClock(showClock: Bool) // should a clock appear over the screen saver?
}
extension SBObject: SystemEventsScreenSaverPreferencesObject {}

// MARK: SystemEventsSecurityPreferencesObject
@objc public protocol SystemEventsSecurityPreferencesObject: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var automaticLogin: Bool { get } // Is automatic login allowed?
    @objc optional var logOutWhenInactive: Bool { get } // Will the computer log out when inactive?
    @objc optional var logOutWhenInactiveInterval: Int { get } // The interval of inactivity after which the computer will log out
    @objc optional var requirePasswordToUnlock: Bool { get } // Is a password required to unlock secure preferences?
    @objc optional var requirePasswordToWake: Bool { get } // Is a password required to wake the computer from sleep or screen saver?
    @objc optional var secureVirtualMemory: Bool { get } // Is secure virtual memory being used?
    @objc optional func setAutomaticLogin(automaticLogin: Bool) // Is automatic login allowed?
    @objc optional func setLogOutWhenInactive(logOutWhenInactive: Bool) // Will the computer log out when inactive?
    @objc optional func setLogOutWhenInactiveInterval(logOutWhenInactiveInterval: Int) // The interval of inactivity after which the computer will log out
    @objc optional func setRequirePasswordToUnlock(requirePasswordToUnlock: Bool) // Is a password required to unlock secure preferences?
    @objc optional func setRequirePasswordToWake(requirePasswordToWake: Bool) // Is a password required to wake the computer from sleep or screen saver?
    @objc optional func setSecureVirtualMemory(secureVirtualMemory: Bool) // Is secure virtual memory being used?
}
extension SBObject: SystemEventsSecurityPreferencesObject {}

// MARK: SystemEventsDiskItem
@objc public protocol SystemEventsDiskItem: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var busyStatus: Bool { get } // Is the disk item busy?
    @objc optional var container: SystemEventsDiskItem { get } // the folder or disk which has this disk item as an element
    @objc optional var creationDate: NSDate { get } // the date on which the disk item was created
    @objc optional var displayedName: String { get } // the name of the disk item as displayed in the User Interface
    @objc optional func id() -> String // the unique ID of the disk item
    @objc optional var modificationDate: NSDate { get } // the date on which the disk item was last modified
    @objc optional var name: String { get } // the name of the disk item
    @objc optional var nameExtension: String { get } // the extension portion of the name
    @objc optional var packageFolder: Bool { get } // Is the disk item a package?
    @objc optional var path: String { get } // the file system path of the disk item
    @objc optional var physicalSize: Int { get } // the actual space used by the disk item on disk
    @objc optional var POSIXPath: String { get } // the POSIX file system path of the disk item
    @objc optional var size: Int { get } // the logical size of the disk item
    @objc optional var URL: String { get } // the URL of the disk item
    @objc optional var visible: Bool { get } // Is the disk item visible?
    @objc optional var volume: String { get } // the volume on which the disk item resides
    @objc optional func delete() // Delete disk item(s).
    @objc optional func moveTo(to: AnyObject!) -> AnyObject // Move disk item(s) to a new location.
    @objc optional func setModificationDate(modificationDate: NSDate!) // the date on which the disk item was last modified
    @objc optional func setName(name: String!) // the name of the disk item
    @objc optional func setVisible(visible: Bool) // Is the disk item visible?
}
extension SBObject: SystemEventsDiskItem {}

// MARK: SystemEventsAlias
@objc public protocol SystemEventsAlias: SystemEventsDiskItem {
    @objc optional func aliases() -> SBElementArray
    @objc optional func diskItems() -> SBElementArray
    @objc optional func files() -> SBElementArray
    @objc optional func filePackages() -> SBElementArray
    @objc optional func folders() -> SBElementArray
    @objc optional var creatorType: AnyObject { get } // the OSType identifying the application that created the alias
    @objc optional var defaultApplication: AnyObject { get } // the application that will launch if the alias is opened
    @objc optional var fileType: AnyObject { get } // the OSType identifying the type of data contained in the alias
    @objc optional var kind: String { get } // The kind of alias, as shown in Finder
    @objc optional var productVersion: String { get } // the version of the product (visible at the top of the "Get Info" window)
    @objc optional var shortVersion: String { get } // the short version of the application bundle referenced by the alias
    @objc optional var stationery: Bool { get } // Is the alias a stationery pad?
    @objc optional var typeIdentifier: String { get } // The type identifier of the alias
    @objc optional var version: String { get } // the version of the application bundle referenced by the alias (visible at the bottom of the "Get Info" window)
    @objc optional func setCreatorType(creatorType: AnyObject!) // the OSType identifying the application that created the alias
    @objc optional func setDefaultApplication(defaultApplication: AnyObject!) // the application that will launch if the alias is opened
    @objc optional func setFileType(fileType: AnyObject!) // the OSType identifying the type of data contained in the alias
    @objc optional func setStationery(stationery: Bool) // Is the alias a stationery pad?
}
extension SBObject: SystemEventsAlias {}

// MARK: SystemEventsDisk
@objc public protocol SystemEventsDisk: SystemEventsDiskItem {
    @objc optional func aliases() -> SBElementArray
    @objc optional func diskItems() -> SBElementArray
    @objc optional func files() -> SBElementArray
    @objc optional func filePackages() -> SBElementArray
    @objc optional func folders() -> SBElementArray
    @objc optional var capacity: NSNumber { get } // the total number of bytes (free or used) on the disk
    @objc optional var ejectable: Bool { get } // Can the media be ejected (floppies, CD's, and so on)?
    @objc optional var format: SystemEventsEdfm { get } // the file system format of this disk
    @objc optional var freeSpace: NSNumber { get } // the number of free bytes left on the disk
    @objc optional var ignorePrivileges: Bool { get } // Ignore permissions on this disk?
    @objc optional var localVolume: Bool { get } // Is the media a local volume (as opposed to a file server)?
    @objc optional var server: AnyObject { get } // the server on which the disk resides, AFP volumes only
    @objc optional var startup: Bool { get } // Is this disk the boot disk?
    @objc optional var zone: AnyObject { get } // the zone in which the disk's server resides, AFP volumes only
    @objc optional func setIgnorePrivileges(ignorePrivileges: Bool) // Ignore permissions on this disk?
}
extension SBObject: SystemEventsDisk {}

// MARK: SystemEventsDomain
@objc public protocol SystemEventsDomain: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional func folders() -> SBElementArray
    @objc optional var applicationSupportFolder: SystemEventsFolder { get } // The Application Support folder
    @objc optional var applicationsFolder: SystemEventsFolder { get } // The Applications folder
    @objc optional var desktopPicturesFolder: SystemEventsFolder { get } // The Desktop Pictures folder
    @objc optional var FolderActionScriptsFolder: SystemEventsFolder { get } // The Folder Action Scripts folder
    @objc optional var fontsFolder: SystemEventsFolder { get } // The Fonts folder
    @objc optional func id() -> String // the unique identifier of the domain
    @objc optional var libraryFolder: SystemEventsFolder { get } // The Library folder
    @objc optional var name: String { get } // the name of the domain
    @objc optional var preferencesFolder: SystemEventsFolder { get } // The Preferences folder
    @objc optional var scriptingAdditionsFolder: SystemEventsFolder { get } // The Scripting Additions folder
    @objc optional var scriptsFolder: SystemEventsFolder { get } // The Scripts folder
    @objc optional var sharedDocumentsFolder: SystemEventsFolder { get } // The Shared Documents folder
    @objc optional var speakableItemsFolder: SystemEventsFolder { get } // The Speakable Items folder
    @objc optional var utilitiesFolder: SystemEventsFolder { get } // The Utilities folder
    @objc optional var workflowsFolder: SystemEventsFolder { get } // The Automator Workflows folder
}
extension SBObject: SystemEventsDomain {}

// MARK: SystemEventsClassicDomainObject
@objc public protocol SystemEventsClassicDomainObject: SystemEventsDomain {
    @objc optional func folders() -> SBElementArray
    @objc optional var appleMenuFolder: SystemEventsFolder { get } // The Apple Menu Items folder
    @objc optional var controlPanelsFolder: SystemEventsFolder { get } // The Control Panels folder
    @objc optional var controlStripModulesFolder: SystemEventsFolder { get } // The Control Strip Modules folder
    @objc optional var desktopFolder: SystemEventsFolder { get } // The Classic Desktop folder
    @objc optional var extensionsFolder: SystemEventsFolder { get } // The Extensions folder
    @objc optional var fontsFolder: SystemEventsFolder { get } // The Fonts folder
    @objc optional var launcherItemsFolder: SystemEventsFolder { get } // The Launcher Items folder
    @objc optional var preferencesFolder: SystemEventsFolder { get } // The Classic Preferences folder
    @objc optional var shutdownFolder: SystemEventsFolder { get } // The Shutdown Items folder
    @objc optional var startupItemsFolder: SystemEventsFolder { get } // The StartupItems folder
    @objc optional var systemFolder: SystemEventsFolder { get } // The System folder
}
extension SBObject: SystemEventsClassicDomainObject {}

// MARK: SystemEventsFile
@objc public protocol SystemEventsFile: SystemEventsDiskItem {
    @objc optional var creatorType: AnyObject { get } // the OSType identifying the application that created the file
    @objc optional var defaultApplication: AnyObject { get } // the application that will launch if the file is opened
    @objc optional var fileType: AnyObject { get } // the OSType identifying the type of data contained in the file
    @objc optional var kind: String { get } // The kind of file, as shown in Finder
    @objc optional var productVersion: String { get } // the version of the product (visible at the top of the "Get Info" window)
    @objc optional var shortVersion: String { get } // the short version of the file
    @objc optional var stationery: Bool { get } // Is the file a stationery pad?
    @objc optional var typeIdentifier: String { get } // The type identifier of the file
    @objc optional var version: String { get } // the version of the file (visible at the bottom of the "Get Info" window)
    @objc optional func open() -> AnyObject // Open a document.
    @objc optional func setCreatorType(creatorType: AnyObject!) // the OSType identifying the application that created the file
    @objc optional func setDefaultApplication(defaultApplication: AnyObject!) // the application that will launch if the file is opened
    @objc optional func setFileType(fileType: AnyObject!) // the OSType identifying the type of data contained in the file
    @objc optional func setStationery(stationery: Bool) // Is the file a stationery pad?
}
extension SBObject: SystemEventsFile {}

// MARK: SystemEventsFilePackage
@objc public protocol SystemEventsFilePackage: SystemEventsFile {
    @objc optional func aliases() -> SBElementArray
    @objc optional func diskItems() -> SBElementArray
    @objc optional func files() -> SBElementArray
    @objc optional func filePackages() -> SBElementArray
    @objc optional func folders() -> SBElementArray
}
extension SBObject: SystemEventsFilePackage {}

// MARK: SystemEventsFolder
@objc public protocol SystemEventsFolder: SystemEventsDiskItem {
    @objc optional func aliases() -> SBElementArray
    @objc optional func diskItems() -> SBElementArray
    @objc optional func files() -> SBElementArray
    @objc optional func filePackages() -> SBElementArray
    @objc optional func folders() -> SBElementArray
}
extension SBObject: SystemEventsFolder {}

// MARK: SystemEventsLocalDomainObject
@objc public protocol SystemEventsLocalDomainObject: SystemEventsDomain {
    @objc optional func folders() -> SBElementArray
}
extension SBObject: SystemEventsLocalDomainObject {}

// MARK: SystemEventsNetworkDomainObject
@objc public protocol SystemEventsNetworkDomainObject: SystemEventsDomain {
    @objc optional func folders() -> SBElementArray
}
extension SBObject: SystemEventsNetworkDomainObject {}

// MARK: SystemEventsSystemDomainObject
@objc public protocol SystemEventsSystemDomainObject: SystemEventsDomain {
    @objc optional func folders() -> SBElementArray
}
extension SBObject: SystemEventsSystemDomainObject {}

// MARK: SystemEventsUserDomainObject
@objc public protocol SystemEventsUserDomainObject: SystemEventsDomain {
    @objc optional func folders() -> SBElementArray
    @objc optional var desktopFolder: SystemEventsFolder { get } // The user's Desktop folder
    @objc optional var documentsFolder: SystemEventsFolder { get } // The user's Documents folder
    @objc optional var downloadsFolder: SystemEventsFolder { get } // The user's Downloads folder
    @objc optional var favoritesFolder: SystemEventsFolder { get } // The user's Favorites folder
    @objc optional var homeFolder: SystemEventsFolder { get } // The user's Home folder
    @objc optional var moviesFolder: SystemEventsFolder { get } // The user's Movies folder
    @objc optional var musicFolder: SystemEventsFolder { get } // The user's Music folder
    @objc optional var picturesFolder: SystemEventsFolder { get } // The user's Pictures folder
    @objc optional var publicFolder: SystemEventsFolder { get } // The user's Public folder
    @objc optional var sitesFolder: SystemEventsFolder { get } // The user's Sites folder
    @objc optional var temporaryItemsFolder: SystemEventsFolder { get } // The Temporary Items folder
}
extension SBObject: SystemEventsUserDomainObject {}

// MARK: SystemEventsFolderAction
@objc public protocol SystemEventsFolderAction: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional func scripts() -> SBElementArray
    @objc optional var enabled: Bool { get } // Is the folder action enabled?
    @objc optional var name: String { get } // the name of the folder action, which is also the name of the folder
    @objc optional var path: AnyObject { get } // the path to the folder to which the folder action applies
    @objc optional var volume: String { get } // the volume on which the folder to which the folder action applies resides
    @objc optional func enableProcessNewChanges(processNewChanges: SystemEventsSaveOptions) // Enable a folder action.
    @objc optional func setEnabled(enabled: Bool) // Is the folder action enabled?
    @objc optional func setName(name: String!) // the name of the folder action, which is also the name of the folder
    @objc optional func setPath(path: AnyObject!) // the path to the folder to which the folder action applies
}
extension SBObject: SystemEventsFolderAction {}

// MARK: SystemEventsScript
@objc public protocol SystemEventsScript: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var enabled: Bool { get } // Is the script enabled?
    @objc optional var name: String { get } // the name of the script
    @objc optional var path: String { get } // the file system path of the script
    @objc optional var POSIXPath: String { get } // the POSIX file system path of the script
    @objc optional func setEnabled(enabled: Bool) // Is the script enabled?
}
extension SBObject: SystemEventsScript {}

// MARK: SystemEventsAction
@objc public protocol SystemEventsAction: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var objectDescription: String { get } // what the action does
    @objc optional var name: String { get } // the name of the action
    @objc optional func perform() -> SystemEventsAction // cause the target process to behave as if the action were applied to its UI element
}
extension SBObject: SystemEventsAction {}

// MARK: SystemEventsAttribute
@objc public protocol SystemEventsAttribute: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var name: String { get } // the name of the attribute
    @objc optional var settable: Bool { get } // Can the attribute be set?
    @objc optional var value: AnyObject { get } // the current value of the attribute
    @objc optional func setValue(value: AnyObject!) // the current value of the attribute
}
extension SBObject: SystemEventsAttribute {}

// MARK: SystemEventsUIElement
@objc public protocol SystemEventsUIElement: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional func actions() -> SBElementArray
    @objc optional func attributes() -> SBElementArray
    @objc optional func browsers() -> SBElementArray
    @objc optional func busyIndicators() -> SBElementArray
    @objc optional func buttons() -> SBElementArray
    @objc optional func checkboxes() -> SBElementArray
    @objc optional func colorWells() -> SBElementArray
    @objc optional func columns() -> SBElementArray
    @objc optional func comboBoxes() -> SBElementArray
    @objc optional func drawers() -> SBElementArray
    @objc optional func groups() -> SBElementArray
    @objc optional func growAreas() -> SBElementArray
    @objc optional func images() -> SBElementArray
    @objc optional func incrementors() -> SBElementArray
    @objc optional func lists() -> SBElementArray
    @objc optional func menus() -> SBElementArray
    @objc optional func menuBars() -> SBElementArray
    @objc optional func menuBarItems() -> SBElementArray
    @objc optional func menuButtons() -> SBElementArray
    @objc optional func menuItems() -> SBElementArray
    @objc optional func outlines() -> SBElementArray
    @objc optional func popOvers() -> SBElementArray
    @objc optional func popUpButtons() -> SBElementArray
    @objc optional func progressIndicators() -> SBElementArray
    @objc optional func radioButtons() -> SBElementArray
    @objc optional func radioGroups() -> SBElementArray
    @objc optional func relevanceIndicators() -> SBElementArray
    @objc optional func rows() -> SBElementArray
    @objc optional func scrollAreas() -> SBElementArray
    @objc optional func scrollBars() -> SBElementArray
    @objc optional func sheets() -> SBElementArray
    @objc optional func sliders() -> SBElementArray
    @objc optional func splitters() -> SBElementArray
    @objc optional func splitterGroups() -> SBElementArray
    @objc optional func staticTexts() -> SBElementArray
    @objc optional func tabGroups() -> SBElementArray
    @objc optional func tables() -> SBElementArray
    @objc optional func textAreas() -> SBElementArray
    @objc optional func textFields() -> SBElementArray
    @objc optional func toolbars() -> SBElementArray
    @objc optional func UIElements() -> SBElementArray
    @objc optional func valueIndicators() -> SBElementArray
    @objc optional func windows() -> SBElementArray
    @objc optional var accessibilityDescription: AnyObject { get } // a more complete description of the UI element and its capabilities
    @objc optional var objectDescription: AnyObject { get } // the accessibility description, if available; otherwise, the role description
    @objc optional var enabled: AnyObject { get } // Is the UI element enabled? ( Does it accept clicks? )
    @objc optional var entireContents: [SBObject] { get } // a list of every UI element contained in this UI element and its child UI elements, to the limits of the tree
    @objc optional var focused: AnyObject { get } // Is the focus on this UI element?
    @objc optional var help: AnyObject { get } // an elaborate description of the UI element and its capabilities
    @objc optional var maximumValue: AnyObject { get } // the maximum value that the UI element can take on
    @objc optional var minimumValue: AnyObject { get } // the minimum value that the UI element can take on
    @objc optional var name: String { get } // the name of the UI Element, which identifies it within its container
    @objc optional var orientation: AnyObject { get } // the orientation of the UI element
    @objc optional var position: AnyObject { get } // the position of the UI element
    @objc optional var role: String { get } // an encoded description of the UI element and its capabilities
    @objc optional var roleDescription: String { get } // a more complete description of the UI element's role
    @objc optional var selected: AnyObject { get } // Is the UI element selected?
    @objc optional var size: AnyObject { get } // the size of the UI element
    @objc optional var subrole: AnyObject { get } // an encoded description of the UI element and its capabilities
    @objc optional var title: String { get } // the title of the UI element as it appears on the screen
    @objc optional var value: AnyObject { get } // the current value of the UI element
    @objc optional func clickAt(at: [NSNumber]!) -> AnyObject // cause the target process to behave as if the UI element were clicked
    @objc optional func select() -> SystemEventsUIElement // set the selected property of the UI element
    @objc optional func setFocused(focused: AnyObject!) // Is the focus on this UI element?
    @objc optional func setPosition(position: AnyObject!) // the position of the UI element
    @objc optional func setSelected(selected: AnyObject!) // Is the UI element selected?
    @objc optional func setSize(size: AnyObject!) // the size of the UI element
    @objc optional func setValue(value: AnyObject!) // the current value of the UI element
}
extension SBObject: SystemEventsUIElement {}

// MARK: SystemEventsBrowser
@objc public protocol SystemEventsBrowser: SystemEventsUIElement {
}
extension SBObject: SystemEventsBrowser {}

// MARK: SystemEventsBusyIndicator
@objc public protocol SystemEventsBusyIndicator: SystemEventsUIElement {
}
extension SBObject: SystemEventsBusyIndicator {}

// MARK: SystemEventsButton
@objc public protocol SystemEventsButton: SystemEventsUIElement {
}
extension SBObject: SystemEventsButton {}

// MARK: SystemEventsCheckbox
@objc public protocol SystemEventsCheckbox: SystemEventsUIElement {
}
extension SBObject: SystemEventsCheckbox {}

// MARK: SystemEventsColorWell
@objc public protocol SystemEventsColorWell: SystemEventsUIElement {
}
extension SBObject: SystemEventsColorWell {}

// MARK: SystemEventsColumn
@objc public protocol SystemEventsColumn: SystemEventsUIElement {
}
extension SBObject: SystemEventsColumn {}

// MARK: SystemEventsComboBox
@objc public protocol SystemEventsComboBox: SystemEventsUIElement {
}
extension SBObject: SystemEventsComboBox {}

// MARK: SystemEventsDrawer
@objc public protocol SystemEventsDrawer: SystemEventsUIElement {
}
extension SBObject: SystemEventsDrawer {}

// MARK: SystemEventsGroup
@objc public protocol SystemEventsGroup: SystemEventsUIElement {
    @objc optional func checkboxes() -> SBElementArray
    @objc optional func staticTexts() -> SBElementArray
}
extension SBObject: SystemEventsGroup {}

// MARK: SystemEventsGrowArea
@objc public protocol SystemEventsGrowArea: SystemEventsUIElement {
}
extension SBObject: SystemEventsGrowArea {}

// MARK: SystemEventsImage
@objc public protocol SystemEventsImage: SystemEventsUIElement {
}
extension SBObject: SystemEventsImage {}

// MARK: SystemEventsIncrementor
@objc public protocol SystemEventsIncrementor: SystemEventsUIElement {
}
extension SBObject: SystemEventsIncrementor {}

// MARK: SystemEventsList
@objc public protocol SystemEventsList: SystemEventsUIElement {
}
extension SBObject: SystemEventsList {}

// MARK: SystemEventsMenu
@objc public protocol SystemEventsMenu: SystemEventsUIElement {
    @objc optional func menuItems() -> SBElementArray
}
extension SBObject: SystemEventsMenu {}

// MARK: SystemEventsMenuBar
@objc public protocol SystemEventsMenuBar: SystemEventsUIElement {
    @objc optional func menus() -> SBElementArray
    @objc optional func menuBarItems() -> SBElementArray
}
extension SBObject: SystemEventsMenuBar {}

// MARK: SystemEventsMenuBarItem
@objc public protocol SystemEventsMenuBarItem: SystemEventsUIElement {
    @objc optional func menus() -> SBElementArray
}
extension SBObject: SystemEventsMenuBarItem {}

// MARK: SystemEventsMenuButton
@objc public protocol SystemEventsMenuButton: SystemEventsUIElement {
}
extension SBObject: SystemEventsMenuButton {}

// MARK: SystemEventsMenuItem
@objc public protocol SystemEventsMenuItem: SystemEventsUIElement {
    @objc optional func menus() -> SBElementArray
}
extension SBObject: SystemEventsMenuItem {}

// MARK: SystemEventsOutline
@objc public protocol SystemEventsOutline: SystemEventsUIElement {
}
extension SBObject: SystemEventsOutline {}

// MARK: SystemEventsPopOver
@objc public protocol SystemEventsPopOver: SystemEventsUIElement {
}
extension SBObject: SystemEventsPopOver {}

// MARK: SystemEventsPopUpButton
@objc public protocol SystemEventsPopUpButton: SystemEventsUIElement {
}
extension SBObject: SystemEventsPopUpButton {}

// MARK: SystemEventsProcess
@objc public protocol SystemEventsProcess: SystemEventsUIElement {
    @objc optional func menuBars() -> SBElementArray
    @objc optional func windows() -> SBElementArray
    @objc optional var acceptsHighLevelEvents: Bool { get } // Is the process high-level event aware (accepts open application, open document, print document, and quit)?
    @objc optional var acceptsRemoteEvents: Bool { get } // Does the process accept remote events?
    @objc optional var architecture: String { get } // the architecture in which the process is running
    @objc optional var backgroundOnly: Bool { get } // Does the process run exclusively in the background?
    @objc optional var bundleIdentifier: String { get } // the bundle identifier of the process' application file
    @objc optional var Classic: Bool { get } // Is the process running in the Classic environment?
    @objc optional var creatorType: String { get } // the OSType of the creator of the process (the signature)
    @objc optional var displayedName: String { get } // the name of the file from which the process was launched, as displayed in the User Interface
    @objc optional var file: AnyObject { get } // the file from which the process was launched
    @objc optional var fileType: String { get } // the OSType of the file type of the process
    @objc optional var frontmost: Bool { get } // Is the process the frontmost process
    @objc optional var hasScriptingTerminology: Bool { get } // Does the process have a scripting terminology, i.e., can it be scripted?
    @objc optional func id() -> Int // The unique identifier of the process
    @objc optional var name: String { get } // the name of the process
    @objc optional var partitionSpaceUsed: Int { get } // the number of bytes currently used in the process' partition
    @objc optional var shortName: AnyObject { get } // the short name of the file from which the process was launched
    @objc optional var totalPartitionSize: Int { get } // the size of the partition with which the process was launched
    @objc optional var unixId: Int { get } // The Unix process identifier of a process running in the native environment, or -1 for a process running in the Classic environment
    @objc optional var visible: Bool { get } // Is the process' layer visible?
    @objc optional func setFrontmost(frontmost: Bool) // Is the process the frontmost process
    @objc optional func setVisible(visible: Bool) // Is the process' layer visible?
}
extension SBObject: SystemEventsProcess {}

// MARK: SystemEventsApplicationProcess
@objc public protocol SystemEventsApplicationProcess: SystemEventsProcess {
    @objc optional var applicationFile: AnyObject { get } // a reference to the application file from which this process was launched
}
extension SBObject: SystemEventsApplicationProcess {}

// MARK: SystemEventsDeskAccessoryProcess
@objc public protocol SystemEventsDeskAccessoryProcess: SystemEventsProcess {
    @objc optional var deskAccessoryFile: SystemEventsAlias { get } // a reference to the desk accessory file from which this process was launched
}
extension SBObject: SystemEventsDeskAccessoryProcess {}

// MARK: SystemEventsProgressIndicator
@objc public protocol SystemEventsProgressIndicator: SystemEventsUIElement {
}
extension SBObject: SystemEventsProgressIndicator {}

// MARK: SystemEventsRadioButton
@objc public protocol SystemEventsRadioButton: SystemEventsUIElement {
}
extension SBObject: SystemEventsRadioButton {}

// MARK: SystemEventsRadioGroup
@objc public protocol SystemEventsRadioGroup: SystemEventsUIElement {
    @objc optional func radioButtons() -> SBElementArray
}
extension SBObject: SystemEventsRadioGroup {}

// MARK: SystemEventsRelevanceIndicator
@objc public protocol SystemEventsRelevanceIndicator: SystemEventsUIElement {
}
extension SBObject: SystemEventsRelevanceIndicator {}

// MARK: SystemEventsRow
@objc public protocol SystemEventsRow: SystemEventsUIElement {
}
extension SBObject: SystemEventsRow {}

// MARK: SystemEventsScrollArea
@objc public protocol SystemEventsScrollArea: SystemEventsUIElement {
}
extension SBObject: SystemEventsScrollArea {}

// MARK: SystemEventsScrollBar
@objc public protocol SystemEventsScrollBar: SystemEventsUIElement {
    @objc optional func buttons() -> SBElementArray
    @objc optional func valueIndicators() -> SBElementArray
}
extension SBObject: SystemEventsScrollBar {}

// MARK: SystemEventsSheet
@objc public protocol SystemEventsSheet: SystemEventsUIElement {
}
extension SBObject: SystemEventsSheet {}

// MARK: SystemEventsSlider
@objc public protocol SystemEventsSlider: SystemEventsUIElement {
}
extension SBObject: SystemEventsSlider {}

// MARK: SystemEventsSplitter
@objc public protocol SystemEventsSplitter: SystemEventsUIElement {
}
extension SBObject: SystemEventsSplitter {}

// MARK: SystemEventsSplitterGroup
@objc public protocol SystemEventsSplitterGroup: SystemEventsUIElement {
}
extension SBObject: SystemEventsSplitterGroup {}

// MARK: SystemEventsStaticText
@objc public protocol SystemEventsStaticText: SystemEventsUIElement {
    @objc optional func images() -> SBElementArray
}
extension SBObject: SystemEventsStaticText {}

// MARK: SystemEventsTabGroup
@objc public protocol SystemEventsTabGroup: SystemEventsUIElement {
}
extension SBObject: SystemEventsTabGroup {}

// MARK: SystemEventsTable
@objc public protocol SystemEventsTable: SystemEventsUIElement {
}
extension SBObject: SystemEventsTable {}

// MARK: SystemEventsTextArea
@objc public protocol SystemEventsTextArea: SystemEventsUIElement {
}
extension SBObject: SystemEventsTextArea {}

// MARK: SystemEventsTextField
@objc public protocol SystemEventsTextField: SystemEventsUIElement {
}
extension SBObject: SystemEventsTextField {}

// MARK: SystemEventsToolbar
@objc public protocol SystemEventsToolbar: SystemEventsUIElement {
}
extension SBObject: SystemEventsToolbar {}

// MARK: SystemEventsValueIndicator
@objc public protocol SystemEventsValueIndicator: SystemEventsUIElement {
}
extension SBObject: SystemEventsValueIndicator {}

// MARK: SystemEventsPropertyListFile
@objc public protocol SystemEventsPropertyListFile: SystemEventsFile {
    @objc optional var contents: SystemEventsPropertyListItem { get } // the contents of the property list file; elements and properties of the property list item may be accessed as if they were elements and properties of the property list file
    @objc optional func setContents(contents: SystemEventsPropertyListItem!) // the contents of the property list file; elements and properties of the property list item may be accessed as if they were elements and properties of the property list file
}
extension SBObject: SystemEventsPropertyListFile {}

// MARK: SystemEventsPropertyListItem
@objc public protocol SystemEventsPropertyListItem: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional func propertyListItems() -> SBElementArray
    @objc optional var kind: NSNumber { get } // the kind of data stored in the property list item: boolean/data/date/list/number/record/string
    @objc optional var name: String { get } // the name of the property list item ( if any )
    @objc optional var text: String { get } // the text representation of the property list data
    @objc optional var value: AnyObject { get } // the value of the property list item
    @objc optional func setText(text: String!) // the text representation of the property list data
    @objc optional func setValue(value: AnyObject!) // the value of the property list item
}
extension SBObject: SystemEventsPropertyListItem {}

// MARK: SystemEventsAnnotation
@objc public protocol SystemEventsAnnotation: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var fullText: String { get } // the full text of the annotation
    @objc optional func id() -> String // the unique identifier of the annotation
    @objc optional var name: String { get } // the name of the annotation
}
extension SBObject: SystemEventsAnnotation {}

// MARK: SystemEventsQuickTimeData
@objc public protocol SystemEventsQuickTimeData: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional func annotations() -> SBElementArray
    @objc optional func tracks() -> SBElementArray
    @objc optional var autoPlay: Bool { get } // will the movie automatically start playing? (saved with QuickTime file)
    @objc optional var autoPresent: Bool { get } // will the movie automatically start presenting? (saved with QuickTime file)
    @objc optional var autoQuitWhenDone: Bool { get } // will the player automatically quit when done playing? (saved with QuickTime file)
    @objc optional var creationTime: NSDate { get } // the creation time of the QuickTime file
    @objc optional var dataSize: Int { get } // the size of the QuickTime file data
    @objc optional var duration: Int { get } // the duration of the QuickTime file, in terms of the time scale
    @objc optional var href: String { get } // the internet location to open when clicking on the movie (overrides track hrefs)
    @objc optional var looping: Bool { get } // keep playing the movie in a loop?
    @objc optional var modificationTime: NSDate { get } // the modification time of the QuickTime file
    @objc optional var preferredRate: Int { get } // the preferred rate of the QuickTime file
    @objc optional var preferredVolume: Int { get } // the preferred volume of the QuickTime file
    @objc optional var presentationMode: SystemEventsPrmd { get } // mode in which the movie will be presented
    @objc optional var presentationSize: SystemEventsMvsz { get } // size at which the movie will be presented
    @objc optional var storedStream: Bool { get } // is this a stored streaming movie?
    @objc optional var timeScale: Int { get } // the time scale of the QuickTime file
}
extension SBObject: SystemEventsQuickTimeData {}

// MARK: SystemEventsAudioData
@objc public protocol SystemEventsAudioData: SystemEventsQuickTimeData {
}
extension SBObject: SystemEventsAudioData {}

// MARK: SystemEventsMovieData
@objc public protocol SystemEventsMovieData: SystemEventsQuickTimeData {
    @objc optional var bounds: [NSNumber] { get } // the bounding rectangle of the movie file
    @objc optional var naturalDimensions: [NSNumber] { get } // the dimensions the movie has when it is not scaled
    @objc optional var previewDuration: Int { get } // the preview duration of the movie file
    @objc optional var previewTime: Int { get } // the preview time of the movie file
}
extension SBObject: SystemEventsMovieData {}

// MARK: SystemEventsQuickTimeFile
@objc public protocol SystemEventsQuickTimeFile: SystemEventsFile {
    @objc optional var contents: SystemEventsQuickTimeData { get } // the contents of the QuickTime file; elements and properties of the QuickTime data may be accessed as if they were elements and properties of the QuickTime file
}
extension SBObject: SystemEventsQuickTimeFile {}

// MARK: SystemEventsAudioFile
@objc public protocol SystemEventsAudioFile: SystemEventsQuickTimeFile {
    @objc optional var contents: SystemEventsAudioData { get } // the contents of the audio file; elements and properties of the audio data may be accessed as if they were elements and properties of the audio file
}
extension SBObject: SystemEventsAudioFile {}

// MARK: SystemEventsMovieFile
@objc public protocol SystemEventsMovieFile: SystemEventsQuickTimeFile {
    @objc optional var contents: SystemEventsMovieData { get } // the contents of the movie file; elements and properties of the movie data may be accessed as if they were elements and properties of the movie file
}
extension SBObject: SystemEventsMovieFile {}

// MARK: SystemEventsTrack
@objc public protocol SystemEventsTrack: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional func annotations() -> SBElementArray
    @objc optional var audioChannelCount: Int { get } // the number of channels in the audio
    @objc optional var audioCharacteristic: Bool { get } // can the track be heard?
    @objc optional var audioSampleRate: Double { get } // the sample rate of the audio in kHz
    @objc optional var audioSampleSize: Int { get } // the size of uncompressed audio samples in bits
    @objc optional var creationTime: NSDate { get } // the creation time of the track
    @objc optional var dataFormat: String { get } // the data format
    @objc optional var dataRate: Int { get } // the data rate (bytes/sec) of the track
    @objc optional var dataSize: Int { get } // the size of the track data
    @objc optional var dimensions: [NSNumber] { get } // the current dimensions of the track
    @objc optional var duration: Int { get } // the duration of the track, in terms of the time scale
    @objc optional var enabled: Bool { get } // should this track be used when the movie is playing?
    @objc optional var highQuality: Bool { get } // is the track high quality?
    @objc optional var href: String { get } // the internet location to open when clicking on the track
    @objc optional var kind: String { get } // the name of the media in the track, in the current language (e.g., 'Sound', 'Video', 'Text', ...)
    @objc optional var modificationTime: NSDate { get } // the modification time of the track
    @objc optional var name: String { get } // the name of the track
    @objc optional var startTime: Int { get } // the time delay before this track starts playing
    @objc optional var type: String { get } // the type of media in the track (e.g., 'soun', 'vide', 'text', ...)
    @objc optional var typeClass: String { get } // deprecated: use "type" instead ( included only to resolve a terminology conflict, script text will be updated upon compilation )
    @objc optional var videoDepth: Int { get } // the color depth of the video
    @objc optional var visualCharacteristic: Bool { get } // can the track be seen?
    @objc optional func setEnabled(enabled: Bool) // should this track be used when the movie is playing?
    @objc optional func setHighQuality(highQuality: Bool) // is the track high quality?
    @objc optional func setStartTime(startTime: Int) // the time delay before this track starts playing
}
extension SBObject: SystemEventsTrack {}

// MARK: SystemEventsXMLAttribute
@objc public protocol SystemEventsXMLAttribute: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var name: String { get } // the name of the XML attribute
    @objc optional var value: AnyObject { get } // the value of the XML attribute
    @objc optional func setValue(value: AnyObject!) // the value of the XML attribute
}
extension SBObject: SystemEventsXMLAttribute {}

// MARK: SystemEventsXMLData
@objc public protocol SystemEventsXMLData: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional func XMLElements() -> SBElementArray
    @objc optional func id() -> String // the unique identifier of the XML data
    @objc optional var name: String { get } // the name of the XML data
    @objc optional var text: String { get } // the text representation of the XML data
    @objc optional func setName(name: String!) // the name of the XML data
    @objc optional func setText(text: String!) // the text representation of the XML data
}
extension SBObject: SystemEventsXMLData {}

// MARK: SystemEventsXMLElement
@objc public protocol SystemEventsXMLElement: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional func XMLAttributes() -> SBElementArray
    @objc optional func XMLElements() -> SBElementArray
    @objc optional func id() -> String // the unique identifier of the XML element
    @objc optional var name: String { get } // the name of the XML element
    @objc optional var value: AnyObject { get } // the value of the XML element
    @objc optional func setValue(value: AnyObject!) // the value of the XML element
}
extension SBObject: SystemEventsXMLElement {}

// MARK: SystemEventsXMLFile
@objc public protocol SystemEventsXMLFile: SystemEventsFile {
    @objc optional var contents: SystemEventsXMLData { get } // the contents of the XML file; elements and properties of the XML data may be accessed as if they were elements and properties of the XML file
    @objc optional func setContents(contents: SystemEventsXMLData!) // the contents of the XML file; elements and properties of the XML data may be accessed as if they were elements and properties of the XML file
}
extension SBObject: SystemEventsXMLFile {}

// MARK: SystemEventsPrintSettings
@objc public protocol SystemEventsPrintSettings: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var copies: Int { get } // the number of copies of a document to be printed
    @objc optional var collating: Bool { get } // Should printed copies be collated?
    @objc optional var startingPage: Int { get } // the first page of the document to be printed
    @objc optional var endingPage: Int { get } // the last page of the document to be printed
    @objc optional var pagesAcross: Int { get } // number of logical pages laid across a physical page
    @objc optional var pagesDown: Int { get } // number of logical pages laid out down a physical page
    @objc optional var requestedPrintTime: NSDate { get } // the time at which the desktop printer should print the document
    @objc optional var errorHandling: SystemEventsEnum { get } // how errors are handled
    @objc optional var faxNumber: String { get } // for fax number
    @objc optional var targetPrinter: String { get } // for target printer
    @objc optional func setCopies(copies: Int) // the number of copies of a document to be printed
    @objc optional func setCollating(collating: Bool) // Should printed copies be collated?
    @objc optional func setStartingPage(startingPage: Int) // the first page of the document to be printed
    @objc optional func setEndingPage(endingPage: Int) // the last page of the document to be printed
    @objc optional func setPagesAcross(pagesAcross: Int) // number of logical pages laid across a physical page
    @objc optional func setPagesDown(pagesDown: Int) // number of logical pages laid out down a physical page
    @objc optional func setRequestedPrintTime(requestedPrintTime: NSDate!) // the time at which the desktop printer should print the document
    @objc optional func setErrorHandling(errorHandling: SystemEventsEnum) // how errors are handled
    @objc optional func setFaxNumber(faxNumber: String!) // for fax number
    @objc optional func setTargetPrinter(targetPrinter: String!) // for target printer
}
extension SBObject: SystemEventsPrintSettings {}

// MARK: SystemEventsScriptingClass
@objc public protocol SystemEventsScriptingClass: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional func scriptingElements() -> SBElementArray
    @objc optional func scriptingProperties() -> SBElementArray
    @objc optional var name: String { get } // The name of the class
    @objc optional func id() -> String // The unique identifier of the class
    @objc optional var objectDescription: String { get } // The description of the class
    @objc optional var hidden: Bool { get } // Is the class hidden?
    @objc optional var pluralName: String { get } // The plural name of the class
    @objc optional var suiteName: String { get } // The name of the suite to which this class belongs
    @objc optional var superclass: SystemEventsScriptingClass { get } // The class from which this class inherits
}
extension SBObject: SystemEventsScriptingClass {}

// MARK: SystemEventsScriptingCommand
@objc public protocol SystemEventsScriptingCommand: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional func scriptingParameters() -> SBElementArray
    @objc optional var name: String { get } // The name of the command
    @objc optional func id() -> String // The unique identifier of the command
    @objc optional var objectDescription: String { get } // The description of the command
    @objc optional var directParameter: SystemEventsScriptingParameter { get } // The direct parameter of the command
    @objc optional var hidden: Bool { get } // Is the command hidden?
    @objc optional var scriptingResult: SystemEventsScriptingResultObject { get } // The object or data returned by this command
    @objc optional var suiteName: String { get } // The name of the suite to which this command belongs
}
extension SBObject: SystemEventsScriptingCommand {}

// MARK: SystemEventsScriptingDefinitionObject
@objc public protocol SystemEventsScriptingDefinitionObject: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional func scriptingSuites() -> SBElementArray
}
extension SBObject: SystemEventsScriptingDefinitionObject {}

// MARK: SystemEventsScriptingElement
@objc public protocol SystemEventsScriptingElement: SystemEventsScriptingClass {
}
extension SBObject: SystemEventsScriptingElement {}

// MARK: SystemEventsScriptingEnumeration
@objc public protocol SystemEventsScriptingEnumeration: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional func scriptingEnumerators() -> SBElementArray
    @objc optional var name: String { get } // The name of the enumeration
    @objc optional func id() -> String // The unique identifier of the enumeration
    @objc optional var hidden: Bool { get } // Is the enumeration hidden?
}
extension SBObject: SystemEventsScriptingEnumeration {}

// MARK: SystemEventsScriptingEnumerator
@objc public protocol SystemEventsScriptingEnumerator: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var name: String { get } // The name of the enumerator
    @objc optional func id() -> String // The unique identifier of the enumerator
    @objc optional var objectDescription: String { get } // The description of the enumerator
    @objc optional var hidden: Bool { get } // Is the enumerator hidden?
}
extension SBObject: SystemEventsScriptingEnumerator {}

// MARK: SystemEventsScriptingParameter
@objc public protocol SystemEventsScriptingParameter: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var name: String { get } // The name of the parameter
    @objc optional func id() -> String // The unique identifier of the parameter
    @objc optional var objectDescription: String { get } // The description of the parameter
    @objc optional var hidden: Bool { get } // Is the parameter hidden?
    @objc optional var kind: String { get } // The kind of object or data specified by this parameter
    @objc optional var optional: Bool { get } // Is the parameter optional?
}
extension SBObject: SystemEventsScriptingParameter {}

// MARK: SystemEventsScriptingProperty
@objc public protocol SystemEventsScriptingProperty: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var name: String { get } // The name of the property
    @objc optional func id() -> String // The unique identifier of the property
    @objc optional var access: SystemEventsAccs { get } // The type of access to this property
    @objc optional var objectDescription: String { get } // The description of the property
    @objc optional var enumerated: Bool { get } // Is the property's value an enumerator?
    @objc optional var hidden: Bool { get } // Is the property hidden?
    @objc optional var kind: String { get } // The kind of object or data returned by this property
    @objc optional var listed: Bool { get } // Is the property's value a list?
}
extension SBObject: SystemEventsScriptingProperty {}

// MARK: SystemEventsScriptingResultObject
@objc public protocol SystemEventsScriptingResultObject: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional var objectDescription: String { get } // The description of the property
    @objc optional var enumerated: Bool { get } // Is the scripting result's value an enumerator?
    @objc optional var kind: String { get } // The kind of object or data returned by this property
    @objc optional var listed: Bool { get } // Is the scripting result's value a list?
}
extension SBObject: SystemEventsScriptingResultObject {}

// MARK: SystemEventsScriptingSuite
@objc public protocol SystemEventsScriptingSuite: SBObjectProtocol, SystemEventsGenericMethods {
    @objc optional func scriptingCommands() -> SBElementArray
    @objc optional func scriptingClasses() -> SBElementArray
    @objc optional func scriptingEnumerations() -> SBElementArray
    @objc optional var name: String { get } // The name of the suite
    @objc optional func id() -> String // The unique identifier of the suite
    @objc optional var objectDescription: String { get } // The description of the suite
    @objc optional var hidden: Bool { get } // Is the suite hidden?
}
extension SBObject: SystemEventsScriptingSuite {}

