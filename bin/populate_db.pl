#!/usr/bin/env perl
use Modern::Perl;
use FindBin;
use lib "$FindBin::Bin/../lib";
use DbDemo::Schema;

# Anzeige der SQL Anweisungen
$ENV{DBIC_TRACE} = 1;
$ENV{DBIC_TRACE_PROFILE} = 'console';

my $schema = DbDemo::Schema->connect("dbi:SQLite:$FindBin::Bin/../article.db");

$schema->populate(
    Article => [
        {
            headline => 'Foo #1',
            content  => 'Erster $foo Artikel',
            author   => {
                name => 'Viel Schreiber',
            },
            images => [
                { path => '/path/to/img1.png' },
                { path => '/path/to/img2.png' },
            ],
            article_keywords => [
                { keyword => { name => 'DBIC' } },
                { keyword => { name => 'Perl' } },
            ],
        },
        {
            headline => 'Foo #2',
            content  => 'weiterer $foo Artikel',
            author   => {
                name => 'Viel Schreiber',
            },
            images => [
                { path    => '/path/to/img3.png' },
            ],
            article_keywords => [
                { keyword => { name => 'Perl' } },
            ],
        },
    ],
);
