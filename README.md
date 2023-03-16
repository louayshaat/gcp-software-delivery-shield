# gcp-software-delivery-shield
This repo shows how to integrate Container Aalysis, Artifact Registry and Binary Authorization into a Cloud Build Pipeline


## Clone this repo
```
git clone https://github.com/louayshaat/gcp-software-delivery-shield
```
## Import the Binary Auth Docker Container
```
export PROJECT=PROJECTNAME

git clone <https://github.com/GoogleCloudPlatform/gke-binary-auth-tools> ~/binauthz-tools
cd binauthz-tools
gcloud builds submit --project $PROJECT --tag "gcr.io/$PROJECT/cloudbuild-attestor"
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
