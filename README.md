# segger-embedded-studio-docker

### Build dockerfile
```
docker build . -t lnl/ses:latest
```
 
### Run dockerfile
```
docker run -v <host src path>:/src -it lnl/ses /ses/bin/emBuild -config 'Release' /src/user-project.emProject
```
