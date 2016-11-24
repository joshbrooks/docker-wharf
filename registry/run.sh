docker pull registry@sha256:1b68f0d54837c356e353efb04472bc0c9a60ae1c8178c9ce076b01d2930bcc5d
docker run --restart=always --name registry -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.crt -e REGISTRY_HTTP_TLS_KEY=/certs/domain.key -p 5000:5000 -v `pwd`/registry:/var/lib/registry -v `pwd`/certs:/certs registry:2.5.0
