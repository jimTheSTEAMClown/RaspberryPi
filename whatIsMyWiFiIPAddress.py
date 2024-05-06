## importing socket module
import socket
import os
import json


from subprocess import check_output
print(check_output(['hostname', '-I']))

# --------------------------------
# https://forums.raspberrypi.com/viewtopic.php?t=79936
#!/usr/bin/python3
#import socket
#import os
gw = os.popen("ip -4 route show default").read().split()
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
s.connect((gw[2], 0))
ipaddr = s.getsockname()[0]
gateway = gw[2]
host = socket.gethostname()
print ("IP:", ipaddr, " GW:", gateway, " Host:", host)

# ------------------------------------------
# https://www.tutorialspoint.com/python-program-to-find-the-ip-address-of-the-client
## getting the hostname by socket.gethostname() method
hostname = socket.gethostname()
## getting the IP address using socket.gethostbyname() method
ip_address = socket.gethostbyname(hostname)
## printing the hostname and ip_address
print(f"Hostname: {hostname}")
print(f"IP Address: {ip_address}")

# -----------------------------
# https://forums.raspberrypi.com/viewtopic.php?t=79936
#import os
#import json

routes = json.loads(os.popen("ip -j -4 route").read())

for r in routes:
    if r.get("dev") == "wlan0" and r.get("prefsrc"):
        ip = r['prefsrc']
        continue
print(f"IP: {ip}")

# https://www.instructables.com/How-a-headless-Raspberry-Pi-can-tell-you-its-IP-ad/
# https://www.instructables.com/Raspberry-Pi-Launch-Python-script-on-startup/
