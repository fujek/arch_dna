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