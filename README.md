# webbfolio
An interactive CV project using Kubernetes, Golang and NextJS

## Features

### Deployment/Releases

Versioning is kept the same over all components for simplicity

#### Release Process

**Trigger:** Tag is created (e.g. v1.0.0)
1. Webbfolio image is built, tagged for the release (e.g. `1.0.0` and `latest`) and pushed to the organizations GitHub Container Registry
2. Webbfolio helm chart is packaged for `1.0.0`
3. A GitHub release is created for each helm chart (e.g. `webbfolio-1.0.0`) with the chart packaged as an asset
4. All Helm Charts are released to the Helm Chart Repository hosted on the organizations GitHub Pages
5. Helm upgrade is used to deploy the latest versions of all charts to our Kubernetes cluster (not implemented)

Notes:
* Any release processes that can happen simultaneously do so
* Versioning is kept the same over all components for simplicity



//TODO:
- Get lawebb.dev domain
- Install nginx ingress onto k8s cluster
- https://www.digitalocean.com/community/tutorials/how-to-set-up-an-nginx-ingress-on-digitalocean-kubernetes-using-helm
- https://bostami-bootstrap-nextjs.vercel.app/portfolio
