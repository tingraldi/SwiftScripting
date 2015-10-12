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
    optional func closeSaving(saving: ImageEventsSaveOptions, savingIn: String!) // Close a document.
    optional func saveIn(in_: ImageEventsFile!, `as`: ImageEventsSaveableFileFormat) // Save a document.
    optional func printWithProperties(withProperties: [NSObject : AnyObject]!, printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func cropToDimensions(toDimensions: [AnyObject]!) // Crop an image
    optional func embedWithSource(withSource: ImageEventsProfile!) // Embed an image with an ICC profile
    optional func flipHorizontal(horizontal: Bool, vertical: Bool) // Flip an image
    optional func matchToDestination(toDestination: ImageEventsProfile!) // Match an image
    optional func padToDimensions(toDimensions: [AnyObject]!, withPadColor: [AnyObject]!) // Pad an image
    optional func rotateToAngle(toAngle: Double) // Rotate an image
    optional func saveAs(`as`: ImageEventsTypv, icon: Bool, `in` in_: String!, PackBits: Bool, withCompressionLevel: ImageEventsCmlv) -> ImageEventsAlias // Save an image to a file in one of various formats
    optional func scaleByFactor(byFactor: Double, toSize: Int) // Scale an image
    optional func unembed() // Remove any embedded ICC profiles from an image
}

// MARK: ImageEventsApplication
@objc public protocol ImageEventsApplication: SBApplicationProtocol {
    optional func documents() -> SBElementArray
    optional func windows() -> SBElementArray
    optional var name: String { get } // The name of the application.
    optional var frontmost: Bool { get } // Is this the active application?
    optional var version: String { get } // The version number of the application.
    optional func open(x: AnyObject!) -> AnyObject // Open a document.
    optional func print(x: AnyObject!, withProperties: [NSObject : AnyObject]!, printDialog: Bool) // Print a document.
    optional func quitSaving(saving: ImageEventsSaveOptions) // Quit the application.
    optional func exists(x: AnyObject!) -> Bool // Verify that an object exists.
    optional func move(x: AnyObject!, to: AnyObject!) -> AnyObject // Move disk item(s) to a new location.
    optional func aliases() -> SBElementArray
    optional func disks() -> SBElementArray
    optional func diskItems() -> SBElementArray
    optional func domains() -> SBElementArray
    optional func files() -> SBElementArray
    optional func filePackages() -> SBElementArray
    optional func folders() -> SBElementArray
    optional var applicationSupportFolder: ImageEventsFolder { get } // The Application Support folder
    optional var applicationsFolder: ImageEventsFolder { get } // The user's Applications folder
    optional var ClassicDomain: ImageEventsClassicDomainObject { get } // the collection of folders belonging to the Classic System
    optional var desktopFolder: ImageEventsFolder { get } // The user's Desktop folder
    optional var desktopPicturesFolder: ImageEventsFolder { get } // The Desktop Pictures folder
    optional var documentsFolder: ImageEventsFolder { get } // The user's Documents folder
    optional var downloadsFolder: ImageEventsFolder { get } // The user's Downloads folder
    optional var favoritesFolder: ImageEventsFolder { get } // The user's Favorites folder
    optional var FolderActionScriptsFolder: ImageEventsFolder { get } // The user's Folder Action Scripts folder
    optional var fontsFolder: ImageEventsFolder { get } // The Fonts folder
    optional var homeFolder: ImageEventsFolder { get } // The Home folder of the currently logged in user
    optional var libraryFolder: ImageEventsFolder { get } // The Library folder
    optional var localDomain: ImageEventsLocalDomainObject { get } // the collection of folders residing on the Local machine
    optional var moviesFolder: ImageEventsFolder { get } // The user's Movies folder
    optional var musicFolder: ImageEventsFolder { get } // The user's Music folder
    optional var networkDomain: ImageEventsNetworkDomainObject { get } // the collection of folders residing on the Network
    optional var picturesFolder: ImageEventsFolder { get } // The user's Pictures folder
    optional var preferencesFolder: ImageEventsFolder { get } // The user's Preferences folder
    optional var publicFolder: ImageEventsFolder { get } // The user's Public folder
    optional var scriptingAdditionsFolder: ImageEventsFolder { get } // The Scripting Additions folder
    optional var scriptsFolder: ImageEventsFolder { get } // The user's Scripts folder
    optional var sharedDocumentsFolder: ImageEventsFolder { get } // The Shared Documents folder
    optional var sitesFolder: ImageEventsFolder { get } // The user's Sites folder
    optional var speakableItemsFolder: ImageEventsFolder { get } // The Speakable Items folder
    optional var startupDisk: ImageEventsDisk { get } // the disk from which Mac OS X was loaded
    optional var systemDomain: ImageEventsSystemDomainObject { get } // the collection of folders belonging to the System
    optional var temporaryItemsFolder: ImageEventsFolder { get } // The Temporary Items folder
    optional var trash: ImageEventsFolder { get } // The user's Trash folder
    optional var userDomain: ImageEventsUserDomainObject { get } // the collection of folders belonging to the User
    optional var utilitiesFolder: ImageEventsFolder { get } // The Utilities folder
    optional var workflowsFolder: ImageEventsFolder { get } // The Automator Workflows folder
    optional func displays() -> SBElementArray
    optional func images() -> SBElementArray
    optional func profiles() -> SBElementArray
    optional var defaultCMYKProfile: ImageEventsProfile { get set } // the default CMYK profile
    optional var defaultCMYKProfileLocation: ImageEventsFile { get set } // the default CMYK profile location
    optional var defaultGrayProfile: ImageEventsProfile { get set } // the default Gray profile
    optional var defaultGrayProfileLocation: ImageEventsFile { get set } // the default Gray profile location
    optional var defaultLabProfile: ImageEventsProfile { get set } // the default Lab profile
    optional var defaultLabProfileLocation: ImageEventsFile { get set } // the default Lab profile location
    optional var defaultRGBProfile: ImageEventsProfile { get set } // the default RGB profile
    optional var defaultRGBProfileLocation: ImageEventsFile { get set } // the default RGB profile location
    optional var defaultXYZProfile: ImageEventsProfile { get set } // the default XYZ profile
    optional var defaultXYZProfileLocation: ImageEventsFile { get set } // the default XYZ profile location
    optional var preferredCMM: String { get set } // specifies preferred Color Management Module to use, or "automatic"
    optional var profileFolder: AnyObject { get } // the ColorSync profile folder
    optional var quitDelay: Int { get set } // the time in seconds the application will idle before quitting; if set to zero, idle time will not cause the application to quit
    optional var systemProfile: ImageEventsProfile { get set } // the default system profile
    optional var systemProfileLocation: ImageEventsFile { get set } // the default system profile location
}
extension SBApplication: ImageEventsApplication {}

// MARK: ImageEventsDocument
@objc public protocol ImageEventsDocument: SBObjectProtocol, ImageEventsGenericMethods {
    optional var name: String { get } // Its name.
    optional var modified: Bool { get } // Has it been modified since the last save?
    optional var file: ImageEventsFile { get } // Its location on disk, if it has one.
}
extension SBObject: ImageEventsDocument {}

// MARK: ImageEventsWindow
@objc public protocol ImageEventsWindow: SBObjectProtocol, ImageEventsGenericMethods {
    optional var name: String { get } // The title of the window.
    optional func id() -> Int // The unique identifier of the window.
    optional var index: Int { get set } // The index of the window, ordered front to back.
    optional var bounds: NSRect { get set } // The bounding rectangle of the window.
    optional var closeable: Bool { get } // Does the window have a close button?
    optional var miniaturizable: Bool { get } // Does the window have a minimize button?
    optional var miniaturized: Bool { get set } // Is the window minimized right now?
    optional var resizable: Bool { get } // Can the window be resized?
    optional var visible: Bool { get set } // Is the window visible right now?
    optional var zoomable: Bool { get } // Does the window have a zoom button?
    optional var zoomed: Bool { get set } // Is the window zoomed right now?
    optional var document: ImageEventsDocument { get } // The document whose contents are displayed in the window.
}
extension SBObject: ImageEventsWindow {}

// MARK: ImageEventsDiskItem
@objc public protocol ImageEventsDiskItem: SBObjectProtocol, ImageEventsGenericMethods {
    optional var busyStatus: Bool { get } // Is the disk item busy?
    optional var container: ImageEventsDiskItem { get } // the folder or disk which has this disk item as an element
    optional var creationDate: NSDate { get } // the date on which the disk item was created
    optional var displayedName: String { get } // the name of the disk item as displayed in the User Interface
    optional func id() -> String // the unique ID of the disk item
    optional var modificationDate: NSDate { get set } // the date on which the disk item was last modified
    optional var name: String { get set } // the name of the disk item
    optional var nameExtension: String { get } // the extension portion of the name
    optional var packageFolder: Bool { get } // Is the disk item a package?
    optional var path: String { get } // the file system path of the disk item
    optional var physicalSize: Int { get } // the actual space used by the disk item on disk
    optional var POSIXPath: String { get } // the POSIX file system path of the disk item
    optional var size: Int { get } // the logical size of the disk item
    optional var URL: String { get } // the URL of the disk item
    optional var visible: Bool { get set } // Is the disk item visible?
    optional var volume: String { get } // the volume on which the disk item resides
    optional func delete() // Delete disk item(s).
    optional func moveTo(to: AnyObject!) -> AnyObject // Move disk item(s) to a new location.
}
extension SBObject: ImageEventsDiskItem {}

// MARK: ImageEventsAlias
@objc public protocol ImageEventsAlias: ImageEventsDiskItem {
    optional func aliases() -> SBElementArray
    optional func diskItems() -> SBElementArray
    optional func files() -> SBElementArray
    optional func filePackages() -> SBElementArray
    optional func folders() -> SBElementArray
    optional var creatorType: AnyObject { get set } // the OSType identifying the application that created the alias
    optional var defaultApplication: AnyObject { get set } // the application that will launch if the alias is opened
    optional var fileType: AnyObject { get set } // the OSType identifying the type of data contained in the alias
    optional var kind: String { get } // The kind of alias, as shown in Finder
    optional var productVersion: String { get } // the version of the product (visible at the top of the "Get Info" window)
    optional var shortVersion: String { get } // the short version of the application bundle referenced by the alias
    optional var stationery: Bool { get set } // Is the alias a stationery pad?
    optional var typeIdentifier: String { get } // The type identifier of the alias
    optional var version: String { get } // the version of the application bundle referenced by the alias (visible at the bottom of the "Get Info" window)
}
extension SBObject: ImageEventsAlias {}

// MARK: ImageEventsDisk
@objc public protocol ImageEventsDisk: ImageEventsDiskItem {
    optional func aliases() -> SBElementArray
    optional func diskItems() -> SBElementArray
    optional func files() -> SBElementArray
    optional func filePackages() -> SBElementArray
    optional func folders() -> SBElementArray
    optional var capacity: NSNumber { get } // the total number of bytes (free or used) on the disk
    optional var ejectable: Bool { get } // Can the media be ejected (floppies, CD's, and so on)?
    optional var format: ImageEventsEdfm { get } // the file system format of this disk
    optional var freeSpace: NSNumber { get } // the number of free bytes left on the disk
    optional var ignorePrivileges: Bool { get set } // Ignore permissions on this disk?
    optional var localVolume: Bool { get } // Is the media a local volume (as opposed to a file server)?
    optional var server: AnyObject { get } // the server on which the disk resides, AFP volumes only
    optional var startup: Bool { get } // Is this disk the boot disk?
    optional var zone: AnyObject { get } // the zone in which the disk's server resides, AFP volumes only
}
extension SBObject: ImageEventsDisk {}

// MARK: ImageEventsDomain
@objc public protocol ImageEventsDomain: SBObjectProtocol, ImageEventsGenericMethods {
    optional func folders() -> SBElementArray
    optional var applicationSupportFolder: ImageEventsFolder { get } // The Application Support folder
    optional var applicationsFolder: ImageEventsFolder { get } // The Applications folder
    optional var desktopPicturesFolder: ImageEventsFolder { get } // The Desktop Pictures folder
    optional var FolderActionScriptsFolder: ImageEventsFolder { get } // The Folder Action Scripts folder
    optional var fontsFolder: ImageEventsFolder { get } // The Fonts folder
    optional func id() -> String // the unique identifier of the domain
    optional var libraryFolder: ImageEventsFolder { get } // The Library folder
    optional var name: String { get } // the name of the domain
    optional var preferencesFolder: ImageEventsFolder { get } // The Preferences folder
    optional var scriptingAdditionsFolder: ImageEventsFolder { get } // The Scripting Additions folder
    optional var scriptsFolder: ImageEventsFolder { get } // The Scripts folder
    optional var sharedDocumentsFolder: ImageEventsFolder { get } // The Shared Documents folder
    optional var speakableItemsFolder: ImageEventsFolder { get } // The Speakable Items folder
    optional var utilitiesFolder: ImageEventsFolder { get } // The Utilities folder
    optional var workflowsFolder: ImageEventsFolder { get } // The Automator Workflows folder
}
extension SBObject: ImageEventsDomain {}

// MARK: ImageEventsClassicDomainObject
@objc public protocol ImageEventsClassicDomainObject: ImageEventsDomain {
    optional func folders() -> SBElementArray
    optional var appleMenuFolder: ImageEventsFolder { get } // The Apple Menu Items folder
    optional var controlPanelsFolder: ImageEventsFolder { get } // The Control Panels folder
    optional var controlStripModulesFolder: ImageEventsFolder { get } // The Control Strip Modules folder
    optional var desktopFolder: ImageEventsFolder { get } // The Classic Desktop folder
    optional var extensionsFolder: ImageEventsFolder { get } // The Extensions folder
    optional var fontsFolder: ImageEventsFolder { get } // The Fonts folder
    optional var launcherItemsFolder: ImageEventsFolder { get } // The Launcher Items folder
    optional var preferencesFolder: ImageEventsFolder { get } // The Classic Preferences folder
    optional var shutdownFolder: ImageEventsFolder { get } // The Shutdown Items folder
    optional var startupItemsFolder: ImageEventsFolder { get } // The StartupItems folder
    optional var systemFolder: ImageEventsFolder { get } // The System folder
}
extension SBObject: ImageEventsClassicDomainObject {}

// MARK: ImageEventsFile
@objc public protocol ImageEventsFile: ImageEventsDiskItem {
    optional var creatorType: AnyObject { get set } // the OSType identifying the application that created the file
    optional var defaultApplication: AnyObject { get set } // the application that will launch if the file is opened
    optional var fileType: AnyObject { get set } // the OSType identifying the type of data contained in the file
    optional var kind: String { get } // The kind of file, as shown in Finder
    optional var productVersion: String { get } // the version of the product (visible at the top of the "Get Info" window)
    optional var shortVersion: String { get } // the short version of the file
    optional var stationery: Bool { get set } // Is the file a stationery pad?
    optional var typeIdentifier: String { get } // The type identifier of the file
    optional var version: String { get } // the version of the file (visible at the bottom of the "Get Info" window)
    optional func open() -> AnyObject // Open a document.
}
extension SBObject: ImageEventsFile {}

// MARK: ImageEventsFilePackage
@objc public protocol ImageEventsFilePackage: ImageEventsFile {
    optional func aliases() -> SBElementArray
    optional func diskItems() -> SBElementArray
    optional func files() -> SBElementArray
    optional func filePackages() -> SBElementArray
    optional func folders() -> SBElementArray
}
extension SBObject: ImageEventsFilePackage {}

// MARK: ImageEventsFolder
@objc public protocol ImageEventsFolder: ImageEventsDiskItem {
    optional func aliases() -> SBElementArray
    optional func diskItems() -> SBElementArray
    optional func files() -> SBElementArray
    optional func filePackages() -> SBElementArray
    optional func folders() -> SBElementArray
}
extension SBObject: ImageEventsFolder {}

// MARK: ImageEventsLocalDomainObject
@objc public protocol ImageEventsLocalDomainObject: ImageEventsDomain {
    optional func folders() -> SBElementArray
}
extension SBObject: ImageEventsLocalDomainObject {}

// MARK: ImageEventsNetworkDomainObject
@objc public protocol ImageEventsNetworkDomainObject: ImageEventsDomain {
    optional func folders() -> SBElementArray
}
extension SBObject: ImageEventsNetworkDomainObject {}

// MARK: ImageEventsSystemDomainObject
@objc public protocol ImageEventsSystemDomainObject: ImageEventsDomain {
    optional func folders() -> SBElementArray
}
extension SBObject: ImageEventsSystemDomainObject {}

// MARK: ImageEventsUserDomainObject
@objc public protocol ImageEventsUserDomainObject: ImageEventsDomain {
    optional func folders() -> SBElementArray
    optional var desktopFolder: ImageEventsFolder { get } // The user's Desktop folder
    optional var documentsFolder: ImageEventsFolder { get } // The user's Documents folder
    optional var downloadsFolder: ImageEventsFolder { get } // The user's Downloads folder
    optional var favoritesFolder: ImageEventsFolder { get } // The user's Favorites folder
    optional var homeFolder: ImageEventsFolder { get } // The user's Home folder
    optional var moviesFolder: ImageEventsFolder { get } // The user's Movies folder
    optional var musicFolder: ImageEventsFolder { get } // The user's Music folder
    optional var picturesFolder: ImageEventsFolder { get } // The user's Pictures folder
    optional var publicFolder: ImageEventsFolder { get } // The user's Public folder
    optional var sitesFolder: ImageEventsFolder { get } // The user's Sites folder
    optional var temporaryItemsFolder: ImageEventsFolder { get } // The Temporary Items folder
}
extension SBObject: ImageEventsUserDomainObject {}

// MARK: ImageEventsDisplay
@objc public protocol ImageEventsDisplay: SBObjectProtocol, ImageEventsGenericMethods {
    optional var displayNumber: Int { get } // the number of the display
    optional var displayProfile: ImageEventsProfile { get } // the profile for the display
    optional var name: String { get } // the name of the display
}
extension SBObject: ImageEventsDisplay {}

// MARK: ImageEventsImage
@objc public protocol ImageEventsImage: SBObjectProtocol, ImageEventsGenericMethods {
    optional func metadataTags() -> SBElementArray
    optional func profiles() -> SBElementArray
    optional var bitDepth: ImageEventsBitz { get } // bit depth of the image's color representation
    optional var colorSpace: ImageEventsPSpc { get } // color space of the image's color representation
    optional var dimensions: [AnyObject] { get } // the width and height of the image, respectively, in pixels
    optional var embeddedProfile: ImageEventsProfile { get } // the profile, if any, embedded in the image
    optional var fileType: AnyObject { get } // file type of the image's file
    optional var imageFile: ImageEventsFile { get } // the file that contains the image
    optional var location: ImageEventsDiskItem { get } // the folder or disk that encloses the file that contains the image
    optional var name: String { get } // the name of the image
    optional var resolution: [AnyObject] { get } // the horizontal and vertical pixel density of the image, respectively, in dots per inch
}
extension SBObject: ImageEventsImage {}

// MARK: ImageEventsMetadataTag
@objc public protocol ImageEventsMetadataTag: SBObjectProtocol, ImageEventsGenericMethods {
    optional var name: String { get } // the name of the tag
    optional var value: AnyObject { get } // the current setting of the tag
}
extension SBObject: ImageEventsMetadataTag {}

// MARK: ImageEventsProfile
@objc public protocol ImageEventsProfile: SBObjectProtocol, ImageEventsGenericMethods {
    optional var colorSpace: ImageEventsPSpc { get } // the color space of the profile
    optional var connectionSpace: ImageEventsPPCS { get } // the connection space of the profile
    optional var creationDate: NSDate { get } // the creation date of the profile
    optional var creator: String { get } // the creator type of the profile
    optional var deviceClass: ImageEventsPCla { get } // the device class of the profile
    optional var deviceManufacturer: String { get } // the device manufacturer of the profile
    optional var deviceModel: Int { get } // the device model of the profile
    optional var location: AnyObject { get } // the file location of the profile
    optional var name: String { get } // the description text of the profile
    optional var platform: String { get } // the intended platform of the profile
    optional var preferredCMM: String { get } // the preferred CMM of the profile
    optional var quality: ImageEventsPQua { get } // the quality of the profile
    optional var renderingIntent: ImageEventsPRdr { get } // the rendering intent of the profile
    optional var size: Int { get } // the size of the profile in bytes
    optional var version: String { get } // the version number of the profile
}
extension SBObject: ImageEventsProfile {}

