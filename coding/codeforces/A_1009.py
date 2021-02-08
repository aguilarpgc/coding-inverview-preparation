n,m = map(int, input().split())

c = list(map(int,input().split()))
a = list(map(int,input().split()))

r = 0
w = 0

for i in range(n):
    if w >= len(a):
        break
    if c[i] <= a[w]:
        w += 1
        r += 1

print(r)
