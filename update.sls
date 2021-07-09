{% if grains['os'] == 'Windows' %}

copy script:
  file.managed:
    - name: c:\salt\scripts\getAndInstallCriticalPatchesWuaApi.ps1
    - source: salt://windows/files/getAndInstallCriticalPatchesWuaApi.ps1
    - makedirs: True

update server:
  cmd.script:
    - source: c:\salt\scripts\getAndInstallCriticalPatchesWuaApi.ps1
    - shell: powershell
    - env: 
      - ExecutionPolicy: "bypass"

{% endif %}