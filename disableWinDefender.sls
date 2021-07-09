{% if grains['os'] == 'Windows' %} 

setExecPol:
  cmd.run:
    - name: echo "error"
    
setWinDefenderDisabled:
  cmd.run:
    - name: echo "error"

{% endif %}
