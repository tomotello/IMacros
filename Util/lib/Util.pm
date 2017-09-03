package IMacros::Util;

use 5.024001;
use strict;
use warnings;
use Module::Locate qw/locate/;

require Exporter;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Util ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(IMacrosGetErrCodes
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(IMacrosGetErrCodes
	
);

our $VERSION = '0.01';


# Preloaded methods:

sub IMacrosGetErrCodes {


 my %err_codes;

 $err_codes{"-101"} = "Aborted: User pressed the Stop button in the iMacros sidebar. Typically, you can check this value to see if the user wants to exit the application.";
   $err_codes{"-102"} = "Browser Closed: User pressed the Window Close button in the browser. This code does not apply when using the built-in Javascript scripting interface in Firefox.";
   $err_codes{"-1000"} = "Unspecified: Macro playback returned an error without explicitly specifying an error code.";
   $err_codes{"-1010"} = "Not In Playback Mode: Error occurred while macro playback is not active (recording or idle mode).";
   $err_codes{"-1020"} = "Unsupported Browser: Unsupported web browser was specified for the macro playback engine.";
   $err_codes{"-1030"} = "Browser Not Initialized: Browser type not yet determined.";
   $err_codes{"-1040"} = "Tabbed Browsing Disabled: Attempt to run the TAB command while IE tabbed browsing is disabled.";
   $err_codes{"-1100"} = "Load Failed: Failed to load the macro (syntax or I/O error) (Found wrong macro command while loading file).";
   $err_codes{"-1110"} = "Invalid Macro Name: Invalid macro name specified for playback (Command Line Error: No Macro found).";
   $err_codes{"-1200"} = "Bad Parameter: Invalid macro parameter was specified.";
   $err_codes{"-1210"} = "Cannot Compile Regex: Cannot compile regular expression (as in SEARCH).";
   $err_codes{"-1220"} = "Wrong Decryption Password: Incorrect decryption password supplied. Please enter the correct password in the OPTIONS dialog or re-run the macro.";
   $err_codes{"-1230"} = "File Not Found: Filename specified in the macro command (e.g. IMAGESEARCH) doesnt exist.";
   $err_codes{"-1235"} = "File Access Denied: Access to the file was denied by the system, or the file might be in use.";
   $err_codes{"-1240"} = "Invalid Record Index: The data source record with requested index does not exist.";
   $err_codes{"-1250"} = "JScript Error: JScript parsing/evaluation error (in EVAL).";
   $err_codes{"-1300"} = "Html Element Not Found: Cannot find HTML element.";
   $err_codes{"-1310"} = "Non Expected Tag Found: HTML element was found when EVENT:FAIL_IF_FOUND was specified (see TAG).";
   $err_codes{"-1320"} = "Search Query Not Found: Search query not found in source.";
   $err_codes{"-1330"} = "Page or Download Timeout: !TIMEOUT_PAGE was reached before the page finished loading or !TIMEOUT_DOWNLOAD was reached before a file download completed.";
   $err_codes{"-1340"} = "Eval Error: Custom MacroError thrown by EVAL";
   $err_codes{"-1350"} = "Navigation Error: page load returned HTTP Status between 400 and 500 or the server could not be connected.";
   $err_codes{"-1360"} = "Security Problem: a security problem occurred and ONSECURITDIALOG or ONINSECURECONNECTION was set to CONTINUE=NO.";
   $err_codes{"-1400"} = "Dialog Manager Error: Indicates that an exception has occurred in Dialog Manager.";
   $err_codes{"-1410"} = "No Download Detected: Macro contains ONDOWNLOAD, but no download dialog was detected.";
   $err_codes{"-1420"} = "Checksum or Size Not Verified: Checksum or Size of downloaded file does not match specified.";
   $err_codes{"-1430"} = "Failed To Handle Browser Dialog: Failed to handle Web Browser dialog.";
   $err_codes{"-1440"} = "Failed To Set Save File Name: Failed to set filename in the Save File dialog.";
   $err_codes{"-1450"} = "No Dialog Handler: The Dialog Manager detected a dialog, but the handler for this dialog type is not enabled. Missing command ON...DIALOG. (Only from Scripting Interface)";
   $err_codes{"-1500"} = "Command Not Supported: The command or feature is not licensed or supported in this product.";
   $err_codes{"-1600"} = "Invalid Stopwatch Id: Invalid Stopwatch ID or LABEL specified, duplicate or nonexistent.";
   $err_codes{"-1610"} = "Stopwatch Already Running: Stopwatch with this ID or label is already running.";
   $err_codes{"-1620"} = "Stopwatch Not Started: Cannot stop stopwatch before its started.";
   $err_codes{"-1700"} = "Invalid Select Content: Selected entry in a select box is not available.";
   $err_codes{"-1710"} = "Invalid Check Radio Content: Invalid CONTENT parameter specified for check or radio box.";
   $err_codes{"-1750"} = "Cannot Save Element Screenshot: Element does not support save element screenshot.";
   $err_codes{"-1800"} = "Image Not Found: Could not find image with given confidence in browser screen.";
   $err_codes{"-1810"} = "Image Recognition Internal Error: Internal Error in Image Recognition Plugin (Is it properly installed?).";
   $err_codes{"-1820"} = "Cannot Load Image: Image file could not be loaded.";
   $err_codes{"-1830"} = "Illegal Imagesearch Subregion: ImageSearch subregion is either not completely contained in the source image, or smaller than search image, or not a rectangle.";
   $err_codes{"-1840"} = "ImageSearch Not Enough Memory: ImageSearch failed to allocate enough memory to open image file.";
   $err_codes{"-1850"} = "Non Expected Image Found: Image was found when FAIL=YES was specified (see IMAGESEARCH)";
   $err_codes{"-1900"} = "Document Null: Failed to run a command because no page has been opened in the web browser or could not retrieve the page source (document is null).";
   $err_codes{"-1910"} = "Invalid Target Window: Cannot locate target web browser window or frame.";
   $err_codes{"-1930"} = "Macro Timeout: TIMEOUT_MACRO was reached before the macro finished playing.";
   $err_codes{"-2000"} = "Set Proxy Error: Unable to set proxy server settings.";
   $err_codes{"-802"} = "Timeout error (failed to load web page)";
   $err_codes{"-803"} = "Macro Timeout";
   $err_codes{"-804"} = "ONDOWNLOAD command was used but no download occurred";
   $err_codes{"-902"} = "Image search library not found";
   $err_codes{"-903"} = "Internal error in image library";
   $err_codes{"-920"} = "Element for specified x/y coordinates was not found";
   $err_codes{"-921"} = "Element specified by TAG command was not found";
   $err_codes{"-922"} = "Frame specified in TAG command was not found";
   $err_codes{"-923"} = "Element or its ancestors have no href (src) attribute, applies to SAVEAS command";
   $err_codes{"-924"} = "Number of options in select box element has been exceeded";
   $err_codes{"-925"} = "Select box has no specified options";
   $err_codes{"-926"} = "Source code of web page doesnt match SEARCH query";
   $err_codes{"-927"} = "Image specified in IMAGESEARCH command was not found";
   $err_codes{"-930"} = "File not found (e.g. for imacros://run?m=non_existent.iim or URL GOTO=file://...)";
   $err_codes{"-931"} = "Could not access file";
   $err_codes{"-932"} = "Specified folder was not found or could not be accessed";
   $err_codes{"-933"} = "Network error while file or page loading";
   $err_codes{"-934"} = "Specified checksum doesnt match calculated";
   $err_codes{"-941"} = "Password decryption failed";
   $err_codes{"-942"} = "Wrong password";
   $err_codes{"-951"} = "DATASOURCE_LINE exceeds actual number of rows in data source file";
   $err_codes{"-952"} = "Data source file can not be parsed";
   $err_codes{"-953"} = "Attempt to access non-existing column in data source file";
   $err_codes{"-961"} = "Attempt to set already existing time watch";
   $err_codes{"-962"} = "Specified time watch does not exist";
   $err_codes{"-971"} = "Specified tab number does not exists (tabs counted from the tab where replay started)";
   $err_codes{"-981"} = "Syntax error in XPath expression";
   $err_codes{"-982"} = "XPath expression resulted into multiple nodes";
   $err_codes{"-983"} = "Syntax error in regular expression";
   $err_codes{"-990"} = "Non Expected Tag Found: HTML element was found when EVENT:FAIL_IF_FOUND was specified";
   $err_codes{"-991"} = "Javascript parsing/evaluation error";
   $err_codes{"-992"} = "Javascript error on the content page";
   $err_codes{"-1001"} = "Unknown error";
   $err_codes{"-602"} = "Page load timeout";
   $err_codes{"-603"} = "Macro replaying timeout";
   $err_codes{"-604"} = "Download timeout";
   $err_codes{"-610"} = "Internal error: proxy module is not available (unlikely to happen, was introduced to handle cases when a user had Chrome version where module was not yet supported)";
   $err_codes{"-612"} = "No content loaded in the active tab (some commands require content page to work)";
   $err_codes{"-660"} = "File IO interface is not installed (some commands require it to work)";
   $err_codes{"-701"} = "Internal error in handling image files (should never happen, may occur in case of some internal Chrome bug or an attmept to crash browser)";
   $err_codes{"-702"} = "Image search library not found (corresponding message host was not installed)";
   $err_codes{"-703"} = "Internal error in image search library";
   $err_codes{"-710"} = "Syntax error";
   $err_codes{"-711"} = "Wrong parameter value for a command";
   $err_codes{"-712"} = "Unsupported command";
   $err_codes{"-721"} = "Element not found";
   $err_codes{"-722"} = "Frame not found";
   $err_codes{"-723"} = "Element or its ancestors have no href (src) attribute, applies to SAVEAS command";
   $err_codes{"-724"} = "Number of options in select box element has been exceeded";
   $err_codes{"-725"} = "Select box has no specified options";
   $err_codes{"-726"} = "Source code of web page doesnt match SEARCH query";
   $err_codes{"-727"} = "Image specified in IMAGESEARCH command was not found";
   $err_codes{"-730"} = "File not found";
   $err_codes{"-731"} = "Error writing to a file";
   $err_codes{"-732"} = "Specified folder was not found or could not be accessed";
   $err_codes{"-733"} = "Network error error (e.g. server name unresolved or network connection broken in the middle of transfer)";
   $err_codes{"-734"} = "Wrong credentials for HTTP authorization (specified in ONLOGIN command)";
   $err_codes{"-751"} = "DATASOURCE_LINE exceeds actual number of rows in data source file";
   $err_codes{"-752"} = "Data source file can not be parsed";
   $err_codes{"-753"} = "Attempt to access non-existing column in data source file";
   $err_codes{"-761"} = "Attempt to set already existing time watch";
   $err_codes{"-762"} = "Specified time watch does not exist";
   $err_codes{"-771"} = "Specified tab number does not exists (tabs counted from the tab where replay started)";
   $err_codes{"-781"} = "Syntax error in XPath expression";
   $err_codes{"-782"} = "XPath expression resulted into multiple nodes";
   $err_codes{"-790"} = "Non Expected Tag Found: HTML element was found when EVENT:FAIL_IF_FOUND was specified";
   $err_codes{"1"} = "sOk - Command (iimMethod()) completed Ok";
   $err_codes{"-1"} = "sFail - Scripting Interface can not complete this command. Typically this error can occur if the software is not installed correctly";
   $err_codes{"-2"} = "SNotCompleted - A command was started but did not complete. This error happens only if the browser is terminated so abruptly that iMacros can not respond back to the interface. Typically this happens only in the rare case of a browser crash. If the user simply closes the browser you will get the -102 error instead (see below).";
   $err_codes{"-3"} = "sTimeout - The iMacros browser did not respond in a certain time. The default iimPlay timeout is 600s (other commands have different timeout default, see each command). You can change this value individually for some commands. For example, you can specify iimPlay(<macro>, <timeout>). In addition to a normal timeout, this error also occurs if the browser freezes for any reason. (In the trial version this error can also occur if you do not press the iMacros trial version reminder screen Continue button in time. This issue can never occur in the full version.)";
   $err_codes{"-4"} = "sNotStarted -  Could not start the iMacros browser. iimOpen failed and the subsequent commands cannot proceed.";
   $err_codes{"-5"} = "sWrongPath - A wrong path (not existent or not accessible) was specified in iimTakBrowserScreenshot()";
   $err_codes{"-6"} = "sRunnerNotReachable - iimRunner is not running. iimOpen tried to attach an iMacros instance to iimRunner, but hasnt found iimRunner. See iimOpen return values for details";
   $err_codes{"-7"} = "sInstancesCountLimitReached - iimRunner error message. Maximum number of iMacros instances controlled by iimRunner was reached. See iimOpen return values for details.";
   $err_codes{"-8"} = "sProfileMissing - A profile (iMacros for Firefox) or user-data-dir (iMacros for Chrome) is necessary to run iMacros via iimRunner. The correct syntax is iimOpen(-fx -fxProfile MyProfile) or iimOpen(-cr -crUserdataDir MyDataDir)";
   $err_codes{"-9"} = "sTCPInterfaceLoadFailed - iimOpen failed to connect to Firefox or Chrome, or could not load imtcp.dll, the assembly necessary to remote control iMacros for Firefox and iMacros for Chrome. iimGetErrorText should have the complete error message. Please, call iimClose to kill this process if you used iimOpen to create it.";
   $err_codes{"-10"} = "sSystemLockedNoDesktop - iimTakeBrowserScreenshot() did not find a desktop.";
   $err_codes{"-11"} = "sInternalVariable - iimSet tried to set an internal or built-in variable. Value is going to be null.";
   $err_codes{"-20"} = "This error occurs if you start iimOpen twice.";
   $err_codes{"-99"} = "When automating Firefox or Chrome using iMacros Trial Version. The trial box hasnt been clicked in 20 seconds.";

   return \%err_codes;
 }
 

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Util - Modul to support Perl using as scripting language for iMacros Web Automation Tool 

=head1 SYNOPSIS

  use IMacros::Util;
  

=head1 DESCRIPTION

 Functions: 
 
 %err_codes = IMacrosGetErrCodes();
 loads error codes into a perl hash to decode errors returned from iMacros Win32::OLE ('imacros') 

=head2 EXPORT

None by default.



=head1 SEE ALSO

Mention other useful documentation such as the documentation of
related modules or operating system documentation (such as man pages
in UNIX), or any relevant external documentation such as RFCs or
standards.

If you have a mailing list set up for your module, mention it here.

If you have a web site set up for your module, mention it here.

=head1 AUTHOR

U-AzureAD\ThomasOettli, E<lt>AzureAD+ThomasOettli@nonetE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2017 by U-AzureAD\ThomasOettli

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.24.1 or,
at your option, any later version of Perl 5 you may have available.


=cut

