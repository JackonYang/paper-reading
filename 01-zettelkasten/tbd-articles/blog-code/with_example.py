filename='test.txt'

# open a file, read some datas and close file.
# __init__ and __enter__(assign returned value to content)
with open(filename,'r') as content:
	# do something
	for line in content:
		print(line)
# __exit__
