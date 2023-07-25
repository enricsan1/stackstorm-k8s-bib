#!/usr/bin/bash
set -x

# the first time run:
#helm dependency build

helm install bib-st2 . --namespace car-bib --debug -f values.yaml
kubectl apply -f car-bib-st2-ingress.yaml --namespace car-bib

