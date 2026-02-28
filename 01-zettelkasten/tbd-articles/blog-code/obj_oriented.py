class SchoolMember:
	'''Represents any school member.'''

	population = 0
	# special method
	def __init__(self, name, age):
		'''Initializes the data.'''
		# call instance variable by self.name
		self.name = name
		self.age = age
		# call class variable by class_name.name
		SchoolMember.population += 1

	# special method
	def __del__(self):
		'''I am going.'''
		SchoolMember.population -= 1
	
	def tell(self):
		'''Greeting.'''
		print('name:{}, age:{}'.format(self.name,self.age))

	# static method
	def howMany():
		'''Prints the current population.'''
		print('We have {0:d} members.'.format(SchoolMember.population))
	howMany = staticmethod(howMany)

	# another way of defining static method
	@staticmethod
	def howMuch():
		'''Prints the current population.'''
		print('We have {0:d} members.'.format(SchoolMember.population))

	def __myseq(self):
		pass

class Teacher(SchoolMember):
	def __init__(self,name,age,salary):
		SchoolMember.__init__(self, name, age)
		self.salary = salary
	def tell(self):
		SchoolMember.tell(self)
		print('Salary: "{0:d}"'.format(self.salary))

class Student(SchoolMember):
	'''Represents a student.'''
	def __init__(self, name, age, marks):
		SchoolMember.__init__(self, name, age)
		self.marks = marks
	def tell(self):
		SchoolMember.tell(self)
		print('Marks: "{0:d}"'.format(self.marks))

t = Teacher('Shrividya',40, 30000)
s = Student('Swaroop', 25, 75)

members = [t, s]
for member in members:
	# polymorphism
	member.tell() # works for both Teachers and Students

SchoolMember.howMuch()

try:
	t.__myseq()
except AttributeError:
	print('attribute start with __ is private')

SchoolMember.howMany()
