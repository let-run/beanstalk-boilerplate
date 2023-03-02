#!/usr/bin/env sh

sudo certbot run --nginx --non-interactive --agree-tos --preferred-challenges http --email vadym@let.run -d eb.let.run
