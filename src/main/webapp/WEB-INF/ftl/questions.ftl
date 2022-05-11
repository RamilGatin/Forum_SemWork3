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

    <a href="/questions/create">Задать вопрос</a>
    <#list questions as question>
        <div>
            <h2>${question.title}</h2>
            <h3>${question.user.username}</h3>
            <p>Ответов: ${question.getAnswers()?size}</p>
            <a href="/questions/${question.id}">Открыть</a>
        </div>
    </#list>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</body>
</html>
