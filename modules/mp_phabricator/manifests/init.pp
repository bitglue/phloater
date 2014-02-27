class mp_phabricator (
    $phabricator_path = '/usr/local/src/phabricator',
    $libphutil_path = '/usr/local/src/libphutil',
    $arcanist_path = '/usr/local/src/arcanist',
    $timezone = $::timezone,
    $repo_path = '/var/lib/repo',
    $base_uri = undef,
) {

    class { 'mp_phabricator::install_deps': } ->
    class { 'mp_phabricator::install_phabricator': } ->
    class { 'mp_phabricator::configure_phabricator':
        repo_path => $repo_path,
        base_uri => $base_uri,
    } ->
    class { 'mp_phabricator::apache':
        phabricator_path => $phabricator_path,
        timezone => $timezone,
    } ->
    class { 'mp_phabricator::daemons':
        phabricator_path => $phabricator_path,
    }
}
