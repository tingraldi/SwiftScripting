import AppKit
import ScriptingBridge

@objc public protocol SBObjectProtocol: NSObjectProtocol {
    func get() -> AnyObject!
}

@objc public protocol SBApplicationProtocol: SBObjectProtocol {
    func activate()
    var delegate: SBApplicationDelegate! { get set }
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
    optional var activeWorkspaceDocument: XcodeWorkspaceDocument { get set } // The active workspace document in Xcode.
}
extension SBApplication: XcodeApplication {}

// MARK: XcodeDocument
@objc public protocol XcodeDocument: SBObjectProtocol {
    optional var name: String { get } // Its name.
    optional var modified: Bool { get } // Has it been modified since the last save?
    optional var file: NSURL { get } // Its location on disk, if it has one.
    optional func closeSaving(saving: XcodeSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(`in`: NSURL!, `as`: XcodeSaveableFileFormat) // Save a document.
    optional func printPrintDialog(printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func buildStaticAnalysis(staticAnalysis: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
    optional func cleanRemovingPrecompiledHeaders(removingPrecompiledHeaders: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
    optional func addTo(to: SBObject!) // Adds an existing object to the container specified.
    optional func removeFrom(from: AnyObject!) // Removes the object from the designated container without deleting it.
    optional var path: String { get set } // The document's path.
}
extension SBObject: XcodeDocument {}

// MARK: XcodeWindow
@objc public protocol XcodeWindow: SBObjectProtocol {
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
    optional var document: XcodeDocument { get } // The document whose contents are displayed in the window.
    optional func closeSaving(saving: XcodeSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(`in`: NSURL!, `as`: XcodeSaveableFileFormat) // Save a document.
    optional func printPrintDialog(printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func buildStaticAnalysis(staticAnalysis: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
    optional func cleanRemovingPrecompiledHeaders(removingPrecompiledHeaders: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
    optional func addTo(to: SBObject!) // Adds an existing object to the container specified.
    optional func removeFrom(from: AnyObject!) // Removes the object from the designated container without deleting it.
}
extension SBObject: XcodeWindow {}

// MARK: XcodeRichText
@objc public protocol XcodeRichText: SBObjectProtocol {
    optional func characters() -> SBElementArray
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get set } // The color of the text's first character.
    optional var font: String { get set } // The name of the font of the text's first character.
    optional var size: Int { get set } // The size in points of the text's first character.
    optional func closeSaving(saving: XcodeSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(`in`: NSURL!, `as`: XcodeSaveableFileFormat) // Save a document.
    optional func printPrintDialog(printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func buildStaticAnalysis(staticAnalysis: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
    optional func cleanRemovingPrecompiledHeaders(removingPrecompiledHeaders: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
    optional func addTo(to: SBObject!) // Adds an existing object to the container specified.
    optional func removeFrom(from: AnyObject!) // Removes the object from the designated container without deleting it.
    optional func richText() -> SBElementArray
    optional func insertionPoints() -> SBElementArray
}
extension SBObject: XcodeRichText {}

// MARK: XcodeCharacter
@objc public protocol XcodeCharacter: SBObjectProtocol {
    optional func characters() -> SBElementArray
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get set } // Its color.
    optional var font: String { get set } // The name of its font.
    optional var size: Int { get set } // Its size, in points.
    optional func closeSaving(saving: XcodeSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(`in`: NSURL!, `as`: XcodeSaveableFileFormat) // Save a document.
    optional func printPrintDialog(printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func buildStaticAnalysis(staticAnalysis: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
    optional func cleanRemovingPrecompiledHeaders(removingPrecompiledHeaders: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
    optional func addTo(to: SBObject!) // Adds an existing object to the container specified.
    optional func removeFrom(from: AnyObject!) // Removes the object from the designated container without deleting it.
    optional func richText() -> SBElementArray
    optional func insertionPoints() -> SBElementArray
}
extension SBObject: XcodeCharacter {}

// MARK: XcodeParagraph
@objc public protocol XcodeParagraph: SBObjectProtocol {
    optional func characters() -> SBElementArray
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get set } // The color of the paragraph's first character.
    optional var font: String { get set } // The name of the font of the paragraph's first character.
    optional var size: Int { get set } // The size in points of the paragraph's first character.
    optional func closeSaving(saving: XcodeSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(`in`: NSURL!, `as`: XcodeSaveableFileFormat) // Save a document.
    optional func printPrintDialog(printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func buildStaticAnalysis(staticAnalysis: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
    optional func cleanRemovingPrecompiledHeaders(removingPrecompiledHeaders: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
    optional func addTo(to: SBObject!) // Adds an existing object to the container specified.
    optional func removeFrom(from: AnyObject!) // Removes the object from the designated container without deleting it.
    optional func richText() -> SBElementArray
    optional func insertionPoints() -> SBElementArray
}
extension SBObject: XcodeParagraph {}

// MARK: XcodeWord
@objc public protocol XcodeWord: SBObjectProtocol {
    optional func characters() -> SBElementArray
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get set } // The color of the word's first character.
    optional var font: String { get set } // The name of the font of the word's first character.
    optional var size: Int { get set } // The size in points of the word's first character.
    optional func closeSaving(saving: XcodeSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(`in`: NSURL!, `as`: XcodeSaveableFileFormat) // Save a document.
    optional func printPrintDialog(printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func buildStaticAnalysis(staticAnalysis: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
    optional func cleanRemovingPrecompiledHeaders(removingPrecompiledHeaders: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
    optional func addTo(to: SBObject!) // Adds an existing object to the container specified.
    optional func removeFrom(from: AnyObject!) // Removes the object from the designated container without deleting it.
    optional func richText() -> SBElementArray
    optional func insertionPoints() -> SBElementArray
}
extension SBObject: XcodeWord {}

// MARK: XcodeAttributeRun
@objc public protocol XcodeAttributeRun: SBObjectProtocol {
    optional func characters() -> SBElementArray
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get set } // Its color.
    optional var font: String { get set } // The name of its font.
    optional var size: Int { get set } // Its size, in points.
    optional func closeSaving(saving: XcodeSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(`in`: NSURL!, `as`: XcodeSaveableFileFormat) // Save a document.
    optional func printPrintDialog(printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func buildStaticAnalysis(staticAnalysis: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
    optional func cleanRemovingPrecompiledHeaders(removingPrecompiledHeaders: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
    optional func addTo(to: SBObject!) // Adds an existing object to the container specified.
    optional func removeFrom(from: AnyObject!) // Removes the object from the designated container without deleting it.
    optional func richText() -> SBElementArray
    optional func insertionPoints() -> SBElementArray
}
extension SBObject: XcodeAttributeRun {}

// MARK: XcodeAttachment
@objc public protocol XcodeAttachment: XcodeRichText {
    optional var fileName: String { get set } // The path to the embedded file.
}
extension SBObject: XcodeAttachment {}

// MARK: XcodeInputPath
@objc public protocol XcodeInputPath: SBObjectProtocol {
    optional var path: String { get set } // The path of the input file.
    optional var runScriptPhase: XcodeRunScriptPhase { get } // The run script phase that contains this input path.
    optional func closeSaving(saving: XcodeSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(`in`: NSURL!, `as`: XcodeSaveableFileFormat) // Save a document.
    optional func printPrintDialog(printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func buildStaticAnalysis(staticAnalysis: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
    optional func cleanRemovingPrecompiledHeaders(removingPrecompiledHeaders: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
    optional func addTo(to: SBObject!) // Adds an existing object to the container specified.
    optional func removeFrom(from: AnyObject!) // Removes the object from the designated container without deleting it.
}
extension SBObject: XcodeInputPath {}

// MARK: XcodeOutputPath
@objc public protocol XcodeOutputPath: SBObjectProtocol {
    optional var path: String { get set } // The path of the output file.
    optional var runScriptPhase: XcodeRunScriptPhase { get } // The run script phase that contains this output path.
    optional func closeSaving(saving: XcodeSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(`in`: NSURL!, `as`: XcodeSaveableFileFormat) // Save a document.
    optional func printPrintDialog(printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func buildStaticAnalysis(staticAnalysis: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
    optional func cleanRemovingPrecompiledHeaders(removingPrecompiledHeaders: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
    optional func addTo(to: SBObject!) // Adds an existing object to the container specified.
    optional func removeFrom(from: AnyObject!) // Removes the object from the designated container without deleting it.
}
extension SBObject: XcodeOutputPath {}

// MARK: XcodeBuildConfigurationType
@objc public protocol XcodeBuildConfigurationType: SBObjectProtocol {
    optional func id() -> String // The unique identifier for the build configuration type.
    optional var name: String { get set } // The name of this build configuration type.
    optional func closeSaving(saving: XcodeSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(`in`: NSURL!, `as`: XcodeSaveableFileFormat) // Save a document.
    optional func printPrintDialog(printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func buildStaticAnalysis(staticAnalysis: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
    optional func cleanRemovingPrecompiledHeaders(removingPrecompiledHeaders: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
    optional func addTo(to: SBObject!) // Adds an existing object to the container specified.
    optional func removeFrom(from: AnyObject!) // Removes the object from the designated container without deleting it.
}
extension SBObject: XcodeBuildConfigurationType {}

// MARK: XcodeBuildMessage
@objc public protocol XcodeBuildMessage: SBObjectProtocol {
    optional var buildFile: XcodeBuildFile { get set } // The build file that contains this build message
    optional var kind: XcodeBmte { get set } // Indicates the kind of build message.
    optional var location: Int { get set } // The line number in the file that the build message corresponds to.
    optional var message: String { get set } // The text of the build message.
    optional var path: String { get set } // The absolute path to the file that the build message is referencing.
    optional func closeSaving(saving: XcodeSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(`in`: NSURL!, `as`: XcodeSaveableFileFormat) // Save a document.
    optional func printPrintDialog(printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func buildStaticAnalysis(staticAnalysis: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
    optional func cleanRemovingPrecompiledHeaders(removingPrecompiledHeaders: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
    optional func addTo(to: SBObject!) // Adds an existing object to the container specified.
    optional func removeFrom(from: AnyObject!) // Removes the object from the designated container without deleting it.
}
extension SBObject: XcodeBuildMessage {}

// MARK: XcodeContainer
@objc public protocol XcodeContainer: SBObjectProtocol {
    optional var fullPath: String { get } // The full path to the project file on disk.
    optional var name: String { get } // The name of this project.
    optional var path: String { get } // The path to the project file on disk.
    optional var readOnly: Bool { get } // Is the project only open for reading?
    optional var realPath: String { get } // The fully resolved path to the project file on disk. Specifically, all symlinks in the path have been resolved.
    optional var rootGroup: XcodeGroup { get } // The root of the files & groups hierarchy in the project.
    optional func closeSaving(saving: XcodeSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(`in`: NSURL!, `as`: XcodeSaveableFileFormat) // Save a document.
    optional func printPrintDialog(printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func buildStaticAnalysis(staticAnalysis: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
    optional func cleanRemovingPrecompiledHeaders(removingPrecompiledHeaders: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
    optional func addTo(to: SBObject!) // Adds an existing object to the container specified.
    optional func removeFrom(from: AnyObject!) // Removes the object from the designated container without deleting it.
}
extension SBObject: XcodeContainer {}

// MARK: XcodeContainerItem
@objc public protocol XcodeContainerItem: SBObjectProtocol {
    optional func id() -> String // The unique identifier for the project item.
    optional var comments: String { get set } // Comments about this project item.
    optional var container: XcodeContainer { get } // The container for this item.
    optional var project: XcodeProject { get } // The project that contains this item.
    optional func closeSaving(saving: XcodeSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(`in`: NSURL!, `as`: XcodeSaveableFileFormat) // Save a document.
    optional func printPrintDialog(printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func buildStaticAnalysis(staticAnalysis: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
    optional func cleanRemovingPrecompiledHeaders(removingPrecompiledHeaders: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
    optional func addTo(to: SBObject!) // Adds an existing object to the container specified.
    optional func removeFrom(from: AnyObject!) // Removes the object from the designated container without deleting it.
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
    optional var defaultBuildConfigurationType: XcodeBuildConfigurationType { get set } // The default build configuration type used when building with xcodebuild if no -configuration option is supplied.
    optional func id() -> String // The unique identifier for the project.
    optional var organizationName: String { get set } // The name to use in the header file of new files created with project templates.  Defaults to Apple Inc.
    optional var projectDirectory: String { get } // The full path to the folder that contains the project file.
    optional var projectFileReference: XcodeFileReference { get } // A file reference to the core project.pbxproj file itself.
    optional var userFileReference: XcodeFileReference { get } // A file reference to the current user's pbxuser file.
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
    optional var destinationDirectory: XcodePwpa { get set } // The base location to copy items relative to. If "root volume" is chosen then "path" is an absolute path. Otherwise "path" is relative to the base location.
    optional var path: String { get set } // The path relative to the destination to copy items to
    optional var runOnlyWhenInstalling: Bool { get set } // Indicates if the build phase should only be run when performing an install build.
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
    optional var runOnlyWhenInstalling: Bool { get set } // Indicates if the build phase should only be run when performing an install build.
    optional var shellPath: String { get set } // The absolute path to the shell used by the shell script.
    optional var shellScript: String { get set } // The actual shell script to run during this build phase.
    optional var showEnvironmentVariables: Bool { get set } // Indicates if shell environment variables should be output to the build log.
}
extension SBObject: XcodeRunScriptPhase {}

// MARK: XcodeBreakpoint
@objc public protocol XcodeBreakpoint: XcodeProjectItem {
    optional var automaticallyContinue: Bool { get set } // Should the debugger automatically continue when it hits this breakpoint after performing any associated breakpoint actions?
    optional var condition: String { get set } // Condition in which breakpoint should stop.
    optional var enabled: Bool { get set } // Is the breakpoint enabled?
    optional var name: String { get } // The name of this breakpoint.
}
extension SBObject: XcodeBreakpoint {}

// MARK: XcodeBuildConfiguration
@objc public protocol XcodeBuildConfiguration: XcodeProjectItem {
    optional func baseBuildSettings() -> SBElementArray
    optional func buildSettings() -> SBElementArray
    optional func flattenedBuildSettings() -> SBElementArray
    optional var buildConfigurationType: XcodeBuildConfigurationType { get } // The associated build configuration type.
    optional var configurationSettingsFile: XcodeFileReference { get set } // The optional configuration settings file this configuration is based on. May be 'missing value'.
    optional var name: String { get } // The name of the associated build configuration type.
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
    optional var fileReference: XcodeFileReference { get set } // A reference to the file that contains the breakpoint.
    optional var lineNumber: Int { get set } // The line number the breakpoint is set on.
}
extension SBObject: XcodeFileBreakpoint {}

// MARK: XcodeProjectTemplate
@objc public protocol XcodeProjectTemplate: SBObjectProtocol {
    optional var name: String { get } // The name for the project template.
    optional var objectDescription: String { get } // A description of the project template.
    optional func closeSaving(saving: XcodeSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(`in`: NSURL!, `as`: XcodeSaveableFileFormat) // Save a document.
    optional func printPrintDialog(printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func buildStaticAnalysis(staticAnalysis: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
    optional func cleanRemovingPrecompiledHeaders(removingPrecompiledHeaders: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
    optional func addTo(to: SBObject!) // Adds an existing object to the container specified.
    optional func removeFrom(from: AnyObject!) // Removes the object from the designated container without deleting it.
}
extension SBObject: XcodeProjectTemplate {}

// MARK: XcodeScheme
@objc public protocol XcodeScheme: XcodeContainerItem {
}
extension SBObject: XcodeScheme {}

// MARK: XcodeSymbolicBreakpoint
@objc public protocol XcodeSymbolicBreakpoint: XcodeBreakpoint {
    optional var symbolName: String { get set } // The name of the symbol that the breakpoint stops at.
}
extension SBObject: XcodeSymbolicBreakpoint {}

// MARK: XcodeItemReference
@objc public protocol XcodeItemReference: XcodeContainerItem {
    optional var buildProductsRelativePath: String { get } // The path to the item referenced relative to the build products folder.
    optional var contents: [AnyObject] { get } // A list of the immediate contents of this reference.
    optional var entireContents: [AnyObject] { get } // A list of the contents of this reference, including the entire contents of its children.
    optional var fileEncoding: XcodeFenc { get set } // The file encoding used to display the contents of any text files referenced by this item. In the case of a group or folder reference, this encoding is used for the items contained by this item.
    optional var fullPath: String { get } // The full path to the item referenced.
    optional var group: XcodeGroup { get } // The group that this reference is contained in.
    optional var indentWidth: Int { get set } // The number of spaces to indent wrapped lines in the referenced item. In the case of a group or folder reference, this indent width is used for any contained items.
    optional var leaf: Bool { get } // Indicates if this reference cannot contain other references.
    optional var lineEnding: XcodeLied { get set } // The style of line endings to use for the referenced item. In the case of a group or folder reference, this style is used for any contained items.
    optional var localized: Bool { get } // Indicates if this reference refers to a localized item.
    optional var name: String { get set } // The name of this item reference.
    optional var path: String { get } // Returns the path to the item referenced. The format of this path depends on the path type.
    optional var pathType: XcodeReft { get set } // Specifies how the reference tries to locate the item it refers to. Xcode does not provide full scripting support to user-defined source trees, and will report such reference types as "other".
    optional var projectRelativePath: String { get } // The project relative path to the item referenced.
    optional var realPath: String { get } // The fully resolved path to the item referenced. Specifically, all symlinks in the path have been resolved.
    optional var tabWidth: Int { get set } // The number of spaces to use for a tab for the referenced item. In the case of a group or folder reference, this value is used for any contained items.
    optional var usesTabs: Bool { get set } // Indicates if tabs characters should be used instead of spaces when entering tabs. In the case of a group or folder reference, this value is used for any contained items.
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
    optional var path: String { get set } // Returns the path to the item referenced. The format of this path depends on the path type.
    optional var pathType: XcodeReft { get set } // Specifies how the reference tries to locate the item it refers to. Xcode does not provide full scripting support to user-defined source trees, and will report such reference types as "other".
}
extension SBObject: XcodeXcode3FileReference {}

// MARK: XcodeXcode3Group
@objc public protocol XcodeXcode3Group: XcodeGroup {
    optional func Xcode3FileReferences() -> SBElementArray
    optional func Xcode3Groups() -> SBElementArray
    optional var path: String { get set } // Returns the path to the item referenced. The format of this path depends on the path type.
    optional var pathType: XcodeReft { get set } // Specifies how the reference tries to locate the item it refers to. Xcode does not provide full scripting support to user-defined source trees, and will report such reference types as "other".
}
extension SBObject: XcodeXcode3Group {}

// MARK: XcodeBuildSetting
@objc public protocol XcodeBuildSetting: SBObjectProtocol {
    optional var container: XcodeProjectItem { get } // The build configuration that contains this build setting.
    optional var name: String { get set } // The unlocalized build setting name (e.g. DSTROOT).
    optional var value: String { get set } // A string value for the build setting.
    optional func closeSaving(saving: XcodeSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(`in`: NSURL!, `as`: XcodeSaveableFileFormat) // Save a document.
    optional func printPrintDialog(printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func buildStaticAnalysis(staticAnalysis: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
    optional func cleanRemovingPrecompiledHeaders(removingPrecompiledHeaders: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
    optional func addTo(to: SBObject!) // Adds an existing object to the container specified.
    optional func removeFrom(from: AnyObject!) // Removes the object from the designated container without deleting it.
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
    optional var name: String { get set } // The name of this target.
    optional var native: Bool { get } // Does this target use the native build system?
    optional var productReference: XcodeFileReference { get } // An item reference to the generated product on disk.
    optional var targetType: String { get } // The type of target. Usually this is related to the type of product the target produces.
}
extension SBObject: XcodeTarget {}

// MARK: XcodeTargetDependency
@objc public protocol XcodeTargetDependency: XcodeProjectItem {
    optional var target: XcodeTarget { get } // The target that the containing target depends on.
}
extension SBObject: XcodeTargetDependency {}

// MARK: XcodeInsertionPoint
@objc public protocol XcodeInsertionPoint: SBObjectProtocol {
    optional var contents: String { get set } // The contents at the insertion point.
    optional func closeSaving(saving: XcodeSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(`in`: NSURL!, `as`: XcodeSaveableFileFormat) // Save a document.
    optional func printPrintDialog(printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func buildStaticAnalysis(staticAnalysis: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
    optional func cleanRemovingPrecompiledHeaders(removingPrecompiledHeaders: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
    optional func addTo(to: SBObject!) // Adds an existing object to the container specified.
    optional func removeFrom(from: AnyObject!) // Removes the object from the designated container without deleting it.
}
extension SBObject: XcodeInsertionPoint {}

// MARK: XcodeFileDocument
@objc public protocol XcodeFileDocument: XcodeDocument {
}
extension SBObject: XcodeFileDocument {}

// MARK: XcodeTextDocument
@objc public protocol XcodeTextDocument: XcodeFileDocument {
    optional var contents: String { get set } // The contents of the text file.
    optional var notifiesWhenClosing: Bool { get set } // Should Xcode notify other apps when this document is closed?
    optional var selectedCharacterRange: [AnyObject] { get set } // The first and last character positions in the selection.
    optional var selectedParagraphRange: [AnyObject] { get set } // The first and last paragraph positions that contain the selection.
    optional var selection: SBObject { get set } // The current selection in the text document.
    optional var text: String { get set } // The text of the text file referenced.
}
extension SBObject: XcodeTextDocument {}

// MARK: XcodeSourceDocument
@objc public protocol XcodeSourceDocument: XcodeTextDocument {
    optional var editorSettings: [NSObject : AnyObject] { get set } // A record of source editor settings and values.
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
    optional var breakpointsEnabled: Bool { get set } // Are breakpoints enabled in this workspace?
    optional var intermediatesDirectory: String { get set } // The full path to the folder that contains all intermediate files for the project.
    optional var productDirectory: String { get set } // The full path to the folder that contains any built products.
}
extension SBObject: XcodeWorkspaceDocument {}

// MARK: XcodeAttribute
@objc public protocol XcodeAttribute: SBObjectProtocol {
    optional var attributeType: String { get } // The CoreData type of the attribute
    optional var defaultValue: String { get } // Default value of the attribute
    optional var name: String { get set } // Attribute name
    optional var optional: Bool { get set } // Is the attribute optional?
    optional var transient: Bool { get set } // Is the attribute transient?
    optional var userInfo: [NSObject : AnyObject] { get set } // User info dictionary for the attribute
    optional func closeSaving(saving: XcodeSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(`in`: NSURL!, `as`: XcodeSaveableFileFormat) // Save a document.
    optional func printPrintDialog(printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func buildStaticAnalysis(staticAnalysis: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
    optional func cleanRemovingPrecompiledHeaders(removingPrecompiledHeaders: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
    optional func addTo(to: SBObject!) // Adds an existing object to the container specified.
    optional func removeFrom(from: AnyObject!) // Removes the object from the designated container without deleting it.
}
extension SBObject: XcodeAttribute {}

// MARK: XcodeDataModelDocument
@objc public protocol XcodeDataModelDocument: XcodeFileDocument {
    optional func entities() -> SBElementArray
    optional var name: String { get } // The name of the document
}
extension SBObject: XcodeDataModelDocument {}

// MARK: XcodeEntity
@objc public protocol XcodeEntity: SBObjectProtocol {
    optional func attributes() -> SBElementArray
    optional func fetchRequests() -> SBElementArray
    optional func fetchedProperties() -> SBElementArray
    optional func relationships() -> SBElementArray
    optional var abstract: Bool { get set } // Is the entity abstract?
    optional var name: String { get set } // Name of the entity
    optional var objectClass: String { get set } // The Objective C class of the object backing this entity
    optional var parent: XcodeEntity { get } // Parent from which the entity inherits
    optional var userInfo: [NSObject : AnyObject] { get set } // User info dictionary for the entity
    optional func closeSaving(saving: XcodeSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(`in`: NSURL!, `as`: XcodeSaveableFileFormat) // Save a document.
    optional func printPrintDialog(printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func buildStaticAnalysis(staticAnalysis: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
    optional func cleanRemovingPrecompiledHeaders(removingPrecompiledHeaders: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
    optional func addTo(to: SBObject!) // Adds an existing object to the container specified.
    optional func removeFrom(from: AnyObject!) // Removes the object from the designated container without deleting it.
}
extension SBObject: XcodeEntity {}

// MARK: XcodeFetchRequest
@objc public protocol XcodeFetchRequest: SBObjectProtocol {
    optional var name: String { get set } // Fetch Request name
    optional var predicate: String { get set } // Text form of the predicate for the Fetch Request
    optional func closeSaving(saving: XcodeSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(`in`: NSURL!, `as`: XcodeSaveableFileFormat) // Save a document.
    optional func printPrintDialog(printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func buildStaticAnalysis(staticAnalysis: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
    optional func cleanRemovingPrecompiledHeaders(removingPrecompiledHeaders: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
    optional func addTo(to: SBObject!) // Adds an existing object to the container specified.
    optional func removeFrom(from: AnyObject!) // Removes the object from the designated container without deleting it.
}
extension SBObject: XcodeFetchRequest {}

// MARK: XcodeFetchedProperty
@objc public protocol XcodeFetchedProperty: SBObjectProtocol {
    optional var destination: XcodeEntity { get set } // The destination entity of the fetched property
    optional var name: String { get set } // Fetched Property attribute name
    optional var optional: Bool { get set } // Is the attribute optional?
    optional var predicate: String { get set } // Text form of the predicate that selects the property
    optional var transient: Bool { get set } // Is the attribute transient?
    optional var userInfo: [NSObject : AnyObject] { get set } // User info dictionary for the attribute
    optional func closeSaving(saving: XcodeSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(`in`: NSURL!, `as`: XcodeSaveableFileFormat) // Save a document.
    optional func printPrintDialog(printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func buildStaticAnalysis(staticAnalysis: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
    optional func cleanRemovingPrecompiledHeaders(removingPrecompiledHeaders: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
    optional func addTo(to: SBObject!) // Adds an existing object to the container specified.
    optional func removeFrom(from: AnyObject!) // Removes the object from the designated container without deleting it.
}
extension SBObject: XcodeFetchedProperty {}

// MARK: XcodeRelationship
@objc public protocol XcodeRelationship: SBObjectProtocol {
    optional var destinationEntity: XcodeEntity { get set } // The other entity related to this one.
    optional var inverseRelationship: XcodeRelationship { get set } // The relationship that the related element has to this one.
    optional var maximumCount: Int { get set } // Maximum number of related data objects
    optional var minimumCount: Int { get set } // Minimum number of related data objects
    optional var name: String { get set } // Name of the relationship
    optional var optional: Bool { get set } // Is the relationship optional?
    optional var toMany: Bool { get set } // Is the relationship a “to-many” relationship?
    optional var transient: Bool { get set } // Is the relationship transient?
    optional var userInfo: [NSObject : AnyObject] { get set } // User information dictionary for the relationship
    optional func closeSaving(saving: XcodeSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(`in`: NSURL!, `as`: XcodeSaveableFileFormat) // Save a document.
    optional func printPrintDialog(printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
    optional func buildStaticAnalysis(staticAnalysis: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Build the indicated target or project in Xcode. If the project is asked to build, then the active target is built.
    optional func cleanRemovingPrecompiledHeaders(removingPrecompiledHeaders: Bool, transcript: Bool, using: XcodeBuildConfigurationType!) -> String // Clean the indicated target or project in Xcode. If the project is asked to build, then the active target is cleaned.
    optional func addTo(to: SBObject!) // Adds an existing object to the container specified.
    optional func removeFrom(from: AnyObject!) // Removes the object from the designated container without deleting it.
}
extension SBObject: XcodeRelationship {}

