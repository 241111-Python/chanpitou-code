# classes defines state and behavior for an object
# it acts as the blueprint for the type object


class Person:

    # contructor method defines how to create an object of this class type
    # "dunder methods" -> double underscore method
    def __init__(self, name):
        self.name = name  # not private
        self.__identifier = name  # private

    def print_name(self):
        print(self.name)
        print(self.__identifier)

    def __str__(self):
        return f"{self.name}"

    def __eq__(self, other):
        return self.__identifier == other.__identifier


# anything in this condition, only run if the module is being directly run, not if it's imported
if __name__ == "__main__":

    new_person = Person("john")

    print(new_person.name)
    # print(new_person.__identifier) # won't work, because __identifier is not public! printasnames

    new_person.job = "Associate"
    print(new_person.job)
    new_person.experience = 10
    new_person.experience += 10

    print(new_person.experience)

    print(new_person.__dict__)
    print(vars(new_person))

    for key, value in new_person.__dict__.items():
        print(key, value)
