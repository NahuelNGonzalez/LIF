use strict;

my $r3=$ARGV[0];

open(j1,$r3);

while(my $file=<j1>)
{
	print"$file";	
}
