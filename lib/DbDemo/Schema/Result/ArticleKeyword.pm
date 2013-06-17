package DbDemo::Schema::Result::ArticleKeyword;
use DBIx::Class::Candy;

table 'article_keyword';

column article_id => {
    data_type   => 'int',
    is_nullable => 0,
};

column keyword_id => {
    data_type   => 'int',
    is_nullable => 0,
};

belongs_to article => 'DbDemo::Schema::Result::Article', 'article_id';
belongs_to keyword => 'DbDemo::Schema::Result::Keyword', 'keyword_id';

1;

=head1 NAME

DbDemo::Schema::Result::ArticleKeyword - ArticleKeyword table

=head1 SYNOPSIS

    # TODO: add example

=head1 AUTHOR

Wolfgang Kinkeldei, E<lt>wolfgang@kinkeldei.deE<gt>

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
