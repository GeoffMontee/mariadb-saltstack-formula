
default_mysql_removed:
    pkg.removed:
        - pkgs:
{% if grains['os']=="CentOS" %}
{% if grains['osmajorrelease']=="6" %}
            - mysql
            - mysql-server
            - mysql-libs
{% endif %}
{% if grains['osmajorrelease']=="7" %}
            - mariadb
            - mariadb-server
            - mariadb-libs
{% endif %}
{% endif %}
