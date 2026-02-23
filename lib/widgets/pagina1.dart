import 'package:flutter/material.dart';
// --- PRIMERA PÁGINA ---
class PaginaInicio extends StatelessWidget {
  const PaginaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF4E342E), // Café oscuro
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Página de Inicio",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
              onPressed: () => Navigator.pushNamed(context, '/segunda'),
              child: const Text("Ir a la Segunda Página", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}