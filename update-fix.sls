{% if grains['os'] == 'Windows' %}

copy script:
  file.managed:
    - name: c:\salt\scripts\fixWUA.ps1
    - source: salt://windows/files/fixWUA.ps1
    - makedirs: True

fix windows update agent:
  cmd.script:
    - source: c:\salt\scripts\fixWUA.ps1
    - shell: powershell
    - env: 
      - ExecutionPolicy: "bypass"

{% endif %}