class mp_phabricator::configure_phabricator (
    $repo_path,
    $base_uri,
) {
    # create and install repository path
    file { $repo_path:
        ensure => 'directory',
    }

    mp_phabricator::config { 'repository.default-local-path':
        value => $repo_path,
    }

    if $base_uri != undef {
        mp_phabricator::config { 'phabricator.base-uri':
            value => $base_uri,
        }
    }
}
