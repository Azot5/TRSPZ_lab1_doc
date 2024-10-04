# �������� ������� ����� Python 3.11
FROM python:3.11-slim

# ������������ ������ ��������� �������� ����������
WORKDIR /app

# ������� ���� requirements.txt, ���� �� �
COPY requirements.txt .

# ������������ ���������
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
