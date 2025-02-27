az role assignment create --assignee "<APP_ID>" --role "Azure Kubernetes Service RBAC Cluster Admin" \
  --scope "/subscriptions/<SUBSCRIPTION_ID>/resourceGroups/<RESOURCE_GROUP>/providers/Microsoft.ContainerService/managedClusters/<AKS_CLUSTER>"






  az role assignment list --assignee "<APP_ID>" --all --output table



  #!/bin/bash

# Define Variables
APP_ID="<YOUR_SERVICE_PRINCIPAL_APP_ID>"
SUBSCRIPTION_ID="<YOUR_SUBSCRIPTION_ID>"
RESOURCE_GROUP="<YOUR_AKS_RESOURCE_GROUP>"
AKS_CLUSTER="<YOUR_AKS_CLUSTER>"

# Assign "Azure Kubernetes Service RBAC Cluster Admin" Role
echo "Assigning 'Azure Kubernetes Service RBAC Cluster Admin' role to Service Principal..."
az role assignment create --assignee "$APP_ID" --role "Azure Kubernetes Service RBAC Cluster Admin" \
  --scope "/subscriptions/$SUBSCRIPTION_ID/resourceGroups/$RESOURCE_GROUP/providers/Microsoft.ContainerService/managedClusters/$AKS_CLUSTER"

# Verify the Role Assignment
echo "Verifying role assignment..."
az role assignment list --assignee "$APP_ID" --all --output table
