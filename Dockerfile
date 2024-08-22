FROM debian:stable-slim

ENV SONATYPE_REPORTS=/opt/sonatype/lib \
  SONATYPE_BIN=/opt/sonatype/bin

COPY main.sh ${SONATYPE_BIN}/main.sh
COPY sca-report.json ${SONATYPE_REPORTS}/sca-report.json
COPY sca-sbom.cdx.json ${SONATYPE_REPORTS}/sca-sbom.cdx.json

RUN chmod +x ${SONATYPE_BIN}/main.sh
