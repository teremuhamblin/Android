#!/usr/bin/env perl
use strict;
use warnings;

my $root = shift @ARGV || ".";

sub scan {
    my ($path) = @_;
    opendir(my $dh, $path) or return;
    while (my $f = readdir($dh)) {
        next if $f =~ /^\./;
        my $full = "$path/$f";
        if (-d $full) {
            scan($full);
        } elsif ($full =~ /\.aidl$/) {
            open my $fh, "<", $full or next;
            my $content = do { local $/; <$fh> };
            close $fh;

            print "⚠️  AIDL sans commentaire : $full\n"
                unless $content =~ m{/\*\*};
        }
    }
    closedir($dh);
}

scan($root);
