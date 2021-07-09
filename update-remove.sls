{% if grains['os'] == 'Windows' %}

copyRemovescript:
  file.managed:
    - name: c:\salt\scripts\removeUpdates.ps1
    - source: salt://windows/files/removeUpdates.ps1
    - makedirs: True

removeUpdates:
  cmd.script:
    - source: c:\salt\scripts\removeUpdates.ps1
    - shell: powershell
    - env: 
      - ExecutionPolicy: "bypass"

{% endif %}