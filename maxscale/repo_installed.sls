
repo_installed:
    pkgrepo.managed:
        - name: MaxScale
        - humanname: MariaDB MaxScale Repository
{% if grains['os_family']=="RedHat" %}
{% if grains['os']=="CentOS" %}
{% if grains['osmajorrelease']=="6" %}
        - baseurl: http://downloads.mariadb.com/software/MaxScale/maxscale/RPM/centos7
{% endif %}
{% if grains['osmajorrelease']=="7" %}
        - baseurl: http://downloads.mariadb.com/software/MaxScale/maxscale/RPM/centos7
{% endif %}
{% endif %}
        - gpgkey: http://downloads.mariadb.com/software/MaxScale/MaxScale-GPG-KEY.public
        - gpgcheck: 1
{% endif %}
        - comments:
            - '#Added by SaltStack'

