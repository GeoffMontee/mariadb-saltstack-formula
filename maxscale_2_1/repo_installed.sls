
repo_installed:
    pkgrepo.managed:
        - name: MaxScale2.1
        - humanname: MariaDB MaxScale 2.1 Repository
{% if grains['os_family']=="RedHat" %}
{% if grains['os']=="CentOS" %}
{% if grains['osmajorrelease']=="6" %}
        - baseurl: https://downloads.mariadb.com/MaxScale/2.1/centos/6
{% endif %}
{% if grains['osmajorrelease']=="7" %}
        - baseurl: https://downloads.mariadb.com/MaxScale/2.1/centos/7
{% endif %}
{% endif %}
        - gpgkey: https://downloads.mariadb.com/MaxScale/MariaDB-MaxScale-GPG-KEY
        - gpgcheck: 1
{% endif %}
        - comments:
            - '#Added by SaltStack'

