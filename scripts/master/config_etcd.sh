#!/bin/bash
cat > /etc/etcd/etcd.conf << EOF
ETCD_LISTEN_CLIENT_URLS="http://0.0.0.0:2379,http://0.0.0.0:4001"
ETCD_ADVERTISE_CLIENT_URLS="http://0.0.0.0:2379,http://0.0.0.0:4001"
EOF

systemctl restart etcd