# 🌦️ Consulta de Clima - Flutter

Aplicativo mobile desenvolvido em **Flutter (Dart)** que permite ao usuário buscar as condições climáticas atuais de qualquer cidade, utilizando a API da **OpenWeatherMap**.

## Link para testar o aplicativo

https://flutlab.io/sandbox/d0be4e1f-b5e3-4e96-b6a4-a3f39450f68d

## 📱 Demonstração


https://github.com/user-attachments/assets/a1492d38-21a5-49df-a376-b2ee3aa82dde


> Resultado da busca por "Franca" exibindo: temperatura, clima, umidade e vento.

---

## 🧱 Arquitetura do Projeto

```
lib/
├── screens       # Telas principais (ex: HomeScreen)
├── services      # Requisições HTTP e integração com APIs
└── main.dart     # Ponto de entrada da aplicação
```

---

## ⚙️ Funcionalidades

```
- 🔍 Busca de cidade para obter clima atual
- 🌡️ Exibe temperatura, condição do clima, umidade e velocidade do vento
- 📡 Integração com a API da OpenWeatherMap
- 📱 Interface responsiva e limpa
```

---

## 🛠️ Tecnologias Utilizadas

```
- Flutter
- Dart
- OpenWeatherMap API
- HTTP package (para requisições)
```

---

## 🚀 Como Executar

### Pré-requisitos

```
- Flutter instalado (https://docs.flutter.dev/get-started/install)
- Chave de API da OpenWeatherMap (https://home.openweathermap.org/api_keys)
```

### Passos

```bash
# Clone o repositório
git clone https://github.com/PedrohmCandido/Projeto-Clima.git
cd Projeto-Clima

# Instale as dependências
flutter pub get

# Adicione sua chave da API no arquivo de serviço (ex: weather_service.dart)
# const String apiKey = "SUA_CHAVE_AQUI";

# Execute o app
flutter run
```

---

## 📂 Estrutura Modular

```
- WeatherService: Serviço que consome a API HTTP
- HomeScreen: Interface principal

```

---

## 📌 Melhorias Futuras

```
- Histórico de buscas
- Geolocalização automática
- Modo escuro
- Animações de clima
```

---

## 👨‍💻 Autor

```
Desenvolvido por Pedro 🚀

- GitHub: https://github.com/PedrohmCandido
```
