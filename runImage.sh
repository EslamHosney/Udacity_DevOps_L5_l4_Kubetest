#!/usr/bin/env bash

docker pull noahgift/flasksklearn
#dockerpath="noahgift/flasksklearn"
#dockerpath="https://hub.docker.com/r/noahgift/flasksklearn"

# Run in Docker Hub container with kubernetes
#	    --generator=run-pod/v1\
kubectl run flaskskearlndemo\
	    --image=noahgift/flasksklearn\
		--port=80 --labels app=flaskskearlndemo

# List kubernetes pods
kubectl get pods

# Forward the container port to host
kubectl port-forward flaskskearlndemo 8000:80

