#!/usr/bin/env sh

#SERVER="10.11.250.18"
SERVER="localhost"

echo 
echo 
echo "Test1: Check http connection...."
curl -k http://${SERVER}

echo 
echo 
echo "Test2: Check https connection...."
curl -k https://${SERVER}


echo 
echo 
echo "Test3: Check https connection TLS1.0...."
curl -k --tls-max 1.1 https://${SERVER} 

echo 
echo 
echo "Test4: Check https connection TLS1.2...."
curl -k --tls-max 1.2 --tlsv1.2 https://${SERVER} 

echo 
echo 
echo "Test5: Check https connection TLS1.3...."
curl -k --tls-max 1.3 --tlsv1.3 https://${SERVER} 
