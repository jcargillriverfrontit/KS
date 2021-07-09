{% if grains['os'] == 'Windows' %}

copy script:
  file.managed:
    - name: c:\salt\scripts\setRDP.ps1
    - source: salt://windows/files/setRDP.ps1
    - makedirs: True

set rdp:
  cmd.script:
    - source: c:\salt\scripts\setRDP.ps1
    - shell: powershell
    - env: 
      - ExecutionPolicy: "bypass"

{% endif %}