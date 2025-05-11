## 📘 `README.md`

````markdown
# 🏊‍♂️ D&R Swim Club - Aplicativo de Cadastro e Gerenciamento

Bem-vindo ao projeto D&R Swim Club, um aplicativo desenvolvido em Flutter para Android que simula o cadastro e a exibição de informações de alunos de uma escola de natação fictícia. A aplicação se comunica com uma API Python (Flask) que armazena os dados em um banco de dados SQLite.

---

## 📱 Telas do App

### 🔐 Tela de Login
Permite que o usuário informe seu e-mail e senha fictícios para simular um login.

![Tela de Login](images/login_screen.png)

### 📝 Tela de Cadastro
Formulário para cadastro de novos clientes, incluindo nome, data de nascimento, região e turma.

![Tela de Cadastro](images/register_screen.png)

### 🏡 Tela Inicial (Home)
Exibe os dados cadastrados do cliente (simulados localmente) com a foto de perfil no topo.

![Tela Home](images/home_screen.png)

---

## ⚙️ Funcionalidades

- Login
- Cadastro de clientes com envio dos dados para uma API
- Exibição de dados do cliente após login
- Comunicação com API REST em Python usando SQLite
- Estrutura modularizada (ex: separação da lógica de requisições em `services/api_device.dart`)

---

## 🧩 Tecnologias Utilizadas

### 📱 Flutter
- Dart
- HTTP Package
- Modularização com Widgets
- Compatível com Android

### 🔗 API Python
- Flask
- SQLite
- Flask-CORS

---

## 🚀 Como Executar o Projeto

### 📦 Requisitos

- Flutter SDK instalado
- Python 3.x instalado
- Android Studio ou VS Code configurado para Flutter

### 🔧 Passo a passo

#### 1. Clone o repositório
```bash
git clone https://github.com/seu-usuario/dr_swim_club.git
cd dr_swim_club
````

#### 2. Instale as dependências do Flutter

```bash
flutter pub get
```

#### 3. Execute o app no emulador ou dispositivo

```bash
flutter run
```

#### 4. Vá até a pasta da API e instale dependências

```bash
cd api
pip install flask flask-cors
```

#### 5. Inicie o servidor Flask

```bash
python app.py
```

A API estará disponível em: `http://localhost:5000/clientes`

---

## 🔁 Endpoints da API

| Método | Rota      | Descrição                           |
| ------ | --------- | ----------------------------------- |
| POST   | /clientes | Cadastra um novo cliente            |
| GET    | /clientes | Lista todos os clientes cadastrados |

---

## 📂 Estrutura do Projeto

```
dr_swim_club/
├── android/
├── lib/
│   ├── screens/
│   │   ├── login_screen.dart
│   │   ├── register_screen.dart
│   │   └── home_screen.dart
│   ├── services/
│   │   └── api_device.dart
│   └── main.dart
├── api/
│   └── app.py
├── images/
│   └── [capturas de tela do app]
└── pubspec.yaml
```

---

## 📫 Contato

Caso tenha dúvidas ou sugestões, sinta-se à vontade para entrar em contato:

* João Nunes (Desenvolvedor do Projeto)
* Email: [joao.pedro.ramos@outlook.com](joao.pedro.ramos@outlook.com)

---

