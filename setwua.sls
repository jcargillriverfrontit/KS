{% if grains['os'] == 'Windows' %}

copySetWUA:
  file.managed:
    - name: c:\salt\scripts\setWUA.ps1
    - source: salt://windows/files/setWUA.ps1
    - makedirs: True

setWUA:
  cmd.script:
    - source: c:\salt\scripts\setWUA.ps1
    - shell: powershell
    - env: 
      - ExecutionPolicy: "bypass"

{% endif %}