#!/usr/bin/env perl
use strict;
use warnings;

my $dir = shift @ARGV || "80-reference/diagrams";

opendir(my $dh, $dir) or die "Impossible d’ouvrir $dir : $!";
my @files = grep { /\.mmd$/ } readdir($dh);
closedir($dh);

foreach my $file (@files) {
    open my $fh, "<", "$dir/$file" or next;
    my $content = do { local $/; <$fh> };
    close $fh;

    unless ($content =~ /^(flowchart|sequenceDiagram|classDiagram)/m) {
        print "⚠️  Diagramme non conforme : $file\n";
    }
}
