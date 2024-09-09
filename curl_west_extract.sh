curl https://ggwest.141.147.33.9.nip.io/services/v2/metadata-catalog/credentials --insecure -u oggadmin:OGGadmin123!
curl https://ggwest.141.147.33.9.nip.io/services/v2/credentials --insecure -u oggadmin:OGGadmin123!
curl https://ggwest.141.147.33.9.nip.io/services/v2/credentials/OracleGoldenGate --insecure -u oggadmin:OGGadmin123!
curl https://ggwest.141.147.33.9.nip.io/services/v2/credentials/Network --insecure -u oggadmin:OGGadmin123!

curl -X POST \
       https://ggwest.141.147.33.9.nip.io/services/v2/extracts/HRX \
       --user oggadmin:OGGadmin123!   \
       --insecure \
       -H 'Cache-Control: no-cache' \
       -d '{
    "credentials": {
      "alias": "CDB19cWestCoast",
      "domain": "OracleGoldenGate"
    },
    "encryptionProfile": "LocalWallet",
    "managedProcessSettings": "ogg:managedProcessSettings:Default",
    "targets": [
      {
        "name": "HR",
        "sizeMB": 500,
      }
    ],
    "config": [
      "EXTRACT HRX",
      "USERIDALIAS CDB19cWestCoast DOMAIN OracleGoldenGate",
      "EXTTRAIL HR",
      "TABLE WEST.HR.*;"
    ],
    "description": "West PDB HR Schema extract",
    "source": "tranlogs",
    "type": "Integrated",
    "registration": {
      "share": false,
      "containers": [
        "WEST"
      ]
     },
    "begin": "now"
   }'


