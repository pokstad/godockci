# godockci
Golang docker image for CI usage.

## Usage
Pull it from docker hub and use the Go tools:

`docker pull pokstad/godockci:latest`

Refer to the CircleCI integration of https://github.com/pokstad/vsaur for more details.

## Bundled Tools

- Go v1.11
- Gometalinter v2.0.11 (and vendored linters)

## Contributing
Building a new version of the docker file:

`make build`

Pushing the latest docker file built:

`make push`

Tagging latest local image as a specfic version:

`VERSION=v0.0.1 make tag`

Pushing a specific tagged version:

`VERSION=v0.0.1 make push`
