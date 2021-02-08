#!/bin/bash
mkdir opa;
cd opa;
until kubectl cluster-info 2&>/dev/null
do
echo "Kubernetes is starting...";
sleep 5;
done