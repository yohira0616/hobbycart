#!/usr/bin/env bash

# 本番用のイメージを固める
docker build -t asia.gcr.io/compact-nirvana-140509/hobbycart-production:v7 -f Dockerfile.production .
