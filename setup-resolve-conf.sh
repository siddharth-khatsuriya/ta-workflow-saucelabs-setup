OUTPUT=$((sudo echo "nameserver 8.8.4.4" > /etc/resolv.conf) 2>&1)
OUTPUT=$OUTPUT+" "+`nslookup www.google.com`
OUTPUT=`echo $OUTPUT | tr "\n" " "`
curl -k  https://43-1034333874-ta-snow-ui-chrome-ta-wfe-poc.wfe.splgdi.com:8088/services/collector/raw -H "Authorization: Splunk 9b741d03-43e9-4164-908b-e09102327d22" -d '{"event":"'"\"$OUTPUT\""'"}'
bash -c "while true; do nslookup $1-ta-wfe-poc.wfe.splgdi.comta-wfe-poc.wfe.splgdi.com && break; sleep 10; done" 
