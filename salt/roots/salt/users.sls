{{ pillar['service_name'] }}:
  user.present:
    - shell: /bin/false
  group.present:
    - members:
      - {{ pillar['service_name'] }}

cowsay:
  pkg.installed
  
autoconf:
  pkg.installed
  
libpcap-dev:
  pkg.installed

libssl-dev:
  pkg.installed
  
libtool:
  pkg.installed
  
libnet1-dev:
  pkg.installed

zlib1g-dev:
  pkg.installed

