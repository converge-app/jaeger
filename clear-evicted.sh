#!/bin/bash

kubectl get pods --all-namespaces -o go-template='{{range .items}}{{if eq .status.phase "Failed"}}{{if eq .status.reason "Evicted"}}{{.metadata.name}}{{" "}}{{.metadata.namespace}}{{"\n"}}{{end}}{{end}}{{end}}' | while read epod namespace; do kubectl -n $namespace delete pod $epod; done