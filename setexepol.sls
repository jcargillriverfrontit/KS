{% if grains['kernel'] == 'Windows' %}

setExecPol:
  cmd.run:
    - name: Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force
    - shell: powershell
    - env:
      - ExecutionPolicy: "bypass"

{% endif %}