import requests, time
print("wait.....")
time.sleep(5)
print("wait is over.")

# proxies = {
#   "https": "127.0.0.1:8080"
# }
# resp = requests.get(url="https://httpbin.org/anything/foobar1", verify=False, proxies=proxies)
resp = requests.get(url="https://httpbin.org/anything/foobar1", verify=False)
print(resp.text)