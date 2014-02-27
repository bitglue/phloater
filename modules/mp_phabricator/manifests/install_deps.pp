class mp_phabricator::install_deps {
    # PHP modules required by Phabricator
    package { [
        'php5-mysql',
        'php5-curl',
        'php5-gd',
        'php-apc',
    ]:
        ensure => 'installed',
        notify => Service['httpd'],
    }

    # The CLI is needed for some of the administration commands.
    package { 'php5-cli':
        ensure => 'installed',
    }

    # I heard Phabricator also needs a database.
    class { '::mysql::server':
        override_options => {
            'mysqld' => {
                'sql-mode' => 'STRICT_ALL_TABLES',
            },
        },
        # it's OK to restart mysql after my.cnf is configured by puppet
        restart => true,
    }
}
