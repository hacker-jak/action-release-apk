#!/bin/bash

hub checkout ${REPO_BRANCH}
VERSION_NAME=`grep -oP 'versionName "\K(.*?)(?=")' ./${APP_FOLDER}/build.gradle`
hub release create -a ./${APP_FOLDER}/build/outputs/apk/release/*-release.apk -m "${RELEASE_TITLE} - v${VERSION_NAME}" -m $(date +%Y%m%d%H%M%S) v${VERSION_NAME}
