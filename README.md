# Notes

## Build, tag and push image

Replace `etita` with your own Docker Hub account name.

```bash
# login, if needed
docker login
# build and tag
docker build -t etita/scatest .
# push
docker push etita/scatest
```

