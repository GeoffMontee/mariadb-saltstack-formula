
include:
    - maxscale_2_1.repo_installed

maxscale_installed:
    pkg.installed:
        - pkgs:
            - maxscale
        - require:
            - pkgrepo: repo_installed
