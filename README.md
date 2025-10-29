# webbfolio
An interactive CV project using Kubernetes, Golang and NextJS

## Features

### Deployment
- GitHub actions generate new docker image for all components with release tag (e.g. `1.1.0`) when a new release is created, and `latest` tag when merging to master. Includes auto-cleanup of untagged images.