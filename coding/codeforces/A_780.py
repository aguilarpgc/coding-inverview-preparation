n = int(input()) >> 1

found = {}
r = c = 0

for x in input().split():
    if x in found:
        c -= 1
    else:
        found[x] = 1
        c += 1
    r = max(r, c)

print(r)