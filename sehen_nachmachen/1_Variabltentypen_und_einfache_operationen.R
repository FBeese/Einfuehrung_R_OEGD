

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Lernziele ------------------------------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# In diesem Block erhalten wir eine Einführung in die Vielfältigkeit von R. Zunächst wird dargestellt, wie R als Taschenrechner für einfache bis komplexe mathematische Operationen genutzt werden kann, etwa zum Wurzelziehen oder zur Korrelationsberechnung. Im nächsten Abschnitt wird betont, dass R eine vollwertige Programmiersprache ist, wobei die Bedeutung von speziellen Zeichen wie "#", "<-", und "%>%" erläutert wird. Zudem wird der Umgang mit Variablen und das Erstellen eigener Funktionen vorgestellt. Weiterhin wird verdeutlicht, dass R sich von Programmen wie Excel unterscheidet, da es keine visuellen Zellenbezüge gibt und Daten im Kopf visualisiert werden sollten. Der nächste Teil widmet sich den Datenklassen in R, welche von einfachen Texten und Zahlen bis hin zu komplexen Strukturen wie Datenframes und Listen reichen. Der Umgang mit Datumsangaben in R wird durch verschiedene Methoden zur Erstellung und Formatierung dargestellt. Außerdem wird erläutert, wie in R einzelne Werte, Arrays, Tabellen und Listen gehandhabt werden, einschließlich des Zugriffs auf Teile eines Datenframes. Schließlich zeigt der Block, wie eingebaute Funktionen in R verwendet werden, um Operationen auf numerischen und Datums-Arrays durchzuführen.


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 1 R ist ein Taschenrechner ------------------------------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Mit R können einfache Rechenaufgaben erledigt werden
3 + 2

# Neben einfachen Aufgaben können auch Komplexere bewältigt werden.
# Zum Beispiel Wurzel ziehen
sqrt(49)

# Es ist möglich einen Mittelwert zu berechnen.
mean(c(3,5,7,23,4))

# R kann auch eine Korrelation durchführen
cor(c(3,5,6,23,2,4,5), c(2,5,3,2,3,5,9))

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 2 R ist eine Programmiersprache ---------------------------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Programmierung ist eine eigene Welt für sich.
# Wichtig zum Verständnis:
# Das Zeichen "#" ist ein Kommentar
# Das Zeichen "<-" ist eine Zuweisung zu einer Variablen
# Das Zeichen "%>%" ist ein Pipe-Parameter und verbindet zwei Dinge miteinander
# Das Zeichen "," ist ein Zeichen, dass etwas anderes anfängt
# Die Klammern "()" und "{}" werden an allen möglichen Stellen gebraucht
# Die Zeichenfolge NA steht für etwas nicht vorhandenes


# Mit R können Variablen gesetzt werden
a <- "Hallo"
b <- "Welt"

# Wenn man eine Variable mit Strg+Enter aufruft wird sie ausgeführt
a
b

# In R können Funktionen erstellt werden
# Programmierung der Funktion
meinefunktion <- function(x, y){
  print("Die Addition ergibt:")
  print(x + y)

  print("Die Multiplikation ergibt:")
  print(x * y)
}

# Ausführen der Funktion
meinefunktion(4,7)


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 3 Daten anzeigen oder R ist nicht Excel ------------------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Der R-Weg sich die Datein anzeigen zu lassen geht mit einem eingebauten Befehl
# Zur Erläuterung: mtcars ist ein eingebauter Beispiel-Datensatz
str(mtcars)


# Man kann sich die Daten auch "wie in Excel" anzeigen lassen.
View(mtcars)

# Weitere Unterschiede zu Excel
# Man bearbeitet nicht mit der Maus.
# Man verwendet keine Zellenbezüge wie z.B. A1:D4
# Bei R wird davon ausgegangen, dass man sich die Daten im Kopf vorstellt
# Bei Excel werden die Rohdaten gändert. Bei R erstellt man aus Rohdaten andere Daten.
# Mit R kann man "reproduzierbar" arbeiten

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 4 R Variablen sind einer Datenklasse zugeordnet ---------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Essentiell zum Verständnis für R sind Datenklassen.

# character = ein Text
# numeric = eine Zahl
# factor = eine Gruppe
# date = ein Datum
# logical = ein Ja/Nein Wert
# data.frame = ein tabellarischer Datensatz
# list = eine Sammlung von Klassen


# Für bestimmte Anwendungsfälle gibt es bestimmte Datenklassen

# Graphisches-Objekt
# Karten-Objekt
# Soziales Netzwerk-Objekt
# ... und sehr sehr viel mehr

# Anlegen von Variablen
meine_text_variable <- "Hallo Welt"
meine_zahl_variable <- 29

# Man kann sich Datenklassen mit dem Befehl class() anschauen
class(meine_text_variable) # Class anzeigen
class(meine_zahl_variable) # Class anzeigen

# Manche Datenklassen kann man in eine andere umwandeln
meine_text_variable <- c("blau") # Variable festlegen
class(meine_text_variable) # Class anzeigen
meine_text_variable <- factor(meine_text_variable) # Umwandeln in ein Factor
class(meine_text_variable) # Class anzeigen


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 5 Umgang mit Datumsangaben ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Anlegen eines Datums ist nicht einfach

# Anlage als Text
mein_datum <- "03.05.2023"
class(a) # Anlage als Text

# Anlage als direkte Zahl geht nicht
mein_datum <- 03.05.2023

# Anlage als Datum direkt im richtigen Format
mein_datum <- as.Date("2022-06-04")
class(mein_datum)

# Anlage als Datum mit Formatangabe
mein_datum <- as.Date("03.05.2023", format = "%d.%m.%Y")
class(mein_datum)

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 6 Einzelwerte, Arrays, dataframes  -----
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Einzelwert
mein_einzelwert <- 5
mein_einzelwert
class(numeric)

# Ein Array (also eine Sammlung von mehreren Werten) wird üblicherweise mit der Funktion c() angelegt
mein_array <- c(5,7,3,8) # Anlegen des Arrays
mein_array # Anzeigen des Arrays
class(mein_array)


# Es gibt Datenklassen für eine ganze Tabelle wird mit der Funktion data.frame() erreicht
tiertabelle <- data.frame(
  name = c("Hund", "Schlange", "Giraffe"),
  hoehe = c(1.1,0.2,9),
  fell = c("ja", "nein", "ja"))

tiertabelle # Anzeigen lassen
class(tiertabelle) # Classe anzeigen

# Die einzelnen Spalten lassen sich aus einer Tabelle mit dem $ Zeichen herausholen
tiertabelle$name

# Die einzelnen Spalten können unterschiedliche Klassen enthalten
class(tiertabelle$name)
class(tiertabelle$hoehe)


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 7 Ausführen von Operationen ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Mit Hilfe von eingebauten Funktionen können Rechenoperationen angewendet werden

# Anlage eines numerischen Arrays
mein_array <- c(3,5,2,6,1,22,7)

# Maximum
max(mein_array)

# Minimum
min(mein_array)

# Median
median(mein_array)

# Mittelwert
mean(mein_array)

# Anlage eines Datums Arrays
mein_datums_array <- c("2022-06-01", "2024-07-03", "2021-09-23")
mein_datums_array <- as.Date(mein_datums_array)

# Frühestes Datum
min(mein_datums_array)

#Medianer Wert
median(mein_datums_array)

# Mittelwert
mean(mein_datums_array)

