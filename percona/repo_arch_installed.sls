
repo_arch_installed:
    pkgrepo.managed:
        - name: Percona
        - humanname: Percona Repository
{% if grains['os_family']=="RedHat" %}
{% if grains['os']=="CentOS" %}
        - baseurl:  http://repo.percona.com/release/$releasever/RPMS/$basearch
{% endif %}
        - gpgkey: http://www.percona.com/downloads/RPM-GPG-KEY-percona
        - gpgcheck: 1
{% endif %}
        - comments:
            - '#Added by SaltStack'

