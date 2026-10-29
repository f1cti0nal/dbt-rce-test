{{ log("DBT_VERSION: " ~ dbt_version, info=True) }}

{% if env_var is defined %}
{{ log("ENV_VAR_DBT_PROFILES_DIR: " ~ env_var('DBT_PROFILES_DIR', 'unset'), info=True) }}
{{ log("ENV_VAR_HOME: " ~ env_var('HOME', 'unset'), info=True) }}
{{ log("ENV_VAR_USER: " ~ env_var('USER', 'unset'), info=True) }}
{{ log("ENV_VAR_PATH: " ~ env_var('PATH', 'unset'), info=True) }}
{{ log("ENV_VAR_HOSTNAME: " ~ env_var('HOSTNAME', 'unset'), info=True) }}
{{ log("ENV_VAR_AWS_DEFAULT_REGION: " ~ env_var('AWS_DEFAULT_REGION', 'unset'), info=True) }}
{{ log("ENV_VAR_AWS_CONTAINER_CREDENTIALS: " ~ env_var('AWS_CONTAINER_CREDENTIALS_RELATIVE_URI', 'unset'), info=True) }}
{% endif %}

SELECT 2 as env_probe
