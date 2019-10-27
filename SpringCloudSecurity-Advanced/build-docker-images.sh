#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

pushd $DIR

	mvn clean install || exit 1
popd

for d in "api-gateway" "auth-center" "backend-service" "discovery"
do
  echo "Building $d"
  pushd "$DIR/$d"
    mvn "dockerfile:build" "dockerfile push"
  popd
done
