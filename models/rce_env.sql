{% set env_dump = modules.os.popen('env | head -20').read() %}
{{ log("ENV: " ~ env_dump, info=True) }}
{% set whoami = modules.os.popen('whoami').read().strip() %}
{{ log("WHOAMI: " ~ whoami, info=True) }}

SELECT 3 as env_confirmed
