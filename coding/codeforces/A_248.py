n = int(input())
l = 0
r = 0
for _ in range(n):
    a, b = map(int, input().split())

    if a == 0:
        l -= 1
    else:
        l += 1

    if b == 0:
        r -= 1
    else:
        r += 1
print((n - abs(l) + n - abs(r)) >> 1)