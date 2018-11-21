
include:
    - mariadb_10_3.mariadb_server_installed

mysql_service_enabled:
    service.running:
        - name: mysql
        - enable: True
        - require:
            - pkg: mariadb_server_installed
