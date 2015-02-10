
include:
    - mariadb_5_5.repo_installed
    - mysql.default_mysql_uninstalled

mariadb_server_installed:
    pkg.installed:
        - pkgs:
            - MariaDB-client
            - MariaDB-Galera-server
            - galera
        - require:
            - pkg: default_mysql_uninstalled
            - pkgrepo: repo_installed
