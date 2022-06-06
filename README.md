# ROBOTFRAMEWORKmalandcrunchyrolltesting
1. Instalacja Pythona 3.9.13
2. Instalacja PyCharma
3. Instalacja Chromedrivera i Geckodrivera
4. Instalacja Robot Framework w PyCharmie
5. Instalacja SeleniumLibrary dla Robot Framework
6. (plik start.robot) Ustawienie testu weryfikującego działanie testów dla Firefoxa i Chroma -> otwarcie witryny google.com
7. Wynik: oba testy zwróciły wartość PASS -> przejście do faktycznych testów

TEST 1 (plik check.robot) - badanie, czy strona myanimelist.com przekierowuje niezalogowanego użytkownika (próbującego dodać wybraną serię do listy ulubionych) do strony logowania z odpowiednim komunikatem
8. Zdefiniowanie ustawień i zmiennych testu
9. Projekt testu Add to library as an unregistered user
	a)Otwarcie przeglądarki na stronie URL
	b)Oczekiwanie na załadowanie strony
	c)Wyłączenie zgody na przetwarzanie danych przez witrynę
	d)Oczekiwanie przez trzy sekundy
	e)Kliknięcie w miniaturę podstrony anime Kaguya-sama: Love Is War
	f)Oczekiwanie przez trzy sekundy
	g)Kliknięcie na zakładkę Add to list
	h)Oczekiwanie przez trzy sekundy
	i)Strona powinna zawierać komunikat o konieczności zalogowania się by kontynuować
	j)Zamknięcie przeglądarki.

	Test kończy się sukcesem po spełnieniu tych wszystkich warunków

TEST 2 (plik crunchyroll.robot) - badanie, czy odnośnik i strona Crunchyroll przypisana elementowi działa prawidłowo.
10. Zdefiniowanie ustawień i zmiennych testu
11. Projekt testu Enter anime's Crunchyroll webpage
	a)Otwarcie przeglądarki na stronie URL
	b)Oczekiwanie na załadowanie strony
	c)Wyłączenie zgody na przetwarzanie danych przez witrynę
	d)Oczekiwanie przez trzy sekundy
	e)Kliknięcie w miniaturę podstrony anime Kaguya-sama: Love Is War
	f)Oczekiwanie przez trzy sekundy
	g)Przewinięcie strony o 1000 pikseli w dół i wycentrowanie widoku na przycisku odnośnika do strony Crunchyroll
	h)Kliknięcie w odnośnik Crunchyroll
	i)Oczekiwanie przez trzy sekundy
	j)Sprawdzenie, czy strona zawiera grafikę promocyjną elementu i jeden z dostępnych działów z odcinkami do obejrzenia

	Test kończy się sukcesem po spełnieniu tych wszystkich warunków 

Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted
