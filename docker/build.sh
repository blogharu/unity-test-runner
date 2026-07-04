#!/usr/bin/env bash

set -ex

UNITY_VERSION=6000.4.9f1
GAME_CI_VERSION=3 
MY_USERNAME=blogharu

declare -a components=("linux-il2cpp")

for component in "${components[@]}"
do
  GAME_CI_UNITY_EDITOR_IMAGE=unityci/editor:ubuntu-${UNITY_VERSION}-${component}-${GAME_CI_VERSION}
  IMAGE_TO_PUBLISH=${MY_USERNAME}/editor:ubuntu-${UNITY_VERSION}-${component}-${GAME_CI_VERSION}
  docker build --build-arg GAME_CI_UNITY_EDITOR_IMAGE=${GAME_CI_UNITY_EDITOR_IMAGE} . -t ${IMAGE_TO_PUBLISH}
done