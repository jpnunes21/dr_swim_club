import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiDevice {
  static Future<void> enviarCadastro(String nome, String dataNascimento, String regiao, String turma) async {
    final url = Uri.parse('http://localhost:5000/clientes');

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'nome': nome,
        'data_nascimento': dataNascimento,
        'regiao': regiao,
        'turma': turma,
      }),
    );

    if (response.statusCode == 200) {
      print('Cadastro enviado com sucesso!');
    } else {
      print('Erro ao enviar cadastro: ${response.body}');
    }
  }
}
