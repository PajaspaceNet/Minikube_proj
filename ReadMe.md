
# Minikube/Flask

Jednoduchá aplikace postavená na Flasku, která ukazuje základní funkčnost 
Kubernetes nasazení pomocí Minikube.

![vystup](https://github.com/user-attachments/assets/c460134a-9e90-417f-b7b6-89d44180bb12)

Jeden moznych vystupu aplikace


---

## Obsah
1. [Funkcionalita](#funkcionalita)
2. [Požadavky](#požadavky)
3. [Lokální spuštění](#lokální-spuštění)
4. [Nasazení na Kubernetes](#nasazení-na-kubernetes)
5. [Struktura projektu](#struktura-projektu)

---

## Funkcionalita

- Aplikace vrací základní odpověď na GET požadavek (`Hello from Kubernetes!` ).
- Obsahuje Kubernetes konfiguraci pro nasazení pomocí Deployment, Service a Ingress.

---

## Požadavky

- **Python 3.8+**
- **Docker**
- **Minikube** (pro lokální testování Kubernetes)

---

## Lokální spuštění

### 1. Klonování repozitáře
Naklonujte projekt z GitHubu:
```bash
git clone https://github.com/<tvé-uživatelské-jméno>/<název-repozitáře>.git
cd <název-repozitáře>
```

### 2. Nainstalujte závislosti
Ujistěte se, že máte nainstalovaný Python a závislosti:
```bash
pip install -r requirements.txt
```

### 3. Spusťte aplikaci
Spusťte Flask aplikaci lokálně:
```bash
python app.py
```

Aplikace bude dostupná na adrese:
```
http://127.0.0.1:5000
```

---

## Nasazení na Kubernetes

### 1. Spuštění Minikube
Spusťte Minikube:
```bash
minikube start
```

### 2. Nasazení aplikace
Použijte Kubernetes konfigurace pro nasazení aplikace:
```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl apply -f ingress.yaml  # Volitelné, pokud používáte Ingress
```

### 3. Zkontrolujte stav
Ověřte, že pody a služby běží správně:
```bash
kubectl get pods
kubectl get services
```

### 4. Přístup k aplikaci
Pokud používáte `NodePort`, zjistěte přístupovou adresu:
```bash
minikube service <název-služby>
```

Pokud používáte Ingress, použijte adresu Ingress.

---

## Struktura projektu

```
<název-repozitáře>/
├── app.py                # Flask aplikace
├── Dockerfile            # Docker instrukce
├── requirements.txt      # Python závislosti
├── deployment.yaml       # Kubernetes Deployment konfigurace
├── service.yaml          # Kubernetes Service konfigurace
├── ingress.yaml          # Kubernetes Ingress konfigurace
└── README.md             # Dokumentace
```

---

## Autor
- **Pavel**: (https://github.com/PajaspaceNet/PajaspaceNet)
```



