#!/usr/bin/env perl
use strict;
use warnings;

my $root = shift @ARGV || ".";

sub scan {
    my ($path) = @_;
    opendir(my $dh, $path) or return;
    my @files = readdir($dh);
    closedir($dh);

    my $has_readme = grep { /^README\.md$/ } @files;

    print "⚠️  README manquant dans $path\n" if !$has_readme;

    foreach my $f (@files) {
        next if $f =~ /^\./;
        my $full = "$path/$f";
        scan($full) if -d $full;
    }
}

scan($root);
