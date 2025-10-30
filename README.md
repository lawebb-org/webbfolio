# webbfolio
An interactive CV project using Kubernetes, Golang and NextJS

## Features

### Deployment/Releases

Versioning is kept the same over all components for simplicity
GitHub actions used to create a release

#### Digital Ocean
- GitHub actions used to install the newest version of the helm release whenever a new release is generated
- UI exposed using Nginx Ingress


#### Helm
- GitHub pages used to host Helm Chart Repository
- GitHub actions used to update helm charts to use the latest image tags and version the releases
- GitHub actions used to update the Helm Chart Repository with latest releases
- GitHub actions adds the helm chart release to the release artifacts

#### Container Image Management
- GitHub actions generate new docker image for all components with release tag (e.g. `1.1.0`) and `latest` when a new release is created, and `dev` tag when merging to master. Includes auto-cleanup of untagged images.

//TODO:
- Get lawebb.dev domain
- Setup GitHub pages Helm Chart Repo
- Setup release workflow (create tag -> build & tag images (latest and 1.9.9) -> update helm chart version & image tags -> run the helm chart releaser action -> create release -> run helm upgrade for DO k8s cluster)
- Install nginx ingress onto k8s cluster
- Only tag with `dev` when using workflow_dispatch, tag with `latest` when doing a release, no tag with master
- https://www.youtube.com/watch?v=fX2TWxl64yQ
- https://www.harness.io/blog/helm-chart-repo
- https://helm.sh/docs/howto/chart_releaser_action/
- https://www.digitalocean.com/community/tutorials/how-to-set-up-an-nginx-ingress-on-digitalocean-kubernetes-using-helm
- https://bostami-bootstrap-nextjs.vercel.app/portfolio