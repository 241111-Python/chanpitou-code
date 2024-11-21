print("Hello World!")

# comments in python are noted by the "#"

# Variables
# Number formats/ numerical data types
# int, float

number = 23
float_number = 3.14
sum1 = (int)(number + float_number)
sum2: int = number + float_number

# Be CAREFUL of data loss in conversion!

# Aritmatic operators
# - + / * % - modulo/modulus: the remainder of division
# ++ / -- - +1/-1 notation
# += / -= - x += 1 : as close as we get
# ** - exponent (to the power of)
# // - integer division - divides to the whole number
print(5 / 2)  # = 2.5
print(5 // 2)  # = 2
print(2**3)  # = 8

# Logical and comparison operators
# and or not
# > < == != >= <=

# Boolean type use True and False
print(True or False)
print(True and False)
print(True or not False)  # equals to True or True = True
print(True and not False)  # equals to True and True = True

# Strings
# functionally, we can declare a string with "" or '' quotes
# we may NEED double quotes to escape single quote in the string
my_string = "This is a string"
my_second_string = "This is also a string"

# indexing through a string with [#]
my_character = my_string[0]  # == 't'
multi_line_string = """ This 
is
a 
multi
line
string"""

print(multi_line_string)

# the 'in' operator lets us check for membership
print("This" in my_string)
print("is" in multi_line_string)
