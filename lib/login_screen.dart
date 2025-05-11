import 'package:flutter/material.dart';
import 'register_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo_d&r.jpeg',
                width: 300,  // aumenta a largura
                height: 120, // altura opcional
                fit: BoxFit.contain, // mantém proporção
              ),
              SizedBox(height: 24),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: senhaController,
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Senha'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                child: const Text('Login'),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Link simbólico
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WebViewRedirect(),
                    ),
                  );
                },
                child: const Text('Esqueci minha senha'),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegisterScreen()),
                  );
                },
                child: const Text('Cadastre-se'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WebViewRedirect extends StatelessWidget {
  const WebViewRedirect({super.key});

  @override
  Widget build(BuildContext context) {
    // Apenas redireciona para o Google como exemplo
    return const Scaffold(
      body: Center(
        child: Text('Redirecionando...'),
      ),
    );
  }
}
