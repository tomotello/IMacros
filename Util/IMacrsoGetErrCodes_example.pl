use strict;
use warnings;
use IMacros::Util qw/IMacrosGetErrCodes/;


# load error codes into a perl hash to decode errors returned from iMacros Win32::OLE ('imacros') 
my $err_codes = IMacrosGetErrCodes();

my $current_err = "-101";
print "\n\n\nSingle Reference to err_codes hash: \n";
print "Error Code: ", $current_err, ", Description: ", $err_codes->{$current_err}, "\n\n\n";

print "List entire hash with error codes and descriptions.... \n\n";
foreach my $k ( keys $err_codes->%* ) {
  print "Err_code: ", $k, " , Desc: ", $err_codes->{$k}, "\n";
}
