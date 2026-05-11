#!/bin/bash

echo "=== Cloud Services I will learn ==="
for SERVICE in Linux AWS Terraform Docker Kubernetes; do
	echo "-> $SERVICE"
	sleep 1
done

echo ""
echo "=== Countdown to launch ==="
for NUMBER in 5 4 3 2 1; do
	echo "$NUMBER..."
	sleep 1
done
echo "Cloud Engineer Launched!"
