#!/bin/bash

cat > /etc/kubernetes/apiserver << EOF
# The address on the local server to listen to.
KUBE_API_ADDRESS="--address=0.0.0.0"

# Address range to use for services
KUBE_SERVICE_ADDRESSES="--portal_net=10.254.0.0/16"

# Run with apiserver certs generated ealier
KUBE_API_ARGS="--tls-cert-file=/etc/kubernetes/certs/server.crt --tls-private-key-file=/etc/kubernetes/certs/server.key --client-ca-file=/etc/kubernetes/certs/ca.crt --service-account-key-file=/etc/kubernetes/certs/server.crt"
EOF
