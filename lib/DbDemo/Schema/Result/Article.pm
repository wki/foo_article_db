package DbDemo::Schema::Result::Article;
use DBIx::Class::Candy;

table 'article';

primary_column article_id => {
    data_type         => 'int',
    is_auto_increment => 1,
};

column author_id => {
    data_type   => 'int',
    is_nullable => 0,
};

column headline => {
    data_type => 'varchar',
};

column content => {
    data_type => 'varchar',
};

has_many article_keywords => 'DbDemo::Schema::Result::ArticleKeyword', 'article_id';

many_to_many keywords => 'article_keywords', 'keyword';

1;

=head1 NAME

DbDemo::Schema::Result::Article - Article table

=head1 SYNOPSIS

    # TODO: add example

=head1 AUTHOR

Wolfgang Kinkeldei, E<lt>wolfgang@kinkeldei.deE<gt>

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
