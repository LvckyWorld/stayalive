import subprocess
import requests
import sys

prozessName = sys.argv[1]
username = "LvckyWorld | StayAlifeScript"

print(f"\033[93m LvckyWorld-Script gestartet, LW-Stay-Alive\n\n\033[0m")

while True:
    s = subprocess.call(['sh', './run.sh', "process"])
    print('\n\n\n\nWARNING ERROR CRASH DETECTED\n\n')