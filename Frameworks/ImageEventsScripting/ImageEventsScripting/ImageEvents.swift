import AppKit
import ScriptingBridge

@objc public protocol SBObjectProtocol: NSObjectProtocol {
    func get() -> AnyObject!
}

@objc public protocol SBApplicationProtocol: SBObjectProtocol {
    func activate()
    var delegate: SBApplicationDelegate! { get set }
}

// MARK: ImageEventsSaveOptions
@objc public enum ImageEventsSaveOptions : AEKeyword {
    case Yes = 0x79657320 /* 'yes ' */
    case No = 0x6e6f2020 /* 'no  ' */
    case Ask = 0x61736b20 /* 'ask ' */
}

// MARK: ImageEventsPrintingErrorHandling
@objc public enum ImageEventsPrintingErrorHandling : AEKeyword {
    case Standard = 0x6c777374 /* 'lwst' */
    case Detailed = 0x6c776474 /* 'lwdt' */
}

// MARK: ImageEventsEdfm
@objc public enum ImageEventsEdfm : AEKeyword {
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

// MARK: ImageEventsBitz
@objc public enum ImageEventsBitz : AEKeyword {
    case Best = 0x62657374 /* 'best' */
    case BlackWhite = 0x62267720 /* 'b&w ' */
    case Color = 0x636f6c72 /* 'colr' */
    case FourColors = 0x34636c72 /* '4clr' */
    case FourGrays = 0x34677279 /* '4gry' */
    case Grayscale = 0x67726179 /* 'gray' */
    case MillionsOfColors = 0x6d696c6c /* 'mill' */
    case MillionsOfColorsPlus = 0x6d696c2b /* 'mil+' */
    case SixteenColors = 0x3136636c /* '16cl' */
    case SixteenGrays = 0x31366772 /* '16gr' */
    case ThousandsOfColors = 0x74686f75 /* 'thou' */
    case TwoHundredFiftySixColors = 0x32353663 /* '256c' */
    case TwoHundredFiftySixGrays = 0x32353667 /* '256g' */
}

// MARK: ImageEventsPCla
@objc public enum ImageEventsPCla : AEKeyword {
    case Abstract = 0x61627374 /* 'abst' */
    case Colorspace = 0x73706163 /* 'spac' */
    case Input = 0x73636e72 /* 'scnr' */
    case Link = 0x6c696e6b /* 'link' */
    case Monitor = 0x6d6e7472 /* 'mntr' */
    case Named = 0x6e6d636c /* 'nmcl' */
    case Output = 0x70727472 /* 'prtr' */
}

// MARK: ImageEventsPPCS
@objc public enum ImageEventsPPCS : AEKeyword {
    case Lab = 0x4c616220 /* 'Lab ' */
    case XYZ = 0x58595a20 /* 'XYZ ' */
}

// MARK: ImageEventsCmlv
@objc public enum ImageEventsCmlv : AEKeyword {
    case High = 0x68696768 /* 'high' */
    case Low = 0x6c6f7720 /* 'low ' */
    case Medium = 0x6d656469 /* 'medi' */
}

// MARK: ImageEventsTypz
@objc public enum ImageEventsTypz : AEKeyword {
    case BMP = 0x424d5066 /* 'BMPf' */
    case GIF = 0x47494620 /* 'GIF ' */
    case JPEG = 0x4a504547 /* 'JPEG' */
    case JPEG2 = 0x6a706732 /* 'jpg2' */
    case MacPaint = 0x504e5447 /* 'PNTG' */
    case PDF = 0x50444620 /* 'PDF ' */
    case Photoshop = 0x38425053 /* '8BPS' */
    case PICT = 0x50494354 /* 'PICT' */
    case PNG = 0x504e4766 /* 'PNGf' */
    case PSD = 0x70736420 /* 'psd ' */
    case QuickTimeImage = 0x71746966 /* 'qtif' */
    case SGI = 0x2e534749 /* '.SGI' */
    case Text = 0x54455854 /* 'TEXT' */
    case TGA = 0x74676120 /* 'tga ' */
    case TIFF = 0x54494646 /* 'TIFF' */
}

// MARK: ImageEventsPQua
@objc public enum ImageEventsPQua : AEKeyword {
    case Best = 0x51756132 /* 'Qua2' */
    case Draft = 0x51756131 /* 'Qua1' */
    case Normal = 0x51756130 /* 'Qua0' */
}

// MARK: ImageEventsPSpc
@objc public enum ImageEventsPSpc : AEKeyword {
    case CMYK = 0x434d594b /* 'CMYK' */
    case EightChannel = 0x4d434838 /* 'MCH8' */
    case EightColor = 0x38434c52 /* '8CLR' */
    case FiveChannel = 0x4d434835 /* 'MCH5' */
    case FiveColor = 0x35434c52 /* '5CLR' */
    case Gray = 0x47524159 /* 'GRAY' */
    case Lab = 0x4c616220 /* 'Lab ' */
    case Named = 0x4e414d45 /* 'NAME' */
    case RGB = 0x52474220 /* 'RGB ' */
    case SevenChannel = 0x4d434837 /* 'MCH7' */
    case SevenColor = 0x37434c52 /* '7CLR' */
    case SixChannel = 0x4d434836 /* 'MCH6' */
    case SixColor = 0x36434c52 /* '6CLR' */
    case XYZ = 0x58595a20 /* 'XYZ ' */
}

// MARK: ImageEventsPRdr
@objc public enum ImageEventsPRdr : AEKeyword {
    case AbsoluteColorimetricIntent = 0x52647233 /* 'Rdr3' */
    case PerceptualIntent = 0x52647230 /* 'Rdr0' */
    case RelativeColorimetricIntent = 0x52647231 /* 'Rdr1' */
    case SaturationIntent = 0x52647232 /* 'Rdr2' */
}

// MARK: ImageEventsSavo
@objc public enum ImageEventsSavo : AEKeyword {
    case No = 0x6e6f2020 /* 'no  ' */
    case Yes = 0x79657320 /* 'yes ' */
}

// MARK: ImageEventsQual
@objc public enum ImageEventsQual : AEKeyword {
    case Best = 0x62657374 /* 'best' */
    case High = 0x68696768 /* 'high' */
    case Least = 0x6c656173 /* 'leas' */
    case Low = 0x6c6f7720 /* 'low ' */
    case Medium = 0x6d656469 /* 'medi' */
}

// MARK: ImageEventsTypv
@objc public enum ImageEventsTypv : AEKeyword {
    case BMP = 0x424d5066 /* 'BMPf' */
    case JPEG = 0x4a504547 /* 'JPEG' */
    case JPEG2 = 0x6a706732 /* 'jpg2' */
    case PICT = 0x50494354 /* 'PICT' */
    case PNG = 0x504e4766 /* 'PNGf' */
    case PSD = 0x70736420 /* 'psd ' */
    case QuickTimeImage = 0x71746966 /* 'qtif' */
    case TIFF = 0x54494646 /* 'TIFF' */
}

// MARK: ImageEventsSaveableFileFormat
@objc public enum ImageEventsSaveableFileFormat : AEKeyword {
    case Text = 0x63747874 /* 'ctxt' */
}

// MARK: ImageEventsGenericMethods
@objc public protocol ImageEventsGenericMethods {
    @objc optional func saveIn(in_: ImageEventsFile!, `as`: ImageEventsSaveableFileFormat) // Save a document.
    @objc optional func printWithProperties(withProperties: [NSObject : AnyObject]!, printDialog: Bool) // Print a document.
    @objc optional func delete() // Delete an object.
    @objc optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    @objc optional func moveTo(to: SBObject!) // Move an object to a new location.
    @objc optional func closeSaving(saving: ImageEventsSavo, savingIn: String!) // Close an image
    @objc optional func cropToDimensions(toDimensions: [NSNumber]!) // Crop an image
    @objc optional func embedWithSource(withSource: ImageEventsProfile!) // Embed an image with an ICC profile
    @objc optional func flipHorizontal(horizontal: Bool, vertical: Bool) // Flip an image
    @objc optional func matchToDestination(toDestination: ImageEventsProfile!) // Match an image
    @objc optional func padToDimensions(toDimensions: [NSNumber]!, withPadColor: [NSNumber]!) // Pad an image
    @objc optional func rotateToAngle(toAngle: Double) // Rotate an image
    @objc optional func saveAs(`as`: ImageEventsTypv, icon: Bool, `in` in_: String!, PackBits: Bool, withCompressionLevel: ImageEventsCmlv) -> ImageEventsAlias // Save an image to a file in one of various formats
    @objc optional func scaleByFactor(byFactor: Double, toSize: Int) // Scale an image
    @objc optional func unembed() // Remove any embedded ICC profiles from an image
}

// MARK: ImageEventsApplication
@objc public protocol ImageEventsApplication: SBApplicationProtocol {
    @objc optional func documents() -> SBElementArray
    @objc optional func windows() -> SBElementArray
    @objc optional var name: String { get } // The name of the application.
    @objc optional var frontmost: Bool { get } // Is this the active application?
    @objc optional var version: String { get } // The version number of the application.
    @objc optional func open(x: AnyObject!) -> AnyObject // Open a document.
    @objc optional func print(x: AnyObject!, withProperties: [NSObject : AnyObject]!, printDialog: Bool) // Print a document.
    @objc optional func quitSaving(saving: ImageEventsSaveOptions) // Quit the application.
    @objc optional func exists(x: AnyObject!) -> Bool // Verify that an object exists.
    @objc optional func move(x: AnyObject!, to: AnyObject!) -> AnyObject // Move disk item(s) to a new location.
    @objc optional func aliases() -> SBElementArray
    @objc optional func disks() -> SBElementArray
    @objc optional func diskItems() -> SBElementArray
    @objc optional func domains() -> SBElementArray
    @objc optional func files() -> SBElementArray
    @objc optional func filePackages() -> SBElementArray
    @objc optional func folders() -> SBElementArray
    @objc optional var applicationSupportFolder: ImageEventsFolder { get } // The Application Support folder
    @objc optional var applicationsFolder: ImageEventsFolder { get } // The user's Applications folder
    @objc optional var ClassicDomain: ImageEventsClassicDomainObject { get } // the collection of folders belonging to the Classic System
    @objc optional var desktopFolder: ImageEventsFolder { get } // The user's Desktop folder
    @objc optional var desktopPicturesFolder: ImageEventsFolder { get } // The Desktop Pictures folder
    @objc optional var documentsFolder: ImageEventsFolder { get } // The user's Documents folder
    @objc optional var downloadsFolder: ImageEventsFolder { get } // The user's Downloads folder
    @objc optional var favoritesFolder: ImageEventsFolder { get } // The user's Favorites folder
    @objc optional var FolderActionScriptsFolder: ImageEventsFolder { get } // The user's Folder Action Scripts folder
    @objc optional var fontsFolder: ImageEventsFolder { get } // The Fonts folder
    @objc optional var homeFolder: ImageEventsFolder { get } // The Home folder of the currently logged in user
    @objc optional var libraryFolder: ImageEventsFolder { get } // The Library folder
    @objc optional var localDomain: ImageEventsLocalDomainObject { get } // the collection of folders residing on the Local machine
    @objc optional var moviesFolder: ImageEventsFolder { get } // The user's Movies folder
    @objc optional var musicFolder: ImageEventsFolder { get } // The user's Music folder
    @objc optional var networkDomain: ImageEventsNetworkDomainObject { get } // the collection of folders residing on the Network
    @objc optional var picturesFolder: ImageEventsFolder { get } // The user's Pictures folder
    @objc optional var preferencesFolder: ImageEventsFolder { get } // The user's Preferences folder
    @objc optional var publicFolder: ImageEventsFolder { get } // The user's Public folder
    @objc optional var scriptingAdditionsFolder: ImageEventsFolder { get } // The Scripting Additions folder
    @objc optional var scriptsFolder: ImageEventsFolder { get } // The user's Scripts folder
    @objc optional var sharedDocumentsFolder: ImageEventsFolder { get } // The Shared Documents folder
    @objc optional var sitesFolder: ImageEventsFolder { get } // The user's Sites folder
    @objc optional var speakableItemsFolder: ImageEventsFolder { get } // The Speakable Items folder
    @objc optional var startupDisk: ImageEventsDisk { get } // the disk from which Mac OS X was loaded
    @objc optional var systemDomain: ImageEventsSystemDomainObject { get } // the collection of folders belonging to the System
    @objc optional var temporaryItemsFolder: ImageEventsFolder { get } // The Temporary Items folder
    @objc optional var trash: ImageEventsFolder { get } // The user's Trash folder
    @objc optional var userDomain: ImageEventsUserDomainObject { get } // the collection of folders belonging to the User
    @objc optional var utilitiesFolder: ImageEventsFolder { get } // The Utilities folder
    @objc optional var workflowsFolder: ImageEventsFolder { get } // The Automator Workflows folder
    @objc optional func displays() -> SBElementArray
    @objc optional func images() -> SBElementArray
    @objc optional func profiles() -> SBElementArray
    @objc optional var defaultCMYKProfile: ImageEventsProfile { get } // the default CMYK profile
    @objc optional var defaultCMYKProfileLocation: ImageEventsFile { get } // the default CMYK profile location
    @objc optional var defaultGrayProfile: ImageEventsProfile { get } // the default Gray profile
    @objc optional var defaultGrayProfileLocation: ImageEventsFile { get } // the default Gray profile location
    @objc optional var defaultLabProfile: ImageEventsProfile { get } // the default Lab profile
    @objc optional var defaultLabProfileLocation: ImageEventsFile { get } // the default Lab profile location
    @objc optional var defaultRGBProfile: ImageEventsProfile { get } // the default RGB profile
    @objc optional var defaultRGBProfileLocation: ImageEventsFile { get } // the default RGB profile location
    @objc optional var defaultXYZProfile: ImageEventsProfile { get } // the default XYZ profile
    @objc optional var defaultXYZProfileLocation: ImageEventsFile { get } // the default XYZ profile location
    @objc optional var preferredCMM: String { get } // specifies preferred Color Management Module to use, or "automatic"
    @objc optional var profileFolder: AnyObject { get } // the ColorSync profile folder
    @objc optional var quitDelay: Int { get } // the time in seconds the application will idle before quitting; if set to zero, idle time will not cause the application to quit
    @objc optional var systemProfile: ImageEventsProfile { get } // the default system profile
    @objc optional var systemProfileLocation: ImageEventsFile { get } // the default system profile location
    @objc optional func setDefaultCMYKProfile(defaultCMYKProfile: ImageEventsProfile!) // the default CMYK profile
    @objc optional func setDefaultCMYKProfileLocation(defaultCMYKProfileLocation: ImageEventsFile!) // the default CMYK profile location
    @objc optional func setDefaultGrayProfile(defaultGrayProfile: ImageEventsProfile!) // the default Gray profile
    @objc optional func setDefaultGrayProfileLocation(defaultGrayProfileLocation: ImageEventsFile!) // the default Gray profile location
    @objc optional func setDefaultLabProfile(defaultLabProfile: ImageEventsProfile!) // the default Lab profile
    @objc optional func setDefaultLabProfileLocation(defaultLabProfileLocation: ImageEventsFile!) // the default Lab profile location
    @objc optional func setDefaultRGBProfile(defaultRGBProfile: ImageEventsProfile!) // the default RGB profile
    @objc optional func setDefaultRGBProfileLocation(defaultRGBProfileLocation: ImageEventsFile!) // the default RGB profile location
    @objc optional func setDefaultXYZProfile(defaultXYZProfile: ImageEventsProfile!) // the default XYZ profile
    @objc optional func setDefaultXYZProfileLocation(defaultXYZProfileLocation: ImageEventsFile!) // the default XYZ profile location
    @objc optional func setPreferredCMM(preferredCMM: String!) // specifies preferred Color Management Module to use, or "automatic"
    @objc optional func setQuitDelay(quitDelay: Int) // the time in seconds the application will idle before quitting; if set to zero, idle time will not cause the application to quit
    @objc optional func setSystemProfile(systemProfile: ImageEventsProfile!) // the default system profile
    @objc optional func setSystemProfileLocation(systemProfileLocation: ImageEventsFile!) // the default system profile location
}
extension SBApplication: ImageEventsApplication {}

// MARK: ImageEventsDocument
@objc public protocol ImageEventsDocument: SBObjectProtocol, ImageEventsGenericMethods {
    @objc optional var name: String { get } // Its name.
    @objc optional var modified: Bool { get } // Has it been modified since the last save?
    @objc optional var file: ImageEventsFile { get } // Its location on disk, if it has one.
}
extension SBObject: ImageEventsDocument {}

// MARK: ImageEventsWindow
@objc public protocol ImageEventsWindow: SBObjectProtocol, ImageEventsGenericMethods {
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
    @objc optional var document: ImageEventsDocument { get } // The document whose contents are displayed in the window.
    @objc optional func setIndex(index: Int) // The index of the window, ordered front to back.
    @objc optional func setBounds(bounds: NSRect) // The bounding rectangle of the window.
    @objc optional func setMiniaturized(miniaturized: Bool) // Is the window minimized right now?
    @objc optional func setVisible(visible: Bool) // Is the window visible right now?
    @objc optional func setZoomed(zoomed: Bool) // Is the window zoomed right now?
}
extension SBObject: ImageEventsWindow {}

// MARK: ImageEventsDiskItem
@objc public protocol ImageEventsDiskItem: SBObjectProtocol, ImageEventsGenericMethods {
    @objc optional var busyStatus: Bool { get } // Is the disk item busy?
    @objc optional var container: ImageEventsDiskItem { get } // the folder or disk which has this disk item as an element
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
extension SBObject: ImageEventsDiskItem {}

// MARK: ImageEventsAlias
@objc public protocol ImageEventsAlias: ImageEventsDiskItem {
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
extension SBObject: ImageEventsAlias {}

// MARK: ImageEventsDisk
@objc public protocol ImageEventsDisk: ImageEventsDiskItem {
    @objc optional func aliases() -> SBElementArray
    @objc optional func diskItems() -> SBElementArray
    @objc optional func files() -> SBElementArray
    @objc optional func filePackages() -> SBElementArray
    @objc optional func folders() -> SBElementArray
    @objc optional var capacity: NSNumber { get } // the total number of bytes (free or used) on the disk
    @objc optional var ejectable: Bool { get } // Can the media be ejected (floppies, CD's, and so on)?
    @objc optional var format: ImageEventsEdfm { get } // the file system format of this disk
    @objc optional var freeSpace: NSNumber { get } // the number of free bytes left on the disk
    @objc optional var ignorePrivileges: Bool { get } // Ignore permissions on this disk?
    @objc optional var localVolume: Bool { get } // Is the media a local volume (as opposed to a file server)?
    @objc optional var server: AnyObject { get } // the server on which the disk resides, AFP volumes only
    @objc optional var startup: Bool { get } // Is this disk the boot disk?
    @objc optional var zone: AnyObject { get } // the zone in which the disk's server resides, AFP volumes only
    @objc optional func setIgnorePrivileges(ignorePrivileges: Bool) // Ignore permissions on this disk?
}
extension SBObject: ImageEventsDisk {}

// MARK: ImageEventsDomain
@objc public protocol ImageEventsDomain: SBObjectProtocol, ImageEventsGenericMethods {
    @objc optional func folders() -> SBElementArray
    @objc optional var applicationSupportFolder: ImageEventsFolder { get } // The Application Support folder
    @objc optional var applicationsFolder: ImageEventsFolder { get } // The Applications folder
    @objc optional var desktopPicturesFolder: ImageEventsFolder { get } // The Desktop Pictures folder
    @objc optional var FolderActionScriptsFolder: ImageEventsFolder { get } // The Folder Action Scripts folder
    @objc optional var fontsFolder: ImageEventsFolder { get } // The Fonts folder
    @objc optional func id() -> String // the unique identifier of the domain
    @objc optional var libraryFolder: ImageEventsFolder { get } // The Library folder
    @objc optional var name: String { get } // the name of the domain
    @objc optional var preferencesFolder: ImageEventsFolder { get } // The Preferences folder
    @objc optional var scriptingAdditionsFolder: ImageEventsFolder { get } // The Scripting Additions folder
    @objc optional var scriptsFolder: ImageEventsFolder { get } // The Scripts folder
    @objc optional var sharedDocumentsFolder: ImageEventsFolder { get } // The Shared Documents folder
    @objc optional var speakableItemsFolder: ImageEventsFolder { get } // The Speakable Items folder
    @objc optional var utilitiesFolder: ImageEventsFolder { get } // The Utilities folder
    @objc optional var workflowsFolder: ImageEventsFolder { get } // The Automator Workflows folder
}
extension SBObject: ImageEventsDomain {}

// MARK: ImageEventsClassicDomainObject
@objc public protocol ImageEventsClassicDomainObject: ImageEventsDomain {
    @objc optional func folders() -> SBElementArray
    @objc optional var appleMenuFolder: ImageEventsFolder { get } // The Apple Menu Items folder
    @objc optional var controlPanelsFolder: ImageEventsFolder { get } // The Control Panels folder
    @objc optional var controlStripModulesFolder: ImageEventsFolder { get } // The Control Strip Modules folder
    @objc optional var desktopFolder: ImageEventsFolder { get } // The Classic Desktop folder
    @objc optional var extensionsFolder: ImageEventsFolder { get } // The Extensions folder
    @objc optional var fontsFolder: ImageEventsFolder { get } // The Fonts folder
    @objc optional var launcherItemsFolder: ImageEventsFolder { get } // The Launcher Items folder
    @objc optional var preferencesFolder: ImageEventsFolder { get } // The Classic Preferences folder
    @objc optional var shutdownFolder: ImageEventsFolder { get } // The Shutdown Items folder
    @objc optional var startupItemsFolder: ImageEventsFolder { get } // The StartupItems folder
    @objc optional var systemFolder: ImageEventsFolder { get } // The System folder
}
extension SBObject: ImageEventsClassicDomainObject {}

// MARK: ImageEventsFile
@objc public protocol ImageEventsFile: ImageEventsDiskItem {
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
extension SBObject: ImageEventsFile {}

// MARK: ImageEventsFilePackage
@objc public protocol ImageEventsFilePackage: ImageEventsFile {
    @objc optional func aliases() -> SBElementArray
    @objc optional func diskItems() -> SBElementArray
    @objc optional func files() -> SBElementArray
    @objc optional func filePackages() -> SBElementArray
    @objc optional func folders() -> SBElementArray
}
extension SBObject: ImageEventsFilePackage {}

// MARK: ImageEventsFolder
@objc public protocol ImageEventsFolder: ImageEventsDiskItem {
    @objc optional func aliases() -> SBElementArray
    @objc optional func diskItems() -> SBElementArray
    @objc optional func files() -> SBElementArray
    @objc optional func filePackages() -> SBElementArray
    @objc optional func folders() -> SBElementArray
}
extension SBObject: ImageEventsFolder {}

// MARK: ImageEventsLocalDomainObject
@objc public protocol ImageEventsLocalDomainObject: ImageEventsDomain {
    @objc optional func folders() -> SBElementArray
}
extension SBObject: ImageEventsLocalDomainObject {}

// MARK: ImageEventsNetworkDomainObject
@objc public protocol ImageEventsNetworkDomainObject: ImageEventsDomain {
    @objc optional func folders() -> SBElementArray
}
extension SBObject: ImageEventsNetworkDomainObject {}

// MARK: ImageEventsSystemDomainObject
@objc public protocol ImageEventsSystemDomainObject: ImageEventsDomain {
    @objc optional func folders() -> SBElementArray
}
extension SBObject: ImageEventsSystemDomainObject {}

// MARK: ImageEventsUserDomainObject
@objc public protocol ImageEventsUserDomainObject: ImageEventsDomain {
    @objc optional func folders() -> SBElementArray
    @objc optional var desktopFolder: ImageEventsFolder { get } // The user's Desktop folder
    @objc optional var documentsFolder: ImageEventsFolder { get } // The user's Documents folder
    @objc optional var downloadsFolder: ImageEventsFolder { get } // The user's Downloads folder
    @objc optional var favoritesFolder: ImageEventsFolder { get } // The user's Favorites folder
    @objc optional var homeFolder: ImageEventsFolder { get } // The user's Home folder
    @objc optional var moviesFolder: ImageEventsFolder { get } // The user's Movies folder
    @objc optional var musicFolder: ImageEventsFolder { get } // The user's Music folder
    @objc optional var picturesFolder: ImageEventsFolder { get } // The user's Pictures folder
    @objc optional var publicFolder: ImageEventsFolder { get } // The user's Public folder
    @objc optional var sitesFolder: ImageEventsFolder { get } // The user's Sites folder
    @objc optional var temporaryItemsFolder: ImageEventsFolder { get } // The Temporary Items folder
}
extension SBObject: ImageEventsUserDomainObject {}

// MARK: ImageEventsDisplay
@objc public protocol ImageEventsDisplay: SBObjectProtocol, ImageEventsGenericMethods {
    @objc optional var displayNumber: Int { get } // the number of the display
    @objc optional var displayProfile: ImageEventsProfile { get } // the profile for the display
    @objc optional var name: String { get } // the name of the display
}
extension SBObject: ImageEventsDisplay {}

// MARK: ImageEventsImage
@objc public protocol ImageEventsImage: SBObjectProtocol, ImageEventsGenericMethods {
    @objc optional func metadataTags() -> SBElementArray
    @objc optional func profiles() -> SBElementArray
    @objc optional var bitDepth: ImageEventsBitz { get } // bit depth of the image's color representation
    @objc optional var colorSpace: ImageEventsPSpc { get } // color space of the image's color representation
    @objc optional var dimensions: [NSNumber] { get } // the width and height of the image, respectively, in pixels
    @objc optional var embeddedProfile: ImageEventsProfile { get } // the profile, if any, embedded in the image
    @objc optional var fileType: AnyObject { get } // file type of the image's file
    @objc optional var imageFile: ImageEventsFile { get } // the file that contains the image
    @objc optional var location: ImageEventsDiskItem { get } // the folder or disk that encloses the file that contains the image
    @objc optional var name: String { get } // the name of the image
    @objc optional var resolution: [NSNumber] { get } // the horizontal and vertical pixel density of the image, respectively, in dots per inch
}
extension SBObject: ImageEventsImage {}

// MARK: ImageEventsMetadataTag
@objc public protocol ImageEventsMetadataTag: SBObjectProtocol, ImageEventsGenericMethods {
    @objc optional var name: String { get } // the name of the tag
    @objc optional var value: AnyObject { get } // the current setting of the tag
}
extension SBObject: ImageEventsMetadataTag {}

// MARK: ImageEventsProfile
@objc public protocol ImageEventsProfile: SBObjectProtocol, ImageEventsGenericMethods {
    @objc optional var colorSpace: ImageEventsPSpc { get } // the color space of the profile
    @objc optional var connectionSpace: ImageEventsPPCS { get } // the connection space of the profile
    @objc optional var creationDate: NSDate { get } // the creation date of the profile
    @objc optional var creator: String { get } // the creator type of the profile
    @objc optional var deviceClass: ImageEventsPCla { get } // the device class of the profile
    @objc optional var deviceManufacturer: String { get } // the device manufacturer of the profile
    @objc optional var deviceModel: Int { get } // the device model of the profile
    @objc optional var location: AnyObject { get } // the file location of the profile
    @objc optional var name: String { get } // the description text of the profile
    @objc optional var platform: String { get } // the intended platform of the profile
    @objc optional var preferredCMM: String { get } // the preferred CMM of the profile
    @objc optional var quality: ImageEventsPQua { get } // the quality of the profile
    @objc optional var renderingIntent: ImageEventsPRdr { get } // the rendering intent of the profile
    @objc optional var size: Int { get } // the size of the profile in bytes
    @objc optional var version: String { get } // the version number of the profile
}
extension SBObject: ImageEventsProfile {}

