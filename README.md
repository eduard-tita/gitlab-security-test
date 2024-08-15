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

## Use the above image in GitLab

Add the following step to a GitLab pipeline:

```yaml
iq_policy_eval:
  stage: test
  image: etita/scatest:latest
  script:
    - /opt/sonatype/bin/main.sh
  artifacts:
    reports:
      dependency_scanning: sca-report.json
```