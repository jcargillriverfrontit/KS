{% if grains['os'] == 'Windows' %}

copyFoldersDScript:
  file.managed:
    - name: c:\salt\scripts\getLargeFolders.ps1
    - source: salt://windows/files/getLargeFolders.ps1
    - makedirs: True

runFoldersDScript:
  cmd.run:
    - name: powershell -ExecutionPolicy bypass -File c:\salt\scripts\getLargeFolders.ps1 'c:\app\KS-Store\diag'
    - shell: powershell

{% endif %}