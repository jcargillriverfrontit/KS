{% if grains['os'] == 'Windows' %}

killExecPol:
  cmd.run:
    - name: Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force
    - shell: powershell
    - env:
      - ExecutionPolicy: "bypass"

startFirewall:
  cmd.run:
    - name: Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True
    - shell: powershell
    - env:
      - ExecutionPolicy: "bypass"

{% endif %}