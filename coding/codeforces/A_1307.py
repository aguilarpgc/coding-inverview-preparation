t = int(input())

while t != 0:
    n, d = map(int, input().split())
    a = [int(x) for x in input().split()]

    r = 0
    for i in range(1,n):
        cost = (i * a[i])
        r += min(cost, d) // i
        d -= min(cost, d)
    print(a[0] + r)
    t -= 1
