#/bin/sh

mitmdump -w /home/mitmproxy/output.log &
python main2.py
cat /home/mitmproxy/output.log
