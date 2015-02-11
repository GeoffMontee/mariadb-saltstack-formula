
include:
    - mysql_5_6.repo_installed
    - mysql.default_mysql_uninstalled

mysql_server_installed:
    pkg.installed:
        - pkgs:
            - mysql-community-client
            - mysql-community-server
        - require:
            - pkg: default_mysql_uninstalled
            - pkgrepo: repo_installed
