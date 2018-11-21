
include:
    - mariadb_10_2.mariadb_server_installed

mysql_service_enabled:
    service.running:
        - name: mysql
        - enable: True
        - require:
            - pkg: mariadb_server_installed
