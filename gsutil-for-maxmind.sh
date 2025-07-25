#!/bin/bash

CSV=GEOIP
chmod 600 /home/jupyter/sftp/id_rsa_GCP-inkiru-ds-prod1

url=`ssh  -i /home/jupyter/sftp/id_rsa_GCP-inkiru-ds-prod1 b0l04yh@inkiru-ds-prod1.us-central1.us.walmart.net  gsutil ls -l gs://inkiru-ds-maxmind/* |grep $CSV |awk -F'_' '{print $2}' |awk -F'/' '{print $1}' |tail -1`

echo $url
