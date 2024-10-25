msg = ""
while type(msg) == str: msg = (lambda i: "Fizz"*(i%3==0) + "Buzz"*(i%5==0) or i)(int(input())); print(msg)