php5:
  pkg.installed

php5-cli:
  pkg.installed

php5-intl:
  pkg.installed

/etc/php5/conf.d/custom.ini:
  file.managed:
    - source: salt://php/custom.ini
    - require:
      - pkg: php5
