{% if grains['os'] == 'Windows' %}

copy script:
  file.managed:
    - name: c:\salt\scripts\getAvailableUpdates.ps1
    - source: salt://windows/files/getAvailableUpdates.ps1
    - makedirs: True

get updates available:
  cmd.script:
    - source: c:\salt\scripts\getAvailableUpdates.ps1
    - shell: powershell
    - env: 
      - ExecutionPolicy: "bypass"

{% endif %}