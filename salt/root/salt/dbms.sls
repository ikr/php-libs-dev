couchdb:
  pkg:
    - installed
  service:
    - running
    - enable: True
    - require:
      - pkg: couchdb
