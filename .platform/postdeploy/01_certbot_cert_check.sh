#!/usr/bin/env sh

cat /etc/letsencrypt/live/eb.let.run/cert.pem | openssl x509 -noout -enddate
