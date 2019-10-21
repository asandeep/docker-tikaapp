# docker-tikaapp
A minimal Apache Tika Docker image.

The image is based on openjdk:8-jre-alpine and no additional dependencies are installed to keep the image size to minimum.

The image places **Apache Tika 1.22** application jar in root directory which can be invoked in CLI mode to extract text content and metadata from multiple file formats.

## Usage

#### Pull image from repository

```bash
docker pull asandeepin/docker-tikaapp
```

#### To execute any command inside the container

```bash
docker run -it asandeepin/docker-tikaapp java -jar tika-app-1.22.jar <file_path>
```

#### or run container in detached mode

```bash
docker run -itd docker-tikaapp
```

#### and use `docker exec` to issue commands afterwords.

```bash
docker exec -it <container_name/id> java -jar tika-app-1.22.jar <file_path>
```

> Make sure to mount volumes to source input files from host machine inside container.

### For more command line options and how to use batch operations refer to [official getting started guide](https://tika.apache.org/1.22/gettingstarted.html).
