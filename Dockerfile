# Вибираємо базовий образ Python 3.11
FROM python:3.11-slim

# Встановлюємо робочу директорію всередині контейнера
WORKDIR /app

# Копіюємо файл requirements.txt, якщо він є
COPY requirements.txt .

# Встановлюємо залежності
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
