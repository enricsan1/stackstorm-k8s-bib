#!/usr/bin/bash
set -x
helm uninstall bib-st2
kubectl delete job bib-st2-job-st2-apikey-load --namespace car-bib
kubectl delete ingress car-bib-st2-ingress --namespace car-bib
#kubectl delete persistentvolumeclaims --all --namespace car-bib
kubectl delete persistentvolumeclaims data-bib-st2-rabbitmq-0 --namespace car-bib
kubectl delete persistentvolumeclaims datadir-bib-st2-mongodb-0 --namespace car-bib
kubectl delete persistentvolumeclaims redis-data-bib-st2-redis-node-0 --namespace car-bib
kubectl delete persistentvolumeclaims redis-data-bib-st2-redis-node-1 --namespace car-bib
kubectl delete persistentvolumeclaims redis-data-bib-st2-redis-node-2 --namespace car-bib