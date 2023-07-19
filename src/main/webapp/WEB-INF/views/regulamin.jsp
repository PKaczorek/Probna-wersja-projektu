<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>Regulamin</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            flex-direction: row;
        }

        .header {
            background-color: lightgray;
            padding: 10px;
            text-align: center;
        }

        .options {
            background-color: lightgray;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .line {
            width: 100%;
            height: 1px;
            background-color: black;
            margin-top: 10px;
        }

        .sidebar {
            background-color: lightgray;
            padding: 10px;
        }

        .content {
            flex: 4;
            padding: 10px;
        }

        .sidebar a {
            display: block;
            margin-bottom: 10px;
            color: black;
            text-decoration: none;
        }

        .sidebar a:hover {
            color: blue;
        }

        .dashboard {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="sidebar">
        <h3> <a href="/categories"> Kategorie produktów</a> </h3>
        <div class="categories">
            <c:forEach items="${categories}" var="category">
                <a href="/categories/${category.id}">${category.name}</a>
            </c:forEach>
        </div>
    </div>
    <div class="content">
        <div class="header">
            <h1>Mania Zszywania</h1>
        </div>
        <div class="line"></div>
        <div class="options">
            <a href="/order">Zamówienie</a>
            <a href="/info">O Nas</a>
            <a href="/statute">Regulamin</a>
            <a href="/contact">Kontakt</a>
        </div>
        <div class="dashboard">
            <h2>Regulamin!</h2>
        </div>
        <h2>§ 1 DEFINICJE</h2>
        <p><strong>Dni robocze</strong> – dni od poniedziałku do piątku za wyjątkiem dni ustawowo wolnych od pracy.<br /><strong>Konto</strong> – uregulowana odrębnym regulaminem nieodpłatna funkcja Sklepu (usługa świadczona drogą elektroniczną), dzięki której Kupujący może założyć w Sklepie swoje indywidualne Konto.
            <br /><strong>Konsument</strong> – Konsument w rozumieniu przepisów Kodeksu cywilnego.
            <br /><strong>Kupujący</strong> - każdy podmiot Kupujący w Sklepie.
            <br /><strong>Regulamin</strong> – niniejszy regulamin.
            <br /><strong>Sklep</strong> - sklep internetowy Mati Made prowadzony przez Sprzedawcę pod adresem <a>https://matimade.pl</a>.<br/>
            <strong>Sprzedawca</strong> - Katarzyna Albrechcinska, przedsiębiorca prowadzący działalność gospodarczą pod nazwą Katarzyna Albrechcinska Mania Zszywania, wpisany do Centralnej Ewidencji i Informacji o Działalności Gospodarczej prowadzonej przez ministra właściwego do spraw gospodarki i prowadzenia Centralnej Ewidencji i Informacji o Działalności Gospodarczej, NIP 9231633419, nr REGON 365886430, ul.Cieszynska 34, 71-777, Szczecin.</p>
        <h2>§ 2 KONTAKT ZE SPRZEDAWCĄ</h2>
        <ol>
            <li>Adres pocztowy: ul.Cieszynska 34, 71-777, Szczecin</li>
            <li>Adres e-mail: mania-zszywania@gmail.com</li>
            <li>Telefon: 123456789</li>
        </ol>
        <h2>§ 3 WYMOGI TECHNICZNE</h2>
        <ol>
            <li>Dla prawidłowego funkcjonowania Sklepu potrzebne jest:
                <ul>
                    <li>Urządzenie z dostępem do Internetu</li>
                    <li>Przeglądarka internetowa obsługująca JavaScript oraz pliki cookies.</li>
                </ul>
            </li>
            <li>Dla złożenia zamówienia w Sklepie, poza wymogami określonymi w ust. 1, niezbędne jest aktywne konto e-mail.</li>
        </ol>
        <h2>§ 4 ZAKUPY W SKLEPIE</h2>
        <ol>
            <li>Ceny towarów widoczne w Sklepie są całkowitymi cenami za towar, w tym zawierają podatek VAT.</li>
            <li>Sprzedawca zwraca uwagę, że na całkowitą cenę zamówienia składają się wskazane w Sklepie: cena za towar oraz, jeśli w danym przypadku ma to zastosowanie, koszty dostawy towaru.</li>
            <li>Wybrany do kupienia towar należy dodać do koszyka w Sklepie.</li>
            <li>Następnie Kupujący wybiera z dostępnych w Sklepie: sposób dostawy towaru oraz metodę płatności za zamówienie, a także podaje dane niezbędne do zrealizowania złożonego zamówienia.</li>
            <li>Zamówienie zostaje złożone w momencie potwierdzenia jego treści i zaakceptowania Regulaminu przez Kupującego.</li>
            <li>Złożenie zamówienia jest tożsame z zawarciem umowy sprzedaży pomiędzy Kupującym a Sprzedawcą.</li>
            <li>Sprzedawca przekaże Konsumentowi potwierdzenie zawarcia umowy sprzedaży na trwałym nośniku najpóźniej w momencie dostarczenia towaru.</li>
            <li>Kupujący może zarejestrować się w Sklepie tj. założyć w nim Konto lub dokonywać zakupów bez rejestracji poprzez podawanie swoich danych przy każdym ewentualnym zamówieniu.</li>
        </ol>
        <button class="back-button" onclick="window.location.href='/';">Powrót do strony głównej</button>
    </div>
</div>
</body>
</html>