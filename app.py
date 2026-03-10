import time
import os

print("Hello from Docker on RunPod!")
# print(f"Container ID: {os.uname().nodename}")
# print(f"Python version: {os.sys.version}")

# Simulate some work
for i in range(5):
    print(f"Working... {i+1}/5")
    time.sleep(1)

print("Script complete!")
