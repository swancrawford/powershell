az group create --name tacx-k8s-dev --location westeurope

az aks create --resource-group tacx-k8s-dev --name testapp --node-count 1 --generate-ssh-keys --node-vm-size Standard_B2s

az aks get-credentials --resource-group tacx-k8s-dev --name testapp

kubectl apply -f azure-vote-all-in-one-redis.yaml

az network public-ip update
