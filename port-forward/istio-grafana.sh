#!/bin/bash
set -euo pipefail

echo "Accessing Istio Grafana..."
kubectl -n istio-system port-forward $(kubectl -n istio-system get pod -l app=grafana -o jsonpath='{.items[0].metadata.name}') 3000:3000 &
