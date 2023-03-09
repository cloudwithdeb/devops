# This repository contains helm chart configurations

# Install choco on windows using powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install helm using choco
choco install kubernetes-helm

# Add Repository
helm repo add bitnami https://charts.bitnami.com/bitnami

# Remove repository
helm repo remove bitnami

# Install package in repo
helm install mysql bitnami/mysql

# Upgrade installed package
helm upgrade premetheus monitor/kube-prometheus-stack --set grafana.adminPassword=admin

# Uninstal package in repo
helm uninstall mysql

# Get all installed packages
helm list

# List all repositories
helm repo list

# Update helm repo
helm repo update

# Set values when installing helm chart
helm install mysql bitnami/mysql --set username="Username" --set password="king122"

# Showing helm chart values
helm show values minitor/kube-prometheus-stack
helm show values monitor/kube-prometheus-stack | grep password
helm show values monitor/kube-prometheus-stack | grep -i password

# Get pull package from repositories
helm repo add bitnami https://charts.bitnami.com/bitnami
helm pull bitnami/mysql

# Creating a helm template
helm template myCustom ./Helm_Chart_Directory --values=values.yml

# List Of helm chart functions
1. lower
2. upper
3. default