# Jenkins with Docker

### Build
```bash
docker build -t jenkins-with-docker .
```

### Create volume
```bash
docker volume create --name jenkins_home
```

### Run
```bash
# From local image
docker run -d --privileged -p 8080:8080 -p 50000:50000 --name jenkins --restart=on-failure -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock jenkins-with-docker
```

```bash
# From Docker Hub
docker run -d --privileged -p 8080:8080 -p 50000:50000 --name jenkins --restart=on-failure -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock mewebstudio/jenkins-with-docker:latest
```

### Unlock Jenkins
```bash
docker exec -it jenkins bash -c "cat /var/jenkins_home/secrets/initialAdminPassword"
```

### Open Jenkins UI
[http://localhost:8080](http://localhost:8080)
