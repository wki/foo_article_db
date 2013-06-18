#!/usr/bin/env perl
use Modern::Perl;
use FindBin;
use lib "$FindBin::Bin/../lib";
use DbDemo::Schema;

# Anzeige der SQL Anweisungen
$ENV{DBIC_TRACE} = 1;
$ENV{DBIC_TRACE_PROFILE} = 'console';

my $schema = DbDemo::Schema->connect("dbi:SQLite:$FindBin::Bin/../article.db");

my $article_rs = $schema->resultset('Article');
while (my $article = $article_rs->next) {
    say 'Article ID ', $article->id,
        ' "',          $article->headline, '"',
        ' von ',       $article->author->name;
}
