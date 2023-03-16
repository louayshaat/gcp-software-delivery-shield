# gcp-software-delivery-shield
This repo shows how to integrate Container Aalysis, ARtifactv regiostry and Binary authorization into a Cloud Build Pipeline

## Import the Binary Auth Docker Container

## Create Artifact Repistry repo
```
gcloud artifacts repositories create my-repo
```
## Run the build
```
gcloud builds submit --config=cloudbuild.yaml'''
```
