#!/bin/bash

set -e

cp ${SONATYPE_REPORTS}/*.json ${CI_PROJECT_DIR}/

exit 0