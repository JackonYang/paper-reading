a=[]
b={'num':0,'sqrt':0}

for i in range(0,3):
	b['num']=i
	b['sqrt']=i*i
	a.append(b)

print(a)

# output
# [{'num': 2, 'sqrt': 4}, {'num': 2, 'sqrt': 4}, {'num': 2, 'sqrt': 4}]
