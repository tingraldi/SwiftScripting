
enum TerminalSaveOptions {
	TerminalSaveOptionsYes = 'yes ' /* Save the file. */,
	TerminalSaveOptionsNo = 'no  ' /* Do not save the file. */,
	TerminalSaveOptionsAsk = 'ask ' /* Ask the user whether or not to save the file. */
};
typedef enum TerminalSaveOptions TerminalSaveOptions;

enum TerminalPrintingErrorHandling {
	TerminalPrintingErrorHandlingStandard = 'lwst' /* Standard PostScript error handling */,
	TerminalPrintingErrorHandlingDetailed = 'lwdt' /* print a detailed report of PostScript errors */
};
typedef enum TerminalPrintingErrorHandling TerminalPrintingErrorHandling;
