import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dados simulados de um cliente
    const String nome = 'João Nunes';
    const String regiao = 'Zona Oeste';
    const String turma = 'Adulto - 20h - Terça e Quinta';

    return Scaffold(
      appBar: AppBar(title: const Text('Bem-vindo, $nome')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30), // Afastamento do topo
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Imagem de perfil simulada
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/foto_perfil.jpeg', // Certifique-se de que esta imagem exista
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 20),
                // Informações do cliente
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nome: $nome', style: const TextStyle(fontSize: 18)),
                      const SizedBox(height: 10),
                      Text('Região: $regiao', style: const TextStyle(fontSize: 18)),
                      const SizedBox(height: 10),
                      Text('Turma: $turma', style: const TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
