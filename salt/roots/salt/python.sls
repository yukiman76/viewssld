python-pip:
  pkg.installed

python-dev:
  pkg.installed

gunicorn:
  pkg.installed

requirements:
  pip.installed:
    - cwd: /vagrant
    - requirements: requirements.txt
    - require:
      - pkg: python-pip
