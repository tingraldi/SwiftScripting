
enum FinderPriv {
	FinderPrivReadOnly = 'read',
	FinderPrivReadWrite = 'rdwr',
	FinderPrivWriteOnly = 'writ',
	FinderPrivNone = 'none'
};
typedef enum FinderPriv FinderPriv;

enum FinderEdfm {
	FinderEdfmMacOSFormat = 'dfhf',
	FinderEdfmMacOSExtendedFormat = 'dfh+',
	FinderEdfmUFSFormat = 'dfuf',
	FinderEdfmNFSFormat = 'dfnf',
	FinderEdfmAudioFormat = 'dfau',
	FinderEdfmProDOSFormat = 'dfpr',
	FinderEdfmMSDOSFormat = 'dfms',
	FinderEdfmNTFSFormat = 'dfnt',
	FinderEdfmISO9660Format = 'df96',
	FinderEdfmHighSierraFormat = 'dfhs',
	FinderEdfmQuickTakeFormat = 'dfqt',
	FinderEdfmApplePhotoFormat = 'dfph',
	FinderEdfmAppleShareFormat = 'dfas',
	FinderEdfmUDFFormat = 'dfud',
	FinderEdfmWebDAVFormat = 'dfwd',
	FinderEdfmFTPFormat = 'dfft',
	FinderEdfmPacketWrittenUDFFormat = 'dfpu',
	FinderEdfmXsanFormat = 'dfac',
	FinderEdfmUnknownFormat = 'df\?\?'
};
typedef enum FinderEdfm FinderEdfm;

enum FinderIpnl {
	FinderIpnlGeneralInformationPanel = 'gpnl',
	FinderIpnlSharingPanel = 'spnl',
	FinderIpnlMemoryPanel = 'mpnl',
	FinderIpnlPreviewPanel = 'vpnl',
	FinderIpnlApplicationPanel = 'apnl',
	FinderIpnlLanguagesPanel = 'pklg',
	FinderIpnlPluginsPanel = 'pkpg',
	FinderIpnlNameExtensionPanel = 'npnl',
	FinderIpnlCommentsPanel = 'cpnl',
	FinderIpnlContentIndexPanel = 'cinl',
	FinderIpnlBurningPanel = 'bpnl',
	FinderIpnlMoreInfoPanel = 'minl',
	FinderIpnlSimpleHeaderPanel = 'shnl'
};
typedef enum FinderIpnl FinderIpnl;

enum FinderPple {
	FinderPpleGeneralPreferencesPanel = 'pgnp',
	FinderPpleLabelPreferencesPanel = 'plbp',
	FinderPpleSidebarPreferencesPanel = 'psid',
	FinderPpleAdvancedPreferencesPanel = 'padv'
};
typedef enum FinderPple FinderPple;

enum FinderEcvw {
	FinderEcvwIconView = 'icnv',
	FinderEcvwListView = 'lsvw',
	FinderEcvwColumnView = 'clvw',
	FinderEcvwGroupView = 'grvw',
	FinderEcvwFlowView = 'flvw'
};
typedef enum FinderEcvw FinderEcvw;

enum FinderEarr {
	FinderEarrNotArranged = 'narr',
	FinderEarrSnapToGrid = 'grda',
	FinderEarrArrangedByName = 'nama',
	FinderEarrArrangedByModificationDate = 'mdta',
	FinderEarrArrangedByCreationDate = 'cdta',
	FinderEarrArrangedBySize = 'siza',
	FinderEarrArrangedByKind = 'kina',
	FinderEarrArrangedByLabel = 'laba'
};
typedef enum FinderEarr FinderEarr;

enum FinderEpos {
	FinderEposRight = 'lrgt',
	FinderEposBottom = 'lbot'
};
typedef enum FinderEpos FinderEpos;

enum FinderSodr {
	FinderSodrNormal = 'snrm',
	FinderSodrReversed = 'srvs'
};
typedef enum FinderSodr FinderSodr;

enum FinderElsv {
	FinderElsvNameColumn = 'elsn',
	FinderElsvModificationDateColumn = 'elsm',
	FinderElsvCreationDateColumn = 'elsc',
	FinderElsvSizeColumn = 'elss',
	FinderElsvKindColumn = 'elsk',
	FinderElsvLabelColumn = 'elsl',
	FinderElsvVersionColumn = 'elsv',
	FinderElsvCommentColumn = 'elsC'
};
typedef enum FinderElsv FinderElsv;

enum FinderLvic {
	FinderLvicSmallIcon = 'smic',
	FinderLvicLargeIcon = 'lgic'
};
typedef enum FinderLvic FinderLvic;
