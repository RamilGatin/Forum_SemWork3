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
        <p>Никнейм</p>
        <label for="username"> <input id="username" type="text" name="username" placeholder="username"></label>
        <p>Почта</p>
        <label for="email"> <input id="email" type="text" name="email" placeholder="email"></label>
        <p>Пароль</p>
        <label for="password"> <input id="password" type="password" name="password"
                                      placeholder="password"></label>
        <p>Повторите пароль</p>
        <label for="retypePassword"> <input id="retypePassword" type="password" name="retypePassword"
                                            placeholder="password"></label>
        <button type="submit">Войти</button>
    </form>
    <p>Уже есть аккаунт? <a href="/signIn">Вход</a></p>
</div>
</body>
</html>
