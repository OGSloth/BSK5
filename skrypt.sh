DIR=./demoCA/private
mkdir ./demoCA
mkdir ./demoCA/newcerts
mkdir ./demoCA/certs
mkdir ./demoCA/crl
mkdir ./demoCA/private
touch ./demoCA/index.txt

echo "Done 1/4"
#1
openssl req -new -x509 -days 3650 -extensions v3_ca -keyout $DIR/cakey.pem -out ./demoCA/cacert.pem < info
echo "Done 2/4"
#2
openssl req -days 1460 -new -nodes -out ./demoCA/provider-req.pem -keyout $DIR/provider-key.pem <info2
echo "Done 3/4"
#3
openssl ca -out ./demoCA/provider-cert.pem -infiles ./demoCA/provider-req.pem
echo "Done 4/4 - Complete"

