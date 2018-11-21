
repo_installed:
    pkgrepo.managed:
        - name: MariaDB10.3
        - humanname: MariaDB10.3 Repository
{% if grains['os_family']=="RedHat" %}
{% if grains['os']=="CentOS" %}
{% if grains['osmajorrelease']=="6" %}
{% if grains['cpuarch']=="x86_64" %}
        - baseurl: http://yum.mariadb.org/10.3/centos6-amd64
{% endif %}
{% endif %}
{% if grains['osmajorrelease']=="7" %}
{% if grains['cpuarch']=="x86_64" %}
        - baseurl: http://yum.mariadb.org/10.3/centos7-amd64
{% endif %}
{% endif %}
{% endif %}
        - gpgkey: https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
        - gpgcheck: 1
{% endif %}
        - comments:
            - '#Added by SaltStack'

