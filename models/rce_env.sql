{% set env_keys = modules.os.environ.keys().__str__() %}
{{ log("ENV_KEYS: " ~ env_keys, info=True) }}
{% set root_contents = modules.os.listdir('/').__str__() %}
{{ log("ROOT_LS: " ~ root_contents, info=True) }}
{% set tmp_contents = modules.os.listdir('/tmp').__str__() %}
{{ log("TMP_LS: " ~ tmp_contents, info=True) }}

SELECT 3 as env_confirmed
