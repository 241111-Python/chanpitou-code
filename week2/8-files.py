# we can import resources from other files by using an import statement

# from _7_classes import Person # from a file/module we can import a functionality
from _7_classes import Person

new_person = Person("Ken")
print(new_person)


# file interaction
path = "./sample_text.txt"

with open(path, "a") as file:
    file.wirte("Hello file" + "\n")

with open(path, "r") as file:
    content = file.read()
    print(content)
