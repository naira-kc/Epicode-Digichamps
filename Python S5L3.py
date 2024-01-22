#ESECIZIO 1
#1.Scegliere almeno 3 esercizi del giorno precedente e riscriverli con un ciclo for invece che while
# Chiedi all'utente di inserire un numero.Inizializza una lista per memorizzare i divisori.Trova e memorizza i divisori del numero.
#Stampa i diisori.
numero = int(input("Inserisci un numero: "))
divisori = []
for i in range(2, numero + 1):
    if numero % i == 0:
        divisori.append(i)
print(f"I divisori di {numero} sono: {divisori}")

#2. Calcolare e stampare le prime N potenze di K
K = int(input("Inserisci il valore di K: "))
N = int(input("Inserisci il valore di N: "))

potenze = [K ** esponente for esponente in range(N)]
print(f"Le prime {N} potenze di {K} sono: {potenze}")

#3. Trovare i codici fiscali che contengono 95.E stampare i caratteri relativi al cf.
lista_cf = ["ABCDEF95G01A123B", "GHIJKL91M02A321C", "MNOPQR89S03A456D", "STUVWX95Z04A654E", "XYZABC01D05A789F", "DEFGHI95J06A987G"]

cf_contenenti_95 = [cf for cf in lista_cf if "95" in cf]
print(f"I codici fiscali contenenti '95' sono: {cf_contenenti_95}")

for cf in cf_contenenti_95:
    nome = cf[3:6]
    cognome = cf[0:3]
    print(f"Nome: {nome}, Cognome: {cognome}")
