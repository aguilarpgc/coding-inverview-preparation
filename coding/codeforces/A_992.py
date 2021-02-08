n = int(input())
a = [x for x in input().split() if x != '0']
a.sort()
print(len(set(a)))
