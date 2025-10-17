#!/bin/bash

# Backup etcd snapshot
cd /data/etcd

etcdctl \
  --cacert=/etc/etcd/pki/etcd-ca.pem \
  --cert=/etc/etcd/pki/etcd-server.pem \
  --key=/etc/etcd/pki/etcd-server.key \
  --endpoints=https://10.7.1.151:2379 \
  snapshot save etcd-snapshot-$(date +%Y%m%d).db

# Keep latest 20 days files
