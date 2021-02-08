n = int(input())
b = [int(x) for x in input().split()]

for i in range(len(b) - 1):
    print(b[i] + b[i+1], end=" ")

print(b[-1], end=" ")