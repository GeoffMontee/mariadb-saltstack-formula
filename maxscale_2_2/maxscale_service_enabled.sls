
include:
    - maxscale_2_2.maxscale_installed

maxscale_service_enabled:
    service.running:
        - name: maxscale
        - enable: True
        - require:
            - pkg: maxscale_installed
