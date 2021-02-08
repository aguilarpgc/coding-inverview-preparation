n,m,k = map(int, input().split())
a = list(map(int, input().split()))

m -= 1

l = m-1
r = m+1
while(True):
    if (l >= 0 and a[l] != 0 and a[l] <= k):
        print((m - l) * 10)
        exit()
    if (r < n and a[r] != 0 and a[r] <= k):
        print((r - m) * 10)
        exit()
    l -= 1
    r += 1

