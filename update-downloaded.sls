{% if grains['os'] == 'Windows' %}

copy script:
  file.managed:
    - name: c:\salt\scripts\downloadAvailableUpdates.ps1
    - source: salt://windows/files/downloadAvailableUpdates.ps1
    - makedirs: True

download updates:
  cmd.script:
    - source: c:\salt\scripts\downloadAvailableUpdates.ps1
    - shell: powershell
    - env: 
      - ExecutionPolicy: "bypass"

{% endif %}