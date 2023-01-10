az network lb probe create \
    --resource-group LB-managed \
    --lb-name LB-frontend \
    --name myHealthProbe \
    --protocol tcp \
    --port 80