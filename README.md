# Notatki
## 1. Czym jest architektura?
1) zestaw decyzji
2) opis struktury systemu
3) proces projektowania

## 2. C4
### Kluczowe elementy
1) Kod, np. klasa lub funkcja
2) Komponent, zestaw klas tworzących pewien kontrakt (moduł/aplikacja)
3) Kontener - środowisko uruchomieniowe
4) System - zestaw kilku kontenerów współpracujących ze sobą

### Diagramy
1) C1 - pokazuje kto używa systemu, jakie są integracje
2) C2 - pokazuje lisę kontenerów
3) C3 - pokazuje listę komponentów w kontenerze
4) C4 - często pomijany (z racji ulotności), pokazuje listę klas w komponencie
5) C5 - dodatkowy diagram pokazujący poziom korporacyjny, a zatem powiązanie między systemami

## 3. Drivery architektoniczne
Są to czynniki, które wpływają na decyzje architektoniczne.
Są koniecznie w celu oszczędzania i zawężenia przestrzeni możliwego rozwiązania.
Wiedza na ich temat pochodzi od interesariuszy.

### Podział
1) wymagania funkcjonalne, np. ilość przechowywanych danych może wpływać na wybór okreśonej bazy danych
2) atrybuty jakościowe, np: skalowalność, rozszerzalność, wydajność, bezpieczeństwo, audyt, obserwowalność itd.
3) ograniczenia projektowe, np: technologie, zasoby, czas, budżet, wiedza
4) konwencje, np: biblioteki używane w firmie, technologie zachęcające pracowników do dołączenia do firmy
5) cele projektowe, np. wybór narzędzi dla konkretnego celu (np. wybór bazy danych na dany moment)

### ADR (Architecture Decision Record)
Pomagają w dokumentowaniu decyzji architektonicznych.
Zawierają:
- kontekst
- decyzję
- konskewencje
- linki do innych ADRów
- inne możliwe rozwiązania z informacją, czemu nie zostały wybrane
Określają wpływ driverów na decyzję, są niemutowalne, cały team ich używa i dodają odnośniki do nich w kodzie.