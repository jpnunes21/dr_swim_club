import 'package:flutter/material.dart';
import '../services/api_device.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nomeController = TextEditingController();
    final TextEditingController dataNascimentoController = TextEditingController();
    final TextEditingController regiaoController = TextEditingController();
    final TextEditingController turmaController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nomeController,
                decoration: const InputDecoration(labelText: 'Nome completo'),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: dataNascimentoController,
                decoration: const InputDecoration(labelText: 'Data de nascimento'),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: regiaoController,
                decoration: const InputDecoration(labelText: 'Região (Norte, Sul, Centro, Oeste)'),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: turmaController,
                decoration: const InputDecoration(labelText: 'Turma (Ex: Infantil - 9h)'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  if (nomeController.text.isEmpty ||
                      dataNascimentoController.text.isEmpty ||
                      regiaoController.text.isEmpty ||
                      turmaController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Por favor, preencha todos os campos.')),
                    );
                    return;
                  }

                  await ApiDevice.enviarCadastro(
                    nomeController.text,
                    dataNascimentoController.text,
                    regiaoController.text,
                    turmaController.text,
                  );

                  Navigator.pop(context);
                },
                child: const Text('Finalizar cadastro'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
