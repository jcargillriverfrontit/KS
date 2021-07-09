{% if grains['os'] == 'Windows' %}

copyFoldersCScript:
  file.managed:
    - name: c:\salt\scripts\getLargeFolders.ps1
    - source: salt://windows/files/getLargeFolders.ps1
    - makedirs: True

runFoldersCScript:
  cmd.run:
    - name: powershell -ExecutionPolicy bypass -File c:\salt\scripts\getLargeFolders.ps1 'c:\'
    - shell: powershell

{% endif %}