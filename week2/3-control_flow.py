# loops
# for and while loops
loop_flag = True
while loop_flag:
    loop_flag = False
    print("Still going...")

# break - exit out of loop
# continue - move to the next iteration of the loop
while input("Enter x to exit: ") != "x":
    print("going again")

# for loops in python will iterate over a range
# range(<min>, <max>, <step>)
for i in range(0, 10, 2):
    print(i, end=", ")

print("new loop! ")
# range is a sequence data type/function
# it's lazy - it does not pre-compute the value, it calculate the values on demand
# usually, we don't use range, and we find a way to iterate over a COLLECTION

# comprehension syntax - no iterator/index
sequences = [5, 3, 7, 2, 4]
for i in sequences:
    print(i)

print("new loop! ")
for i, item in enumerate(sequences):
    if i > 0:
        print(i, ": ", item)

# conditionals
# if, else if, else
user_selection = int(input("Enter a number: "))  # type casting our input to an int

if user_selection == 0:
    print("It was zero")
elif user_selection > 0:
    print("it was positive")
elif user_selection < 0:
    print("it was negative")
else:
    user_selection = "you didn't enter a number"

print(user_selection)
