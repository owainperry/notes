#!/bin/bash
namespace="$1"
input=$(kubectl api-resources --verbs=list --namespaced -o name)
#input="/tmp/list.txt"
for line in $input 
do
  echo "$line"
  kubectl get $line --show-kind --ignore-not-found -n $namespace
done 
