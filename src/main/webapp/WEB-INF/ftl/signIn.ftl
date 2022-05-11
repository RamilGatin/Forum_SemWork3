<!doctype html>
<html lang="en">
<head>
    <link rel="stylesheet" href="/resources/styles/style.css">
    <title>Вход</title>
</head>
<body>
<header>
    <h1>НайтиОтвет.тут</h1>
    <a href="/questions">Вопросы</a>
    <a href="/articles">Статьи</a>
    <a href="/signIn">Вход</a>
</header>

<div style="width: 40%;">
    <h2>Войти</h2>
    <form method="post">
        <p>Почта</p>
        <label for="email"> <input id="email" type="text" name="email" placeholder="email"></label>
        <p>Пароль</p>
        <label for="password"> <input id="password" type="password" name="password"
                                      placeholder="password"></label>
        <button type="submit">Войти</button>
    </form>
    <p>Ещё нет аккаунта? <a href="/signUp">Регистрация</a></p>
</div>
</body>
</html>
