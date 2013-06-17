#!/usr/bin/env perl
use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";
use DbDemo::Schema;
use DBIx::Class::Migration::Script;

### does this make sense? Or is a simple command more useful?
DBIx::Class::Migration::Script->run_with_options(
    schema => DbDemo::Schema->connect(...),
);
