# Install using Helm

## Add helm repo

`helm repo add grafana https://grafana.github.io/helm-charts`

## Update helm repo

`helm repo update`

## Install helm 

`helm install grafana grafana/grafana`

### After installation, retrieve your Grafana admin credentials from the output commands to access the Grafana UI.


## Expose Grafana Service

### To access the Grafana interface in your browser, expose the Grafana service using a NodePort:

`kubectl expose service grafana — type=NodePort — target-port=3000 — name=grafana-ext`

## Configure Prometheus as a Data Source

Set up Prometheus as a data source in Grafana by adding the Prometheus URL in the Grafana data sources settings. This integration allows Grafana to pull metrics data from Prometheus for visualization.

## Import a Sample Dashboard

To get started quickly, import a pre-built dashboard by using the `dashboard ID 3662` This dashboard includes various pre-configured visualizations and metrics, providing a comprehensive view of your monitored environment.