n, k = map(int, input().split())
s = input()
g = s.find('G')
t = s.find('T')

l = g-k
if t <= l:
    while l >= 0 and s[l] != '#':
        if s[l] == 'T':
            print('YES')
            exit()
        l -= k

r = g+k
if t >= r:
    while r < len(s) and s[r] != '#':
        if s[r] == 'T':
            print('YES')
            exit()
        r += k

print('NO')