curl -X PATCH \
       https://ggeast.141.147.33.9.nip.io/services/v2/deployments/EastCoastDeployment \
       --user oggadmin:OGGadmin123!   \
       --insecure \
       -H 'Cache-Control: no-cache' \
       -d '{
    "metrics": {
      "servers": [
        {
          "protocol": "uds",
          "socket": "PMSERVER.s",
          "type": "pmsrvr"
        },
        {
           "type":"statsd",
           "host":"statsd-exporter-service"
        }
      ],
      "enabled": true
    }
   }'


