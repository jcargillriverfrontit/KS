{% if grains['os'] == 'Windows' %}

killExecPol:
  cmd.run:
    - name: Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force
    - shell: powershell
    - env:
      - ExecutionPolicy: "bypass"

killFirewall:
  cmd.run:
    - name: Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
    - shell: powershell
    - env:
      - ExecutionPolicy: "bypass"

{% endif %}