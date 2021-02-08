n = int(input())

a=0
b=0

for i in range(n):
    c, _ = input().split()
    if int(c) < 0:
        a += 1
    else:
        b += 1

if a < 2 or b < 2:
    print("Yes")
else:
    print("No")