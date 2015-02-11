
include:
    - mysql_5_5.mysql_server_installed

mysql_service_enabled:
    service.running:
        - name: mysqld
        - enable: True
        - require:
            - pkg: mysql_server_installed
