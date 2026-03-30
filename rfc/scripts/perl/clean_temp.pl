#!/usr/bin/env perl
use strict;
use warnings;

my @patterns = (
    qr/\.swp$/,
    qr/\.tmp$/,
    qr/~$/,
    qr/\.bak$/,
);

my $root = shift @ARGV || ".";

sub clean {
    my ($path) = @_;
    opendir(my $dh, $path) or return;
    while (my $f = readdir($dh)) {
        next if $f =~ /^\./;
        my $full = "$path/$f";
        if (-d $full) {
            clean($full);
        } else {
            foreach my $p (@patterns) {
                if ($full =~ $p) {
                    unlink $full;
                    print "Supprimé : $full\n";
                }
            }
        }
    }
    closedir($dh);
}

clean($root);
