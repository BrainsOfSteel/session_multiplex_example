import time

counter = 0
while True:
    print("This message will repeat indefinitely. " + str(counter))
    counter = counter + 1
    time.sleep(2)