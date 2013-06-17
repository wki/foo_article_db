package DbDemo::Schema::Result::Author;
use DBIx::Class::Candy;

table 'author';

primary_column author_id => {
    data_type         => 'int',
    is_auto_increment => 1,
};

column name => {
    data_type => 'varchar',
};

has_many articles => 'DbDemo::Schema::Result::Article', 'author_id';

1;

=head1 NAME

DbDemo::Schema::Result::Author - Author Table

=head1 SYNOPSIS

    # TODO: add example

=head1 AUTHOR

Wolfgang Kinkeldei, E<lt>wolfgang@kinkeldei.deE<gt>

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
