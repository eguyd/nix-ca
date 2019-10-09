Be your own Certificate Authority (CA)


Things to remember
Here is a small legend with file extensions we will use for the created files and their meaning. 

All files that will be created will have one of these extensions:
•	KEY – Private key (Restrictive permissions should be set on this)
•	CSR – Certificate Request (This will be signed by our CA in order to create the server certificates. 
        Afterwards it is not needed and can be deleted)
•	CRT – Certificate (This can be publicly distributed)
•	PEM – We will use this extension for files that contain both the Key and the server Certificate 
    (Some servers need this). Permissions should be restrictive on these files.
•	CRL – Certificate Revocation List (This can be publicly distributed)

Create the CA Certificate and Key by executing ./csr.sh in # cd /etc/pki_jungle/myCA

