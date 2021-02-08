numbers = list(map(int, input().split()))
dic = {}

total = sum(numbers)

for i in range(len(numbers)):
    dic[numbers[i]] = dic.get(numbers[i], 0) + 1

discard = 0

for key, value in dic.items():
    if value >= 2:
        discard = max(discard, key * min(3, value))

print(total - discard)


