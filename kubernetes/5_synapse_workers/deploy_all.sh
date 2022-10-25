#!/bin/bash
kubectl apply -f 1_main_worker
kubectl apply -f 2_sync_worker
kubectl apply -f 3_federation_worker
kubectl apply -f 4_client_worker
kubectl apply -f 5_encryption_worker
kubectl apply -f 6_login_worker
kubectl apply -f 7_event_worker
kubectl apply -f 8_account_data_worker
kubectl apply -f 10_presence_worker
kubectl apply -f 11_user_directory_worker
kubectl apply -f 12_pagination_worker
kubectl apply -f 13_background_worker
kubectl apply -f 14_notify_appservice_worker
kubectl apply -f 15_pusher_worker
kubectl apply -f 16_media_worker