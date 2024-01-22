#Esercizio 2
#Creiamo un dizionario che assegni ad ogni proprietario la sua auto, sapendo che: • Ada guida una Punto • Ben guida una Multipla • Charlie guida una Golf • Debbie guida una 107 
#Stampiamo il dizionario per intero, e poi l'auto associata a Debbie.

dizionario_auto = {"Ada": "Punto", "Ben": "Multipla", "Charlie": "Golf", "Debbie": "107"}
print("Lista dei proprietari e la sua auto:")
for proprietario, auto in dizionario_auto.items():
    print(f"{proprietario} ha una {auto}")

if "Debbie" in dizionario_auto:
    auto_Debbie = dizionario_auto ["Debbie"]
    print(f"L'auto di Debbie è una {auto_Debbie}")
else:
    print("Debbie non ha l'auto")

#Esercizio 3
    
print("Auto che non sono una Multipla:")
for auto in dizionario_auto.values():
    if auto != "Multipla":
        print(auto)

#Esercizio 4
nuovi_proprietari = {"Ben": "Polo", "Fred": "Octavia", "Grace": "Yaris", "Hugh": "Clio"}
dizionario_auto.update(nuovi_proprietari)
print("Dizionario aggiornato:")
for proprietario, auto in dizionario_auto.items():
    print(f"{proprietario} ha una {auto}")

if "Ben" in dizionario_auto:
    auto_ben = dizionario_auto["Ben"]
    print(f"\nL'auto associata a Ben dopo l'aggiornamento è una {auto_ben}")
else:
    print("\nBen non è presente nel dizionario.")