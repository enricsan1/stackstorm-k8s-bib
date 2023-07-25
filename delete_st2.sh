#!/usr/bin/bash
set -x
helm uninstall bib-st2
kubectl delete job bib-st2-job-st2-apikey-load --namespace car-bib
kubectl delete ingress car-bib-st2-ingress --namespace car-bib
kubectl delete persistentvolumeclaims --all --namespace car-bib