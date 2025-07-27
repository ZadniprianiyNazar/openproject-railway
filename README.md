# OpenProject on Railway

Цей репозиторій дозволяє розгорнути OpenProject Community Edition на Railway.app.

---

## Деплой

1. Зареєструйтесь на [Railway.app](https://railway.app)
2. Створіть новий проєкт → Deploy from GitHub Repo → Оберіть цей репозиторій
3. Додайте плагіни PostgreSQL та Redis
4. Встановіть змінні середовища:
   - `DATABASE_URL` (отриманий з PostgreSQL плагіна)
   - `REDIS_URL` (отриманий з Redis плагіна)
   - `OPENPROJECT_SECRET_KEY_BASE` (згенеруйте `docker run --rm openproject/community:13 rails secret`)
   - `OPENPROJECT_HOST__NAME` (домен Railway, наприклад `project-name.up.railway.app`)
   - `OPENPROJECT_HTTPS` (значення `true` якщо використовуєте HTTPS)
5. Запустіть деплой та зачекайте кілька хвилин
6. Відкрийте URL проєкту, логін: `admin@example.com`, пароль: `admin`

---

## Локальний запуск

Можна запустити локально через Docker Compose, додаючи PostgreSQL і Redis.

---
