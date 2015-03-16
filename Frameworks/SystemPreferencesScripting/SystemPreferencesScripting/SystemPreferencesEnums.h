
enum SystemPreferencesSaveOptions {
	SystemPreferencesSaveOptionsYes = 'yes ' /* Save the file. */,
	SystemPreferencesSaveOptionsNo = 'no  ' /* Do not save the file. */,
	SystemPreferencesSaveOptionsAsk = 'ask ' /* Ask the user whether or not to save the file. */
};
typedef enum SystemPreferencesSaveOptions SystemPreferencesSaveOptions;

enum SystemPreferencesPrintingErrorHandling {
	SystemPreferencesPrintingErrorHandlingStandard = 'lwst' /* Standard PostScript error handling */,
	SystemPreferencesPrintingErrorHandlingDetailed = 'lwdt' /* print a detailed report of PostScript errors */
};
typedef enum SystemPreferencesPrintingErrorHandling SystemPreferencesPrintingErrorHandling;
