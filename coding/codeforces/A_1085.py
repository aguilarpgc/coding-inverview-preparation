s = input()
n = len(s)

if n > 2:
    mid = (n - 1) // 2

    print(s[mid], end="")

    r = mid + 1
    l = mid - 1
    c = 1

    while l >= 0 or r < n:
        c += 1
        if c % 2 == 0:
            print(s[r], end="")
            r += 1
        else:
            print(s[l], end="")
            l -= 1

else:
    print(s)
