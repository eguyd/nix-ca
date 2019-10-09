#!/usr/bin/env bash
# -----------------------------Build CA Directory -----------------------------------------

# Build folder/dir name pki_jungle
mkdir -m 0755 /etc/pki_jungle

# -----------------------------Build CA Directory Tree  -----------------------------------
 mkdir -m 0755 \
     /etc/pki_jungle/myCA \
     /etc/pki_jungle/myCA/private \
     /etc/pki_jungle/myCA/certs \
     /etc/pki_jungle/myCA/newcerts \
     /etc/pki_jungle/myCA/crl

#	myCA is our Certificate Authority’s directory.
#	myCA/certs directory is where our server certificates will be placed.builtin
# ---	and in the form cert_serial_number.pem (eg 07.pem). Openssl needs this directory, so we create it.
#	myCA/crl is where our certificate revocation list is placed.
#	myCA/private is the directory where our private keys are placed.
#---	Be sure that you set restrictive permissions to all your private keys so that they can be read only by root,
# -------or the user with whose privilege to a server runs. If anyone steals your private keys, then things get
# ----------really bad. Like SUPER BAD!


# ------------------------------Open SSL Configuration ---------------------------------------
 cp /etc/ssl/openssl.cnf /etc/pki_jungle/myCA/openssl.my.cnf
 chmod 0600 /etc/pki_jungle/myCA/openssl.my.cnf
# The following file contains the next certificate’s serial number
 touch /etc/pki_jungle/myCA/index.txt
 echo '01' > /etc/pki_jungle/myCA/serial
cp csr.sh /etc/pki_jungle/myCA

# Edit the copied file to work with custom settings
# [CA_default]
# dir = .
# certificate = $dir/certs/myca.crt
# private_key = $dir/private/myca.key



# - END