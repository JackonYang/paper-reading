var='available in funcitons'
var_list=[1,2,3,4,5]

def func(*var_one, **var_two):
	""" example of stars"""
	# * for tuple
	print('type of var_one:{}'.format(type(var_one)))
	# ** for dictionary
	print('type of var_two:{}'.format(type(var_two)))
	# global variable is readable 
	print('var: {}'.format(var))

def default_arg(name,mems=var_list,gender='male'):
	print('gender={}(default:male)'.format(gender))
	print(mems)

func(1,2,3,4,hello=5,value=6)

default_arg('yang')
default_arg('yang','11','female')
print(func.__doc__)
