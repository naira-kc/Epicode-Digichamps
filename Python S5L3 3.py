#Scrivere una funzione che, data una lista di numeri, fornisca in output il minimo e il massimo (possiamo usare o meno le funzioni min() e max() nel corpo).

def trova_minimo_massimo(lista_numeri):
    if not lista_numeri:
        return None, None

    minimo = massimo = lista_numeri[0]

    for numero in lista_numeri:
        if numero < minimo:
            minimo = numero
        elif numero > massimo:
            massimo = numero

    return minimo, massimo

input_utente = input("Inserisci una lista di numeri separati da virgole: ")
lista_numeri = [int(numero) for numero in input_utente.split(',')]

minimo, massimo = trova_minimo_massimo(lista_numeri)
print("La lista inserita è:", lista_numeri)
print("Il minimo è:", minimo)
print("Il massimo è:", massimo)

def tre_numeri_piu_grandi(lista_numeri):
    if len < 3:
        return "La lista è troppo corta, inserisci minimo 3 numeri"