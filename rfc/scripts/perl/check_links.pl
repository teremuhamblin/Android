#!/usr/bin/env perl
use strict;
use warnings;

my $root = shift @ARGV || "docs";

sub check_file {
    my ($file) = @_;
    open my $fh, "<", $file or return;
    while (<$fh>) {
        if (/\[.*?\]\((.*?)\)/) {
            my $target = $1;
            next if $target =~ /^http/;
            my $path = "$root/$target";
            print "Lien mort dans $file → $target\n" unless -e $path;
        }
    }
    close $fh;
}

sub scan {
    my ($dir) = @_;
    opendir(my $dh, $dir) or return;
    while (my $f = readdir($dh)) {
        next if $f =~ /^\./;
        my $full = "$dir/$f";
        if (-d $full) {
            scan($full);
        } elsif ($full =~ /\.md$/) {
            check_file($full);
        }
    }
    closedir($dh);
}

scan($root);
