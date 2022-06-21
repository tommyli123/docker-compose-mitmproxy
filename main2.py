import requests, time
print("wait.....")
time.sleep(5)
print("wait is over.")

resp = requests.get(url="https://httpbin.org/anything/foobar1", verify=False)
print(resp.text)