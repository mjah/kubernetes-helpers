#!/bin/bash
set -euo pipefail

echo "Accessing Istio Prometheus..."
kubectl -n istio-system port-forward $(kubectl -n istio-system get pod -l app=prometheus -o jsonpath='{.items[0].metadata.name}') 9090:9090 &
