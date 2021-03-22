use strict;
use warnings;

my $filename = "march_list.txt";
open (my $fh, "<", $filename) or die "Cannot open file $filename.";

while (<$fh>) {

	chomp;
	next if /^#.*/;
	print "Downloading: $_\n";
	#`youtube-dl $_` or die "Could not download the file $_";
	print "Downloaded: $_ :successfully\n";
	print "----" x 20, "\n";
}
