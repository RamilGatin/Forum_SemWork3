<!doctype html>
<html lang="en">
<head>
    <link rel="stylesheet" href="/resources/styles/style.css">
    <title>Мои игры</title>
</head>
<body>
<header>
    <h1>НайтиОтвет.тут</h1>
    <a href="/questions">Вопросы</a>
    <a href="/articles">Статьи</a>
    <a href="/profile">Профиль</a>
</header>

<div style="margin: 0 auto;
    padding: 0;">
    <h1>Задать вопрос</h1>
    <form action="/questions" method="post">
        <label for="title">Заголовок</label><input name="title" placeholder="Title" id="title">
        <label for="text">Текст</label><textarea name="text" placeholder="Text" id="text"></textarea>
        <input name="questionFile" type="file" id="questionFile" title="Выбрать файл" style="width: 30%">
        <button type="submit">Отправить!</button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</body>
</html>
