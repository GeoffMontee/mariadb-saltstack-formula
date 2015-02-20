
include:
    - percona.repo_installed

xtrabackup_installed:
    pkg.installed:
        - pkgs:
            - percona-xtrabackup
        - require:
            - pkgrepo: repo_installed
