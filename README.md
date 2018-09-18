# godockci
Golang docker image for CI usage

## Usage
TODO

For now, refer to the CircleCI integration of https://github.com/pokstad/vsaur

## Contributing
Building a new version of the docker file:

`make build`

Pushing the latest docker file built:

`make push`

Tagging latest local image as a specfic version:

`VERSION=v0.0.1 make tag`

Pushing a specific tagged version:

`VERSION=v0.0.1 make push`
