{% if grains['os'] == 'Windows' %}

copyIPv6:
  file.managed:
    - name: c:\salt\scripts\disableIPv6.ps1
    - source: salt://windows/files/disableIPv6.ps1
    - makedirs: True

killIPv6:
  cmd.script:
    - source: c:\salt\scripts\disableIPv6.ps1
    - shell: powershell
    - env: 
      - ExecutionPolicy: "bypass"

{% endif %}