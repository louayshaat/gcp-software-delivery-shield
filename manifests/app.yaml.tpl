apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: null
  labels:
    run: secure-app
  name: secure-app
spec:
  securityContext:
    runAsUser: 1000
    runAsGroup: 3000
    fsGroup: 2000
  containers:
    - image: us-central1-docker.pkg.dev/core-demos/sds/new@DIGEST
      name: secure-app
      resources:
        requests:
          memory: "64Mi"
          cpu: "250m"
        limits:
          memory: "128Mi"
          cpu: "500m"
      securityContext:
        allowPrivilegeEscalation: false
