Begleit-Quelltexte für einen Artikel im $foo Magazin Ende 2013
==============================================================

sorry for the german text, but the article is in the german $foo magazine.


Datenbank einrichten
--------------------

    $ dzil listdeps | cpanm
    $ rm -rf share
    $ mkdir share
    
    # SQLite:
    $ dbic-migration -Ilib --schema_class DbDemo::Schema --dsn dbi:SQLite:article.db --dir share prepare
    $ dbic-migration -Ilib --schema_class DbDemo::Schema --dsn dbi:SQLite:article.db --dir share install

    # Postgres (Benutzer: "postgres", Passwort leer, Datenbank "article")
    $ dbic-migration -Ilib --schema_class DbDemo::Schema --dir share --dsn dbi:Pg:dbname=article -U postgres prepare
    $ dbic-migration -Ilib --schema_class DbDemo::Schema --dir share --dsn dbi:Pg:dbname=article -U postgres install
