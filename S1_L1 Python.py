# Esercizio 1
# Abbiamo 25 studenti; memorizzare questo dato in una variabile.

studenti = 25

# Esercizio 2
# Abbiamo 25 studenti; memorizzare questo dato in una variabile e stamparla a video.

studenti = 25
print(studenti)

# Esercizio 3
# Abbiamo 25 studenti; memorizzare questo dato in una variabile. 
# Arrivano altri 3 studenti; memorizzare questo dato in un'altra variabile.

studenti= 25
studenti_nuovi = 3

# Esercizio 4
# Abbiamo 25 studenti; memorizzare questo dato in una variabile.
# Arrivano altri 3 studenti; memorizzare questo dato in un'altra variabile.
# Creare un'altra variabile ancora che conterrà la somma delle prime due, poi stamparla a video.

studenti = 25
studenti_nuovi = 3
nuovo_totale_studenti = studenti + studenti_nuovi

print("Il nuovo totale degli studenti è:", nuovo_totale_studenti)

# Esercizio 5
# Creare, a mano, una lista che contenga i numeri da 0 a 5, memorizzarla in una variabile e infine stamparla a video.

lista_numeri = [0, 1, 2, 3, 4, 5]

print("Lista dei numeri da 0 a 5:", lista_numeri)

# Esercizio 6
# Abbiamo la stringa: nome_scuola = "Epicode" Stampare l'iniziale. 
#Utilizzeremo: • le parentesi quadre [] per accedere agli elementi della stringa mediante indicizzazione

nome_scuola = "Epicode"
iniziale = nome_scuola [0]
print("L'iniziale del nome della scuola è:", iniziale)

# Esercizio 7
# Abbiamo la stringa: nome_scuola = "Epicode" Stampare le prime tre lettere. 
# Utilizzeremo: • le parentesi quadre [] e l'operatore : per accedere agli elementi della stringa mediante slicing

nome_scuola = "Epicode" 
prime_tre_lettere = nome_scuola[:3]

print("Le prime tre lettere del nome della scuola sono:", prime_tre_lettere)

# Esercizio 8
# Abbiamo la variabile: x = 10 Incrementarla di 2 e poi moltiplicarla per 3
# Usare due metodi diversi (ad esempio, uno utilizzando gli operatori di assegnazione, e uno senza)

#metodo 1:
x = 10
x = x + 2
x = x * 3
print (x)

#metodo 2:
x = 10
x += 2
x *= 3
print(x)

# Esercizio 9 
# Scriviamo un programma che chiede in input all'utente una stringa e visualizza i primi 3 caratteri, 
# seguiti da 3 punti di sospensione e quindi gli ultimi 3 caratteri.

nome = input("Inserisci una parola: ")
output = nome[:3] + "..." + nome[-4:]
print(output)

# Esercizio 10
# Verificare, per ognuna delle seguenti stringhe, se il numero di caratteri è compreso tra 5 e 8: • Windows • Excel • Powerpoint • Word

a = 'Windows'
b = 'Excel'
c = 'Powerpoint'
d = 'Word'

lunghezza_a = len(a)
lunghezza_b = len(b)
lunghezza_c = len(c)
lunghezza_d = len(d)

# Verifica se la lunghezza di a è compresa tra 5 e 8
if 5 <= lunghezza_a <= 8:
    print(f'Lunghezza di {a}: {lunghezza_a} è compresa tra 5 e 8 caratteri.')
else:
    print(f'Lunghezza di {a}: {lunghezza_a} non è compresa tra 5 e 8 caratteri.')

# Ripeti per le altre variabili b, c, d
if 5 <= lunghezza_b <= 8:
    print(f'Lunghezza di {b}: {lunghezza_b} è compresa tra 5 e 8 caratteri.')
else:
    print(f'Lunghezza di {b}: {lunghezza_b} non è compresa tra 5 e 8 caratteri.')

if 5 <= lunghezza_c <= 8:
    print(f'Lunghezza di {c}: {lunghezza_c} è compresa tra 5 e 8 caratteri.')
else:
    print(f'Lunghezza di {c}: {lunghezza_c} non è compresa tra 5 e 8 caratteri.')

if 5 <= lunghezza_d <= 8:
    print(f'Lunghezza di {d}: {lunghezza_d} è compresa tra 5 e 8 caratteri.')
else:
    print(f'Lunghezza di {d}: {lunghezza_d} non è compresa tra 5 e 8 caratteri.')

