#!/bin/bash
kubectl -n synapse delete deployment synapse-replication
kubectl -n synapse delete statefulset sync-worker-nosince
kubectl -n synapse delete statefulset sync-workers
kubectl -n synapse delete statefulset federation-workers
kubectl -n synapse delete statefulset client-workers
kubectl -n synapse delete statefulset encryption-workers
kubectl -n synapse delete statefulset login-workers
kubectl -n synapse delete statefulset event-workers
kubectl -n synapse delete statefulset account-data-workers
kubectl -n synapse delete statefulset presence-workers
kubectl -n synapse delete statefulset user-directory-workers
kubectl -n synapse delete statefulset pagination-workers
kubectl -n synapse delete statefulset background-workers
kubectl -n synapse delete statefulset notify-appservice-workers
kubectl -n synapse delete statefulset pusher-workers
kubectl -n synapse delete statefulset media-workers