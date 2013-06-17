package DbDemo::Schema::Result::Keyword;
use DBIx::Class::Candy;

table 'keyword';

primary_column keyword_id => {
    data_type         => 'int',
    is_auto_increment => 1,
};

column name => {
    data_type => 'varchar',
};

has_many article_keywords => 'DbDemo::Schema::Result::ArticleKeyword', 'keyword_id';

many_to_many articles => 'article_keywords', 'article';

1;

=head1 NAME

DbDemo::Schema::Result::Keyword - Keyword table

=head1 SYNOPSIS

    # TODO: add example

=head1 AUTHOR

Wolfgang Kinkeldei, E<lt>wolfgang@kinkeldei.deE<gt>

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
