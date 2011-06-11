use utf8;
use DBIx::Skinny connect_info => +{
    dsn             => qq{dbi:SQLite:dbname=$0.db},
    connect_options => +{sqlite_unicode => 1,}
};

package DB::Schema;
use DBIx::Skinny::Schema;
install_table 'book' => schema {
    pk 'id';
    columns qw/
                  id title detail
              /;
};
