a=[]
for i in range(10):
	a.append(i)
else:
	print('all added')

print('a:{}'.format(a))

while len(a)>0:
	k=a.pop()
	if k>5:
		print('gt')
	elif k<5:
		print('lt')
	else:
		print('equal')
else:
	print('all checked')

