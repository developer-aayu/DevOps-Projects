# Install  prometheus using Helm

## Add helm repo

`helm repo add prometheus-community https://prometheus-community.github.io/helm-charts`


## Update helm repo

`helm repo update`

### do this everytime before installing something


## Install helm prometheus controller

`helm install prometheus prometheus-community/prometheus`

### read the commands after it get installed


## Expose Prometheus Service

`kubectl expose service prometheus-server --type=NodePort --target-port=9090 --name=prometheus-server-ext`

### This is required to access prometheus-server using your browser.

## Note on Kube-State-Metrics

`Deploying Prometheus via Helm also includes the kube-state-metrics service, which provides detailed metrics on Kubernetes resources such as deployments, services, and pods. To view these metrics, expose the kube-state-metrics service using a NodePort, similar to how you exposed the Prometheus server.`


## Prometheus Workflow

### Scraping:

`Prometheus periodically scrapes metrics from targets defined in the configuration or discovered through service discovery.`

### Storage:

`Scraped data is stored in the local time-series database with high retention and compression.`

### Querying:

`Users query the stored metrics using PromQL for visualization, analysis, and troubleshooting.`

### Alerting:

`Alerts are triggered based on PromQL queries, and Alertmanager routes these alerts to the appropriate channels.`