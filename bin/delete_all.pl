#!/usr/bin/env perl
use Modern::Perl;
use FindBin;
use lib "$FindBin::Bin/../lib";
use DbDemo::Schema;

# Anzeige der SQL Anweisungen
$ENV{DBIC_TRACE} = 1;
$ENV{DBIC_TRACE_PROFILE} = 'console';

my $schema = DbDemo::Schema->connect("dbi:SQLite:$FindBin::Bin/../article.db");

foreach my $resultset (qw(Image ArticleKeyword Keyword Article Author)) {
    $schema->resultset($resultset)->delete;
}
