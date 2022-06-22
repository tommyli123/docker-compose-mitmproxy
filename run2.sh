#/bin/sh
#
mitmdump -w /home/mitmproxy/output.log --mode regular &
# mitmdump --mode regular -s /code/har_dump.py --set hardump=/home/mitmproxy/output.har &
export http_proxy="http://127.0.0.1:8080"
export HTTP_PROXY="http://127.0.0.1:8080"
export https_proxy="http://127.0.0.1:8080"
export HTTPS_PROXY="http://127.0.0.1:8080"
python main2.py
sudo cat /home/mitmproxy/output.log
