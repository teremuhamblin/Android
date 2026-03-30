#!/usr/bin/env perl
use strict;
use warnings;

my @log = `git log --pretty=format:"%h %ad %s" --date=short`;

open my $out, ">", "CHANGELOG.md" or die "Impossible d’écrire CHANGELOG.md";

print $out "# Changelog\n\n";

foreach my $line (@log) {
    print $out "- $line\n";
}

close $out;

print "Changelog généré.\n";
