#!/usr/bin/env perl
use strict;
use warnings;

my @patterns = (
    qr/\.pem$/,
    qr/\.key$/,
    qr/avb.*key/i,
    qr/debug.*\.keystore/i,
);

my $root = shift @ARGV || ".";

sub scan {
    my ($path) = @_;
    opendir(my $dh, $path) or return;
    while (my $f = readdir($dh)) {
        next if $f =~ /^\./;
        my $full = "$path/$f";
        if (-d $full) {
            scan($full);
        } else {
            foreach my $p (@patterns) {
                print "⚠️  Fichier sensible détecté : $full\n" if $full =~ $p;
            }
        }
    }
    closedir($dh);
}

scan($root);
