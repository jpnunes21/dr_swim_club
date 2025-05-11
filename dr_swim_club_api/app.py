from flask import Flask, request, jsonify
import sqlite3
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

# Cria o banco de dados e a tabela, se não existir
def init_db():
    conn = sqlite3.connect('clientes.db')
    cursor = conn.cursor()
    cursor.execute('''
        CREATE TABLE IF NOT EXISTS clientes (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            nome TEXT NOT NULL,
            data_nascimento TEXT NOT NULL,
            regiao TEXT NOT NULL,
            turma TEXT NOT NULL
        )
    ''')
    conn.commit()
    conn.close()

init_db()

@app.route('/clientes', methods=['POST'])
def adicionar_cliente():
    data = request.json
    print("Recebido:", data)

    required_fields = ['nome', 'data_nascimento', 'regiao', 'turma']
    if not all(field in data and data[field] for field in required_fields):
        return jsonify({'erro': 'Dados incompletos'}), 400

    conn = sqlite3.connect('clientes.db')
    cursor = conn.cursor()
    cursor.execute('''
        INSERT INTO clientes (nome, data_nascimento, regiao, turma)
        VALUES (?, ?, ?, ?)
    ''', (data['nome'], data['data_nascimento'], data['regiao'], data['turma']))
    conn.commit()
    conn.close()

    return jsonify({'mensagem': 'Cliente cadastrado com sucesso'}), 200

# Rota para listar todos os clientes (GET)
@app.route('/clientes', methods=['GET'])
def listar_clientes():
    conn = sqlite3.connect('clientes.db')
    cursor = conn.cursor()
    cursor.execute('SELECT id, nome, data_nascimento, regiao, turma FROM clientes')
    clientes = cursor.fetchall()
    conn.close()

    resultado = []
    for cliente in clientes:
        resultado.append({
            'id': cliente[0],
            'nome': cliente[1],
            'data_nascimento': cliente[2],
            'regiao': cliente[3],
            'turma': cliente[4]
        })

    return jsonify(resultado), 200

if __name__ == '__main__':
    app.run(debug=True)
