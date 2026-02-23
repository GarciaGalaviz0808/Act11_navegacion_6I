import 'package:flutter/material.dart';
// --- SEGUNDA PÁGINA ---
class SegundaPagina extends StatelessWidget {
  const SegundaPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda Página", style: TextStyle(color: Colors.black)),
        backgroundColor: const Color.fromARGB(255, 192, 129, 81), // Beige
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://picsum.photos/300/200',
                  height: 200,
                  // The 'placeholder' parameter is not defined for Image.network.
                  // If you need a placeholder or loading indicator, consider using a package like 'cached_network_image'.
                  // For now, removing the unsupported parameter.
                  // placeholder: (context, url) => const CircularProgressIndicator(),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 148, 102, 49)), // Canela/Beige oscuro
                onPressed: () => Navigator.pushNamed(context, '/tercera'),
                child: const Text("Ir a la Tercera Página", style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}