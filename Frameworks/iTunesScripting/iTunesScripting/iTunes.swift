import AppKit
import ScriptingBridge

@objc public protocol SBObjectProtocol: NSObjectProtocol {
    func get() -> AnyObject!
}

@objc public protocol SBApplicationProtocol: SBObjectProtocol {
    func activate()
    var delegate: SBApplicationDelegate! { get set }
    var running: Bool { @objc(isRunning) get }
}

// MARK: iTunesEKnd
@objc public enum iTunesEKnd : AEKeyword {
    case TrackListing = 0x6b54726b /* 'kTrk' */
    case AlbumListing = 0x6b416c62 /* 'kAlb' */
    case CdInsert = 0x6b434469 /* 'kCDi' */
}

// MARK: iTunesEnum
@objc public enum iTunesEnum : AEKeyword {
    case Standard = 0x6c777374 /* 'lwst' */
    case Detailed = 0x6c776474 /* 'lwdt' */
}

// MARK: iTunesEPlS
@objc public enum iTunesEPlS : AEKeyword {
    case Stopped = 0x6b505353 /* 'kPSS' */
    case Playing = 0x6b505350 /* 'kPSP' */
    case Paused = 0x6b505370 /* 'kPSp' */
    case FastForwarding = 0x6b505346 /* 'kPSF' */
    case Rewinding = 0x6b505352 /* 'kPSR' */
}

// MARK: iTunesERpt
@objc public enum iTunesERpt : AEKeyword {
    case Off = 0x6b52704f /* 'kRpO' */
    case One = 0x6b527031 /* 'kRp1' */
    case All = 0x6b416c6c /* 'kAll' */
}

// MARK: iTunesEShM
@objc public enum iTunesEShM : AEKeyword {
    case Songs = 0x6b536853 /* 'kShS' */
    case Albums = 0x6b536841 /* 'kShA' */
    case Groupings = 0x6b536847 /* 'kShG' */
}

// MARK: iTunesEVSz
@objc public enum iTunesEVSz : AEKeyword {
    case Small = 0x6b565353 /* 'kVSS' */
    case Medium = 0x6b56534d /* 'kVSM' */
    case Large = 0x6b56534c /* 'kVSL' */
}

// MARK: iTunesESrc
@objc public enum iTunesESrc : AEKeyword {
    case Library = 0x6b4c6962 /* 'kLib' */
    case IPod = 0x6b506f64 /* 'kPod' */
    case AudioCD = 0x6b414344 /* 'kACD' */
    case MP3CD = 0x6b4d4344 /* 'kMCD' */
    case RadioTuner = 0x6b54756e /* 'kTun' */
    case SharedLibrary = 0x6b536864 /* 'kShd' */
    case ITunesStore = 0x6b495453 /* 'kITS' */
    case Unknown = 0x6b556e6b /* 'kUnk' */
}

// MARK: iTunesESrA
@objc public enum iTunesESrA : AEKeyword {
    case Albums = 0x6b53724c /* 'kSrL' */
    case All = 0x6b416c6c /* 'kAll' */
    case Artists = 0x6b537252 /* 'kSrR' */
    case Composers = 0x6b537243 /* 'kSrC' */
    case Displayed = 0x6b537256 /* 'kSrV' */
    case Songs = 0x6b537253 /* 'kSrS' */
}

// MARK: iTunesESpK
@objc public enum iTunesESpK : AEKeyword {
    case None = 0x6b4e6f6e /* 'kNon' */
    case Books = 0x6b537041 /* 'kSpA' */
    case Folder = 0x6b537046 /* 'kSpF' */
    case Genius = 0x6b537047 /* 'kSpG' */
    case ITunesU = 0x6b537055 /* 'kSpU' */
    case Library = 0x6b53704c /* 'kSpL' */
    case Movies = 0x6b537049 /* 'kSpI' */
    case Music = 0x6b53705a /* 'kSpZ' */
    case Podcasts = 0x6b537050 /* 'kSpP' */
    case PurchasedMusic = 0x6b53704d /* 'kSpM' */
    case TVShows = 0x6b537054 /* 'kSpT' */
}

// MARK: iTunesEMdK
@objc public enum iTunesEMdK : AEKeyword {
    case AlertTone = 0x6b4d644c /* 'kMdL' */
    case Audiobook = 0x6b4d6441 /* 'kMdA' */
    case Book = 0x6b4d6442 /* 'kMdB' */
    case HomeVideo = 0x6b4d6448 /* 'kMdH' */
    case ITunesU = 0x6b4d6449 /* 'kMdI' */
    case Movie = 0x6b4d644d /* 'kMdM' */
    case Music = 0x6b4d6453 /* 'kMdS' */
    case MusicVideo = 0x6b4d6456 /* 'kMdV' */
    case Podcast = 0x6b4d6450 /* 'kMdP' */
    case Ringtone = 0x6b4d6452 /* 'kMdR' */
    case TVShow = 0x6b4d6454 /* 'kMdT' */
    case VoiceMemo = 0x6b4d644f /* 'kMdO' */
    case Unknown = 0x6b556e6b /* 'kUnk' */
}

// MARK: iTunesEVdK
@objc public enum iTunesEVdK : AEKeyword {
    case None = 0x6b4e6f6e /* 'kNon' */
    case HomeVideo = 0x6b566448 /* 'kVdH' */
    case Movie = 0x6b56644d /* 'kVdM' */
    case MusicVideo = 0x6b566456 /* 'kVdV' */
    case TVShow = 0x6b566454 /* 'kVdT' */
}

// MARK: iTunesERtK
@objc public enum iTunesERtK : AEKeyword {
    case User = 0x6b527455 /* 'kRtU' */
    case Computed = 0x6b527443 /* 'kRtC' */
}

// MARK: iTunesEAPD
@objc public enum iTunesEAPD : AEKeyword {
    case Computer = 0x6b415043 /* 'kAPC' */
    case AirPortExpress = 0x6b415058 /* 'kAPX' */
    case AppleTV = 0x6b415054 /* 'kAPT' */
    case AirPlayDevice = 0x6b41504f /* 'kAPO' */
    case Unknown = 0x6b415055 /* 'kAPU' */
}

// MARK: iTunesEClS
@objc public enum iTunesEClS : AEKeyword {
    case Unknown = 0x6b556e6b /* 'kUnk' */
    case Purchased = 0x6b507572 /* 'kPur' */
    case Matched = 0x6b4d6174 /* 'kMat' */
    case Uploaded = 0x6b55706c /* 'kUpl' */
    case Ineligible = 0x6b52656a /* 'kRej' */
    case Removed = 0x6b52656d /* 'kRem' */
    case Error = 0x6b457272 /* 'kErr' */
    case Duplicate = 0x6b447570 /* 'kDup' */
    case Subscription = 0x6b537562 /* 'kSub' */
    case NoLongerAvailable = 0x6b526576 /* 'kRev' */
    case NotUploaded = 0x6b557050 /* 'kUpP' */
}

// MARK: iTunesGenericMethods
@objc public protocol iTunesGenericMethods {
    @objc optional func printPrintDialog(printDialog: Bool, withProperties: iTunesPrintSettings!, kind: iTunesEKnd, theme: String!) // Print the specified object(s)
    @objc optional func close() // Close an object
    @objc optional func delete() // Delete an element from an object
    @objc optional func duplicateTo(to: SBObject!) -> SBObject // Duplicate one or more object(s)
    @objc optional func exists() -> Bool // Verify if an object exists
    @objc optional func open() // Open the specified object(s)
    @objc optional func save() // Save the specified object(s)
    @objc optional func playOnce(once: Bool) // play the current track or the specified track or file.
    @objc optional func select() // select the specified object(s)
}

// MARK: iTunesPrintSettings
@objc public protocol iTunesPrintSettings: SBObjectProtocol, iTunesGenericMethods {
    @objc optional var copies: Int { get } // the number of copies of a document to be printed
    @objc optional var collating: Bool { get } // Should printed copies be collated?
    @objc optional var startingPage: Int { get } // the first page of the document to be printed
    @objc optional var endingPage: Int { get } // the last page of the document to be printed
    @objc optional var pagesAcross: Int { get } // number of logical pages laid across a physical page
    @objc optional var pagesDown: Int { get } // number of logical pages laid out down a physical page
    @objc optional var errorHandling: iTunesEnum { get } // how errors are handled
    @objc optional var requestedPrintTime: NSDate { get } // the time at which the desktop printer should print the document
    @objc optional var printerFeatures: [AnyObject] { get } // printer specific options
    @objc optional var faxNumber: String { get } // for fax number
    @objc optional var targetPrinter: String { get } // for target printer
}
extension SBObject: iTunesPrintSettings {}

// MARK: iTunesApplication
@objc public protocol iTunesApplication: SBApplicationProtocol {
    @objc optional func AirPlayDevices() -> SBElementArray
    @objc optional func browserWindows() -> SBElementArray
    @objc optional func encoders() -> SBElementArray
    @objc optional func EQPresets() -> SBElementArray
    @objc optional func EQWindows() -> SBElementArray
    @objc optional func miniplayerWindows() -> SBElementArray
    @objc optional func playlistWindows() -> SBElementArray
    @objc optional func sources() -> SBElementArray
    @objc optional func videoWindows() -> SBElementArray
    @objc optional func visuals() -> SBElementArray
    @objc optional func windows() -> SBElementArray
    @objc optional var AirPlayEnabled: Bool { get } // is AirPlay currently enabled?
    @objc optional var converting: Bool { get } // is a track currently being converted?
    @objc optional var currentAirPlayDevices: [iTunesAirPlayDevice] { get } // the currently selected AirPlay device(s)
    @objc optional var currentEncoder: iTunesEncoder { get } // the currently selected encoder (MP3, AIFF, WAV, etc.)
    @objc optional var currentEQPreset: iTunesEQPreset { get } // the currently selected equalizer preset
    @objc optional var currentPlaylist: iTunesPlaylist { get } // the playlist containing the currently targeted track
    @objc optional var currentStreamTitle: String { get } // the name of the current song in the playing stream (provided by streaming server)
    @objc optional var currentStreamURL: String { get } // the URL of the playing stream or streaming web site (provided by streaming server)
    @objc optional var currentTrack: iTunesTrack { get } // the current targeted track
    @objc optional var currentVisual: iTunesVisual { get } // the currently selected visual plug-in
    @objc optional var EQEnabled: Bool { get } // is the equalizer enabled?
    @objc optional var fixedIndexing: Bool { get } // true if all AppleScript track indices should be independent of the play order of the owning playlist.
    @objc optional var frontmost: Bool { get } // is iTunes the frontmost application?
    @objc optional var fullScreen: Bool { get } // are visuals displayed using the entire screen?
    @objc optional var name: String { get } // the name of the application
    @objc optional var mute: Bool { get } // has the sound output been muted?
    @objc optional var playerPosition: Double { get } // the player’s position within the currently playing track in seconds.
    @objc optional var playerState: iTunesEPlS { get } // is iTunes stopped, paused, or playing?
    @objc optional var selection: SBObject { get } // the selection visible to the user
    @objc optional var shuffleEnabled: Bool { get } // are songs played in random order?
    @objc optional var shuffleMode: iTunesEShM { get } // the playback shuffle mode
    @objc optional var songRepeat: iTunesERpt { get } // the playback repeat mode
    @objc optional var soundVolume: Int { get } // the sound output volume (0 = minimum, 100 = maximum)
    @objc optional var version: String { get } // the version of iTunes
    @objc optional var visualsEnabled: Bool { get } // are visuals currently being displayed?
    @objc optional var visualSize: iTunesEVSz { get } // the size of the displayed visual
    @objc optional func printPrintDialog(printDialog: Bool, withProperties: iTunesPrintSettings!, kind: iTunesEKnd, theme: String!) // Print the specified object(s)
    @objc optional func run() // Run iTunes
    @objc optional func quit() // Quit iTunes
    @objc optional func add(x: [NSURL]!, to: SBObject!) -> iTunesTrack // add one or more files to a playlist
    @objc optional func backTrack() // reposition to beginning of current track or go to previous track if already at start of current track
    @objc optional func convert(x: [SBObject]!) -> iTunesTrack // convert one or more files or tracks
    @objc optional func eject() // eject the specified iPod
    @objc optional func fastForward() // skip forward in a playing track
    @objc optional func nextTrack() // advance to the next track in the current playlist
    @objc optional func pause() // pause playback
    @objc optional func playOnce(once: Bool) // play the current track or the specified track or file.
    @objc optional func playpause() // toggle the playing/paused state of the current track
    @objc optional func previousTrack() // return to the previous track in the current playlist
    @objc optional func resume() // disable fast forward/rewind and resume playback, if playing.
    @objc optional func rewind() // skip backwards in a playing track
    @objc optional func stop() // stop playback
    @objc optional func subscribe(x: String!) // subscribe to a podcast feed
    @objc optional func update() // update the specified iPod
    @objc optional func updateAllPodcasts() // update all subscribed podcast feeds
    @objc optional func updatePodcast() // update podcast feed
    @objc optional func openLocation(x: String!) // Opens a Music Store or audio stream URL
    @objc optional func setCurrentAirPlayDevices(currentAirPlayDevices: [iTunesAirPlayDevice]!) // the currently selected AirPlay device(s)
    @objc optional func setCurrentEncoder(currentEncoder: iTunesEncoder!) // the currently selected encoder (MP3, AIFF, WAV, etc.)
    @objc optional func setCurrentEQPreset(currentEQPreset: iTunesEQPreset!) // the currently selected equalizer preset
    @objc optional func setCurrentVisual(currentVisual: iTunesVisual!) // the currently selected visual plug-in
    @objc optional func setEQEnabled(EQEnabled: Bool) // is the equalizer enabled?
    @objc optional func setFixedIndexing(fixedIndexing: Bool) // true if all AppleScript track indices should be independent of the play order of the owning playlist.
    @objc optional func setFrontmost(frontmost: Bool) // is iTunes the frontmost application?
    @objc optional func setFullScreen(fullScreen: Bool) // are visuals displayed using the entire screen?
    @objc optional func setMute(mute: Bool) // has the sound output been muted?
    @objc optional func setPlayerPosition(playerPosition: Double) // the player’s position within the currently playing track in seconds.
    @objc optional func setShuffleEnabled(shuffleEnabled: Bool) // are songs played in random order?
    @objc optional func setShuffleMode(shuffleMode: iTunesEShM) // the playback shuffle mode
    @objc optional func setSongRepeat(songRepeat: iTunesERpt) // the playback repeat mode
    @objc optional func setSoundVolume(soundVolume: Int) // the sound output volume (0 = minimum, 100 = maximum)
    @objc optional func setVisualsEnabled(visualsEnabled: Bool) // are visuals currently being displayed?
    @objc optional func setVisualSize(visualSize: iTunesEVSz) // the size of the displayed visual
}
extension SBApplication: iTunesApplication {}

// MARK: iTunesItem
@objc public protocol iTunesItem: SBObjectProtocol, iTunesGenericMethods {
    @objc optional var container: SBObject { get } // the container of the item
    @objc optional func id() -> Int // the id of the item
    @objc optional var index: Int { get } // The index of the item in internal application order.
    @objc optional var name: String { get } // the name of the item
    @objc optional var persistentID: String { get } // the id of the item as a hexadecimal string. This id does not change over time.
    @objc optional var properties: [NSObject : AnyObject] { get } // every property of the item
    @objc optional func download() // download a cloud track or playlist, or a podcast episode
    @objc optional func reveal() // reveal and select a track or playlist
    @objc optional func setName(name: String!) // the name of the item
    @objc optional func setProperties(properties: [NSObject : AnyObject]!) // every property of the item
}
extension SBObject: iTunesItem {}

// MARK: iTunesAirPlayDevice
@objc public protocol iTunesAirPlayDevice: iTunesItem {
    @objc optional var active: Bool { get } // is the device currently being played to?
    @objc optional var available: Bool { get } // is the device currently available?
    @objc optional var kind: iTunesEAPD { get } // the kind of the device
    @objc optional var networkAddress: String { get } // the network (MAC) address of the device
    @objc optional func protected() -> Bool // is the device password- or passcode-protected?
    @objc optional var selected: Bool { get } // is the device currently selected?
    @objc optional var supportsAudio: Bool { get } // does the device support audio playback?
    @objc optional var supportsVideo: Bool { get } // does the device support video playback?
    @objc optional var soundVolume: Int { get } // the output volume for the device (0 = minimum, 100 = maximum)
    @objc optional func setSelected(selected: Bool) // is the device currently selected?
    @objc optional func setSoundVolume(soundVolume: Int) // the output volume for the device (0 = minimum, 100 = maximum)
}
extension SBObject: iTunesAirPlayDevice {}

// MARK: iTunesArtwork
@objc public protocol iTunesArtwork: iTunesItem {
    @objc optional var data: NSImage { get } // data for this artwork, in the form of a picture
    @objc optional var objectDescription: String { get } // description of artwork as a string
    @objc optional var downloaded: Bool { get } // was this artwork downloaded by iTunes?
    @objc optional var format: NSNumber { get } // the data format for this piece of artwork
    @objc optional var kind: Int { get } // kind or purpose of this piece of artwork
    @objc optional var rawData: NSData { get } // data for this artwork, in original format
    @objc optional func setData(data: NSImage!) // data for this artwork, in the form of a picture
    @objc optional func setObjectDescription(objectDescription: String!) // description of artwork as a string
    @objc optional func setKind(kind: Int) // kind or purpose of this piece of artwork
    @objc optional func setRawData(rawData: NSData!) // data for this artwork, in original format
}
extension SBObject: iTunesArtwork {}

// MARK: iTunesEncoder
@objc public protocol iTunesEncoder: iTunesItem {
    @objc optional var format: String { get } // the data format created by the encoder
}
extension SBObject: iTunesEncoder {}

// MARK: iTunesEQPreset
@objc public protocol iTunesEQPreset: iTunesItem {
    @objc optional var band1: Double { get } // the equalizer 32 Hz band level (-12.0 dB to +12.0 dB)
    @objc optional var band2: Double { get } // the equalizer 64 Hz band level (-12.0 dB to +12.0 dB)
    @objc optional var band3: Double { get } // the equalizer 125 Hz band level (-12.0 dB to +12.0 dB)
    @objc optional var band4: Double { get } // the equalizer 250 Hz band level (-12.0 dB to +12.0 dB)
    @objc optional var band5: Double { get } // the equalizer 500 Hz band level (-12.0 dB to +12.0 dB)
    @objc optional var band6: Double { get } // the equalizer 1 kHz band level (-12.0 dB to +12.0 dB)
    @objc optional var band7: Double { get } // the equalizer 2 kHz band level (-12.0 dB to +12.0 dB)
    @objc optional var band8: Double { get } // the equalizer 4 kHz band level (-12.0 dB to +12.0 dB)
    @objc optional var band9: Double { get } // the equalizer 8 kHz band level (-12.0 dB to +12.0 dB)
    @objc optional var band10: Double { get } // the equalizer 16 kHz band level (-12.0 dB to +12.0 dB)
    @objc optional var modifiable: Bool { get } // can this preset be modified?
    @objc optional var preamp: Double { get } // the equalizer preamp level (-12.0 dB to +12.0 dB)
    @objc optional var updateTracks: Bool { get } // should tracks which refer to this preset be updated when the preset is renamed or deleted?
    @objc optional func setBand1(band1: Double) // the equalizer 32 Hz band level (-12.0 dB to +12.0 dB)
    @objc optional func setBand2(band2: Double) // the equalizer 64 Hz band level (-12.0 dB to +12.0 dB)
    @objc optional func setBand3(band3: Double) // the equalizer 125 Hz band level (-12.0 dB to +12.0 dB)
    @objc optional func setBand4(band4: Double) // the equalizer 250 Hz band level (-12.0 dB to +12.0 dB)
    @objc optional func setBand5(band5: Double) // the equalizer 500 Hz band level (-12.0 dB to +12.0 dB)
    @objc optional func setBand6(band6: Double) // the equalizer 1 kHz band level (-12.0 dB to +12.0 dB)
    @objc optional func setBand7(band7: Double) // the equalizer 2 kHz band level (-12.0 dB to +12.0 dB)
    @objc optional func setBand8(band8: Double) // the equalizer 4 kHz band level (-12.0 dB to +12.0 dB)
    @objc optional func setBand9(band9: Double) // the equalizer 8 kHz band level (-12.0 dB to +12.0 dB)
    @objc optional func setBand10(band10: Double) // the equalizer 16 kHz band level (-12.0 dB to +12.0 dB)
    @objc optional func setPreamp(preamp: Double) // the equalizer preamp level (-12.0 dB to +12.0 dB)
    @objc optional func setUpdateTracks(updateTracks: Bool) // should tracks which refer to this preset be updated when the preset is renamed or deleted?
}
extension SBObject: iTunesEQPreset {}

// MARK: iTunesPlaylist
@objc public protocol iTunesPlaylist: iTunesItem {
    @objc optional func tracks() -> SBElementArray
    @objc optional func artworks() -> SBElementArray
    @objc optional var objectDescription: String { get } // the description of the playlist
    @objc optional var duration: Int { get } // the total length of all songs (in seconds)
    @objc optional var name: String { get } // the name of the playlist
    @objc optional var loved: Bool { get } // is this playlist loved?
    @objc optional var parent: iTunesPlaylist { get } // folder which contains this playlist (if any)
    @objc optional var size: Int { get } // the total size of all songs (in bytes)
    @objc optional var specialKind: iTunesESpK { get } // special playlist kind
    @objc optional var time: String { get } // the length of all songs in MM:SS format
    @objc optional var visible: Bool { get } // is this playlist visible in the Source list?
    @objc optional func moveTo(to: SBObject!) // Move playlist(s) to a new location
    @objc optional func searchFor(for_: String!, only: iTunesESrA) -> iTunesTrack // search a playlist for tracks matching the search string. Identical to entering search text in the Search field in iTunes.
    @objc optional func setObjectDescription(objectDescription: String!) // the description of the playlist
    @objc optional func setName(name: String!) // the name of the playlist
    @objc optional func setLoved(loved: Bool) // is this playlist loved?
}
extension SBObject: iTunesPlaylist {}

// MARK: iTunesAudioCDPlaylist
@objc public protocol iTunesAudioCDPlaylist: iTunesPlaylist {
    @objc optional func audioCDTracks() -> SBElementArray
    @objc optional var artist: String { get } // the artist of the CD
    @objc optional var compilation: Bool { get } // is this CD a compilation album?
    @objc optional var composer: String { get } // the composer of the CD
    @objc optional var discCount: Int { get } // the total number of discs in this CD’s album
    @objc optional var discNumber: Int { get } // the index of this CD disc in the source album
    @objc optional var genre: String { get } // the genre of the CD
    @objc optional var year: Int { get } // the year the album was recorded/released
    @objc optional func setArtist(artist: String!) // the artist of the CD
    @objc optional func setCompilation(compilation: Bool) // is this CD a compilation album?
    @objc optional func setComposer(composer: String!) // the composer of the CD
    @objc optional func setDiscCount(discCount: Int) // the total number of discs in this CD’s album
    @objc optional func setDiscNumber(discNumber: Int) // the index of this CD disc in the source album
    @objc optional func setGenre(genre: String!) // the genre of the CD
    @objc optional func setYear(year: Int) // the year the album was recorded/released
}
extension SBObject: iTunesAudioCDPlaylist {}

// MARK: iTunesLibraryPlaylist
@objc public protocol iTunesLibraryPlaylist: iTunesPlaylist {
    @objc optional func fileTracks() -> SBElementArray
    @objc optional func URLTracks() -> SBElementArray
    @objc optional func sharedTracks() -> SBElementArray
}
extension SBObject: iTunesLibraryPlaylist {}

// MARK: iTunesRadioTunerPlaylist
@objc public protocol iTunesRadioTunerPlaylist: iTunesPlaylist {
    @objc optional func URLTracks() -> SBElementArray
}
extension SBObject: iTunesRadioTunerPlaylist {}

// MARK: iTunesSource
@objc public protocol iTunesSource: iTunesItem {
    @objc optional func audioCDPlaylists() -> SBElementArray
    @objc optional func libraryPlaylists() -> SBElementArray
    @objc optional func playlists() -> SBElementArray
    @objc optional func radioTunerPlaylists() -> SBElementArray
    @objc optional func subscriptionPlaylists() -> SBElementArray
    @objc optional func userPlaylists() -> SBElementArray
    @objc optional var capacity: Int64 { get } // the total size of the source if it has a fixed size
    @objc optional var freeSpace: Int64 { get } // the free space on the source if it has a fixed size
    @objc optional var kind: iTunesESrc { get }
    @objc optional func eject() // eject the specified iPod
    @objc optional func update() // update the specified iPod
}
extension SBObject: iTunesSource {}

// MARK: iTunesSubscriptionPlaylist
@objc public protocol iTunesSubscriptionPlaylist: iTunesPlaylist {
    @objc optional func fileTracks() -> SBElementArray
    @objc optional func URLTracks() -> SBElementArray
}
extension SBObject: iTunesSubscriptionPlaylist {}

// MARK: iTunesTrack
@objc public protocol iTunesTrack: iTunesItem {
    @objc optional func artworks() -> SBElementArray
    @objc optional var album: String { get } // the album name of the track
    @objc optional var albumArtist: String { get } // the album artist of the track
    @objc optional var albumLoved: Bool { get } // is the album for this track loved?
    @objc optional var albumRating: Int { get } // the rating of the album for this track (0 to 100)
    @objc optional var albumRatingKind: iTunesERtK { get } // the rating kind of the album rating for this track
    @objc optional var artist: String { get } // the artist/source of the track
    @objc optional var bitRate: Int { get } // the bit rate of the track (in kbps)
    @objc optional var bookmark: Double { get } // the bookmark time of the track in seconds
    @objc optional var bookmarkable: Bool { get } // is the playback position for this track remembered?
    @objc optional var bpm: Int { get } // the tempo of this track in beats per minute
    @objc optional var category: String { get } // the category of the track
    @objc optional var cloudStatus: iTunesEClS { get } // the iCloud status of the track
    @objc optional var comment: String { get } // freeform notes about the track
    @objc optional var compilation: Bool { get } // is this track from a compilation album?
    @objc optional var composer: String { get } // the composer of the track
    @objc optional var databaseID: Int { get } // the common, unique ID for this track. If two tracks in different playlists have the same database ID, they are sharing the same data.
    @objc optional var dateAdded: NSDate { get } // the date the track was added to the playlist
    @objc optional var objectDescription: String { get } // the description of the track
    @objc optional var discCount: Int { get } // the total number of discs in the source album
    @objc optional var discNumber: Int { get } // the index of the disc containing this track on the source album
    @objc optional var downloaderAppleID: String { get } // the Apple ID of the person who downloaded this track
    @objc optional var downloaderName: String { get } // the name of the person who downloaded this track
    @objc optional var duration: Double { get } // the length of the track in seconds
    @objc optional var enabled: Bool { get } // is this track checked for playback?
    @objc optional var episodeID: String { get } // the episode ID of the track
    @objc optional var episodeNumber: Int { get } // the episode number of the track
    @objc optional var EQ: String { get } // the name of the EQ preset of the track
    @objc optional var finish: Double { get } // the stop time of the track in seconds
    @objc optional var gapless: Bool { get } // is this track from a gapless album?
    @objc optional var genre: String { get } // the music/audio genre (category) of the track
    @objc optional var grouping: String { get } // the grouping (piece) of the track. Generally used to denote movements within a classical work.
    @objc optional var kind: String { get } // a text description of the track
    @objc optional var longDescription: String { get }
    @objc optional var loved: Bool { get } // is this track loved?
    @objc optional var lyrics: String { get } // the lyrics of the track
    @objc optional var mediaKind: iTunesEMdK { get } // the media kind of the track
    @objc optional var modificationDate: NSDate { get } // the modification date of the content of this track
    @objc optional var playedCount: Int { get } // number of times this track has been played
    @objc optional var playedDate: NSDate { get } // the date and time this track was last played
    @objc optional var purchaserAppleID: String { get } // the Apple ID of the person who purchased this track
    @objc optional var purchaserName: String { get } // the name of the person who purchased this track
    @objc optional var rating: Int { get } // the rating of this track (0 to 100)
    @objc optional var ratingKind: iTunesERtK { get } // the rating kind of this track
    @objc optional var releaseDate: NSDate { get } // the release date of this track
    @objc optional var sampleRate: Int { get } // the sample rate of the track (in Hz)
    @objc optional var seasonNumber: Int { get } // the season number of the track
    @objc optional var shufflable: Bool { get } // is this track included when shuffling?
    @objc optional var skippedCount: Int { get } // number of times this track has been skipped
    @objc optional var skippedDate: NSDate { get } // the date and time this track was last skipped
    @objc optional var show: String { get } // the show name of the track
    @objc optional var sortAlbum: String { get } // override string to use for the track when sorting by album
    @objc optional var sortArtist: String { get } // override string to use for the track when sorting by artist
    @objc optional var sortAlbumArtist: String { get } // override string to use for the track when sorting by album artist
    @objc optional var sortName: String { get } // override string to use for the track when sorting by name
    @objc optional var sortComposer: String { get } // override string to use for the track when sorting by composer
    @objc optional var sortShow: String { get } // override string to use for the track when sorting by show name
    @objc optional var size: Int64 { get } // the size of the track (in bytes)
    @objc optional var start: Double { get } // the start time of the track in seconds
    @objc optional var time: String { get } // the length of the track in MM:SS format
    @objc optional var trackCount: Int { get } // the total number of tracks on the source album
    @objc optional var trackNumber: Int { get } // the index of the track on the source album
    @objc optional var unplayed: Bool { get } // is this track unplayed?
    @objc optional var videoKind: iTunesEVdK { get } // kind of video track
    @objc optional var volumeAdjustment: Int { get } // relative volume adjustment of the track (-100% to 100%)
    @objc optional var year: Int { get } // the year the track was recorded/released
    @objc optional func setAlbum(album: String!) // the album name of the track
    @objc optional func setAlbumArtist(albumArtist: String!) // the album artist of the track
    @objc optional func setAlbumLoved(albumLoved: Bool) // is the album for this track loved?
    @objc optional func setAlbumRating(albumRating: Int) // the rating of the album for this track (0 to 100)
    @objc optional func setArtist(artist: String!) // the artist/source of the track
    @objc optional func setBookmark(bookmark: Double) // the bookmark time of the track in seconds
    @objc optional func setBookmarkable(bookmarkable: Bool) // is the playback position for this track remembered?
    @objc optional func setBpm(bpm: Int) // the tempo of this track in beats per minute
    @objc optional func setCategory(category: String!) // the category of the track
    @objc optional func setComment(comment: String!) // freeform notes about the track
    @objc optional func setCompilation(compilation: Bool) // is this track from a compilation album?
    @objc optional func setComposer(composer: String!) // the composer of the track
    @objc optional func setObjectDescription(objectDescription: String!) // the description of the track
    @objc optional func setDiscCount(discCount: Int) // the total number of discs in the source album
    @objc optional func setDiscNumber(discNumber: Int) // the index of the disc containing this track on the source album
    @objc optional func setEnabled(enabled: Bool) // is this track checked for playback?
    @objc optional func setEpisodeID(episodeID: String!) // the episode ID of the track
    @objc optional func setEpisodeNumber(episodeNumber: Int) // the episode number of the track
    @objc optional func setEQ(EQ: String!) // the name of the EQ preset of the track
    @objc optional func setFinish(finish: Double) // the stop time of the track in seconds
    @objc optional func setGapless(gapless: Bool) // is this track from a gapless album?
    @objc optional func setGenre(genre: String!) // the music/audio genre (category) of the track
    @objc optional func setGrouping(grouping: String!) // the grouping (piece) of the track. Generally used to denote movements within a classical work.
    @objc optional func setLongDescription(longDescription: String!)
    @objc optional func setLoved(loved: Bool) // is this track loved?
    @objc optional func setLyrics(lyrics: String!) // the lyrics of the track
    @objc optional func setMediaKind(mediaKind: iTunesEMdK) // the media kind of the track
    @objc optional func setPlayedCount(playedCount: Int) // number of times this track has been played
    @objc optional func setPlayedDate(playedDate: NSDate!) // the date and time this track was last played
    @objc optional func setRating(rating: Int) // the rating of this track (0 to 100)
    @objc optional func setSeasonNumber(seasonNumber: Int) // the season number of the track
    @objc optional func setShufflable(shufflable: Bool) // is this track included when shuffling?
    @objc optional func setSkippedCount(skippedCount: Int) // number of times this track has been skipped
    @objc optional func setSkippedDate(skippedDate: NSDate!) // the date and time this track was last skipped
    @objc optional func setShow(show: String!) // the show name of the track
    @objc optional func setSortAlbum(sortAlbum: String!) // override string to use for the track when sorting by album
    @objc optional func setSortArtist(sortArtist: String!) // override string to use for the track when sorting by artist
    @objc optional func setSortAlbumArtist(sortAlbumArtist: String!) // override string to use for the track when sorting by album artist
    @objc optional func setSortName(sortName: String!) // override string to use for the track when sorting by name
    @objc optional func setSortComposer(sortComposer: String!) // override string to use for the track when sorting by composer
    @objc optional func setSortShow(sortShow: String!) // override string to use for the track when sorting by show name
    @objc optional func setStart(start: Double) // the start time of the track in seconds
    @objc optional func setTrackCount(trackCount: Int) // the total number of tracks on the source album
    @objc optional func setTrackNumber(trackNumber: Int) // the index of the track on the source album
    @objc optional func setUnplayed(unplayed: Bool) // is this track unplayed?
    @objc optional func setVideoKind(videoKind: iTunesEVdK) // kind of video track
    @objc optional func setVolumeAdjustment(volumeAdjustment: Int) // relative volume adjustment of the track (-100% to 100%)
    @objc optional func setYear(year: Int) // the year the track was recorded/released
}
extension SBObject: iTunesTrack {}

// MARK: iTunesAudioCDTrack
@objc public protocol iTunesAudioCDTrack: iTunesTrack {
    @objc optional var location: NSURL { get } // the location of the file represented by this track
}
extension SBObject: iTunesAudioCDTrack {}

// MARK: iTunesFileTrack
@objc public protocol iTunesFileTrack: iTunesTrack {
    @objc optional var location: NSURL { get } // the location of the file represented by this track
    @objc optional func refresh() // update file track information from the current information in the track’s file
    @objc optional func setLocation(location: NSURL!) // the location of the file represented by this track
}
extension SBObject: iTunesFileTrack {}

// MARK: iTunesSharedTrack
@objc public protocol iTunesSharedTrack: iTunesTrack {
}
extension SBObject: iTunesSharedTrack {}

// MARK: iTunesURLTrack
@objc public protocol iTunesURLTrack: iTunesTrack {
    @objc optional var address: String { get } // the URL for this track
    @objc optional func setAddress(address: String!) // the URL for this track
}
extension SBObject: iTunesURLTrack {}

// MARK: iTunesUserPlaylist
@objc public protocol iTunesUserPlaylist: iTunesPlaylist {
    @objc optional func fileTracks() -> SBElementArray
    @objc optional func URLTracks() -> SBElementArray
    @objc optional func sharedTracks() -> SBElementArray
    @objc optional var shared: Bool { get } // is this playlist shared?
    @objc optional var smart: Bool { get } // is this a Smart Playlist?
    @objc optional var genius: Bool { get } // is this a Genius Playlist?
    @objc optional func setShared(shared: Bool) // is this playlist shared?
}
extension SBObject: iTunesUserPlaylist {}

// MARK: iTunesFolderPlaylist
@objc public protocol iTunesFolderPlaylist: iTunesUserPlaylist {
}
extension SBObject: iTunesFolderPlaylist {}

// MARK: iTunesVisual
@objc public protocol iTunesVisual: iTunesItem {
}
extension SBObject: iTunesVisual {}

// MARK: iTunesWindow
@objc public protocol iTunesWindow: iTunesItem {
    @objc optional var bounds: NSRect { get } // the boundary rectangle for the window
    @objc optional var closeable: Bool { get } // does the window have a close button?
    @objc optional var collapseable: Bool { get } // does the window have a collapse button?
    @objc optional var collapsed: Bool { get } // is the window collapsed?
    @objc optional var fullScreen: Bool { get } // is the window full screen?
    @objc optional var position: NSPoint { get } // the upper left position of the window
    @objc optional var resizable: Bool { get } // is the window resizable?
    @objc optional var visible: Bool { get } // is the window visible?
    @objc optional var zoomable: Bool { get } // is the window zoomable?
    @objc optional var zoomed: Bool { get } // is the window zoomed?
    @objc optional func setBounds(bounds: NSRect) // the boundary rectangle for the window
    @objc optional func setCollapsed(collapsed: Bool) // is the window collapsed?
    @objc optional func setFullScreen(fullScreen: Bool) // is the window full screen?
    @objc optional func setPosition(position: NSPoint) // the upper left position of the window
    @objc optional func setVisible(visible: Bool) // is the window visible?
    @objc optional func setZoomed(zoomed: Bool) // is the window zoomed?
}
extension SBObject: iTunesWindow {}

// MARK: iTunesBrowserWindow
@objc public protocol iTunesBrowserWindow: iTunesWindow {
    @objc optional var selection: SBObject { get } // the selected songs
    @objc optional var view: iTunesPlaylist { get } // the playlist currently displayed in the window
    @objc optional func setView(view: iTunesPlaylist!) // the playlist currently displayed in the window
}
extension SBObject: iTunesBrowserWindow {}

// MARK: iTunesEQWindow
@objc public protocol iTunesEQWindow: iTunesWindow {
}
extension SBObject: iTunesEQWindow {}

// MARK: iTunesMiniplayerWindow
@objc public protocol iTunesMiniplayerWindow: iTunesWindow {
}
extension SBObject: iTunesMiniplayerWindow {}

// MARK: iTunesPlaylistWindow
@objc public protocol iTunesPlaylistWindow: iTunesWindow {
    @objc optional var selection: SBObject { get } // the selected songs
    @objc optional var view: iTunesPlaylist { get } // the playlist displayed in the window
}
extension SBObject: iTunesPlaylistWindow {}

// MARK: iTunesVideoWindow
@objc public protocol iTunesVideoWindow: iTunesWindow {
}
extension SBObject: iTunesVideoWindow {}

