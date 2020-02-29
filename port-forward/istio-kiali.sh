#!/bin/bash
set -euo pipefail

echo "Accessing Istio Kiali..."
kubectl -n istio-system port-forward $(kubectl -n istio-system get pod -l app=kiali -o jsonpath='{.items[0].metadata.name}') 20001:20001
