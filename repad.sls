{% if grains['os'] == 'Windows' %}

copyRepScript:
  file.managed:
    - name: c:\salt\scripts\repad.ps1
    - source: salt://windows/files/repad.ps1
    - makedirs: True

reAD:
  cmd.script:
    - source: c:\salt\scripts\repad.ps1
    - shell: powershell
    - env: 
      - ExecutionPolicy: "bypass"

{% endif %}