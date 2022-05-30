import requests, time
print("wait.....")
time.sleep(10)
print("wait is over.")

resp = requests.get(url="http://web:5000/", verify=False)
print(resp.text)
resp = requests.get(url="https://httpbin.org/anything/foobar1", verify=False)
print(resp.text)