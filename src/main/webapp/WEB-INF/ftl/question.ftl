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
    <h2>${question.title!""}</h2>
    <h3>${question.user.username!""}</h3>
    <p>${question.text!""}</p>
    <#if question.imagePath??><img src="/uploads/${question.imagePath}" alt="Image"></#if>
    <p>Ответов: ${question.getAnswers()?size}</p>
</div>
<div>
    <h3>Ответы</h3>
    <#list question.answers as answer>
        <div>
            <h3>${answer.user.username!""}</h3>
            <p>${answer.text}</p>
            <#if answer.imagePath??><img src="/uploads/${answer.imagePath}" alt="Image"></#if>
            <p>
                <button type="button" onclick="" style="color: lawngreen">Like ${answer.likes?size}</button>
                <button type="button" onclick="" style="color: red;">Dislike ${answer.dislikes?size}</button>
            </p>
        </div>
    </#list>
    <#if user??>
        <div>
            <h3>Напишите свой ответ:</h3>
            <form method="post" enctype="multipart/form-data" action="/answer/${question.id}">
                <label>
                    <textarea name="text" id="text" placeholder="Ответ"></textarea>
                </label>
                <input type="file" id="file" title="Выбрать файл" style="width: 30%">
                <button type="submit">Отправить!</button>
            </form>
        </div>
    </#if>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="/resources/javascript/question.js"></script>
</body>
</html>
