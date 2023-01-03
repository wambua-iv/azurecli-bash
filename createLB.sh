az group create -n LB-managed --location eastus

az network vnet create -g LB-managed --location eastus\
    -n LB-vnet \
    --address-prefixes 10.110.0.0/16 \
    --subnet-name LB-backend \
    --subnet-prefixes 10.110.0.0/24


az network public-ip create \
    --resource-group LB-managed \
    --name LB-pub-ip \
    --sku standard \
    --zone 1

az network lb create \
    --resource-group LB-managed \
    --name LB-frontend \
    --sku standard \
    --public-ip-address LB-pub-ip \
    --backend-pool-name myManageBackend