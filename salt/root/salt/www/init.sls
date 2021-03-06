apache2:
  service:
    - dead
    - enable: False

nginx:
  pkg:
    - installed
    - require:
      - service: apache2
  service:
    - running
    - enable: True
    - require:
      - pkg: nginx
    - watch:
      - file: /etc/nginx/sites-enabled/default

/etc/nginx/sites-enabled/default:
  file.managed:
    - source: salt://www/server.conf
    - require:
      - pkg: nginx
