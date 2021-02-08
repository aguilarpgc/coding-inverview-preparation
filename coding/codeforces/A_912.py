yellow, blue = map(int, input().split())
y,g,b = map(int, input().split())

yellow_needed = y * 2 + g
blue_needed   = b * 3 + g

r = max(0, yellow_needed - yellow) + max(0, blue_needed - blue)

print(r)