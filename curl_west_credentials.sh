curl https://ggwest.141.147.33.9.nip.io/services/v2/metadata-catalog/credentials --insecure -u oggadmin:OGGadmin123!
curl https://ggwest.141.147.33.9.nip.io/services/v2/credentials --insecure -u oggadmin:OGGadmin123!
curl https://ggwest.141.147.33.9.nip.io/services/v2/credentials/OracleGoldenGate --insecure -u oggadmin:OGGadmin123!
curl https://ggwest.141.147.33.9.nip.io/services/v2/credentials/Network --insecure -u oggadmin:OGGadmin123!

curl -X POST \
       https://ggwest.141.147.33.9.nip.io/services/v2/credentials/Network/oggadminEastCoast \
       --user oggadmin:OGGadmin123!   \
       --insecure \
       -H 'Cache-Control: no-cache' \
       -d '{
         "userid":"oggadmin",
         "password":"OGGadmin123!"
     }'


