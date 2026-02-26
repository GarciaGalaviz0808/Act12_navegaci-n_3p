import 'package:flutter/material.dart';
import 'dart:async';


class Pantalla1 extends StatefulWidget {
  const Pantalla1({super.key});

  @override
  State<Pantalla1> createState() => _Pantalla1State();
}

class _Pantalla1State extends State<Pantalla1> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 10), () {
      if (mounted) Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBrown,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Melanie Garcia',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: darkBrown, fontFamily: 'serif')),
            const Text('6° I',
                style: TextStyle(fontSize: 18, color: darkBrown, fontFamily: 'serif', letterSpacing: 2)),
            const SizedBox(height: 40),
            Image.network(logoUrl, height: 180),
            const SizedBox(height: 50),
            const CircularProgressIndicator(color: darkBrown),
          ],
        ),
      ),
    );
  }
}
// Colores globales para que todos los archivos los usen
const Color darkBrown = Color(0xFF3E2723);
const Color mediumBrown = Color(0xFF5D4037);
const Color lightBrown = Color(0xFFD7CCC8);
const String logoUrl = 'https://raw.githubusercontent.com/GarciaGalaviz0808/imgs/refs/heads/main/logo%20(1).png';