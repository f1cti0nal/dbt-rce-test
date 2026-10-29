{{ log("STR_CLASS: " ~ ''.__class__.__name__, info=True) }}
{{ log("STR_MRO: " ~ ''.__class__.__mro__.__str__(), info=True) }}

{% set all_vars = {} %}
{% for key in ['project_name', 'schema', 'database', 'target', 'config', 'model', 'this', 'adapter', 'api', 'flags', 'modules', 'run_started_at', 'invocation_id', 'thread_id'] %}
  {% if context[key] is defined %}
    {{ log("VAR_" ~ key ~ ": " ~ context[key].__str__()[:200], info=True) }}
  {% endif %}
{% endfor %}

{% if adapter is defined %}
{{ log("ADAPTER_TYPE: " ~ adapter.__class__.__name__, info=True) }}
{% endif %}

SELECT 3 as jinja_probe
