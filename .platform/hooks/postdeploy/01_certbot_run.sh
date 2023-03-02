#!/usr/bin/env sh
certbot run --nginx --non-interactive --agree-tos --preferred-challenges http --email vadym@let.run -d bean.let.run
