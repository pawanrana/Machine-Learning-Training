#!/bin/bash -e
image_name=gcr.io/spielwiese-sascha-heyer/kubeflow/training/concat
image_tag=latest

full_image_name=${image_name}:${image_tag}
base_image_tag=1.12.0-py3

cd "$(dirname "$0")" 

docker build --build-arg BASE_IMAGE_TAG=${base_image_tag} -t "${full_image_name}" .
#docker build -t $"${full_image_name}"
docker push "$full_image_name"
