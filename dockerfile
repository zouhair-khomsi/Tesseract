# Utilisez une image de base avec Python
FROM python:3.8

# Définissez le répertoire de travail
WORKDIR /app

# Copiez tous les fichiers Python nécessaires dans le conteneur
COPY app1.py .
COPY app2.py .
COPY app3.py .
COPY requirements.txt .

# Installez les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposez le port sur lequel l'application Flask écoute
EXPOSE 5000

# Commande pour démarrer l'application
CMD ["python", "app1.py"]
