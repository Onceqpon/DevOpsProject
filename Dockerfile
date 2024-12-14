# Używamy obrazu Python
FROM python:3.9-slim

# Ustawiamy katalog roboczy w kontenerze
WORKDIR /app

# Kopiujemy plik requirements.txt do kontenera
COPY requirements.txt .

# Instalujemy zależności
RUN pip install --no-cache-dir -r requirements.txt

# Kopiujemy resztę aplikacji
COPY . .

# Ekspozycja portu
EXPOSE 5000

# Uruchomienie aplikacji
CMD ["python", "main.py"]
