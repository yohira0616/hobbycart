#!/usr/bin/env bash

kubectl create secret generic cloudsql-instance-credentials --from-file=credentials.json=./compact-nirvana-140509-11f7bcd62916.json
