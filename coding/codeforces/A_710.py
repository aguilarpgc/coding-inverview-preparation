import string

def moves_permitted(type):
    if type == 1:
        return 8
    elif type == 2:
        return 5
    else:
        return 3

move = input()

c = string.ascii_lowercase.index(move[0]) + 1
d = int(move[1])

type = 1

if c == 1 or c == 8:
    type += 1
if d == 1 or d == 8:
    type += 1

print(moves_permitted(type))