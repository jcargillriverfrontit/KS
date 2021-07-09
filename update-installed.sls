{% if grains['os'] == 'Windows' %}

copy script:
  file.managed:
    - name: c:\salt\scripts\getInstalledUpdates.ps1
    - source: salt://windows/files/getInstalledUpdates.ps1
    - makedirs: True

get updates installed:
  cmd.script:
    - source: c:\salt\scripts\getInstalledUpdates.ps1
    - shell: powershell
    - env: 
      - ExecutionPolicy: "bypass"

{% endif %}