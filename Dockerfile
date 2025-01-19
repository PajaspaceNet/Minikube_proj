# Základní image s Pythonem
FROM python:3.9-slim

# Nastavení pracovní složky
WORKDIR /app

# Kopírování aplikace a instalace závislostí
COPY app.py requirements.txt ./
RUN pip install -r requirements.txt

# Spuštění aplikace
CMD ["python", "app.py"]
