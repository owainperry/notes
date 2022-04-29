#!/bin/bash
namespace="clusters"
resources=$(kubectl api-resources --verbs=list --namespaced -o name)
# create a folder for all the output 
folder="/tmp/$namespace"
mkdir $folder
IFS='
'
for item in $resources
do
  echo $item
  kubectl get $item -o yaml  --ignore-not-found -n $namespace > "$folder/$item.yaml"
done

tar -zcvf /tmp/dev-resources.tar.gz $folder