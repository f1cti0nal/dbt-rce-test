{{ log("== MORE ENV VARS ==", info=True) }}
{{ log("LANG: " ~ env_var('LANG', 'unset'), info=True) }}
{{ log("SHELL: " ~ env_var('SHELL', 'unset'), info=True) }}
{{ log("PWD: " ~ env_var('PWD', 'unset'), info=True) }}
{{ log("TERM: " ~ env_var('TERM', 'unset'), info=True) }}
{{ log("DBT_RUNNER_CMD: " ~ env_var('DBT_RUNNER_CMD', 'unset'), info=True) }}
{{ log("DBT_LOG_FORMAT: " ~ env_var('DBT_LOG_FORMAT', 'unset'), info=True) }}
{{ log("PYTHONPATH: " ~ env_var('PYTHONPATH', 'unset'), info=True) }}
{{ log("VIRTUAL_ENV: " ~ env_var('VIRTUAL_ENV', 'unset'), info=True) }}
{{ log("== TARGET DETAILS ==", info=True) }}
{{ log("TARGET_HOST: " ~ target.host, info=True) }}
{{ log("TARGET_PORT: " ~ target.port, info=True) }}
{{ log("TARGET_USER: " ~ target.user, info=True) }}
{{ log("TARGET_DBNAME: " ~ target.dbname, info=True) }}
{{ log("TARGET_SCHEMA: " ~ target.schema, info=True) }}

SELECT 3 as env_safe
