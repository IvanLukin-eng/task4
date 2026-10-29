ГОТОВЫЙ ПРОЕКТ NODE.JS + EXPRESS + MYSQL

Структура:
shop_ready/
├── package.json
├── shop_db.sql
├── README.txt
└── server/
    ├── server.js
    └── .env

1. Создайте базу и таблицы:
   - Откройте MySQL.
   - Выполните содержимое файла shop_db.sql.

2. Откройте терминал в папке shop_ready.

3. Установите зависимости:
   npm install

4. Запустите сервер:
   npm start

5. Откройте в браузере:
   http://localhost:3000/api/products
   http://localhost:3000/api/categories

Маршрут /api/categories добавлен по заданию:
GET /api/categories возвращает id и name всех категорий в JSON.

Если логин/пароль MySQL у вас отличаются, измените DB_USER и DB_PASSWORD
в файле server/.env.
