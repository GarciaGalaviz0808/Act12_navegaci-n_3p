import 'package:flutter/material.dart';


class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBrown,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(logoUrl, height: 60),
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new, color: darkBrown, size: 30),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person_add_alt, color: darkBrown, size: 30),
                  SizedBox(width: 10),
                  Text('Crear Cuenta', style: TextStyle(fontSize: 30, color: darkBrown, fontFamily: 'serif')),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(child: _field("Nombre")),
                  const SizedBox(width: 15),
                  Expanded(child: _field("Apellido")),
                ],
              ),
              _field("@Nombre de usuario"),
              _field("Correo"),
              _field("Contraseña", isPass: true),
              const SizedBox(height: 50),
              _button("Crear Cuenta", () => Navigator.pop(context)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _field(String label, {bool isPass = false}) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: const TextStyle(color: darkBrown, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            TextField(
              obscureText: isPass,
              decoration: InputDecoration(
                filled: true, fillColor: Colors.white.withAlpha(75),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(35), borderSide: const BorderSide(color: darkBrown)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(35), borderSide: const BorderSide(color: darkBrown, width: 2)),
              ),
            ),
          ],
        ),
      );

  Widget _button(String text, VoidCallback onPressed) => ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: mediumBrown, foregroundColor: Colors.white, elevation: 8,
          minimumSize: const Size(double.infinity, 55), shape: const StadiumBorder(),
        ),
        child: Text(text, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      );
}
// Colores globales para que todos los archivos los usen
const Color darkBrown = Color(0xFF3E2723);
const Color mediumBrown = Color(0xFF5D4037);
const Color lightBrown = Color(0xFFD7CCC8);
const String logoUrl = 'https://raw.githubusercontent.com/GarciaGalaviz0808/imgs/refs/heads/main/logo%20(1).png';