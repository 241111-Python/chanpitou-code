class Pokemon:
    def __init__(
        self,
        ID,
        Name,
        Type_1,
        Type_2,
        Total,
        HP,
        Attack,
        Defense,
        Sp_Atk,
        Sp_Def,
        Speed,
        Generation,
        Legendary,
    ):
        self.Name = Name
        self.ID = ID
        self.Type_1 = Type_1
        self.Type_2 = Type_2
        self.Total = Total
        self.HP = HP
        self.Attack = Attack
        self.Defense = Defense
        self.Sp_Atk = Sp_Atk
        self.Sp_Def = Sp_Def
        self.Speed = Speed
        self.Generation = Generation
        self.Legendary = Legendary

    def __str__(self):
        return f"{self.Name}: #{self.ID} - {self.Type_1}"

    # Another method, it automatically unpacked
    # def __init__(self, *x):
    #     self.x = x
    # def __str__(self):
    #     return f"{self.x[1]}"


import csv

path = "./../SourceData/pokemon.csv"

pokemonobj = []
with open(path, "r") as file:
    reader = csv.reader(file)
    next(reader)  # skip the first row (header)
    for row in reader:
        entry = Pokemon(*row)  # instead of Pokemon(row['Name'], row['ID'], ....)
        pokemonobj.append(entry)

for entry in pokemonobj:
    print(entry)
