import AppKit
import ScriptingBridge

@objc public protocol SBObjectProtocol: NSObjectProtocol {
    func get() -> AnyObject!
}

@objc public protocol SBApplicationProtocol: SBObjectProtocol {
    func activate()
    var delegate: SBApplicationDelegate! { get set }
}

// MARK: TerminalSaveOptions
@objc public enum TerminalSaveOptions : AEKeyword {
    case Yes = 0x79657320 /* 'yes ' */
    case No = 0x6e6f2020 /* 'no  ' */
    case Ask = 0x61736b20 /* 'ask ' */
}

// MARK: TerminalPrintingErrorHandling
@objc public enum TerminalPrintingErrorHandling : AEKeyword {
    case Standard = 0x6c777374 /* 'lwst' */
    case Detailed = 0x6c776474 /* 'lwdt' */
}

// MARK: TerminalGenericMethods
@objc public protocol TerminalGenericMethods {
    optional func closeSaving(saving: TerminalSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(in_: NSURL!) // Save a document.
    optional func printWithProperties(withProperties: [NSObject : AnyObject]!, printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy object(s) and put the copies at a new location.
    optional func exists() -> Bool // Verify if an object exists.
    optional func moveTo(to: SBObject!) // Move object(s) to a new location.
}

// MARK: TerminalApplication
@objc public protocol TerminalApplication: SBApplicationProtocol {
    optional func windows() -> SBElementArray
    optional var name: String { get } // The name of the application.
    optional var frontmost: Bool { get } // Is this the frontmost (active) application?
    optional var version: String { get } // The version of the application.
    optional func open(x: [AnyObject]!) // Open a document.
    optional func print(x: AnyObject!, withProperties: [NSObject : AnyObject]!, printDialog: Bool) // Print a document.
    optional func quitSaving(saving: TerminalSaveOptions) // Quit the application.
    optional func doScript(x: String!, `in` in_: AnyObject!) -> TerminalTab // Runs a UNIX shell script or command.
    optional func settingsSets() -> SBElementArray
    optional var defaultSettings: TerminalSettingsSet { get } // The settings set used for new windows.
    optional var startupSettings: TerminalSettingsSet { get } // The settings set used for the window created on application startup.
    optional func setDefaultSettings(defaultSettings: TerminalSettingsSet!) // The settings set used for new windows.
    optional func setStartupSettings(startupSettings: TerminalSettingsSet!) // The settings set used for the window created on application startup.
}
extension SBApplication: TerminalApplication {}

// MARK: TerminalWindow
@objc public protocol TerminalWindow: SBObjectProtocol, TerminalGenericMethods {
    optional func tabs() -> SBElementArray
    optional var name: String { get } // The full title of the window.
    optional func id() -> Int // The unique identifier of the window.
    optional var index: Int { get } // The index of the window, ordered front to back.
    optional var bounds: NSRect { get } // The bounding rectangle of the window.
    optional var closeable: Bool { get } // Whether the window has a close box.
    optional var miniaturizable: Bool { get } // Whether the window can be minimized.
    optional var miniaturized: Bool { get } // Whether the window is currently minimized.
    optional var resizable: Bool { get } // Whether the window can be resized.
    optional var visible: Bool { get } // Whether the window is currently visible.
    optional var zoomable: Bool { get } // Whether the window can be zoomed.
    optional var zoomed: Bool { get } // Whether the window is currently zoomed.
    optional var frontmost: Bool { get } // Whether the window is currently the frontmost Terminal window.
    optional var selectedTab: TerminalTab { get }
    optional var position: NSPoint { get } // The position of the window, relative to the upper left corner of the screen.
    optional var origin: NSPoint { get } // The position of the window, relative to the lower left corner of the screen.
    optional var size: NSPoint { get } // The width and height of the window
    optional var frame: NSRect { get } // The bounding rectangle, relative to the lower left corner of the screen.
    optional func setIndex(index: Int) // The index of the window, ordered front to back.
    optional func setBounds(bounds: NSRect) // The bounding rectangle of the window.
    optional func setMiniaturized(miniaturized: Bool) // Whether the window is currently minimized.
    optional func setVisible(visible: Bool) // Whether the window is currently visible.
    optional func setZoomed(zoomed: Bool) // Whether the window is currently zoomed.
    optional func setFrontmost(frontmost: Bool) // Whether the window is currently the frontmost Terminal window.
    optional func setSelectedTab(selectedTab: TerminalTab!)
    optional func setPosition(position: NSPoint) // The position of the window, relative to the upper left corner of the screen.
    optional func setOrigin(origin: NSPoint) // The position of the window, relative to the lower left corner of the screen.
    optional func setSize(size: NSPoint) // The width and height of the window
    optional func setFrame(frame: NSRect) // The bounding rectangle, relative to the lower left corner of the screen.
}
extension SBObject: TerminalWindow {}

// MARK: TerminalSettingsSet
@objc public protocol TerminalSettingsSet: SBObjectProtocol, TerminalGenericMethods {
    optional func id() -> Int // The unique identifier of the settings set.
    optional var name: String { get } // The name of the settings set.
    optional var numberOfRows: Int { get } // The number of rows displayed in the tab.
    optional var numberOfColumns: Int { get } // The number of columns displayed in the tab.
    optional var cursorColor: NSColor { get } // The cursor color for the tab.
    optional var backgroundColor: NSColor { get } // The background color for the tab.
    optional var normalTextColor: NSColor { get } // The normal text color for the tab.
    optional var boldTextColor: NSColor { get } // The bold text color for the tab.
    optional var fontName: String { get } // The name of the font used to display the tab’s contents.
    optional var fontSize: Int { get } // The size of the font used to display the tab’s contents.
    optional var fontAntialiasing: Bool { get } // Whether the font used to display the tab’s contents is antialiased.
    optional var cleanCommands: [AnyObject] { get } // The processes which will be ignored when checking whether a tab can be closed without showing a prompt.
    optional var titleDisplaysDeviceName: Bool { get } // Whether the title contains the device name.
    optional var titleDisplaysShellPath: Bool { get } // Whether the title contains the shell path.
    optional var titleDisplaysWindowSize: Bool { get } // Whether the title contains the tab’s size, in rows and columns.
    optional var titleDisplaysSettingsName: Bool { get } // Whether the title contains the settings name.
    optional var titleDisplaysCustomTitle: Bool { get } // Whether the title contains a custom title.
    optional var customTitle: String { get } // The tab’s custom title.
    optional func setName(name: String!) // The name of the settings set.
    optional func setNumberOfRows(numberOfRows: Int) // The number of rows displayed in the tab.
    optional func setNumberOfColumns(numberOfColumns: Int) // The number of columns displayed in the tab.
    optional func setCursorColor(cursorColor: NSColor!) // The cursor color for the tab.
    optional func setBackgroundColor(backgroundColor: NSColor!) // The background color for the tab.
    optional func setNormalTextColor(normalTextColor: NSColor!) // The normal text color for the tab.
    optional func setBoldTextColor(boldTextColor: NSColor!) // The bold text color for the tab.
    optional func setFontName(fontName: String!) // The name of the font used to display the tab’s contents.
    optional func setFontSize(fontSize: Int) // The size of the font used to display the tab’s contents.
    optional func setFontAntialiasing(fontAntialiasing: Bool) // Whether the font used to display the tab’s contents is antialiased.
    optional func setCleanCommands(cleanCommands: [AnyObject]!) // The processes which will be ignored when checking whether a tab can be closed without showing a prompt.
    optional func setTitleDisplaysDeviceName(titleDisplaysDeviceName: Bool) // Whether the title contains the device name.
    optional func setTitleDisplaysShellPath(titleDisplaysShellPath: Bool) // Whether the title contains the shell path.
    optional func setTitleDisplaysWindowSize(titleDisplaysWindowSize: Bool) // Whether the title contains the tab’s size, in rows and columns.
    optional func setTitleDisplaysSettingsName(titleDisplaysSettingsName: Bool) // Whether the title contains the settings name.
    optional func setTitleDisplaysCustomTitle(titleDisplaysCustomTitle: Bool) // Whether the title contains a custom title.
    optional func setCustomTitle(customTitle: String!) // The tab’s custom title.
}
extension SBObject: TerminalSettingsSet {}

// MARK: TerminalTab
@objc public protocol TerminalTab: SBObjectProtocol, TerminalGenericMethods {
    optional var numberOfRows: Int { get } // The number of rows displayed in the tab.
    optional var numberOfColumns: Int { get } // The number of columns displayed in the tab.
    optional var contents: String { get } // The currently visible contents of the tab.
    optional var history: String { get } // The contents of the entire scrolling buffer of the tab.
    optional var busy: Bool { get } // Whether the tab is busy running a process.
    optional var processes: [AnyObject] { get } // The processes currently running in the tab.
    optional var selected: Bool { get } // Whether the tab is selected.
    optional var titleDisplaysCustomTitle: Bool { get } // Whether the title contains a custom title.
    optional var customTitle: String { get } // The tab’s custom title.
    optional var tty: String { get } // The tab’s TTY device.
    optional var currentSettings: TerminalSettingsSet { get } // The set of settings which control the tab’s behavior and appearance.
    optional var cursorColor: NSColor { get } // The cursor color for the tab.
    optional var backgroundColor: NSColor { get } // The background color for the tab.
    optional var normalTextColor: NSColor { get } // The normal text color for the tab.
    optional var boldTextColor: NSColor { get } // The bold text color for the tab.
    optional var cleanCommands: [AnyObject] { get } // The processes which will be ignored when checking whether a tab can be closed without showing a prompt.
    optional var titleDisplaysDeviceName: Bool { get } // Whether the title contains the device name.
    optional var titleDisplaysShellPath: Bool { get } // Whether the title contains the shell path.
    optional var titleDisplaysWindowSize: Bool { get } // Whether the title contains the tab’s size, in rows and columns.
    optional var titleDisplaysFileName: Bool { get } // Whether the title contains the file name.
    optional var fontName: String { get } // The name of the font used to display the tab’s contents.
    optional var fontSize: Int { get } // The size of the font used to display the tab’s contents.
    optional var fontAntialiasing: Bool { get } // Whether the font used to display the tab’s contents is antialiased.
    optional func setNumberOfRows(numberOfRows: Int) // The number of rows displayed in the tab.
    optional func setNumberOfColumns(numberOfColumns: Int) // The number of columns displayed in the tab.
    optional func setSelected(selected: Bool) // Whether the tab is selected.
    optional func setTitleDisplaysCustomTitle(titleDisplaysCustomTitle: Bool) // Whether the title contains a custom title.
    optional func setCustomTitle(customTitle: String!) // The tab’s custom title.
    optional func setCurrentSettings(currentSettings: TerminalSettingsSet!) // The set of settings which control the tab’s behavior and appearance.
    optional func setCursorColor(cursorColor: NSColor!) // The cursor color for the tab.
    optional func setBackgroundColor(backgroundColor: NSColor!) // The background color for the tab.
    optional func setNormalTextColor(normalTextColor: NSColor!) // The normal text color for the tab.
    optional func setBoldTextColor(boldTextColor: NSColor!) // The bold text color for the tab.
    optional func setCleanCommands(cleanCommands: [AnyObject]!) // The processes which will be ignored when checking whether a tab can be closed without showing a prompt.
    optional func setTitleDisplaysDeviceName(titleDisplaysDeviceName: Bool) // Whether the title contains the device name.
    optional func setTitleDisplaysShellPath(titleDisplaysShellPath: Bool) // Whether the title contains the shell path.
    optional func setTitleDisplaysWindowSize(titleDisplaysWindowSize: Bool) // Whether the title contains the tab’s size, in rows and columns.
    optional func setTitleDisplaysFileName(titleDisplaysFileName: Bool) // Whether the title contains the file name.
    optional func setFontName(fontName: String!) // The name of the font used to display the tab’s contents.
    optional func setFontSize(fontSize: Int) // The size of the font used to display the tab’s contents.
    optional func setFontAntialiasing(fontAntialiasing: Bool) // Whether the font used to display the tab’s contents is antialiased.
}
extension SBObject: TerminalTab {}

