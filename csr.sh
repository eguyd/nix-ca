#!/usr/bin/env bash
cd /etc/pki_jungle/myCA
 openssl req -config openssl.my.cnf -new -x509 -extensions v3_ca -keyout private/myca.key -out certs/myca.crt -days 1825
   chmod 0400 /etc/pki_jungle/myCA/private/myca.key