from collections import Counter

dict = {}


dict["A"] = 2
dict["B"] = 6
dict["C"] = 4


keys = dict.keys()
values = dict.values()

print(dict)
print(keys)
print(values)
print("___________________________")
counter = Counter()

counter["A"] = 2
counter["B"] = 6
counter["C"] = 4

counter["A"] += 1

print(counter)
print(counter.get("A", None))
