#/bin/sh
#
# mitmdump -w /home/mitmproxy/output.txt --mode regular -s /code/har_dump2.py --set hardump=/home/mitmproxy/output.txt &
mitmdump --mode regular -s /code/har_dump2.py --set hardump=/home/mitmproxy/output.txt &
# mitmdump --mode regular -s /code/har_dump.py --set hardump=/home/mitmproxy/output.har &
export http_proxy="http://127.0.0.1:8080"
export HTTP_PROXY="http://127.0.0.1:8080"
export https_proxy="http://127.0.0.1:8080"
export HTTPS_PROXY="http://127.0.0.1:8080"
python main2.py
python convert_to_full_har.py /home/mitmproxy/output.txt /home/mitmproxy/output.har
#cat /home/mitmproxy/output.log
cat /home/mitmproxy/output.txt
