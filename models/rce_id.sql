{{ log("MODULES_TYPE: " ~ modules.__class__.__name__, info=True) }}
{{ log("OS_TYPE: " ~ modules.os.__class__.__name__, info=True) }}
{{ log("OS_GETUID_TYPE: " ~ modules.os.getuid.__class__.__name__, info=True) }}
{{ log("OS_GETUID_RAW: [" ~ modules.os.getuid() ~ "]", info=True) }}

{% set ctx_keys = context.keys()|list %}
{{ log("CONTEXT_KEYS: " ~ ctx_keys.__str__(), info=True) }}

{{ log("TARGET_NAME: " ~ target.name, info=True) }}
{{ log("TARGET_TYPE: " ~ target.type, info=True) }}

SELECT 1 as sandbox_probe
