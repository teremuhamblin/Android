#!/usr/bin/env perl
use strict;
use warnings;

my $dir = shift @ARGV || "sepolicy";

opendir(my $dh, $dir) or die "Impossible d’ouvrir $dir : $!";
my @files = grep { /\.te$/ } readdir($dh);
closedir($dh);

foreach my $file (@files) {
    open my $fh, "<", "$dir/$file" or next;
    while (<$fh>) {
        if (/allow\s+(\S+)\s+(\S+)\s+(\S+);/) {
            my ($src, $tgt, $perm) = ($1, $2, $3);
            print "⚠️  Rule permissive dans $file : allow $src $tgt $perm\n"
                if $perm =~ /file|dir|socket/;
        }
    }
    close $fh;
}
