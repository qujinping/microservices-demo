# !/bin/bash

oc tag sock/rabbitmq:3 sock-prod/rabbitmq:3
oc tag sock/zipkin:latest sock-prod/zipkin:latest
oc tag sock/edge-router:latest sock-prod/edge-router:latest
oc tag sock/front-end:latest sock-prod/front-end:latest
oc tag sock/orders-db:latest sock-prod/orders-db:latest
oc tag sock/orders:latest sock-prod/orders:latest
oc tag sock/payment:latest sock-prod/payment:latest
oc tag sock/queue-master:latest sock-prod/queue-master:latest
oc tag sock/shipping:latest sock-prod/shipping:latest
oc tag sock/user:latest sock-prod/user:latest
oc tag sock/user-db:latest sock-prod/user-db:latest
oc tag sock/cart-db:latest sock-prod/cart-db:latest
oc tag sock/cart:latest sock-prod/cart:latest
oc tag sock/catalogue-db:latest sock-prod/catalogue-db:latest
oc tag sock/catalogue:latest sock-prod/catalogue:latest
