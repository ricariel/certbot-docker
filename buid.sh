#!/bin/bash
docker buildx build -t ricariel/certbot --push --platform=linux/amd64,linux/arm64 .
