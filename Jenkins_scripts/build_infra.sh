az aks get-credentials --resource-group finalproject --name cluster
cd terraform
terraform init 
terraform apply -auto-approve
cd ../kubernetes
kubectl set image deployment/petclinic petclinic=pstyp94/backend:latest
kubectl set image deployment/frontend frontend=pstyp94/frontend:latest
