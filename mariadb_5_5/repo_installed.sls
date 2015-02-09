
repo_installed:
    pkgrepo.managed:
        - name: MariaDB5.5
        - humanname: MariaDB5.5 Repository
{% if grains['os_family']=="RedHat" %}
{% if grains['os']=="CentOS" %}
{% if grains['osmajorrelease']=="6" %}
{% if grains['cpuarch']=="x86" %}
        - baseurl: http://yum.mariadb.org/5.5/centos6-x86
{% endif %}
{% if grains['cpuarch']=="x86_64" %}
        - baseurl: http://yum.mariadb.org/5.5/centos6-amd64
{% endif %}
{% endif %}
{% if grains['osmajorrelease']=="7" %}
{% if grains['cpuarch']=="x86" %}
        - baseurl: http://yum.mariadb.org/5.5/centos7-x86
{% endif %}
{% if grains['cpuarch']=="x86_64" %}
        - baseurl: http://yum.mariadb.org/5.5/centos7-amd64
{% endif %}
{% endif %}
{% endif %}
        - gpgkey: https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
        - gpgcheck: 1
{% endif %}
        - comments:
            - '#Added by SaltStack'

