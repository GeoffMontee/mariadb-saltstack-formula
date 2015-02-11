
repo_installed:
    pkgrepo.managed:
        - name: MySQL5.5
        - humanname: MySQL 5.5 Repository
{% if grains['os_family']=="RedHat" %}
{% if grains['os']=="CentOS" %}
{% if grains['osmajorrelease']=="6" %}
        - baseurl: http://repo.mysql.com/yum/mysql-5.5-community/el/6/$basearch/
{% endif %}
{% if grains['osmajorrelease']=="7" %}
        - baseurl: http://repo.mysql.com/yum/mysql-5.5-community/el/7/$basearch/
{% endif %}
{% endif %}
        - gpgkey: http://pgp.mit.edu/pks/lookup?op=get&search=0x8C718D3B5072E1F5
        - gpgcheck: 0
{% endif %}
        - comments:
            - '#Added by SaltStack'

