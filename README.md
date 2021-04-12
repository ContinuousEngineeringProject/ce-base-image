# ce-base-image
_The base image used for the [continuousengineeringproject/ce-cli](https://github.com/continuousemgineeringproject/ce-cli) & [continuousengineeringproject/ce-api](https://github.com/continuousemgineeringproject/ce-api) container image._

[![License](https://img.shields.io/github/license/ContinuousEngineeringProject/ce-base-image)](https://github.com/ContinuousEngineeringProject/ce-base-image/blob/master/LICENSE)
[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg)](https://conventionalcommits.org)
[![DepShield Badge](https://depshield.sonatype.org/badges/ContinuousEngineeringProject/ce-base-image/depshield.svg)](https://depshield.github.io)
[![GitHub release](https://img.shields.io/github/v/release/ContinuousEngineeringProject/ce-base-image?include_prereleases)](https://github.com/ContinuousEngineeringProject/ce-base-image/releases/latest)
[![Slack Status](https://img.shields.io/badge/slack-join_chat-white.svg?logo=slack&style=social)](https://continuousengproject.slack.com)


## Overview
The intention of this project is to provide an image with the necessary tools and packages that are required by both [continuousengineeringproject/ce-cli](https://github.com/continuousemgineeringproject/ce-cli) & [continuousengineeringproject/ce-api](https://github.com/continuousemgineeringproject/ce-api) projects. The ce-base-image image is built upon a [centos image](https://hub.docker.com/_/centos), we extend this base image and include the following tools and packages:
- [golang](https://golang.org/)
- [yum](http://yum.baseurl.org/)
- [GitHub CLI](https://github.com/cli/cli)
- [terraform](https://www.terraform.io/)
- [gcloud](https://cloud.google.com/sdk/gcloud/)
- [helm](https://helm.sh/)
- [jx](https://github.com/jenkins-x/jx)
- [kustomize](https://github.com/kubernetes-sigs/kustomize)
- [yq](https://github.com/mikefarah/yq)
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [helmfile](https://github.com/roboll/helmfile)
- [gsutil](https://cloud.google.com/storage/docs/gsutil)


## Usage

### Build the image
Use the following command to build the docker image:
```sh
make build
```

### Run the image
To use the ce-base-image as a complete and stateful environment please use the following as an example:
```sh
make run
```

### Scan the image
Use the following command to scan the image:
```zsh
make scan 
```

### History of the image
Use the following command to see the history of the image:
```zsh
make history 
```

### Publish the image
Use the following command to publish the docker image to docker hub:
```zsh
make publish VERSION=<REPLACE WITH VERSION NUMBER>
```


## Contributing
Read [CONTRIBUTING.md][CONTRIB] for details of all the ways you can contribute to the project.

Also read [CODE_OF_CONDUCT.md][COC] for details on our code of conduct for the project.


## Versioning
We use [SemVer][SEMVER] for versioning. For the versions available, see the [tags on this repository][REPOTAGS].


## License

Licensed under the MIT license - see the [LICENSE][LICENSE] file for details.


[LICENSE]: LICENSE
[SEMVER]: http://semver.org/
[COC]: CODE_OF_CONDUCT.md
[CONTRIB]: CONTRIBUTING.md
[REPOTAGS]: https://github.com/continuousengineeringproject/ce-base-image/tags