@echo off
echo Creating Docker host using docker-machine in Azure (North Europe) Azure-Live...
set AZURE_SUBSCRIPTION="YOUR SUBSCRIPTION ID"
docker-machine create --driver azure --azure-subscription-id %AZURE_SUBSCRIPTION% --azure-image Canonical:UbuntuServer:16.04.0-LTS:latest --azure-location northeurope  --azure-size Standard_A1 --azure-ssh-user james --azure-resource-group Azure-Live --azure-open-port 80 --azure-open-port 22 --azure-open-port 443 --azure-open-port 15672 --azure-open-port 5672 docker-host
