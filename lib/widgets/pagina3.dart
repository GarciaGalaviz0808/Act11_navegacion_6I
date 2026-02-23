import 'package:flutter/material.dart';
// --- TERCERA PÁGINA ---
class TerceraPagina extends StatelessWidget {
  const TerceraPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tercera Página", style: TextStyle(color: Color.fromARGB(255, 44, 30, 27))),
        backgroundColor: const Color.fromARGB(255, 184, 133, 94), // Cremita
        iconTheme: const IconThemeData(color: Color(0xFF4E342E)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 239, 183, 162), // Café claro
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    // 'withOpacity' is deprecated. Replaced with equivalent const Color.
                    // 0.1 opacity for Colors.black (0xFF000000) corresponds to an alpha of 26 (0x1A).
                    color: const Color(0xFF000000),
                    blurRadius: 10,
                    spreadRadius: 5,
                  )
                ],
              ),
              child: const Center(
                child: Text("Cuadrado Café", style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Regresar"),
            )
          ],
        ),
      ),
    );
  }
}