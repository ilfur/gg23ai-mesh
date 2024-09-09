curl -X POST \
       https://ggeast.141.147.33.9.nip.io/services/v2/replicats/HRX \
       --user oggadmin:OGGadmin123!   \
       --insecure \
       -H 'Cache-Control: no-cache' \
       -d '{
    "name": "West19cToEast23ai",
    "source": {
      "uri": "trail://goldengate-oracle-westcoast:8888/services/WestCoastDeployment/distsrvr/v2/sources?trail=HR",
      "details": {
        "encryption": {
          "algorithm": "NONE"
        }
      }
    },
    "target": {
      "uri": "ws://goldengate-oracle-eastcoast:8888/services/EastCoastDeployment/recvsrvr/v2/targets?trail=HR",
      "details": {
        "trail": {
          "seqLength": 9,
          "sizeMB": 500
        },
        "encryption": {
          "algorithm": "NONE"
        },
        "compression": {
          "enabled": false
        }
      }
    },
    "options": {
      "eofDelayCSecs": 10,
      "checkpointFrequency": 10,
      "critical": false,
      "autoRestart": {
        "retries": 10,
        "delay": 2
      },
      "streaming": true
    },
    "begin": {
      "sequence": 0,
      "offset": 0
    },
    "targetInitiated": true,
    "encryptionProfile": "LocalWallet",
   }'


