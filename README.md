# [GCP Software Delivery Shield](https://cloud.google.com/solutions/software-supply-chain-security) Pipeline

![alt text](SDS.jpg)


This repo shows how to integrate [Container Analysis](https://cloud.google.com/container-analysis/docs), [Artifact Registry](https://cloud.google.com/artifact-registry) and [Binary Authorization](https://cloud.google.com/binary-authorization) into a [Cloud Build](https://cloud.google.com/build) Pipeline

## Import the Binary Auth Docker Container
```
export PROJECT=PROJECTNAME

git clone https://github.com/GoogleCloudPlatform/gke-binary-auth-tools
cd binauthz-tools
gcloud builds submit --project $PROJECT --tag "gcr.io/$PROJECT/cloudbuild-attestor"
```
## Clone this repo
```
git clone https://github.com/louayshaat/gcp-software-delivery-shield
```

## Create Artifact Repistry repo
```
gcloud artifacts repositories create sds
```

## Update the cloudbuild file

Replace the repo-name in the cloudbuild.yaml file with your repo that you created in case you use a different nam,e


## Run the build
```
gcloud builds submit --config=cloudbuild.yaml'''
```
