package DbDemo::Schema;
use base 'DBIx::Class::Schema';
our $VERSION = 1; # for DBIx::Class::DeploymentHandler

__PACKAGE__->load_namespaces;

1;

=head1 NAME

DbDemo::Schema - DB Schema

=head1 SYNOPSIS

    use DbDemo::Schema;
    
    my $schema = DbDemo::Schema->connect(...);
    
    $schema->resultset('Author')->search(...)->all;

=head1 DESCRIPTION

Main access point to the DB. Used for connecting to the DB as well as
accessing resultsets and firing queries.

=head1 AUTHOR

Wolfgang Kinkeldei, E<lt>wolfgang@kinkeldei.deE<gt>

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
