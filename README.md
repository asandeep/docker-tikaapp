# docker-tikaapp
A minimal Apache Tika Docker image.

The image is based on openjdk:11.0.8-jre-slim and no additional dependencies are installed to keep the image size to minimum.

## Usage

#### Pull latest image from repository

```bash
docker pull asandeepin/docker-tikaapp:latest
```

#### To execute any command inside the container

```bash
docker run asandeepin/docker-tikaapp:latest tika [option...] [file]
```

#### or run container in detached mode

```bash
docker run -itd asandeepin/docker-tikaapp:latest /bin/bash
```

#### and use `docker exec` to issue commands afterwords.

```bash
docker exec -it <container_name/id> tika [option...] [file]
```

> Make sure to mount volumes to source input files from host machine inside container.

### For more command line options and how to use batch operations refer to [official getting started guide](https://tika.apache.org/1.22/gettingstarted.html).

___

## Pushing a new version

To push images for new version to Docker hub, follow below steps.

1. Clone the repository.

    ```bash
    git clone git@github.com:asandeep/docker-tikaapp.git
    ```
2. To build images locally and play around, run below command:

    ```bash
    ./build.sh <TIKA_VERSION>
    ```
3. Once satisfied, update the version string in `current_version` file.
4. Create a PR to merge changes to master branch. Once PR is merged, autobuild will automatically push the latest image with relevant tags to Docker hub.
