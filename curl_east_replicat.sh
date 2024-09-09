curl -X POST \
       https://ggeast.141.147.33.9.nip.io/services/v2/replicats/HRX \
       --user oggadmin:OGGadmin123!   \
       --insecure \
       -H 'Cache-Control: no-cache' \
       -d '{
    "credentials": {
      "alias": "db23ai_east_oggadmin",
      "domain": "OracleGoldenGate"
    },
    "begin": {
      "sequence": 0,
      "offset": 0
    },
    "encryptionProfile": "LocalWallet",
    "managedProcessSettings": "ogg:managedProcessSettings:Default",
    "config": [
      "REPLICAT HRREP",
      "USERIDALIAS db23ai_east_oggadmin DOMAIN OracleGoldenGate",
      "MAP WEST.*.*, TARGET *.*;"
    ],
    "source": {
      "name": "HR"
    },
    "checkpoint": {
      "table": "C##OGGADMIN.OGGCHKPT"
    },
    "mode": {
      "type": "integrated",
      "parallel": false
    }
   }'


