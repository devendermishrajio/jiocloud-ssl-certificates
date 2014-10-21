jiocloud.com.cert.pem: jiocloud.com.csr.pem
	openssl x509 -req -in jiocloud.com.csr.pem -signkey jiocloud.com.key.pem -out $@

jiocloud.com.csr.pem: jiocloud.com.key.pem
	openssl req -new -config jiocloud.com.cfg -key jiocloud.com.key.pem -out $@

jiocloud.com.key.pem:
	openssl genrsa -out $@ 2048

clean:
	-rm jiocloud.com.*.pem
