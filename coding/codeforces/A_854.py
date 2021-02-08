n = int(input())
r = n // 2 + 1
l = n-r

if r % 2 == 0 and r - l == 2:
    l -= 1
    r += 1

print(l, r)