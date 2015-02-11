/*
 * Xcode.h
 */

#import <AppKit/AppKit.h>
#import <ScriptingBridge/ScriptingBridge.h>


@class XcodeApplication, XcodeDocument, XcodeWindow, XcodeRichText, XcodeCharacter, XcodeParagraph, XcodeWord, XcodeAttributeRun, XcodeAttachment, XcodeInputPath, XcodeOutputPath, XcodeBuildConfigurationType, XcodeBuildMessage, XcodeContainer, XcodeContainerItem, XcodeProject, XcodeProjectItem, XcodeBuildPhase, XcodeBuildJavaResourcesPhase, XcodeBuildResourceManagerResourcesPhase, XcodeCompileApplescriptsPhase, XcodeCompileSourcesPhase, XcodeCopyBundleResourcesPhase, XcodeCopyFilesPhase, XcodeCopyHeadersPhase, XcodeLinkBinaryWithLibrariesPhase, XcodeRunScriptPhase, XcodeBreakpoint, XcodeBuildConfiguration, XcodeBuildFile, XcodeFileBreakpoint, XcodeProjectTemplate, XcodeScheme, XcodeSymbolicBreakpoint, XcodeItemReference, XcodeFileReference, XcodeGroup, XcodeXcode3FileReference, XcodeXcode3Group, XcodeBuildSetting, XcodeBaseBuildSetting, XcodeFlattenedBuildSetting, XcodeTarget, XcodeTargetDependency, XcodeInsertionPoint, XcodeFileDocument, XcodeTextDocument, XcodeSourceDocument, XcodeWorkspaceDocument, XcodeAttribute, XcodeDataModelDocument, XcodeEntity, XcodeFetchRequest, XcodeFetchedProperty, XcodeRelationship, XcodePrintSettings, XcodeBuildStyle, XcodeEnvironmentVariable, XcodeLaunchArgument, XcodeSourceDirectory, XcodeBlueprintDocument, XcodeBookmark, XcodeCodeClass, XcodeExecutable, XcodeModelDocument, XcodeClassModelDocument, XcodeOperation, XcodeProjectDocument, XcodeScmRevision, XcodeTargetTemplate, XcodeTextBookmark, XcodeVariable;

enum XcodeSaveOptions {
	XcodeSaveOptionsYes = 'yes ' /* Save the file. */,
	XcodeSaveOptionsNo = 'no  ' /* Do not save the file. */,
	XcodeSaveOptionsAsk = 'ask ' /* Ask the user whether or not to save the file. */
};
typedef enum XcodeSaveOptions XcodeSaveOptions;

enum XcodePrintingErrorHandling {
	XcodePrintingErrorHandlingStandard = 'lwst' /* Standard PostScript error handling */,
	XcodePrintingErrorHandlingDetailed = 'lwdt' /* print a detailed report of PostScript errors */
};
typedef enum XcodePrintingErrorHandling XcodePrintingErrorHandling;

enum XcodePwpa {
	XcodePwpaExecutablesDirectory = 'pwpe',
	XcodePwpaFrameworks = 'pwpf',
	XcodePwpaJavaResources = 'pwpj',
	XcodePwpaPluginsDirectory = 'pwpl',
	XcodePwpaProductsDirectory = 'pwpp',
	XcodePwpaResources = 'pwre',
	XcodePwpaRootVolume = 'pwpn',
	XcodePwpaSharedFrameworks = 'pwsf',
	XcodePwpaSharedSupport = 'pwss',
	XcodePwpaWrapper = 'pwpr'
};
typedef enum XcodePwpa XcodePwpa;

enum XcodeBmte {
	XcodeBmteAnalyzerResult = 'bmta',
	XcodeBmteError = 'bmte',
	XcodeBmteNone = 'bmtn',
	XcodeBmteNotice = 'bmto',
	XcodeBmteWarning = 'bmtw'
};
typedef enum XcodeBmte XcodeBmte;

enum XcodeLied {
	XcodeLiedCR = 'crle',
	XcodeLiedCRLF = 'crlf',
	XcodeLiedLF = 'lfle',
	XcodeLiedPreserveExisting = 'pele'
};
typedef enum XcodeLied XcodeLied;

enum XcodeFenc {
	XcodeFencIso2022Japanese = 'isjp',
	XcodeFencIsoLatin1 = 'ila1',
	XcodeFencIsoLatin2 = 'ila2',
	XcodeFencJapaneseEUC = 'jeuc',
	XcodeFencMacosRoman = 'mosr',
	XcodeFencNextstep = 'next',
	XcodeFencNonlossyAscii = 'nlas',
	XcodeFencShiftJisString = 'sjis',
	XcodeFencSymbolString = 'syms',
	XcodeFencUnicode = 'unic',
	XcodeFencUtf8 = 'utf8',
	XcodeFencWindowsCyrillic = 'wco1',
	XcodeFencWindowsGreek = 'wcp3',
	XcodeFencWindowsLatin1 = 'wcp2',
	XcodeFencWindowsLatin2 = 'wcp0',
	XcodeFencWindowsTurkish = 'wcp4'
};
typedef enum XcodeFenc XcodeFenc;

enum XcodeReft {
	XcodeReftAbsolute = 'asrt',
	XcodeReftBuildProductRelative = 'bprt',
	XcodeReftCurrentSDKRelative = 'sdrt',
	XcodeReftGroupRelative = 'grrt',
	XcodeReftOther = 'orft',
	XcodeReftProjectRelative = 'prrt',
	XcodeReftXcodeFolderRelative = 'xrrt'
};
typedef enum XcodeReft XcodeReft;

enum XcodeAsms {
	XcodeAsmsHasConflict = 'sccs',
	XcodeAsmsLocallyAdded = 'slas',
	XcodeAsmsLocallyModified = 'slms',
	XcodeAsmsLocallyRemoved = 'slrs',
	XcodeAsmsNeedsMerge = 'snms',
	XcodeAsmsNeedsUpdate = 'sncs',
	XcodeAsmsUnknown = 'scus',
	XcodeAsmsUpToDate = 'suds'
};
typedef enum XcodeAsms XcodeAsms;

enum XcodeSaveableFileFormat {
	XcodeSaveableFileFormatText = 'ctxt' /* Text File Format */
};
typedef enum XcodeSaveableFileFormat XcodeSaveableFileFormat;

enum XcodeXdel {
	XcodeXdelCPlusPlus = 'xdep',
	XcodeXdelJava = 'xdej',
	XcodeXdelObjectiveC = 'xdeo'
};
typedef enum XcodeXdel XcodeXdel;

enum XcodeXdeh {
	XcodeXdehAlwaysHide = 'xdea',
	XcodeXdehAlwaysShow = 'xdes',
	XcodeXdehHidePerFilter = 'xdef'
};
typedef enum XcodeXdeh XcodeXdeh;



/*
 * Standard Suite
 */

// The application's top-level scripting object.
@interface XcodeApplication : SBApplication

- (SBElementArray *) documents;
- (SBElementArray *) windows;

@property (copy, readonly) NSString *name;  // The name of the application.
@property (readonly) BOOL frontmost;  // Is this the active application?
@property (copy, readonly) NSString *version;  // The version number of the application.

- (id) open:(id)x;  // Open a document.
- (void) print:(id)x printDialog:(BOOL)printDialog;  // Print a document.
- (void) quitSaving:(XcodeSaveOptions)saving;  // Quit the application.
- (BOOL) exists:(id)x;  // Verify that an object exists.
- (BOOL) loadDocumentationSetWithPath:(NSString *)x display:(BOOL)display;  // Load documentation set at supplied path.
- (NSString *) pathForApple_ref:(NSString *)x;  // Return path of document containing apple_ref.
- (NSString *) urlstringForDocumentWithUUID:(NSString *)x;  // Return URL of document identified by UUID.
- (NSString *) urlstringForDocumentWithApple_ref:(NSString *)x;  // Return URL of document identified by apple_ref.
- (NSString *) pathForDocumentWithUUID:(NSString *)x;  // Return path of document identified by UUID.
- (void) select:(id)x;  // Sets the selection to the object(s).
- (BOOL) showDocumentWithApple_ref:(NSString *)x;  // Show document containing supplied apple_ref in the documentation window.
- (BOOL) showDocumentWithUUID:(NSString *)x;  // Show document identified by supplied UUID in the documentation window.
- (void) upgradeProjectFile:(NSURL *)x as:(NSString *)as;  // Upgrade the given project file to the latest project file format. This will open the project if the upgrade succeeds.

@end

// A document.
@interface XcodeDocument : SBObject

@property (copy, readonly) NSString *name;  // Its name.
@property (readonly) BOOL modified;  // Has it been modified since the last save?
@property (copy, readonly) NSURL *file;  // Its location on disk, if it has one.

- (void) closeSaving:(XcodeSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(XcodeSaveableFileFormat)as;  // Save a document.
- (void) printPrintDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (NSString *) buildStaticAnalysis:(BOOL)staticAnalysis transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
- (NSString *) cleanRemovingPrecompiledHeaders:(BOOL)removingPrecompiledHeaders transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
- (void) addTo:(SBObject *)to;  // Adds an existing object to the container specified.
- (void) removeFrom:(id)from;  // Removes the object from the designated container without deleting it.

@end

// A window.
@interface XcodeWindow : SBObject

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
@property (copy, readonly) XcodeDocument *document;  // The document whose contents are displayed in the window.

- (void) closeSaving:(XcodeSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(XcodeSaveableFileFormat)as;  // Save a document.
- (void) printPrintDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (NSString *) buildStaticAnalysis:(BOOL)staticAnalysis transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
- (NSString *) cleanRemovingPrecompiledHeaders:(BOOL)removingPrecompiledHeaders transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
- (void) addTo:(SBObject *)to;  // Adds an existing object to the container specified.
- (void) removeFrom:(id)from;  // Removes the object from the designated container without deleting it.

@end



/*
 * Text Suite
 */

// Rich (styled) text.
@interface XcodeRichText : SBObject

- (SBElementArray *) characters;
- (SBElementArray *) paragraphs;
- (SBElementArray *) words;
- (SBElementArray *) attributeRuns;
- (SBElementArray *) attachments;

@property (copy) NSColor *color;  // The color of the text's first character.
@property (copy) NSString *font;  // The name of the font of the text's first character.
@property NSInteger size;  // The size in points of the text's first character.

- (void) closeSaving:(XcodeSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(XcodeSaveableFileFormat)as;  // Save a document.
- (void) printPrintDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (NSString *) buildStaticAnalysis:(BOOL)staticAnalysis transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
- (NSString *) cleanRemovingPrecompiledHeaders:(BOOL)removingPrecompiledHeaders transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
- (void) addTo:(SBObject *)to;  // Adds an existing object to the container specified.
- (void) removeFrom:(id)from;  // Removes the object from the designated container without deleting it.

@end

// One of some text's characters.
@interface XcodeCharacter : SBObject

- (SBElementArray *) characters;
- (SBElementArray *) paragraphs;
- (SBElementArray *) words;
- (SBElementArray *) attributeRuns;
- (SBElementArray *) attachments;

@property (copy) NSColor *color;  // Its color.
@property (copy) NSString *font;  // The name of its font.
@property NSInteger size;  // Its size, in points.

- (void) closeSaving:(XcodeSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(XcodeSaveableFileFormat)as;  // Save a document.
- (void) printPrintDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (NSString *) buildStaticAnalysis:(BOOL)staticAnalysis transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
- (NSString *) cleanRemovingPrecompiledHeaders:(BOOL)removingPrecompiledHeaders transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
- (void) addTo:(SBObject *)to;  // Adds an existing object to the container specified.
- (void) removeFrom:(id)from;  // Removes the object from the designated container without deleting it.

@end

// One of some text's paragraphs.
@interface XcodeParagraph : SBObject

- (SBElementArray *) characters;
- (SBElementArray *) paragraphs;
- (SBElementArray *) words;
- (SBElementArray *) attributeRuns;
- (SBElementArray *) attachments;

@property (copy) NSColor *color;  // The color of the paragraph's first character.
@property (copy) NSString *font;  // The name of the font of the paragraph's first character.
@property NSInteger size;  // The size in points of the paragraph's first character.

- (void) closeSaving:(XcodeSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(XcodeSaveableFileFormat)as;  // Save a document.
- (void) printPrintDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (NSString *) buildStaticAnalysis:(BOOL)staticAnalysis transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
- (NSString *) cleanRemovingPrecompiledHeaders:(BOOL)removingPrecompiledHeaders transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
- (void) addTo:(SBObject *)to;  // Adds an existing object to the container specified.
- (void) removeFrom:(id)from;  // Removes the object from the designated container without deleting it.

@end

// One of some text's words.
@interface XcodeWord : SBObject

- (SBElementArray *) characters;
- (SBElementArray *) paragraphs;
- (SBElementArray *) words;
- (SBElementArray *) attributeRuns;
- (SBElementArray *) attachments;

@property (copy) NSColor *color;  // The color of the word's first character.
@property (copy) NSString *font;  // The name of the font of the word's first character.
@property NSInteger size;  // The size in points of the word's first character.

- (void) closeSaving:(XcodeSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(XcodeSaveableFileFormat)as;  // Save a document.
- (void) printPrintDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (NSString *) buildStaticAnalysis:(BOOL)staticAnalysis transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
- (NSString *) cleanRemovingPrecompiledHeaders:(BOOL)removingPrecompiledHeaders transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
- (void) addTo:(SBObject *)to;  // Adds an existing object to the container specified.
- (void) removeFrom:(id)from;  // Removes the object from the designated container without deleting it.

@end

// A chunk of text that all has the same attributes.
@interface XcodeAttributeRun : SBObject

- (SBElementArray *) characters;
- (SBElementArray *) paragraphs;
- (SBElementArray *) words;
- (SBElementArray *) attributeRuns;
- (SBElementArray *) attachments;

@property (copy) NSColor *color;  // Its color.
@property (copy) NSString *font;  // The name of its font.
@property NSInteger size;  // Its size, in points.

- (void) closeSaving:(XcodeSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(XcodeSaveableFileFormat)as;  // Save a document.
- (void) printPrintDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (NSString *) buildStaticAnalysis:(BOOL)staticAnalysis transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
- (NSString *) cleanRemovingPrecompiledHeaders:(BOOL)removingPrecompiledHeaders transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
- (void) addTo:(SBObject *)to;  // Adds an existing object to the container specified.
- (void) removeFrom:(id)from;  // Removes the object from the designated container without deleting it.

@end

// A file embedded in text. This is just for use when embedding a file using the make command.
@interface XcodeAttachment : XcodeRichText

@property (copy) NSString *fileName;  // The path to the embedded file.


@end



/*
 * Xcode Build Phase Suite
 */

// An object that represents a input path that is used by a run script phase.
@interface XcodeInputPath : SBObject

@property (copy) NSString *path;  // The path of the input file.
@property (copy, readonly) XcodeRunScriptPhase *runScriptPhase;  // The run script phase that contains this input path.

- (void) closeSaving:(XcodeSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(XcodeSaveableFileFormat)as;  // Save a document.
- (void) printPrintDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (NSString *) buildStaticAnalysis:(BOOL)staticAnalysis transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
- (NSString *) cleanRemovingPrecompiledHeaders:(BOOL)removingPrecompiledHeaders transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
- (void) addTo:(SBObject *)to;  // Adds an existing object to the container specified.
- (void) removeFrom:(id)from;  // Removes the object from the designated container without deleting it.

@end

// An object that represents a output path that is used by a run script phase.
@interface XcodeOutputPath : SBObject

@property (copy) NSString *path;  // The path of the output file.
@property (copy, readonly) XcodeRunScriptPhase *runScriptPhase;  // The run script phase that contains this output path.

- (void) closeSaving:(XcodeSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(XcodeSaveableFileFormat)as;  // Save a document.
- (void) printPrintDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (NSString *) buildStaticAnalysis:(BOOL)staticAnalysis transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
- (NSString *) cleanRemovingPrecompiledHeaders:(BOOL)removingPrecompiledHeaders transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
- (void) addTo:(SBObject *)to;  // Adds an existing object to the container specified.
- (void) removeFrom:(id)from;  // Removes the object from the designated container without deleting it.

@end



/*
 * Xcode Project Suite
 */

// A type of build configuration available for a project and all its targets. Build configuration types can only be created by duplicating an existing build configuration type.
@interface XcodeBuildConfigurationType : SBObject

- (NSString *) id;  // The unique identifier for the build configuration type.
@property (copy) NSString *name;  // The name of this build configuration type.

- (void) closeSaving:(XcodeSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(XcodeSaveableFileFormat)as;  // Save a document.
- (void) printPrintDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (NSString *) buildStaticAnalysis:(BOOL)staticAnalysis transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
- (NSString *) cleanRemovingPrecompiledHeaders:(BOOL)removingPrecompiledHeaders transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
- (void) addTo:(SBObject *)to;  // Adds an existing object to the container specified.
- (void) removeFrom:(id)from;  // Removes the object from the designated container without deleting it.

@end

// A message generated during a build that usually points to a warning or error in the associated build file.
@interface XcodeBuildMessage : SBObject

@property (copy) XcodeBuildFile *buildFile;  // The build file that contains this build message
@property XcodeBmte kind;  // Indicates the kind of build message.
@property NSInteger location;  // The line number in the file that the build message corresponds to.
@property (copy) NSString *message;  // The text of the build message.
@property (copy) NSString *path;  // The absolute path to the file that the build message is referencing.

- (void) closeSaving:(XcodeSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(XcodeSaveableFileFormat)as;  // Save a document.
- (void) printPrintDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (NSString *) buildStaticAnalysis:(BOOL)staticAnalysis transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
- (NSString *) cleanRemovingPrecompiledHeaders:(BOOL)removingPrecompiledHeaders transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
- (void) addTo:(SBObject *)to;  // Adds an existing object to the container specified.
- (void) removeFrom:(id)from;  // Removes the object from the designated container without deleting it.

@end

// The abstract class for any container.
@interface XcodeContainer : SBObject

@property (copy, readonly) NSString *fullPath;  // The full path to the project file on disk.
@property (copy, readonly) NSString *name;  // The name of this project.
@property (copy, readonly) NSString *path;  // The path to the project file on disk.
@property (readonly) BOOL readOnly;  // Is the project only open for reading?
@property (copy, readonly) NSString *realPath;  // The fully resolved path to the project file on disk. Specifically, all symlinks in the path have been resolved.
@property (copy, readonly) XcodeGroup *rootGroup;  // The root of the files & groups hierarchy in the project.

- (void) closeSaving:(XcodeSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(XcodeSaveableFileFormat)as;  // Save a document.
- (void) printPrintDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (NSString *) buildStaticAnalysis:(BOOL)staticAnalysis transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
- (NSString *) cleanRemovingPrecompiledHeaders:(BOOL)removingPrecompiledHeaders transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
- (void) addTo:(SBObject *)to;  // Adds an existing object to the container specified.
- (void) removeFrom:(id)from;  // Removes the object from the designated container without deleting it.

@end

// The abstract class for any item in a container, one of which is a project.
@interface XcodeContainerItem : SBObject

- (NSString *) id;  // The unique identifier for the project item.
@property (copy) NSString *comments;  // Comments about this project item.
@property (copy, readonly) XcodeContainer *container;  // The container for this item.
@property (copy, readonly) XcodeProject *project;  // The project that contains this item.

- (void) closeSaving:(XcodeSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(XcodeSaveableFileFormat)as;  // Save a document.
- (void) printPrintDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (NSString *) buildStaticAnalysis:(BOOL)staticAnalysis transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
- (NSString *) cleanRemovingPrecompiledHeaders:(BOOL)removingPrecompiledHeaders transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
- (void) addTo:(SBObject *)to;  // Adds an existing object to the container specified.
- (void) removeFrom:(id)from;  // Removes the object from the designated container without deleting it.

@end

// The model for an Xcode project. Note that the item references, file references, and groups elements are read-only. Changing the contents of these element relationships is unsupported.
@interface XcodeProject : XcodeContainer

- (SBElementArray *) buildConfigurations;
- (SBElementArray *) buildConfigurationTypes;
- (SBElementArray *) fileReferences;
- (SBElementArray *) groups;
- (SBElementArray *) itemReferences;
- (SBElementArray *) schemes;
- (SBElementArray *) targets;
- (SBElementArray *) Xcode3Groups;
- (SBElementArray *) Xcode3FileReferences;

@property (copy) XcodeBuildConfigurationType *defaultBuildConfigurationType;  // The default build configuration type used when building with xcodebuild if no -configuration option is supplied.
- (NSString *) id;  // The unique identifier for the project.
@property (copy) NSString *organizationName;  // The name to use in the header file of new files created with project templates.  Defaults to Apple Inc.
@property (copy, readonly) NSString *projectDirectory;  // The full path to the folder that contains the project file.
@property (copy, readonly) XcodeFileReference *projectFileReference;  // A file reference to the core project.pbxproj file itself.
@property (copy, readonly) XcodeFileReference *userFileReference;  // A file reference to the current user's pbxuser file.


@end

// The abstract class for any item in a project.
@interface XcodeProjectItem : XcodeContainerItem

- (NSString *) id;  // The unique identifier for the project item.

- (void) moveTo:(SBObject *)to;  // Moves an existing object to the container specified.

@end



/*
 * Xcode Build Phase Suite
 */

// A build phase represents a stage in the build of a target.  Each build phase contains a set of build files and information about how to process those files.
@interface XcodeBuildPhase : XcodeProjectItem

- (SBElementArray *) buildFiles;

@property (copy, readonly) NSString *name;  // The name of this build phase.
@property (copy, readonly) XcodeTarget *target;  // The target that contains this build phase.


@end

// A build phase that archives its contained items into a class hierarchy or archive file (.jar or .zip file).
@interface XcodeBuildJavaResourcesPhase : XcodeBuildPhase


@end

// A build file that rezzes any contained .r files into a .rsrc file.
@interface XcodeBuildResourceManagerResourcesPhase : XcodeBuildPhase


@end

// A build phase that compiles the applescripts that it contains.
@interface XcodeCompileApplescriptsPhase : XcodeBuildPhase


@end

// A build phase that compiles its contained files into the target's binary.
@interface XcodeCompileSourcesPhase : XcodeBuildPhase


@end

// A build phase that copies its contained items into the Resources directory of the target's wrapped product. Localized files are copied into the proper sub-directory of Resources.
@interface XcodeCopyBundleResourcesPhase : XcodeBuildPhase


@end

// A build phase that copies its contained items to a location on disk. 
@interface XcodeCopyFilesPhase : XcodeBuildPhase

@property XcodePwpa destinationDirectory;  // The base location to copy items relative to. If "root volume" is chosen then "path" is an absolute path. Otherwise "path" is relative to the base location.
@property (copy) NSString *path;  // The path relative to the destination to copy items to
@property BOOL runOnlyWhenInstalling;  // Indicates if the build phase should only be run when performing an install build.


@end

// A build phase that copies its contained items into the proper locations for public and private headers.
@interface XcodeCopyHeadersPhase : XcodeBuildPhase


@end

// A build phase that links its contained items into the binary produced by the containing target.
@interface XcodeLinkBinaryWithLibrariesPhase : XcodeBuildPhase


@end

@interface XcodeRunScriptPhase : XcodeBuildPhase

- (SBElementArray *) inputPaths;
- (SBElementArray *) outputPaths;

@property BOOL runOnlyWhenInstalling;  // Indicates if the build phase should only be run when performing an install build.
@property (copy) NSString *shellPath;  // The absolute path to the shell used by the shell script.
@property (copy) NSString *shellScript;  // The actual shell script to run during this build phase.
@property BOOL showEnvironmentVariables;  // Indicates if shell environment variables should be output to the build log.


@end



/*
 * Xcode Project Suite
 */

// An abstract class that represents a generic breakpoint that is used by the debugger to stop execution in a program. If you want to create breakpoints, use file breakpoints or symbolic breakpoints.
@interface XcodeBreakpoint : XcodeProjectItem

@property BOOL automaticallyContinue;  // Should the debugger automatically continue when it hits this breakpoint after performing any associated breakpoint actions?
@property (copy) NSString *condition;  // Condition in which breakpoint should stop.
@property BOOL enabled;  // Is the breakpoint enabled?
@property (copy, readonly) NSString *name;  // The name of this breakpoint.


@end

// A set of build settings for a target or project. Each target and project has one build configuration for each build configuration type in the project. New build configurations are created automatically when a new build configuration type is created.
@interface XcodeBuildConfiguration : XcodeProjectItem

- (SBElementArray *) baseBuildSettings;
- (SBElementArray *) buildSettings;
- (SBElementArray *) flattenedBuildSettings;

@property (copy, readonly) XcodeBuildConfigurationType *buildConfigurationType;  // The associated build configuration type.
@property (copy) XcodeFileReference *configurationSettingsFile;  // The optional configuration settings file this configuration is based on. May be 'missing value'.
@property (copy, readonly) NSString *name;  // The name of the associated build configuration type.


@end

// A "build file" represents an association between a target and a file reference and tracks any target-specific settings for that file reference.
@interface XcodeBuildFile : XcodeProjectItem

- (SBElementArray *) buildMessages;

@property (copy, readonly) XcodeBuildPhase *buildPhase;  // The build phase that this build file is contained by.
@property (readonly) NSInteger compiledCodeSize;  // The size of the object file generated when compiling the associated file.
@property (copy, readonly) XcodeFileReference *fileReference;  // A file reference to the file on disk that this build file represents.
@property (copy, readonly) NSString *name;  // The name of this build file.
@property (copy, readonly) XcodeTarget *target;  // The target that contains this build file.


@end

// A breakpoint that is defined by a file name:line location.
@interface XcodeFileBreakpoint : XcodeBreakpoint

@property (copy) XcodeFileReference *fileReference;  // A reference to the file that contains the breakpoint.
@property NSInteger lineNumber;  // The line number the breakpoint is set on.


@end

// A set of files and options from which to form a project.
@interface XcodeProjectTemplate : SBObject

@property (copy, readonly) NSString *name;  // The name for the project template.
@property (copy, readonly) NSString *objectDescription;  // A description of the project template.

- (void) closeSaving:(XcodeSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(XcodeSaveableFileFormat)as;  // Save a document.
- (void) printPrintDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (NSString *) buildStaticAnalysis:(BOOL)staticAnalysis transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
- (NSString *) cleanRemovingPrecompiledHeaders:(BOOL)removingPrecompiledHeaders transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
- (void) addTo:(SBObject *)to;  // Adds an existing object to the container specified.
- (void) removeFrom:(id)from;  // Removes the object from the designated container without deleting it.

@end

// A set of parameters for building, testing, launching or distributing the products of a workspace
@interface XcodeScheme : XcodeContainerItem



@end

// A breakpoint that is defined using a symbol name.
@interface XcodeSymbolicBreakpoint : XcodeBreakpoint

@property (copy) NSString *symbolName;  // The name of the symbol that the breakpoint stops at.


@end



/*
 * Xcode Reference Suite
 */

// This class represents references to files and folders on disk and to groups in the project model. The item reference does not contain the referred-to item itself; rather, it contains enough information to let it locate the referred-to item when needed.
@interface XcodeItemReference : XcodeContainerItem

@property (copy, readonly) NSString *buildProductsRelativePath;  // The path to the item referenced relative to the build products folder.
@property (copy, readonly) NSArray *contents;  // A list of the immediate contents of this reference.
@property (copy, readonly) NSArray *entireContents;  // A list of the contents of this reference, including the entire contents of its children.
@property XcodeFenc fileEncoding;  // The file encoding used to display the contents of any text files referenced by this item. In the case of a group or folder reference, this encoding is used for the items contained by this item.
@property (copy, readonly) NSString *fullPath;  // The full path to the item referenced.
@property (copy, readonly) XcodeGroup *group;  // The group that this reference is contained in.
@property NSInteger indentWidth;  // The number of spaces to indent wrapped lines in the referenced item. In the case of a group or folder reference, this indent width is used for any contained items.
@property (readonly) BOOL leaf;  // Indicates if this reference cannot contain other references.
@property XcodeLied lineEnding;  // The style of line endings to use for the referenced item. In the case of a group or folder reference, this style is used for any contained items.
@property (readonly) BOOL localized;  // Indicates if this reference refers to a localized item.
@property (copy) NSString *name;  // The name of this item reference.
@property (copy, readonly) NSString *path;  // Returns the path to the item referenced. The format of this path depends on the path type.
@property XcodeReft pathType;  // Specifies how the reference tries to locate the item it refers to. Xcode does not provide full scripting support to user-defined source trees, and will report such reference types as "other".
@property (copy, readonly) NSString *projectRelativePath;  // The project relative path to the item referenced.
@property (copy, readonly) NSString *realPath;  // The fully resolved path to the item referenced. Specifically, all symlinks in the path have been resolved.
@property NSInteger tabWidth;  // The number of spaces to use for a tab for the referenced item. In the case of a group or folder reference, this value is used for any contained items.
@property BOOL usesTabs;  // Indicates if tabs characters should be used instead of spaces when entering tabs. In the case of a group or folder reference, this value is used for any contained items.


@end

@interface XcodeFileReference : XcodeItemReference

@property (copy, readonly) NSString *fileKind;  // The identifier for the file type used when referencing the file.
@property (copy, readonly) NSString *headRevisionNumber;  // The current SCM head revision for the referenced file. If the file is on a branch this is the top of the branch, not the top of the tree.
@property (copy, readonly) NSString *revisionNumber;  // The current SCM revision for the referenced file.
@property (readonly) XcodeAsms status;  // The current SCM status for the referenced file.
@property (copy, readonly) NSString *tag;  // The current SCM tag for the referenced file.


@end

// A group is a container of references in a project's group hierarchy.  A group does not represent a specific file or path on disk, but is internal to the project's structure.
@interface XcodeGroup : XcodeItemReference

- (SBElementArray *) fileReferences;
- (SBElementArray *) groups;
- (SBElementArray *) itemReferences;


@end

@interface XcodeXcode3FileReference : XcodeFileReference

- (SBElementArray *) Xcode3FileReferences;

@property (copy) NSString *path;  // Returns the path to the item referenced. The format of this path depends on the path type.
@property XcodeReft pathType;  // Specifies how the reference tries to locate the item it refers to. Xcode does not provide full scripting support to user-defined source trees, and will report such reference types as "other".


@end

// A group is a container of references in a project's group hierarchy.  A group does not represent a specific file or path on disk, but is internal to the project's structure.
@interface XcodeXcode3Group : XcodeGroup

- (SBElementArray *) Xcode3FileReferences;
- (SBElementArray *) Xcode3Groups;

@property (copy) NSString *path;  // Returns the path to the item referenced. The format of this path depends on the path type.
@property XcodeReft pathType;  // Specifies how the reference tries to locate the item it refers to. Xcode does not provide full scripting support to user-defined source trees, and will report such reference types as "other".


@end



/*
 * Xcode Target Suite
 */

// An object that represents a build setting.
@interface XcodeBuildSetting : SBObject

@property (copy, readonly) XcodeProjectItem *container;  // The build configuration that contains this build setting.
@property (copy) NSString *name;  // The unlocalized build setting name (e.g. DSTROOT).
@property (copy) NSString *value;  // A string value for the build setting.

- (void) closeSaving:(XcodeSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(XcodeSaveableFileFormat)as;  // Save a document.
- (void) printPrintDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (NSString *) buildStaticAnalysis:(BOOL)staticAnalysis transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
- (NSString *) cleanRemovingPrecompiledHeaders:(BOOL)removingPrecompiledHeaders transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
- (void) addTo:(SBObject *)to;  // Adds an existing object to the container specified.
- (void) removeFrom:(id)from;  // Removes the object from the designated container without deleting it.

@end

// An object that represents the value defined for a build setting in the Configuration Settings File.
@interface XcodeBaseBuildSetting : XcodeBuildSetting


@end

// An object that represents the highest precedence value for a build setting.
@interface XcodeFlattenedBuildSetting : XcodeBuildSetting


@end

// A target is a blueprint for building a product. Besides specifying the type of product to build, a target consists of an ordered list of build phases, a record of 'build settings', an Info.plist record (the 'product settings'), a list of build rules, and 
@interface XcodeTarget : XcodeProjectItem

- (SBElementArray *) buildConfigurations;
- (SBElementArray *) buildFiles;
- (SBElementArray *) buildPhases;
- (SBElementArray *) compileApplescriptsPhases;
- (SBElementArray *) copyFilesPhases;
- (SBElementArray *) runScriptPhases;
- (SBElementArray *) targetDependencies;

@property (copy, readonly) XcodeBuildJavaResourcesPhase *buildJavaResourcesPhase;  // The "Build Java Resources" build phase for this target if it exists.
@property (copy, readonly) XcodeBuildResourceManagerResourcesPhase *buildResourceManagerResourcesPhase;  // The "Build Resource Manager Resources" build phase for this target if it exists.
@property (copy, readonly) XcodeCompileSourcesPhase *compileSourcesPhase;  // The "Compile Sources" build phase for this target if it exists.
@property (copy, readonly) XcodeCopyBundleResourcesPhase *copyBundleResourcesPhase;  // The "Copy Bundle Resources" build phase for this target if it exists.
@property (copy, readonly) XcodeCopyHeadersPhase *copyHeadersPhase;  // The "Copy Headers" build phase for this target if it exists.
@property (copy, readonly) XcodeLinkBinaryWithLibrariesPhase *linkBinaryWithLibrariesPhase;  // The "Link Binary with Libraries" build phase for this target if it exists.
@property (copy) NSString *name;  // The name of this target.
@property (readonly) BOOL native;  // Does this target use the native build system?
@property (copy, readonly) XcodeFileReference *productReference;  // An item reference to the generated product on disk.
@property (copy, readonly) NSString *targetType;  // The type of target. Usually this is related to the type of product the target produces.


@end

// A target dependency provides a link between a target and another target upon which the first target depends.
@interface XcodeTargetDependency : XcodeProjectItem

@property (copy, readonly) XcodeTarget *target;  // The target that the containing target depends on.


@end



/*
 * Xcode Application Suite
 */

// The Xcode application.
@interface XcodeApplication (XcodeApplicationSuite)

- (SBElementArray *) breakpoints;
- (SBElementArray *) dataModelDocuments;
- (SBElementArray *) fileBreakpoints;
- (SBElementArray *) fileDocuments;
- (SBElementArray *) projects;
- (SBElementArray *) projectTemplates;
- (SBElementArray *) sourceDocuments;
- (SBElementArray *) symbolicBreakpoints;
- (SBElementArray *) workspaceDocuments;

@property (copy) XcodeWorkspaceDocument *activeWorkspaceDocument;  // The active workspace document in Xcode.

@end

// This subdivides the text into chunks that all have the same attributes.
@interface XcodeAttributeRun (XcodeApplicationSuite)

- (SBElementArray *) richText;
- (SBElementArray *) insertionPoints;

@end

// This subdivides the text into characters.
@interface XcodeCharacter (XcodeApplicationSuite)

- (SBElementArray *) richText;
- (SBElementArray *) insertionPoints;

@end

// The insertion point in a document, which is either empty or has an associated text selection.
@interface XcodeInsertionPoint : SBObject

@property (copy) NSString *contents;  // The contents at the insertion point.

- (void) closeSaving:(XcodeSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(XcodeSaveableFileFormat)as;  // Save a document.
- (void) printPrintDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (NSString *) buildStaticAnalysis:(BOOL)staticAnalysis transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
- (NSString *) cleanRemovingPrecompiledHeaders:(BOOL)removingPrecompiledHeaders transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
- (void) addTo:(SBObject *)to;  // Adds an existing object to the container specified.
- (void) removeFrom:(id)from;  // Removes the object from the designated container without deleting it.

@end

// This subdivides the text into paragraphs.
@interface XcodeParagraph (XcodeApplicationSuite)

- (SBElementArray *) richText;
- (SBElementArray *) insertionPoints;

@end

// An object that represents a block of text.
@interface XcodeRichText (XcodeApplicationSuite)

- (SBElementArray *) richText;
- (SBElementArray *) insertionPoints;

@end

// This subdivides the text into words.
@interface XcodeWord (XcodeApplicationSuite)

- (SBElementArray *) richText;
- (SBElementArray *) insertionPoints;

@end



/*
 * Xcode Document Suite
 */

// An Xcode 3.2 compatible document.
@interface XcodeDocument (XcodeDocumentSuite)

@property (copy) NSString *path;  // The document's path.

@end

// A document that represents a file on disk. It also provides access to the window it appears in.
@interface XcodeFileDocument : XcodeDocument


@end

// A document that represents a text file on disk. It also provides access to the window it appears in.
@interface XcodeTextDocument : XcodeFileDocument


@property (copy) NSString *contents;  // The contents of the text file.
@property BOOL notifiesWhenClosing;  // Should Xcode notify other apps when this document is closed?
@property (copy) NSArray *selectedCharacterRange;  // The first and last character positions in the selection.
@property (copy) NSArray *selectedParagraphRange;  // The first and last paragraph positions that contain the selection.
@property (copy) SBObject *selection;  // The current selection in the text document.
@property (copy) NSString *text;  // The text of the text file referenced.


@end

// A document that represents a source file on disk. It also provides access to the window it appears in.
@interface XcodeSourceDocument : XcodeTextDocument

@property (copy) NSDictionary *editorSettings;  // A record of source editor settings and values.


@end

// A document that represents a workspace on disk. It also provides access to the window it appears in.
@interface XcodeWorkspaceDocument : XcodeDocument

- (SBElementArray *) breakpoints;
- (SBElementArray *) buildMessages;
- (SBElementArray *) fileBreakpoints;
- (SBElementArray *) fileReferences;
- (SBElementArray *) groups;
- (SBElementArray *) itemReferences;
- (SBElementArray *) projects;
- (SBElementArray *) schemes;
- (SBElementArray *) symbolicBreakpoints;
- (SBElementArray *) Xcode3Groups;
- (SBElementArray *) Xcode3FileReferences;

@property BOOL breakpointsEnabled;  // Are breakpoints enabled in this workspace?
@property (copy) NSString *intermediatesDirectory;  // The full path to the folder that contains all intermediate files for the project.
@property (copy) NSString *productDirectory;  // The full path to the folder that contains any built products.


@end



/*
 * Xcode Design Tools Suite
 */

// Data model attributes of the entity
@interface XcodeAttribute : SBObject

@property (copy, readonly) NSString *attributeType;  // The CoreData type of the attribute
@property (copy, readonly) NSString *defaultValue;  // Default value of the attribute
@property (copy) NSString *name;  // Attribute name
@property BOOL optional;  // Is the attribute optional?
@property BOOL transient;  // Is the attribute transient?
@property (copy) NSDictionary *userInfo;  // User info dictionary for the attribute

- (void) closeSaving:(XcodeSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(XcodeSaveableFileFormat)as;  // Save a document.
- (void) printPrintDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (NSString *) buildStaticAnalysis:(BOOL)staticAnalysis transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
- (NSString *) cleanRemovingPrecompiledHeaders:(BOOL)removingPrecompiledHeaders transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
- (void) addTo:(SBObject *)to;  // Adds an existing object to the container specified.
- (void) removeFrom:(id)from;  // Removes the object from the designated container without deleting it.

@end

// Document containing a Data Model for generating Core Data schema
@interface XcodeDataModelDocument : XcodeFileDocument

- (SBElementArray *) entities;

@property (copy, readonly) NSString *name;  // The name of the document


@end

// Entity in a data model
@interface XcodeEntity : SBObject

- (SBElementArray *) attributes;
- (SBElementArray *) fetchRequests;
- (SBElementArray *) fetchedProperties;
- (SBElementArray *) relationships;

@property BOOL abstract;  // Is the entity abstract?
@property (copy) NSString *name;  // Name of the entity
@property (copy) NSString *objectClass;  // The Objective C class of the object backing this entity
@property (copy, readonly) XcodeEntity *parent;  // Parent from which the entity inherits
@property (copy) NSDictionary *userInfo;  // User info dictionary for the entity

- (void) closeSaving:(XcodeSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(XcodeSaveableFileFormat)as;  // Save a document.
- (void) printPrintDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (NSString *) buildStaticAnalysis:(BOOL)staticAnalysis transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
- (NSString *) cleanRemovingPrecompiledHeaders:(BOOL)removingPrecompiledHeaders transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
- (void) addTo:(SBObject *)to;  // Adds an existing object to the container specified.
- (void) removeFrom:(id)from;  // Removes the object from the designated container without deleting it.

@end

// Fetch Requests of the schema associated with this entity
@interface XcodeFetchRequest : SBObject

@property (copy) NSString *name;  // Fetch Request name
@property (copy) NSString *predicate;  // Text form of the predicate for the Fetch Request

- (void) closeSaving:(XcodeSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(XcodeSaveableFileFormat)as;  // Save a document.
- (void) printPrintDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (NSString *) buildStaticAnalysis:(BOOL)staticAnalysis transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
- (NSString *) cleanRemovingPrecompiledHeaders:(BOOL)removingPrecompiledHeaders transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
- (void) addTo:(SBObject *)to;  // Adds an existing object to the container specified.
- (void) removeFrom:(id)from;  // Removes the object from the designated container without deleting it.

@end

// Entity attribute whose value is fetched from the database dynamically
@interface XcodeFetchedProperty : SBObject

@property (copy) XcodeEntity *destination;  // The destination entity of the fetched property
@property (copy) NSString *name;  // Fetched Property attribute name
@property BOOL optional;  // Is the attribute optional?
@property (copy) NSString *predicate;  // Text form of the predicate that selects the property
@property BOOL transient;  // Is the attribute transient?
@property (copy) NSDictionary *userInfo;  // User info dictionary for the attribute

- (void) closeSaving:(XcodeSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(XcodeSaveableFileFormat)as;  // Save a document.
- (void) printPrintDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (NSString *) buildStaticAnalysis:(BOOL)staticAnalysis transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
- (NSString *) cleanRemovingPrecompiledHeaders:(BOOL)removingPrecompiledHeaders transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
- (void) addTo:(SBObject *)to;  // Adds an existing object to the container specified.
- (void) removeFrom:(id)from;  // Removes the object from the designated container without deleting it.

@end

// A relationship from a data model entity to another
@interface XcodeRelationship : SBObject

@property (copy) XcodeEntity *destinationEntity;  // The other entity related to this one.
@property (copy) XcodeRelationship *inverseRelationship;  // The relationship that the related element has to this one.
@property NSInteger maximumCount;  // Maximum number of related data objects
@property NSInteger minimumCount;  // Minimum number of related data objects
@property (copy) NSString *name;  // Name of the relationship
@property BOOL optional;  // Is the relationship optional?
@property BOOL toMany;  // Is the relationship a “to-many” relationship?
@property BOOL transient;  // Is the relationship transient?
@property (copy) NSDictionary *userInfo;  // User information dictionary for the relationship

- (void) closeSaving:(XcodeSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_ as:(XcodeSaveableFileFormat)as;  // Save a document.
- (void) printPrintDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.
- (NSString *) buildStaticAnalysis:(BOOL)staticAnalysis transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
- (NSString *) cleanRemovingPrecompiledHeaders:(BOOL)removingPrecompiledHeaders transcript:(BOOL)transcript using:(XcodeBuildConfigurationType *)using_;  // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
- (void) addTo:(SBObject *)to;  // Adds an existing object to the container specified.
- (void) removeFrom:(id)from;  // Removes the object from the designated container without deleting it.

@end

