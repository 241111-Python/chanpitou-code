def my_function(item):
    return


# Functions need to be defined by the def keyword
#   need a name
#   need a parameter (if any), or just the ()
#   : to open the body of the function
#   return keyword to close the function with a return, or pass keyword to continue on


def output(
    item, some_arg=3, seperator="-"
) -> None:  # the -> <type> is more for documentation than anything else
    # always put non-default args before args with default
    try:
        # what are we attempting to run, that might have issues?
        iter(item)
        print(*item, sep=seperator)

        # if we WANT to create an error/exception, we can use the 'raise' keyword
    except TypeError as e:
        # what do we do IF this listed type of error occurs?
        print(item)
    finally:
        # no matter what, do this...
        pass


# python is interpreted! define your functions before you call them!
output("Hi there")
output(item=[1, 2, 3, 4, 5], seperator=".")
output()

# Error Handling with Try-Catch-Finally


# SCOPE - python uses 4 levels of scope
# 1 - Local - the stuff in the same function
# 2 - Enclosing - the values from the immediately surrounding/wrapping layer of application/function
# 3 - Global - values universally available within our program
# 4 - Built-in - values available for any python application
