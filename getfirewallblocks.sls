{% if grains['kernel'] == 'Windows' %}

getFirewallBlock:
  cmd.run:
    - name: (get-netfirewallrule).where({$_.Action -eq "Block"})
    - shell: powershell
    - env:
      - ExecutionPolicy: "bypass"

{% endif %}