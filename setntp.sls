{% if grains['os'] == 'Windows' %}

copyNTPscript:
  file.managed:
    - name: c:\salt\scripts\setNTP.ps1
    - source: salt://windows/files/setNTP.ps1
    - makedirs: True

setNTP:
  cmd.script:
    - source: c:\salt\scripts\setNTP.ps1
    - shell: powershell
    - env: 
      - ExecutionPolicy: "bypass"

{% endif %}