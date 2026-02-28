def f(a=[]):
	a.append(0)
	return a

for i in range(3):
	print(f())

# output:
# [0]
# [0, 0]
# [0, 0, 0]
