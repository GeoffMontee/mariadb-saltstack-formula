
mysql_server_uninstalled:
    pkg.removed:
        - pkgs:
            - mysql-community-client
            - mysql-community-server
