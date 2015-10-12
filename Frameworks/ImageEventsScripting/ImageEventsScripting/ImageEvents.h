/*
 * ImageEvents.h
 */

#import <AppKit/AppKit.h>
#import <ScriptingBridge/ScriptingBridge.h>


@class ImageEventsApplication, ImageEventsDocument, ImageEventsWindow, ImageEventsDiskItem, ImageEventsAlias, ImageEventsDisk, ImageEventsDomain, ImageEventsClassicDomainObject, ImageEventsFile, ImageEventsFilePackage, ImageEventsFolder, ImageEventsLocalDomainObject, ImageEventsNetworkDomainObject, ImageEventsSystemDomainObject, ImageEventsUserDomainObject, ImageEventsDisplay, ImageEventsImage, ImageEventsMetadataTag, ImageEventsProfile;

enum ImageEventsSaveOptions {
	ImageEventsSaveOptionsYes = 'yes ' /* Save the file. */,
	ImageEventsSaveOptionsNo = 'no  ' /* Do not save the file. */,
	ImageEventsSaveOptionsAsk = 'ask ' /* Ask the user whether or not to save the file. */
};
typedef enum ImageEventsSaveOptions ImageEventsSaveOptions;

enum ImageEventsPrintingErrorHandling {
	ImageEventsPrintingErrorHandlingStandard = 'lwst' /* Standard PostScript error handling */,
	ImageEventsPrintingErrorHandlingDetailed = 'lwdt' /* print a detailed report of PostScript errors */
};
typedef enum ImageEventsPrintingErrorHandling ImageEventsPrintingErrorHandling;

enum ImageEventsEdfm {
	ImageEventsEdfmApplePhotoFormat = 'dfph' /* Apple Photo format */,
	ImageEventsEdfmAppleShareFormat = 'dfas' /* AppleShare format */,
	ImageEventsEdfmAudioFormat = 'dfau' /* audio format */,
	ImageEventsEdfmHighSierraFormat = 'dfhs' /* High Sierra format */,
	ImageEventsEdfmISO9660Format = 'df96' /* ISO 9660 format */,
	ImageEventsEdfmMacOSExtendedFormat = 'dfh+' /* Mac OS Extended format */,
	ImageEventsEdfmMacOSFormat = 'dfhf' /* Mac OS format */,
	ImageEventsEdfmMSDOSFormat = 'dfms' /* MSDOS format */,
	ImageEventsEdfmNFSFormat = 'dfnf' /* NFS format */,
	ImageEventsEdfmProDOSFormat = 'dfpr' /* ProDOS format */,
	ImageEventsEdfmQuickTakeFormat = 'dfqt' /* QuickTake format */,
	ImageEventsEdfmUDFFormat = 'dfud' /* UDF format */,
	ImageEventsEdfmUFSFormat = 'dfuf' /* UFS format */,
	ImageEventsEdfmUnknownFormat = 'df$$' /* unknown format */,
	ImageEventsEdfmWebDAVFormat = 'dfwd' /* WebDAV format */
};
typedef enum ImageEventsEdfm ImageEventsEdfm;

enum ImageEventsBitz {
	ImageEventsBitzBest = 'best' /* best */,
	ImageEventsBitzBlackWhite = 'b&w ' /* black & white */,
	ImageEventsBitzColor = 'colr' /* color */,
	ImageEventsBitzFourColors = '4clr' /* four colors */,
	ImageEventsBitzFourGrays = '4gry' /* four grays */,
	ImageEventsBitzGrayscale = 'gray' /* grayscale */,
	ImageEventsBitzMillionsOfColors = 'mill' /* millions of colors */,
	ImageEventsBitzMillionsOfColorsPlus = 'mil+' /* millions of colors plus */,
	ImageEventsBitzSixteenColors = '16cl' /* sixteen colors */,
	ImageEventsBitzSixteenGrays = '16gr' /* sixteen grays */,
	ImageEventsBitzThousandsOfColors = 'thou' /* thousands of colors */,
	ImageEventsBitzTwoHundredFiftySixColors = '256c' /* two hundred fifty six colors */,
	ImageEventsBitzTwoHundredFiftySixGrays = '256g' /* two hundred fifty six grays */
};
typedef enum ImageEventsBitz ImageEventsBitz;

enum ImageEventsPCla {
	ImageEventsPClaAbstract = 'abst' /* abstract profile */,
	ImageEventsPClaColorspace = 'spac' /* colorspace profile */,
	ImageEventsPClaInput = 'scnr' /* input device */,
	ImageEventsPClaLink = 'link' /* device-link profile */,
	ImageEventsPClaMonitor = 'mntr' /* display device */,
	ImageEventsPClaNamed = 'nmcl' /* named color space profile */,
	ImageEventsPClaOutput = 'prtr' /* output device */
};
typedef enum ImageEventsPCla ImageEventsPCla;

enum ImageEventsPPCS {
	ImageEventsPPCSLab = 'Lab ' /* Lab */,
	ImageEventsPPCSXYZ = 'XYZ ' /* XYZ */
};
typedef enum ImageEventsPPCS ImageEventsPPCS;

enum ImageEventsCmlv {
	ImageEventsCmlvHigh = 'high' /* High compression */,
	ImageEventsCmlvLow = 'low ' /* Low compression */,
	ImageEventsCmlvMedium = 'medi' /* Medium compression */
};
typedef enum ImageEventsCmlv ImageEventsCmlv;

enum ImageEventsTypz {
	ImageEventsTypzBMP = 'BMPf' /* BMP */,
	ImageEventsTypzGIF = 'GIF ' /* GIF */,
	ImageEventsTypzJPEG = 'JPEG' /* JPEG */,
	ImageEventsTypzJPEG2 = 'jpg2' /* JPEG2 */,
	ImageEventsTypzMacPaint = 'PNTG' /* MacPaint */,
	ImageEventsTypzPDF = 'PDF ' /* PDF */,
	ImageEventsTypzPhotoshop = '8BPS' /* Photoshop */,
	ImageEventsTypzPICT = 'PICT' /* PICT */,
	ImageEventsTypzPNG = 'PNGf' /* PNG */,
	ImageEventsTypzPSD = 'psd ' /* PSD */,
	ImageEventsTypzQuickTimeImage = 'qtif' /* QuickTime Image */,
	ImageEventsTypzSGI = '.SGI' /* SGI */,
	ImageEventsTypzText = 'TEXT' /* Text */,
	ImageEventsTypzTGA = 'tga ' /* TGA */,
	ImageEventsTypzTIFF = 'TIFF' /* TIFF */
};
typedef enum ImageEventsTypz ImageEventsTypz;

enum ImageEventsPQua {
	ImageEventsPQuaBest = 'Qua2' /* best */,
	ImageEventsPQuaDraft = 'Qua1' /* draft */,
	ImageEventsPQuaNormal = 'Qua0' /* normal */
};
typedef enum ImageEventsPQua ImageEventsPQua;

enum ImageEventsPSpc {
	ImageEventsPSpcCMYK = 'CMYK' /* CMYK */,
	ImageEventsPSpcEightChannel = 'MCH8' /* Eight channel */,
	ImageEventsPSpcEightColor = '8CLR' /* Eight color */,
	ImageEventsPSpcFiveChannel = 'MCH5' /* Five channel */,
	ImageEventsPSpcFiveColor = '5CLR' /* Five color */,
	ImageEventsPSpcGray = 'GRAY' /* Gray */,
	ImageEventsPSpcLab = 'Lab ' /* Lab */,
	ImageEventsPSpcNamed = 'NAME' /* Named */,
	ImageEventsPSpcRGB = 'RGB ' /* RGB */,
	ImageEventsPSpcSevenChannel = 'MCH7' /* Seven channel */,
	ImageEventsPSpcSevenColor = '7CLR' /* Seven color */,
	ImageEventsPSpcSixChannel = 'MCH6' /* Six channel */,
	ImageEventsPSpcSixColor = '6CLR' /* Six color */,
	ImageEventsPSpcXYZ = 'XYZ ' /* XYZ */
};
typedef enum ImageEventsPSpc ImageEventsPSpc;

enum ImageEventsPRdr {
	ImageEventsPRdrAbsoluteColorimetricIntent = 'Rdr3' /* absolute colorimetric */,
	ImageEventsPRdrPerceptualIntent = 'Rdr0' /* perceptual */,
	ImageEventsPRdrRelativeColorimetricIntent = 'Rdr1' /* relative colorimetric */,
	ImageEventsPRdrSaturationIntent = 'Rdr2' /* saturation */
};
typedef enum ImageEventsPRdr ImageEventsPRdr;

enum ImageEventsSavo {
	ImageEventsSavoNo = 'no  ' /* Do not save the image. */,
	ImageEventsSavoYes = 'yes ' /* Save the image. */
};
typedef enum ImageEventsSavo ImageEventsSavo;

enum ImageEventsQual {
	ImageEventsQualBest = 'best' /* best */,
	ImageEventsQualHigh = 'high' /* high */,
	ImageEventsQualLeast = 'leas' /* least */,
	ImageEventsQualLow = 'low ' /* low */,
	ImageEventsQualMedium = 'medi' /* medium */
};
typedef enum ImageEventsQual ImageEventsQual;

enum ImageEventsTypv {
	ImageEventsTypvBMP = 'BMPf' /* BMP */,
	ImageEventsTypvJPEG = 'JPEG' /* JPEG */,
	ImageEventsTypvJPEG2 = 'jpg2' /* JPEG2 */,
	ImageEventsTypvPICT = 'PICT' /* PICT */,
	ImageEventsTypvPNG = 'PNGf' /* PNG */,
	ImageEventsTypvPSD = 'psd ' /* PSD */,
	ImageEventsTypvQuickTimeImage = 'qtif' /* QuickTime Image */,
	ImageEventsTypvTIFF = 'TIFF' /* TIFF */
};
typedef enum ImageEventsTypv ImageEventsTypv;

enum ImageEventsSaveableFileFormat {
	ImageEventsSaveableFileFormatText = 'ctxt' /* Text File Format */
};
typedef enum ImageEventsSaveableFileFormat ImageEventsSaveableFileFormat;

@protocol ImageEventsGenericMethods

- (void) saveIn:(ImageEventsFile *)in_ as:(ImageEventsSaveableFileFormat)as;  // Save a document.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (void) closeSaving:(ImageEventsSavo)saving savingIn:(NSString *)savingIn;  // Close an image
- (void) cropToDimensions:(NSArray<NSNumber *> *)toDimensions;  // Crop an image
- (void) embedWithSource:(ImageEventsProfile *)withSource;  // Embed an image with an ICC profile
- (void) flipHorizontal:(BOOL)horizontal vertical:(BOOL)vertical;  // Flip an image
- (void) matchToDestination:(ImageEventsProfile *)toDestination;  // Match an image
- (void) padToDimensions:(NSArray<NSNumber *> *)toDimensions withPadColor:(NSArray<NSNumber *> *)withPadColor;  // Pad an image
- (void) rotateToAngle:(double)toAngle;  // Rotate an image
- (ImageEventsAlias *) saveAs:(ImageEventsTypv)as icon:(BOOL)icon in:(NSString *)in_ PackBits:(BOOL)PackBits withCompressionLevel:(ImageEventsCmlv)withCompressionLevel;  // Save an image to a file in one of various formats
- (void) scaleByFactor:(double)byFactor toSize:(NSInteger)toSize;  // Scale an image
- (void) unembed;  // Remove any embedded ICC profiles from an image

@end



/*
 * Standard Suite
 */

// The application's top-level scripting object.
@interface ImageEventsApplication : SBApplication

- (SBElementArray<ImageEventsDocument *> *) documents;
- (SBElementArray<ImageEventsWindow *> *) windows;

@property (copy, readonly) NSString *name;  // The name of the application.
@property (readonly) BOOL frontmost;  // Is this the active application?
@property (copy, readonly) NSString *version;  // The version number of the application.

- (id) open:(id)x;  // Open a document.
- (void) print:(id)x withProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) quitSaving:(ImageEventsSaveOptions)saving;  // Quit the application.
- (BOOL) exists:(id)x;  // Verify that an object exists.
- (id) move:(id)x to:(id)to;  // Move disk item(s) to a new location.
- (ImageEventsFile *) open:(id)x;  // Open disk item(s) with the appropriate application.

@end

// A document.
@interface ImageEventsDocument : SBObject <ImageEventsGenericMethods>

@property (copy, readonly) NSString *name;  // Its name.
@property (readonly) BOOL modified;  // Has it been modified since the last save?
@property (copy, readonly) ImageEventsFile *file;  // Its location on disk, if it has one.


@end

// A window.
@interface ImageEventsWindow : SBObject <ImageEventsGenericMethods>

@property (copy, readonly) NSString *name;  // The title of the window.
- (NSInteger) id;  // The unique identifier of the window.
@property NSInteger index;  // The index of the window, ordered front to back.
@property NSRect bounds;  // The bounding rectangle of the window.
@property (readonly) BOOL closeable;  // Does the window have a close button?
@property (readonly) BOOL miniaturizable;  // Does the window have a minimize button?
@property BOOL miniaturized;  // Is the window minimized right now?
@property (readonly) BOOL resizable;  // Can the window be resized?
@property BOOL visible;  // Is the window visible right now?
@property (readonly) BOOL zoomable;  // Does the window have a zoom button?
@property BOOL zoomed;  // Is the window zoomed right now?
@property (copy, readonly) ImageEventsDocument *document;  // The document whose contents are displayed in the window.


@end



/*
 * Disk-Folder-File Suite
 */

// The Disk-Folder-File specific extensions to the application
@interface ImageEventsApplication (DiskFolderFileSuite)

- (SBElementArray<ImageEventsAlias *> *) aliases;
- (SBElementArray<ImageEventsDisk *> *) disks;
- (SBElementArray<ImageEventsDiskItem *> *) diskItems;
- (SBElementArray<ImageEventsDomain *> *) domains;
- (SBElementArray<ImageEventsFile *> *) files;
- (SBElementArray<ImageEventsFilePackage *> *) filePackages;
- (SBElementArray<ImageEventsFolder *> *) folders;

@property (copy, readonly) ImageEventsFolder *applicationSupportFolder;  // The Application Support folder
@property (copy, readonly) ImageEventsFolder *applicationsFolder;  // The user's Applications folder
@property (copy, readonly) ImageEventsClassicDomainObject *ClassicDomain;  // the collection of folders belonging to the Classic System
@property (copy, readonly) ImageEventsFolder *desktopFolder;  // The user's Desktop folder
@property (copy, readonly) ImageEventsFolder *desktopPicturesFolder;  // The Desktop Pictures folder
@property (copy, readonly) ImageEventsFolder *documentsFolder;  // The user's Documents folder
@property (copy, readonly) ImageEventsFolder *downloadsFolder;  // The user's Downloads folder
@property (copy, readonly) ImageEventsFolder *favoritesFolder;  // The user's Favorites folder
@property (copy, readonly) ImageEventsFolder *FolderActionScriptsFolder;  // The user's Folder Action Scripts folder
@property (copy, readonly) ImageEventsFolder *fontsFolder;  // The Fonts folder
@property (copy, readonly) ImageEventsFolder *homeFolder;  // The Home folder of the currently logged in user
@property (copy, readonly) ImageEventsFolder *libraryFolder;  // The Library folder
@property (copy, readonly) ImageEventsLocalDomainObject *localDomain;  // the collection of folders residing on the Local machine
@property (copy, readonly) ImageEventsFolder *moviesFolder;  // The user's Movies folder
@property (copy, readonly) ImageEventsFolder *musicFolder;  // The user's Music folder
@property (copy, readonly) ImageEventsNetworkDomainObject *networkDomain;  // the collection of folders residing on the Network
@property (copy, readonly) ImageEventsFolder *picturesFolder;  // The user's Pictures folder
@property (copy, readonly) ImageEventsFolder *preferencesFolder;  // The user's Preferences folder
@property (copy, readonly) ImageEventsFolder *publicFolder;  // The user's Public folder
@property (copy, readonly) ImageEventsFolder *scriptingAdditionsFolder;  // The Scripting Additions folder
@property (copy, readonly) ImageEventsFolder *scriptsFolder;  // The user's Scripts folder
@property (copy, readonly) ImageEventsFolder *sharedDocumentsFolder;  // The Shared Documents folder
@property (copy, readonly) ImageEventsFolder *sitesFolder;  // The user's Sites folder
@property (copy, readonly) ImageEventsFolder *speakableItemsFolder;  // The Speakable Items folder
@property (copy, readonly) ImageEventsDisk *startupDisk;  // the disk from which Mac OS X was loaded
@property (copy, readonly) ImageEventsSystemDomainObject *systemDomain;  // the collection of folders belonging to the System
@property (copy, readonly) ImageEventsFolder *temporaryItemsFolder;  // The Temporary Items folder
@property (copy, readonly) ImageEventsFolder *trash;  // The user's Trash folder
@property (copy, readonly) ImageEventsUserDomainObject *userDomain;  // the collection of folders belonging to the User
@property (copy, readonly) ImageEventsFolder *utilitiesFolder;  // The Utilities folder
@property (copy, readonly) ImageEventsFolder *workflowsFolder;  // The Automator Workflows folder

@end

// An item stored in the file system
@interface ImageEventsDiskItem : SBObject <ImageEventsGenericMethods>

@property (readonly) BOOL busyStatus;  // Is the disk item busy?
@property (copy, readonly) ImageEventsDiskItem *container;  // the folder or disk which has this disk item as an element
@property (copy, readonly) NSDate *creationDate;  // the date on which the disk item was created
@property (copy, readonly) NSString *displayedName;  // the name of the disk item as displayed in the User Interface
- (NSString *) id;  // the unique ID of the disk item
@property (copy) NSDate *modificationDate;  // the date on which the disk item was last modified
@property (copy) NSString *name;  // the name of the disk item
@property (copy, readonly) NSString *nameExtension;  // the extension portion of the name
@property (readonly) BOOL packageFolder;  // Is the disk item a package?
@property (copy, readonly) NSString *path;  // the file system path of the disk item
@property (readonly) NSInteger physicalSize;  // the actual space used by the disk item on disk
@property (copy, readonly) NSString *POSIXPath;  // the POSIX file system path of the disk item
@property (readonly) NSInteger size;  // the logical size of the disk item
@property (copy, readonly) NSString *URL;  // the URL of the disk item
@property BOOL visible;  // Is the disk item visible?
@property (copy, readonly) NSString *volume;  // the volume on which the disk item resides

- (void) delete;  // Delete disk item(s).
- (id) moveTo:(id)to;  // Move disk item(s) to a new location.

@end

// An alias in the file system
@interface ImageEventsAlias : ImageEventsDiskItem

- (SBElementArray<ImageEventsAlias *> *) aliases;
- (SBElementArray<ImageEventsDiskItem *> *) diskItems;
- (SBElementArray<ImageEventsFile *> *) files;
- (SBElementArray<ImageEventsFilePackage *> *) filePackages;
- (SBElementArray<ImageEventsFolder *> *) folders;

@property (copy) id creatorType;  // the OSType identifying the application that created the alias
@property (copy) id defaultApplication;  // the application that will launch if the alias is opened
@property (copy) id fileType;  // the OSType identifying the type of data contained in the alias
@property (copy, readonly) NSString *kind;  // The kind of alias, as shown in Finder
@property (copy, readonly) NSString *productVersion;  // the version of the product (visible at the top of the "Get Info" window)
@property (copy, readonly) NSString *shortVersion;  // the short version of the application bundle referenced by the alias
@property BOOL stationery;  // Is the alias a stationery pad?
@property (copy, readonly) NSString *typeIdentifier;  // The type identifier of the alias
@property (copy, readonly) NSString *version;  // the version of the application bundle referenced by the alias (visible at the bottom of the "Get Info" window)


@end

// A disk in the file system
@interface ImageEventsDisk : ImageEventsDiskItem

- (SBElementArray<ImageEventsAlias *> *) aliases;
- (SBElementArray<ImageEventsDiskItem *> *) diskItems;
- (SBElementArray<ImageEventsFile *> *) files;
- (SBElementArray<ImageEventsFilePackage *> *) filePackages;
- (SBElementArray<ImageEventsFolder *> *) folders;

@property (copy, readonly) NSNumber *capacity;  // the total number of bytes (free or used) on the disk
@property (readonly) BOOL ejectable;  // Can the media be ejected (floppies, CD's, and so on)?
@property (readonly) ImageEventsEdfm format;  // the file system format of this disk
@property (copy, readonly) NSNumber *freeSpace;  // the number of free bytes left on the disk
@property BOOL ignorePrivileges;  // Ignore permissions on this disk?
@property (readonly) BOOL localVolume;  // Is the media a local volume (as opposed to a file server)?
@property (copy, readonly) id server;  // the server on which the disk resides, AFP volumes only
@property (readonly) BOOL startup;  // Is this disk the boot disk?
@property (copy, readonly) id zone;  // the zone in which the disk's server resides, AFP volumes only


@end

// A domain in the file system
@interface ImageEventsDomain : SBObject <ImageEventsGenericMethods>

- (SBElementArray<ImageEventsFolder *> *) folders;

@property (copy, readonly) ImageEventsFolder *applicationSupportFolder;  // The Application Support folder
@property (copy, readonly) ImageEventsFolder *applicationsFolder;  // The Applications folder
@property (copy, readonly) ImageEventsFolder *desktopPicturesFolder;  // The Desktop Pictures folder
@property (copy, readonly) ImageEventsFolder *FolderActionScriptsFolder;  // The Folder Action Scripts folder
@property (copy, readonly) ImageEventsFolder *fontsFolder;  // The Fonts folder
- (NSString *) id;  // the unique identifier of the domain
@property (copy, readonly) ImageEventsFolder *libraryFolder;  // The Library folder
@property (copy, readonly) NSString *name;  // the name of the domain
@property (copy, readonly) ImageEventsFolder *preferencesFolder;  // The Preferences folder
@property (copy, readonly) ImageEventsFolder *scriptingAdditionsFolder;  // The Scripting Additions folder
@property (copy, readonly) ImageEventsFolder *scriptsFolder;  // The Scripts folder
@property (copy, readonly) ImageEventsFolder *sharedDocumentsFolder;  // The Shared Documents folder
@property (copy, readonly) ImageEventsFolder *speakableItemsFolder;  // The Speakable Items folder
@property (copy, readonly) ImageEventsFolder *utilitiesFolder;  // The Utilities folder
@property (copy, readonly) ImageEventsFolder *workflowsFolder;  // The Automator Workflows folder


@end

// The Classic domain in the file system
@interface ImageEventsClassicDomainObject : ImageEventsDomain

- (SBElementArray<ImageEventsFolder *> *) folders;

@property (copy, readonly) ImageEventsFolder *appleMenuFolder;  // The Apple Menu Items folder
@property (copy, readonly) ImageEventsFolder *controlPanelsFolder;  // The Control Panels folder
@property (copy, readonly) ImageEventsFolder *controlStripModulesFolder;  // The Control Strip Modules folder
@property (copy, readonly) ImageEventsFolder *desktopFolder;  // The Classic Desktop folder
@property (copy, readonly) ImageEventsFolder *extensionsFolder;  // The Extensions folder
@property (copy, readonly) ImageEventsFolder *fontsFolder;  // The Fonts folder
@property (copy, readonly) ImageEventsFolder *launcherItemsFolder;  // The Launcher Items folder
@property (copy, readonly) ImageEventsFolder *preferencesFolder;  // The Classic Preferences folder
@property (copy, readonly) ImageEventsFolder *shutdownFolder;  // The Shutdown Items folder
@property (copy, readonly) ImageEventsFolder *startupItemsFolder;  // The StartupItems folder
@property (copy, readonly) ImageEventsFolder *systemFolder;  // The System folder


@end

// A file in the file system
@interface ImageEventsFile : ImageEventsDiskItem

@property (copy) id creatorType;  // the OSType identifying the application that created the file
@property (copy) id defaultApplication;  // the application that will launch if the file is opened
@property (copy) id fileType;  // the OSType identifying the type of data contained in the file
@property (copy, readonly) NSString *kind;  // The kind of file, as shown in Finder
@property (copy, readonly) NSString *productVersion;  // the version of the product (visible at the top of the "Get Info" window)
@property (copy, readonly) NSString *shortVersion;  // the short version of the file
@property BOOL stationery;  // Is the file a stationery pad?
@property (copy, readonly) NSString *typeIdentifier;  // The type identifier of the file
@property (copy, readonly) NSString *version;  // the version of the file (visible at the bottom of the "Get Info" window)

- (id) open;  // Open a document.
- (ImageEventsFile *) open;  // Open disk item(s) with the appropriate application.

@end

// A file package in the file system
@interface ImageEventsFilePackage : ImageEventsFile

- (SBElementArray<ImageEventsAlias *> *) aliases;
- (SBElementArray<ImageEventsDiskItem *> *) diskItems;
- (SBElementArray<ImageEventsFile *> *) files;
- (SBElementArray<ImageEventsFilePackage *> *) filePackages;
- (SBElementArray<ImageEventsFolder *> *) folders;


@end

// A folder in the file system
@interface ImageEventsFolder : ImageEventsDiskItem

- (SBElementArray<ImageEventsAlias *> *) aliases;
- (SBElementArray<ImageEventsDiskItem *> *) diskItems;
- (SBElementArray<ImageEventsFile *> *) files;
- (SBElementArray<ImageEventsFilePackage *> *) filePackages;
- (SBElementArray<ImageEventsFolder *> *) folders;


@end

// The local domain in the file system
@interface ImageEventsLocalDomainObject : ImageEventsDomain

- (SBElementArray<ImageEventsFolder *> *) folders;


@end

// The network domain in the file system
@interface ImageEventsNetworkDomainObject : ImageEventsDomain

- (SBElementArray<ImageEventsFolder *> *) folders;


@end

// The system domain in the file system
@interface ImageEventsSystemDomainObject : ImageEventsDomain

- (SBElementArray<ImageEventsFolder *> *) folders;


@end

// The user domain in the file system
@interface ImageEventsUserDomainObject : ImageEventsDomain

- (SBElementArray<ImageEventsFolder *> *) folders;

@property (copy, readonly) ImageEventsFolder *desktopFolder;  // The user's Desktop folder
@property (copy, readonly) ImageEventsFolder *documentsFolder;  // The user's Documents folder
@property (copy, readonly) ImageEventsFolder *downloadsFolder;  // The user's Downloads folder
@property (copy, readonly) ImageEventsFolder *favoritesFolder;  // The user's Favorites folder
@property (copy, readonly) ImageEventsFolder *homeFolder;  // The user's Home folder
@property (copy, readonly) ImageEventsFolder *moviesFolder;  // The user's Movies folder
@property (copy, readonly) ImageEventsFolder *musicFolder;  // The user's Music folder
@property (copy, readonly) ImageEventsFolder *picturesFolder;  // The user's Pictures folder
@property (copy, readonly) ImageEventsFolder *publicFolder;  // The user's Public folder
@property (copy, readonly) ImageEventsFolder *sitesFolder;  // The user's Sites folder
@property (copy, readonly) ImageEventsFolder *temporaryItemsFolder;  // The Temporary Items folder


@end



/*
 * Image Suite
 */

// A monitor connected to the computer
@interface ImageEventsDisplay : SBObject <ImageEventsGenericMethods>

@property (readonly) NSInteger displayNumber;  // the number of the display
@property (copy, readonly) ImageEventsProfile *displayProfile;  // the profile for the display
@property (copy, readonly) NSString *name;  // the name of the display


@end

// An image contained in a file
@interface ImageEventsImage : SBObject <ImageEventsGenericMethods>

- (SBElementArray<ImageEventsMetadataTag *> *) metadataTags;
- (SBElementArray<ImageEventsProfile *> *) profiles;

@property (readonly) ImageEventsBitz bitDepth;  // bit depth of the image's color representation
@property (readonly) ImageEventsPSpc colorSpace;  // color space of the image's color representation
@property (copy, readonly) NSArray<NSNumber *> *dimensions;  // the width and height of the image, respectively, in pixels
@property (copy, readonly) ImageEventsProfile *embeddedProfile;  // the profile, if any, embedded in the image
@property (copy, readonly) id fileType;  // file type of the image's file
@property (copy, readonly) ImageEventsFile *imageFile;  // the file that contains the image
@property (copy, readonly) ImageEventsDiskItem *location;  // the folder or disk that encloses the file that contains the image
@property (copy, readonly) NSString *name;  // the name of the image
@property (copy, readonly) NSArray<NSNumber *> *resolution;  // the horizontal and vertical pixel density of the image, respectively, in dots per inch


@end

// A metadata tag: EXIF, IPTC, etc.
@interface ImageEventsMetadataTag : SBObject <ImageEventsGenericMethods>

@property (copy, readonly) NSString *name;  // the name of the tag
@property (copy, readonly) id value;  // the current setting of the tag


@end

// A ColorSync ICC profile.
@interface ImageEventsProfile : SBObject <ImageEventsGenericMethods>

@property (readonly) ImageEventsPSpc colorSpace;  // the color space of the profile
@property (readonly) ImageEventsPPCS connectionSpace;  // the connection space of the profile
@property (copy, readonly) NSDate *creationDate;  // the creation date of the profile
@property (copy, readonly) NSString *creator;  // the creator type of the profile
@property (readonly) ImageEventsPCla deviceClass;  // the device class of the profile
@property (copy, readonly) NSString *deviceManufacturer;  // the device manufacturer of the profile
@property (readonly) NSInteger deviceModel;  // the device model of the profile
@property (copy, readonly) id location;  // the file location of the profile
@property (copy, readonly) NSString *name;  // the description text of the profile
@property (copy, readonly) NSString *platform;  // the intended platform of the profile
@property (copy, readonly) NSString *preferredCMM;  // the preferred CMM of the profile
@property (readonly) ImageEventsPQua quality;  // the quality of the profile
@property (readonly) ImageEventsPRdr renderingIntent;  // the rendering intent of the profile
@property (readonly) NSInteger size;  // the size of the profile in bytes
@property (copy, readonly) NSString *version;  // the version number of the profile


@end



/*
 * Image Events Suite
 */

// The Image Events application
@interface ImageEventsApplication (ImageEventsSuite)

- (SBElementArray<ImageEventsDisplay *> *) displays;
- (SBElementArray<ImageEventsImage *> *) images;
- (SBElementArray<ImageEventsProfile *> *) profiles;

@property (copy) ImageEventsProfile *defaultCMYKProfile;  // the default CMYK profile
@property (copy) ImageEventsFile *defaultCMYKProfileLocation;  // the default CMYK profile location
@property (copy) ImageEventsProfile *defaultGrayProfile;  // the default Gray profile
@property (copy) ImageEventsFile *defaultGrayProfileLocation;  // the default Gray profile location
@property (copy) ImageEventsProfile *defaultLabProfile;  // the default Lab profile
@property (copy) ImageEventsFile *defaultLabProfileLocation;  // the default Lab profile location
@property (copy) ImageEventsProfile *defaultRGBProfile;  // the default RGB profile
@property (copy) ImageEventsFile *defaultRGBProfileLocation;  // the default RGB profile location
@property (copy) ImageEventsProfile *defaultXYZProfile;  // the default XYZ profile
@property (copy) ImageEventsFile *defaultXYZProfileLocation;  // the default XYZ profile location
@property (copy) NSString *preferredCMM;  // specifies preferred Color Management Module to use, or "automatic"
@property (copy, readonly) id profileFolder;  // the ColorSync profile folder
@property NSInteger quitDelay;  // the time in seconds the application will idle before quitting; if set to zero, idle time will not cause the application to quit
@property (copy) ImageEventsProfile *systemProfile;  // the default system profile
@property (copy) ImageEventsFile *systemProfileLocation;  // the default system profile location

@end

