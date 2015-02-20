
repo_noarch_installed:
    pkgrepo.managed:
        - name: Percona-noarch
        - humanname: Percona noarch Repository
{% if grains['os_family']=="RedHat" %}
{% if grains['os']=="CentOS" %}
        - baseurl:  http://repo.percona.com/release/$releasever/RPMS/noarch
{% endif %}
        - gpgkey: http://www.percona.com/downloads/RPM-GPG-KEY-percona
        - gpgcheck: 1
{% endif %}
        - comments:
            - '#Added by SaltStack'

