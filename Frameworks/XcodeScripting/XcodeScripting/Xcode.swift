import AppKit
import ScriptingBridge

@objc public protocol SBObjectProtocol: NSObjectProtocol {
    func get() -> AnyObject!
}

@objc public protocol SBApplicationProtocol: SBObjectProtocol {
    func activate()
    var delegate: SBApplicationDelegate! { get set }
}

// MARK: XcodeSaveOptions
@objc public enum XcodeSaveOptions : AEKeyword {
    case Yes = 0x79657320 /* 'yes ' */
    case No = 0x6e6f2020 /* 'no  ' */
    case Ask = 0x61736b20 /* 'ask ' */
}

// MARK: XcodePrintingErrorHandling
@objc public enum XcodePrintingErrorHandling : AEKeyword {
    case Standard = 0x6c777374 /* 'lwst' */
    case Detailed = 0x6c776474 /* 'lwdt' */
}

// MARK: XcodePwpa
@objc public enum XcodePwpa : AEKeyword {
    case ExecutablesDirectory = 0x70777065 /* 'pwpe' */
    case Frameworks = 0x70777066 /* 'pwpf' */
    case JavaResources = 0x7077706a /* 'pwpj' */
    case PluginsDirectory = 0x7077706c /* 'pwpl' */
    case ProductsDirectory = 0x70777070 /* 'pwpp' */
    case Resources = 0x70777265 /* 'pwre' */
    case RootVolume = 0x7077706e /* 'pwpn' */
    case SharedFrameworks = 0x70777366 /* 'pwsf' */
    case SharedSupport = 0x70777373 /* 'pwss' */
    case Wrapper = 0x70777072 /* 'pwpr' */
}

// MARK: XcodeBmte
@objc public enum XcodeBmte : AEKeyword {
    case AnalyzerResult = 0x626d7461 /* 'bmta' */
    case Error = 0x626d7465 /* 'bmte' */
    case None = 0x626d746e /* 'bmtn' */
    case Notice = 0x626d746f /* 'bmto' */
    case Warning = 0x626d7477 /* 'bmtw' */
}

// MARK: XcodeLied
@objc public enum XcodeLied : AEKeyword {
    case CR = 0x63726c65 /* 'crle' */
    case CRLF = 0x63726c66 /* 'crlf' */
    case LF = 0x6c666c65 /* 'lfle' */
    case PreserveExisting = 0x70656c65 /* 'pele' */
}

// MARK: XcodeFenc
@objc public enum XcodeFenc : AEKeyword {
    case Iso2022Japanese = 0x69736a70 /* 'isjp' */
    case IsoLatin1 = 0x696c6131 /* 'ila1' */
    case IsoLatin2 = 0x696c6132 /* 'ila2' */
    case JapaneseEUC = 0x6a657563 /* 'jeuc' */
    case MacosRoman = 0x6d6f7372 /* 'mosr' */
    case Nextstep = 0x6e657874 /* 'next' */
    case NonlossyAscii = 0x6e6c6173 /* 'nlas' */
    case ShiftJisString = 0x736a6973 /* 'sjis' */
    case SymbolString = 0x73796d73 /* 'syms' */
    case Unicode = 0x756e6963 /* 'unic' */
    case Utf8 = 0x75746638 /* 'utf8' */
    case WindowsCyrillic = 0x77636f31 /* 'wco1' */
    case WindowsGreek = 0x77637033 /* 'wcp3' */
    case WindowsLatin1 = 0x77637032 /* 'wcp2' */
    case WindowsLatin2 = 0x77637030 /* 'wcp0' */
    case WindowsTurkish = 0x77637034 /* 'wcp4' */
}

// MARK: XcodeReft
@objc public enum XcodeReft : AEKeyword {
    case Absolute = 0x61737274 /* 'asrt' */
    case BuildProductRelative = 0x62707274 /* 'bprt' */
    case CurrentSDKRelative = 0x73647274 /* 'sdrt' */
    case GroupRelative = 0x67727274 /* 'grrt' */
    case Other = 0x6f726674 /* 'orft' */
    case ProjectRelative = 0x70727274 /* 'prrt' */
    case XcodeFolderRelative = 0x78727274 /* 'xrrt' */
}

// MARK: XcodeAsms
@objc public enum XcodeAsms : AEKeyword {
    case HasConflict = 0x73636373 /* 'sccs' */
    case LocallyAdded = 0x736c6173 /* 'slas' */
    case LocallyModified = 0x736c6d73 /* 'slms' */
    case LocallyRemoved = 0x736c7273 /* 'slrs' */
    case NeedsMerge = 0x736e6d73 /* 'snms' */
    case NeedsUpdate = 0x736e6373 /* 'sncs' */
    case Unknown = 0x73637573 /* 'scus' */
    case UpToDate = 0x73756473 /* 'suds' */
}

// MARK: XcodeSaveableFileFormat
@objc public enum XcodeSaveableFileFormat : AEKeyword {
    case Text = 0x63747874 /* 'ctxt' */
}

// MARK: XcodeXdel
@objc public enum XcodeXdel : AEKeyword {
    case CPlusPlus = 0x78646570 /* 'xdep' */
    case Java = 0x7864656a /* 'xdej' */
    case ObjectiveC = 0x7864656f /* 'xdeo' */
}

// MARK: XcodeXdeh
@objc public enum XcodeXdeh : AEKeyword {
    case AlwaysHide = 0x78646561 /* 'xdea' */
    case AlwaysShow = 0x78646573 /* 'xdes' */
    case HidePerFilter = 0x78646566 /* 'xdef' */
}

// MARK: XcodeGenericMethods
@objc public protocol XcodeGenericMethods {
    optional func closeSaving(saving: XcodeSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(in_: NSURL!, `as`: XcodeSaveableFileFormat) // Save a document.
    optional func printPrintDialog(printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func buildStaticAnalysis(staticAnalysis: Bool, transcript: Bool, using using_: XcodeBuildConfigurationType!) -> String // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
    optional func cleanRemovingPrecompiledHeaders(removingPrecompiledHeaders: Bool, transcript: Bool, using using_: XcodeBuildConfigurationType!) -> String // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
    optional func addTo(to: SBObject!) // Adds an existing object to the container specified.
    optional func removeFrom(from: AnyObject!) // Removes the object from the designated container without deleting it.
}

// MARK: XcodeApplication
@objc public protocol XcodeApplication: SBApplicationProtocol {
    optional func documents() -> SBElementArray
    optional func windows() -> SBElementArray
    optional var name: String { get } // The name of the application.
    optional var frontmost: Bool { get } // Is this the active application?
    optional var version: String { get } // The version number of the application.
    optional func open(x: AnyObject!) -> AnyObject // Open a document.
    optional func print(x: AnyObject!, printDialog: Bool) // Print a document.
    optional func quitSaving(saving: XcodeSaveOptions) // Quit the application.
    optional func exists(x: AnyObject!) -> Bool // Verify that an object exists.
    optional func loadDocumentationSetWithPath(x: String!, display: Bool) -> Bool // Load documentation set at supplied path.
    optional func pathForApple_ref(x: String!) -> String // Return path of document containing apple_ref.
    optional func urlstringForDocumentWithUUID(x: String!) -> String // Return URL of document identified by UUID.
    optional func urlstringForDocumentWithApple_ref(x: String!) -> String // Return URL of document identified by apple_ref.
    optional func pathForDocumentWithUUID(x: String!) -> String // Return path of document identified by UUID.
    optional func select(x: AnyObject!) // Sets the selection to the object(s).
    optional func showDocumentWithApple_ref(x: String!) -> Bool // Show document containing supplied apple_ref in the documentation window.
    optional func showDocumentWithUUID(x: String!) -> Bool // Show document identified by supplied UUID in the documentation window.
    optional func upgradeProjectFile(x: NSURL!, `as`: String!) // Upgrade the given project file to the latest project file format. This will open the project if the upgrade succeeds.
    optional func breakpoints() -> SBElementArray
    optional func dataModelDocuments() -> SBElementArray
    optional func fileBreakpoints() -> SBElementArray
    optional func fileDocuments() -> SBElementArray
    optional func projects() -> SBElementArray
    optional func projectTemplates() -> SBElementArray
    optional func sourceDocuments() -> SBElementArray
    optional func symbolicBreakpoints() -> SBElementArray
    optional func workspaceDocuments() -> SBElementArray
    optional var activeWorkspaceDocument: XcodeWorkspaceDocument { get } // The active workspace document in Xcode.
    optional func setActiveWorkspaceDocument(activeWorkspaceDocument: XcodeWorkspaceDocument!) // The active workspace document in Xcode.
}
extension SBApplication: XcodeApplication {}

// MARK: XcodeDocument
@objc public protocol XcodeDocument: SBObjectProtocol, XcodeGenericMethods {
    optional var name: String { get } // Its name.
    optional var modified: Bool { get } // Has it been modified since the last save?
    optional var file: NSURL { get } // Its location on disk, if it has one.
    optional var path: String { get } // The document's path.
    optional func setPath(path: String!) // The document's path.
}
extension SBObject: XcodeDocument {}

// MARK: XcodeWindow
@objc public protocol XcodeWindow: SBObjectProtocol, XcodeGenericMethods {
    optional var name: String { get } // The title of the window.
    optional func id() -> Int // The unique identifier of the window.
    optional var index: Int { get } // The index of the window, ordered front to back.
    optional var bounds: NSRect { get } // The bounding rectangle of the window.
    optional var closeable: Bool { get } // Does the window have a close button?
    optional var miniaturizable: Bool { get } // Does the window have a minimize button?
    optional var miniaturized: Bool { get } // Is the window minimized right now?
    optional var resizable: Bool { get } // Can the window be resized?
    optional var visible: Bool { get } // Is the window visible right now?
    optional var zoomable: Bool { get } // Does the window have a zoom button?
    optional var zoomed: Bool { get } // Is the window zoomed right now?
    optional var document: XcodeDocument { get } // The document whose contents are displayed in the window.
    optional func setIndex(index: Int) // The index of the window, ordered front to back.
    optional func setBounds(bounds: NSRect) // The bounding rectangle of the window.
    optional func setMiniaturized(miniaturized: Bool) // Is the window minimized right now?
    optional func setVisible(visible: Bool) // Is the window visible right now?
    optional func setZoomed(zoomed: Bool) // Is the window zoomed right now?
}
extension SBObject: XcodeWindow {}

// MARK: XcodeRichText
@objc public protocol XcodeRichText: SBObjectProtocol, XcodeGenericMethods {
    optional func characters() -> SBElementArray
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get } // The color of the text's first character.
    optional var font: String { get } // The name of the font of the text's first character.
    optional var size: Int { get } // The size in points of the text's first character.
    optional func setColor(color: NSColor!) // The color of the text's first character.
    optional func setFont(font: String!) // The name of the font of the text's first character.
    optional func setSize(size: Int) // The size in points of the text's first character.
    optional func richText() -> SBElementArray
    optional func insertionPoints() -> SBElementArray
}
extension SBObject: XcodeRichText {}

// MARK: XcodeCharacter
@objc public protocol XcodeCharacter: SBObjectProtocol, XcodeGenericMethods {
    optional func characters() -> SBElementArray
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get } // Its color.
    optional var font: String { get } // The name of its font.
    optional var size: Int { get } // Its size, in points.
    optional func setColor(color: NSColor!) // Its color.
    optional func setFont(font: String!) // The name of its font.
    optional func setSize(size: Int) // Its size, in points.
    optional func richText() -> SBElementArray
    optional func insertionPoints() -> SBElementArray
}
extension SBObject: XcodeCharacter {}

// MARK: XcodeParagraph
@objc public protocol XcodeParagraph: SBObjectProtocol, XcodeGenericMethods {
    optional func characters() -> SBElementArray
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get } // The color of the paragraph's first character.
    optional var font: String { get } // The name of the font of the paragraph's first character.
    optional var size: Int { get } // The size in points of the paragraph's first character.
    optional func setColor(color: NSColor!) // The color of the paragraph's first character.
    optional func setFont(font: String!) // The name of the font of the paragraph's first character.
    optional func setSize(size: Int) // The size in points of the paragraph's first character.
    optional func richText() -> SBElementArray
    optional func insertionPoints() -> SBElementArray
}
extension SBObject: XcodeParagraph {}

// MARK: XcodeWord
@objc public protocol XcodeWord: SBObjectProtocol, XcodeGenericMethods {
    optional func characters() -> SBElementArray
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get } // The color of the word's first character.
    optional var font: String { get } // The name of the font of the word's first character.
    optional var size: Int { get } // The size in points of the word's first character.
    optional func setColor(color: NSColor!) // The color of the word's first character.
    optional func setFont(font: String!) // The name of the font of the word's first character.
    optional func setSize(size: Int) // The size in points of the word's first character.
    optional func richText() -> SBElementArray
    optional func insertionPoints() -> SBElementArray
}
extension SBObject: XcodeWord {}

// MARK: XcodeAttributeRun
@objc public protocol XcodeAttributeRun: SBObjectProtocol, XcodeGenericMethods {
    optional func characters() -> SBElementArray
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get } // Its color.
    optional var font: String { get } // The name of its font.
    optional var size: Int { get } // Its size, in points.
    optional func setColor(color: NSColor!) // Its color.
    optional func setFont(font: String!) // The name of its font.
    optional func setSize(size: Int) // Its size, in points.
    optional func richText() -> SBElementArray
    optional func insertionPoints() -> SBElementArray
}
extension SBObject: XcodeAttributeRun {}

// MARK: XcodeAttachment
@objc public protocol XcodeAttachment: XcodeRichText {
    optional var fileName: String { get } // The path to the embedded file.
    optional func setFileName(fileName: String!) // The path to the embedded file.
}
extension SBObject: XcodeAttachment {}

// MARK: XcodeInputPath
@objc public protocol XcodeInputPath: SBObjectProtocol, XcodeGenericMethods {
    optional var path: String { get } // The path of the input file.
    optional var runScriptPhase: XcodeRunScriptPhase { get } // The run script phase that contains this input path.
    optional func setPath(path: String!) // The path of the input file.
}
extension SBObject: XcodeInputPath {}

// MARK: XcodeOutputPath
@objc public protocol XcodeOutputPath: SBObjectProtocol, XcodeGenericMethods {
    optional var path: String { get } // The path of the output file.
    optional var runScriptPhase: XcodeRunScriptPhase { get } // The run script phase that contains this output path.
    optional func setPath(path: String!) // The path of the output file.
}
extension SBObject: XcodeOutputPath {}

// MARK: XcodeBuildConfigurationType
@objc public protocol XcodeBuildConfigurationType: SBObjectProtocol, XcodeGenericMethods {
    optional func id() -> String // The unique identifier for the build configuration type.
    optional var name: String { get } // The name of this build configuration type.
    optional func setName(name: String!) // The name of this build configuration type.
}
extension SBObject: XcodeBuildConfigurationType {}

// MARK: XcodeBuildMessage
@objc public protocol XcodeBuildMessage: SBObjectProtocol, XcodeGenericMethods {
    optional var buildFile: XcodeBuildFile { get } // The build file that contains this build message
    optional var kind: XcodeBmte { get } // Indicates the kind of build message.
    optional var location: Int { get } // The line number in the file that the build message corresponds to.
    optional var message: String { get } // The text of the build message.
    optional var path: String { get } // The absolute path to the file that the build message is referencing.
    optional func setBuildFile(buildFile: XcodeBuildFile!) // The build file that contains this build message
    optional func setKind(kind: XcodeBmte) // Indicates the kind of build message.
    optional func setLocation(location: Int) // The line number in the file that the build message corresponds to.
    optional func setMessage(message: String!) // The text of the build message.
    optional func setPath(path: String!) // The absolute path to the file that the build message is referencing.
}
extension SBObject: XcodeBuildMessage {}

// MARK: XcodeContainer
@objc public protocol XcodeContainer: SBObjectProtocol, XcodeGenericMethods {
    optional var fullPath: String { get } // The full path to the project file on disk.
    optional var name: String { get } // The name of this project.
    optional var path: String { get } // The path to the project file on disk.
    optional var readOnly: Bool { get } // Is the project only open for reading?
    optional var realPath: String { get } // The fully resolved path to the project file on disk. Specifically, all symlinks in the path have been resolved.
    optional var rootGroup: XcodeGroup { get } // The root of the files & groups hierarchy in the project.
}
extension SBObject: XcodeContainer {}

// MARK: XcodeContainerItem
@objc public protocol XcodeContainerItem: SBObjectProtocol, XcodeGenericMethods {
    optional func id() -> String // The unique identifier for the project item.
    optional var comments: String { get } // Comments about this project item.
    optional var container: XcodeContainer { get } // The container for this item.
    optional var project: XcodeProject { get } // The project that contains this item.
    optional func setComments(comments: String!) // Comments about this project item.
}
extension SBObject: XcodeContainerItem {}

// MARK: XcodeProject
@objc public protocol XcodeProject: XcodeContainer {
    optional func buildConfigurations() -> SBElementArray
    optional func buildConfigurationTypes() -> SBElementArray
    optional func fileReferences() -> SBElementArray
    optional func groups() -> SBElementArray
    optional func itemReferences() -> SBElementArray
    optional func schemes() -> SBElementArray
    optional func targets() -> SBElementArray
    optional func Xcode3Groups() -> SBElementArray
    optional func Xcode3FileReferences() -> SBElementArray
    optional var defaultBuildConfigurationType: XcodeBuildConfigurationType { get } // The default build configuration type used when building with xcodebuild if no -configuration option is supplied.
    optional func id() -> String // The unique identifier for the project.
    optional var organizationName: String { get } // The name to use in the header file of new files created with project templates.  Defaults to Apple Inc.
    optional var projectDirectory: String { get } // The full path to the folder that contains the project file.
    optional var projectFileReference: XcodeFileReference { get } // A file reference to the core project.pbxproj file itself.
    optional var userFileReference: XcodeFileReference { get } // A file reference to the current user's pbxuser file.
    optional func setDefaultBuildConfigurationType(defaultBuildConfigurationType: XcodeBuildConfigurationType!) // The default build configuration type used when building with xcodebuild if no -configuration option is supplied.
    optional func setOrganizationName(organizationName: String!) // The name to use in the header file of new files created with project templates.  Defaults to Apple Inc.
}
extension SBObject: XcodeProject {}

// MARK: XcodeProjectItem
@objc public protocol XcodeProjectItem: XcodeContainerItem {
    optional func id() -> String // The unique identifier for the project item.
    optional func moveTo(to: SBObject!) // Moves an existing object to the container specified.
}
extension SBObject: XcodeProjectItem {}

// MARK: XcodeBuildPhase
@objc public protocol XcodeBuildPhase: XcodeProjectItem {
    optional func buildFiles() -> SBElementArray
    optional var name: String { get } // The name of this build phase.
    optional var target: XcodeTarget { get } // The target that contains this build phase.
}
extension SBObject: XcodeBuildPhase {}

// MARK: XcodeBuildJavaResourcesPhase
@objc public protocol XcodeBuildJavaResourcesPhase: XcodeBuildPhase {
}
extension SBObject: XcodeBuildJavaResourcesPhase {}

// MARK: XcodeBuildResourceManagerResourcesPhase
@objc public protocol XcodeBuildResourceManagerResourcesPhase: XcodeBuildPhase {
}
extension SBObject: XcodeBuildResourceManagerResourcesPhase {}

// MARK: XcodeCompileApplescriptsPhase
@objc public protocol XcodeCompileApplescriptsPhase: XcodeBuildPhase {
}
extension SBObject: XcodeCompileApplescriptsPhase {}

// MARK: XcodeCompileSourcesPhase
@objc public protocol XcodeCompileSourcesPhase: XcodeBuildPhase {
}
extension SBObject: XcodeCompileSourcesPhase {}

// MARK: XcodeCopyBundleResourcesPhase
@objc public protocol XcodeCopyBundleResourcesPhase: XcodeBuildPhase {
}
extension SBObject: XcodeCopyBundleResourcesPhase {}

// MARK: XcodeCopyFilesPhase
@objc public protocol XcodeCopyFilesPhase: XcodeBuildPhase {
    optional var destinationDirectory: XcodePwpa { get } // The base location to copy items relative to. If "root volume" is chosen then "path" is an absolute path. Otherwise "path" is relative to the base location.
    optional var path: String { get } // The path relative to the destination to copy items to
    optional var runOnlyWhenInstalling: Bool { get } // Indicates if the build phase should only be run when performing an install build.
    optional func setDestinationDirectory(destinationDirectory: XcodePwpa) // The base location to copy items relative to. If "root volume" is chosen then "path" is an absolute path. Otherwise "path" is relative to the base location.
    optional func setPath(path: String!) // The path relative to the destination to copy items to
    optional func setRunOnlyWhenInstalling(runOnlyWhenInstalling: Bool) // Indicates if the build phase should only be run when performing an install build.
}
extension SBObject: XcodeCopyFilesPhase {}

// MARK: XcodeCopyHeadersPhase
@objc public protocol XcodeCopyHeadersPhase: XcodeBuildPhase {
}
extension SBObject: XcodeCopyHeadersPhase {}

// MARK: XcodeLinkBinaryWithLibrariesPhase
@objc public protocol XcodeLinkBinaryWithLibrariesPhase: XcodeBuildPhase {
}
extension SBObject: XcodeLinkBinaryWithLibrariesPhase {}

// MARK: XcodeRunScriptPhase
@objc public protocol XcodeRunScriptPhase: XcodeBuildPhase {
    optional func inputPaths() -> SBElementArray
    optional func outputPaths() -> SBElementArray
    optional var runOnlyWhenInstalling: Bool { get } // Indicates if the build phase should only be run when performing an install build.
    optional var shellPath: String { get } // The absolute path to the shell used by the shell script.
    optional var shellScript: String { get } // The actual shell script to run during this build phase.
    optional var showEnvironmentVariables: Bool { get } // Indicates if shell environment variables should be output to the build log.
    optional func setRunOnlyWhenInstalling(runOnlyWhenInstalling: Bool) // Indicates if the build phase should only be run when performing an install build.
    optional func setShellPath(shellPath: String!) // The absolute path to the shell used by the shell script.
    optional func setShellScript(shellScript: String!) // The actual shell script to run during this build phase.
    optional func setShowEnvironmentVariables(showEnvironmentVariables: Bool) // Indicates if shell environment variables should be output to the build log.
}
extension SBObject: XcodeRunScriptPhase {}

// MARK: XcodeBreakpoint
@objc public protocol XcodeBreakpoint: XcodeProjectItem {
    optional var automaticallyContinue: Bool { get } // Should the debugger automatically continue when it hits this breakpoint after performing any associated breakpoint actions?
    optional var condition: String { get } // Condition in which breakpoint should stop.
    optional var enabled: Bool { get } // Is the breakpoint enabled?
    optional var name: String { get } // The name of this breakpoint.
    optional func setAutomaticallyContinue(automaticallyContinue: Bool) // Should the debugger automatically continue when it hits this breakpoint after performing any associated breakpoint actions?
    optional func setCondition(condition: String!) // Condition in which breakpoint should stop.
    optional func setEnabled(enabled: Bool) // Is the breakpoint enabled?
}
extension SBObject: XcodeBreakpoint {}

// MARK: XcodeBuildConfiguration
@objc public protocol XcodeBuildConfiguration: XcodeProjectItem {
    optional func baseBuildSettings() -> SBElementArray
    optional func buildSettings() -> SBElementArray
    optional func flattenedBuildSettings() -> SBElementArray
    optional var buildConfigurationType: XcodeBuildConfigurationType { get } // The associated build configuration type.
    optional var configurationSettingsFile: XcodeFileReference { get } // The optional configuration settings file this configuration is based on. May be 'missing value'.
    optional var name: String { get } // The name of the associated build configuration type.
    optional func setConfigurationSettingsFile(configurationSettingsFile: XcodeFileReference!) // The optional configuration settings file this configuration is based on. May be 'missing value'.
}
extension SBObject: XcodeBuildConfiguration {}

// MARK: XcodeBuildFile
@objc public protocol XcodeBuildFile: XcodeProjectItem {
    optional func buildMessages() -> SBElementArray
    optional var buildPhase: XcodeBuildPhase { get } // The build phase that this build file is contained by.
    optional var compiledCodeSize: Int { get } // The size of the object file generated when compiling the associated file.
    optional var fileReference: XcodeFileReference { get } // A file reference to the file on disk that this build file represents.
    optional var name: String { get } // The name of this build file.
    optional var target: XcodeTarget { get } // The target that contains this build file.
}
extension SBObject: XcodeBuildFile {}

// MARK: XcodeFileBreakpoint
@objc public protocol XcodeFileBreakpoint: XcodeBreakpoint {
    optional var fileReference: XcodeFileReference { get } // A reference to the file that contains the breakpoint.
    optional var lineNumber: Int { get } // The line number the breakpoint is set on.
    optional func setFileReference(fileReference: XcodeFileReference!) // A reference to the file that contains the breakpoint.
    optional func setLineNumber(lineNumber: Int) // The line number the breakpoint is set on.
}
extension SBObject: XcodeFileBreakpoint {}

// MARK: XcodeProjectTemplate
@objc public protocol XcodeProjectTemplate: SBObjectProtocol, XcodeGenericMethods {
    optional var name: String { get } // The name for the project template.
    optional var objectDescription: String { get } // A description of the project template.
}
extension SBObject: XcodeProjectTemplate {}

// MARK: XcodeScheme
@objc public protocol XcodeScheme: XcodeContainerItem {
}
extension SBObject: XcodeScheme {}

// MARK: XcodeSymbolicBreakpoint
@objc public protocol XcodeSymbolicBreakpoint: XcodeBreakpoint {
    optional var symbolName: String { get } // The name of the symbol that the breakpoint stops at.
    optional func setSymbolName(symbolName: String!) // The name of the symbol that the breakpoint stops at.
}
extension SBObject: XcodeSymbolicBreakpoint {}

// MARK: XcodeItemReference
@objc public protocol XcodeItemReference: XcodeContainerItem {
    optional var buildProductsRelativePath: String { get } // The path to the item referenced relative to the build products folder.
    optional var contents: [AnyObject] { get } // A list of the immediate contents of this reference.
    optional var entireContents: [AnyObject] { get } // A list of the contents of this reference, including the entire contents of its children.
    optional var fileEncoding: XcodeFenc { get } // The file encoding used to display the contents of any text files referenced by this item. In the case of a group or folder reference, this encoding is used for the items contained by this item.
    optional var fullPath: String { get } // The full path to the item referenced.
    optional var group: XcodeGroup { get } // The group that this reference is contained in.
    optional var indentWidth: Int { get } // The number of spaces to indent wrapped lines in the referenced item. In the case of a group or folder reference, this indent width is used for any contained items.
    optional var leaf: Bool { get } // Indicates if this reference cannot contain other references.
    optional var lineEnding: XcodeLied { get } // The style of line endings to use for the referenced item. In the case of a group or folder reference, this style is used for any contained items.
    optional var localized: Bool { get } // Indicates if this reference refers to a localized item.
    optional var name: String { get } // The name of this item reference.
    optional var path: String { get } // Returns the path to the item referenced. The format of this path depends on the path type.
    optional var pathType: XcodeReft { get } // Specifies how the reference tries to locate the item it refers to. Xcode does not provide full scripting support to user-defined source trees, and will report such reference types as "other".
    optional var projectRelativePath: String { get } // The project relative path to the item referenced.
    optional var realPath: String { get } // The fully resolved path to the item referenced. Specifically, all symlinks in the path have been resolved.
    optional var tabWidth: Int { get } // The number of spaces to use for a tab for the referenced item. In the case of a group or folder reference, this value is used for any contained items.
    optional var usesTabs: Bool { get } // Indicates if tabs characters should be used instead of spaces when entering tabs. In the case of a group or folder reference, this value is used for any contained items.
    optional func setFileEncoding(fileEncoding: XcodeFenc) // The file encoding used to display the contents of any text files referenced by this item. In the case of a group or folder reference, this encoding is used for the items contained by this item.
    optional func setIndentWidth(indentWidth: Int) // The number of spaces to indent wrapped lines in the referenced item. In the case of a group or folder reference, this indent width is used for any contained items.
    optional func setLineEnding(lineEnding: XcodeLied) // The style of line endings to use for the referenced item. In the case of a group or folder reference, this style is used for any contained items.
    optional func setName(name: String!) // The name of this item reference.
    optional func setPathType(pathType: XcodeReft) // Specifies how the reference tries to locate the item it refers to. Xcode does not provide full scripting support to user-defined source trees, and will report such reference types as "other".
    optional func setTabWidth(tabWidth: Int) // The number of spaces to use for a tab for the referenced item. In the case of a group or folder reference, this value is used for any contained items.
    optional func setUsesTabs(usesTabs: Bool) // Indicates if tabs characters should be used instead of spaces when entering tabs. In the case of a group or folder reference, this value is used for any contained items.
}
extension SBObject: XcodeItemReference {}

// MARK: XcodeFileReference
@objc public protocol XcodeFileReference: XcodeItemReference {
    optional var fileKind: String { get } // The identifier for the file type used when referencing the file.
    optional var headRevisionNumber: String { get } // The current SCM head revision for the referenced file. If the file is on a branch this is the top of the branch, not the top of the tree.
    optional var revisionNumber: String { get } // The current SCM revision for the referenced file.
    optional var status: XcodeAsms { get } // The current SCM status for the referenced file.
    optional var tag: String { get } // The current SCM tag for the referenced file.
}
extension SBObject: XcodeFileReference {}

// MARK: XcodeGroup
@objc public protocol XcodeGroup: XcodeItemReference {
    optional func fileReferences() -> SBElementArray
    optional func groups() -> SBElementArray
    optional func itemReferences() -> SBElementArray
}
extension SBObject: XcodeGroup {}

// MARK: XcodeXcode3FileReference
@objc public protocol XcodeXcode3FileReference: XcodeFileReference {
    optional func Xcode3FileReferences() -> SBElementArray
    optional var path: String { get } // Returns the path to the item referenced. The format of this path depends on the path type.
    optional var pathType: XcodeReft { get } // Specifies how the reference tries to locate the item it refers to. Xcode does not provide full scripting support to user-defined source trees, and will report such reference types as "other".
    optional func setPath(path: String!) // Returns the path to the item referenced. The format of this path depends on the path type.
    optional func setPathType(pathType: XcodeReft) // Specifies how the reference tries to locate the item it refers to. Xcode does not provide full scripting support to user-defined source trees, and will report such reference types as "other".
}
extension SBObject: XcodeXcode3FileReference {}

// MARK: XcodeXcode3Group
@objc public protocol XcodeXcode3Group: XcodeGroup {
    optional func Xcode3FileReferences() -> SBElementArray
    optional func Xcode3Groups() -> SBElementArray
    optional var path: String { get } // Returns the path to the item referenced. The format of this path depends on the path type.
    optional var pathType: XcodeReft { get } // Specifies how the reference tries to locate the item it refers to. Xcode does not provide full scripting support to user-defined source trees, and will report such reference types as "other".
    optional func setPath(path: String!) // Returns the path to the item referenced. The format of this path depends on the path type.
    optional func setPathType(pathType: XcodeReft) // Specifies how the reference tries to locate the item it refers to. Xcode does not provide full scripting support to user-defined source trees, and will report such reference types as "other".
}
extension SBObject: XcodeXcode3Group {}

// MARK: XcodeBuildSetting
@objc public protocol XcodeBuildSetting: SBObjectProtocol, XcodeGenericMethods {
    optional var container: XcodeProjectItem { get } // The build configuration that contains this build setting.
    optional var name: String { get } // The unlocalized build setting name (e.g. DSTROOT).
    optional var value: String { get } // A string value for the build setting.
    optional func setName(name: String!) // The unlocalized build setting name (e.g. DSTROOT).
    optional func setValue(value: String!) // A string value for the build setting.
}
extension SBObject: XcodeBuildSetting {}

// MARK: XcodeBaseBuildSetting
@objc public protocol XcodeBaseBuildSetting: XcodeBuildSetting {
}
extension SBObject: XcodeBaseBuildSetting {}

// MARK: XcodeFlattenedBuildSetting
@objc public protocol XcodeFlattenedBuildSetting: XcodeBuildSetting {
}
extension SBObject: XcodeFlattenedBuildSetting {}

// MARK: XcodeTarget
@objc public protocol XcodeTarget: XcodeProjectItem {
    optional func buildConfigurations() -> SBElementArray
    optional func buildFiles() -> SBElementArray
    optional func buildPhases() -> SBElementArray
    optional func compileApplescriptsPhases() -> SBElementArray
    optional func copyFilesPhases() -> SBElementArray
    optional func runScriptPhases() -> SBElementArray
    optional func targetDependencies() -> SBElementArray
    optional var buildJavaResourcesPhase: XcodeBuildJavaResourcesPhase { get } // The "Build Java Resources" build phase for this target if it exists.
    optional var buildResourceManagerResourcesPhase: XcodeBuildResourceManagerResourcesPhase { get } // The "Build Resource Manager Resources" build phase for this target if it exists.
    optional var compileSourcesPhase: XcodeCompileSourcesPhase { get } // The "Compile Sources" build phase for this target if it exists.
    optional var copyBundleResourcesPhase: XcodeCopyBundleResourcesPhase { get } // The "Copy Bundle Resources" build phase for this target if it exists.
    optional var copyHeadersPhase: XcodeCopyHeadersPhase { get } // The "Copy Headers" build phase for this target if it exists.
    optional var linkBinaryWithLibrariesPhase: XcodeLinkBinaryWithLibrariesPhase { get } // The "Link Binary with Libraries" build phase for this target if it exists.
    optional var name: String { get } // The name of this target.
    optional var native: Bool { get } // Does this target use the native build system?
    optional var productReference: XcodeFileReference { get } // An item reference to the generated product on disk.
    optional var targetType: String { get } // The type of target. Usually this is related to the type of product the target produces.
    optional func setName(name: String!) // The name of this target.
}
extension SBObject: XcodeTarget {}

// MARK: XcodeTargetDependency
@objc public protocol XcodeTargetDependency: XcodeProjectItem {
    optional var target: XcodeTarget { get } // The target that the containing target depends on.
}
extension SBObject: XcodeTargetDependency {}

// MARK: XcodeInsertionPoint
@objc public protocol XcodeInsertionPoint: SBObjectProtocol, XcodeGenericMethods {
    optional var contents: String { get } // The contents at the insertion point.
    optional func setContents(contents: String!) // The contents at the insertion point.
}
extension SBObject: XcodeInsertionPoint {}

// MARK: XcodeFileDocument
@objc public protocol XcodeFileDocument: XcodeDocument {
}
extension SBObject: XcodeFileDocument {}

// MARK: XcodeTextDocument
@objc public protocol XcodeTextDocument: XcodeFileDocument {
    optional var contents: String { get } // The contents of the text file.
    optional var notifiesWhenClosing: Bool { get } // Should Xcode notify other apps when this document is closed?
    optional var selectedCharacterRange: [AnyObject] { get } // The first and last character positions in the selection.
    optional var selectedParagraphRange: [AnyObject] { get } // The first and last paragraph positions that contain the selection.
    optional var selection: SBObject { get } // The current selection in the text document.
    optional var text: String { get } // The text of the text file referenced.
    optional func setContents(contents: String!) // The contents of the text file.
    optional func setNotifiesWhenClosing(notifiesWhenClosing: Bool) // Should Xcode notify other apps when this document is closed?
    optional func setSelectedCharacterRange(selectedCharacterRange: [AnyObject]!) // The first and last character positions in the selection.
    optional func setSelectedParagraphRange(selectedParagraphRange: [AnyObject]!) // The first and last paragraph positions that contain the selection.
    optional func setSelection(selection: SBObject!) // The current selection in the text document.
    optional func setText(text: String!) // The text of the text file referenced.
}
extension SBObject: XcodeTextDocument {}

// MARK: XcodeSourceDocument
@objc public protocol XcodeSourceDocument: XcodeTextDocument {
    optional var editorSettings: [NSObject : AnyObject] { get } // A record of source editor settings and values.
    optional func setEditorSettings(editorSettings: [NSObject : AnyObject]!) // A record of source editor settings and values.
}
extension SBObject: XcodeSourceDocument {}

// MARK: XcodeWorkspaceDocument
@objc public protocol XcodeWorkspaceDocument: XcodeDocument {
    optional func breakpoints() -> SBElementArray
    optional func buildMessages() -> SBElementArray
    optional func fileBreakpoints() -> SBElementArray
    optional func fileReferences() -> SBElementArray
    optional func groups() -> SBElementArray
    optional func itemReferences() -> SBElementArray
    optional func projects() -> SBElementArray
    optional func schemes() -> SBElementArray
    optional func symbolicBreakpoints() -> SBElementArray
    optional func Xcode3Groups() -> SBElementArray
    optional func Xcode3FileReferences() -> SBElementArray
    optional var breakpointsEnabled: Bool { get } // Are breakpoints enabled in this workspace?
    optional var intermediatesDirectory: String { get } // The full path to the folder that contains all intermediate files for the project.
    optional var productDirectory: String { get } // The full path to the folder that contains any built products.
    optional func setBreakpointsEnabled(breakpointsEnabled: Bool) // Are breakpoints enabled in this workspace?
    optional func setIntermediatesDirectory(intermediatesDirectory: String!) // The full path to the folder that contains all intermediate files for the project.
    optional func setProductDirectory(productDirectory: String!) // The full path to the folder that contains any built products.
}
extension SBObject: XcodeWorkspaceDocument {}

// MARK: XcodeAttribute
@objc public protocol XcodeAttribute: SBObjectProtocol, XcodeGenericMethods {
    optional var attributeType: String { get } // The CoreData type of the attribute
    optional var defaultValue: String { get } // Default value of the attribute
    optional var name: String { get } // Attribute name
    optional var optional: Bool { get } // Is the attribute optional?
    optional var transient: Bool { get } // Is the attribute transient?
    optional var userInfo: [NSObject : AnyObject] { get } // User info dictionary for the attribute
    optional func setName(name: String!) // Attribute name
    optional func setOptional(`optional`: Bool) // Is the attribute optional?
    optional func setTransient(transient: Bool) // Is the attribute transient?
    optional func setUserInfo(userInfo: [NSObject : AnyObject]!) // User info dictionary for the attribute
}
extension SBObject: XcodeAttribute {}

// MARK: XcodeDataModelDocument
@objc public protocol XcodeDataModelDocument: XcodeFileDocument {
    optional func entities() -> SBElementArray
    optional var name: String { get } // The name of the document
}
extension SBObject: XcodeDataModelDocument {}

// MARK: XcodeEntity
@objc public protocol XcodeEntity: SBObjectProtocol, XcodeGenericMethods {
    optional func attributes() -> SBElementArray
    optional func fetchRequests() -> SBElementArray
    optional func fetchedProperties() -> SBElementArray
    optional func relationships() -> SBElementArray
    optional var abstract: Bool { get } // Is the entity abstract?
    optional var name: String { get } // Name of the entity
    optional var objectClass: String { get } // The Objective C class of the object backing this entity
    optional var parent: XcodeEntity { get } // Parent from which the entity inherits
    optional var userInfo: [NSObject : AnyObject] { get } // User info dictionary for the entity
    optional func setAbstract(abstract: Bool) // Is the entity abstract?
    optional func setName(name: String!) // Name of the entity
    optional func setObjectClass(objectClass: String!) // The Objective C class of the object backing this entity
    optional func setUserInfo(userInfo: [NSObject : AnyObject]!) // User info dictionary for the entity
}
extension SBObject: XcodeEntity {}

// MARK: XcodeFetchRequest
@objc public protocol XcodeFetchRequest: SBObjectProtocol, XcodeGenericMethods {
    optional var name: String { get } // Fetch Request name
    optional var predicate: String { get } // Text form of the predicate for the Fetch Request
    optional func setName(name: String!) // Fetch Request name
    optional func setPredicate(predicate: String!) // Text form of the predicate for the Fetch Request
}
extension SBObject: XcodeFetchRequest {}

// MARK: XcodeFetchedProperty
@objc public protocol XcodeFetchedProperty: SBObjectProtocol, XcodeGenericMethods {
    optional var destination: XcodeEntity { get } // The destination entity of the fetched property
    optional var name: String { get } // Fetched Property attribute name
    optional var optional: Bool { get } // Is the attribute optional?
    optional var predicate: String { get } // Text form of the predicate that selects the property
    optional var transient: Bool { get } // Is the attribute transient?
    optional var userInfo: [NSObject : AnyObject] { get } // User info dictionary for the attribute
    optional func setDestination(destination: XcodeEntity!) // The destination entity of the fetched property
    optional func setName(name: String!) // Fetched Property attribute name
    optional func setOptional(`optional`: Bool) // Is the attribute optional?
    optional func setPredicate(predicate: String!) // Text form of the predicate that selects the property
    optional func setTransient(transient: Bool) // Is the attribute transient?
    optional func setUserInfo(userInfo: [NSObject : AnyObject]!) // User info dictionary for the attribute
}
extension SBObject: XcodeFetchedProperty {}

// MARK: XcodeRelationship
@objc public protocol XcodeRelationship: SBObjectProtocol, XcodeGenericMethods {
    optional var destinationEntity: XcodeEntity { get } // The other entity related to this one.
    optional var inverseRelationship: XcodeRelationship { get } // The relationship that the related element has to this one.
    optional var maximumCount: Int { get } // Maximum number of related data objects
    optional var minimumCount: Int { get } // Minimum number of related data objects
    optional var name: String { get } // Name of the relationship
    optional var optional: Bool { get } // Is the relationship optional?
    optional var toMany: Bool { get } // Is the relationship a “to-many” relationship?
    optional var transient: Bool { get } // Is the relationship transient?
    optional var userInfo: [NSObject : AnyObject] { get } // User information dictionary for the relationship
    optional func setDestinationEntity(destinationEntity: XcodeEntity!) // The other entity related to this one.
    optional func setInverseRelationship(inverseRelationship: XcodeRelationship!) // The relationship that the related element has to this one.
    optional func setMaximumCount(maximumCount: Int) // Maximum number of related data objects
    optional func setMinimumCount(minimumCount: Int) // Minimum number of related data objects
    optional func setName(name: String!) // Name of the relationship
    optional func setOptional(`optional`: Bool) // Is the relationship optional?
    optional func setToMany(toMany: Bool) // Is the relationship a “to-many” relationship?
    optional func setTransient(transient: Bool) // Is the relationship transient?
    optional func setUserInfo(userInfo: [NSObject : AnyObject]!) // User information dictionary for the relationship
}
extension SBObject: XcodeRelationship {}

