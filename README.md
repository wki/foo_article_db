Begleit-Quelltexte für einen Artikel im $foo Magazin Ende 2013
==============================================================

sorry for the german text, but the article is in the german $foo magazine.


Datenbank einrichten
--------------------

    $ dzil listdeps | cpanm
    $ mkdir share
    $ dbic-migration -Ilib --schema_class DbDemo::Schema --dsn dbi:SQLite:author.db --dir share prepare
    $ dbic-migration -Ilib --schema_class DbDemo::Schema --dsn dbi:SQLite:author.db --dir share install


