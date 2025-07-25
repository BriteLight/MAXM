import mlutils
from mlutils import dataset
from mlutils import connector
import sys
import os


os.system('ssh  -i /home/jupyter/sftp/id_rsa_GCP-inkiru-ds-prod1 b0l04yh@inkiru-ds-prod1.us-central1.us.walmart.net  /u/users/b0l04yh/bin/maxmi.sh')

for geoIP in [ 'Blocks-IPv4', 'Blocks-IPv6', 'ISP', 'Locations-en']:
    with open('/home/jupyter/gsutil-for-maxmind.sh', 'r') as file:
        gutl = file.read().replace('GEOIP', geoIP)
    
    with open('/home/jupyter/gsutil-for-geoIP.sh', 'w') as scrpt:
        scrpt.write(gutl)
    
    os.system('chmod 740 /home/jupyter/gsutil-for-geoIP.sh')
    mmdate = !./gsutil-for-geoIP.sh
    with open('/home/jupyter/maxmi-'+geoIP+'.sql', 'r') as file:
        maxm = file.read().replace('XXXXXXXX', mmdate[0])
    
    connector.execute(name='BigQuery', statement=maxm, sep=';')

