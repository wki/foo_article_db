package DbDemo::Schema::Result::Image;
use DBIx::Class::Candy;

table 'image';

primary_column image_id => {
    data_type         => 'int',
    is_auto_increment => 1,
};

column article_id => {
    data_type   => 'int',
    is_nullable => 0,
};

column path => {
    data_type => 'varchar',
};

belongs_to article => 'DbDemo::Schema::Result::Article', 'article_id';

1;

=head1 NAME

DbDemo::Schema::Result::Image - Image table

=head1 SYNOPSIS

    # TODO: add example

=head1 AUTHOR

Wolfgang Kinkeldei, E<lt>wolfgang@kinkeldei.deE<gt>

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
