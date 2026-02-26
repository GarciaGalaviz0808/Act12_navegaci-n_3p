import 'package:flutter/material.dart';


class Pantalla2 extends StatefulWidget {
  const Pantalla2({super.key});

  @override
  State<Pantalla2> createState() => _Pantalla2State();
}

class _Pantalla2State extends State<Pantalla2> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBrown,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(alignment: Alignment.centerLeft, child: Image.network(logoUrl, height: 70)),
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.brush, color: darkBrown, size: 30),
                  const SizedBox(width: 10),
                  const Text('Iniciar Sesión', style: TextStyle(fontSize: 32, color: darkBrown, fontFamily: 'serif')),
                ],
              ),
              const SizedBox(height: 40),
              _buildLabel(Icons.person_outline, "Nombre de usuario"),
              const SizedBox(height: 10),
              _buildInput(),
              const SizedBox(height: 20),
              _buildLabel(Icons.lock_outline, "Contraseña"),
              const SizedBox(height: 10),
              _buildInput(
                isPassword: true,
                obscure: _isObscured,
                onToggle: () => setState(() => _isObscured = !_isObscured),
              ),
              const SizedBox(height: 50),
              _buildButton("Iniciar Sesión", () => Navigator.pushReplacementNamed(context, '/')),
              const SizedBox(height: 30),
              Text('¿No tienes cuenta?', style: TextStyle(color: darkBrown.withAlpha(180))),
              const SizedBox(height: 10),
              _buildButton("Regístrate", () => Navigator.pushNamed(context, '/register'), isSmall: true),
            ],
          ),
        ),
      ),
    );
  }

  // Widgets auxiliares para no repetir código
  Widget _buildLabel(IconData icon, String text) => Row(children: [
        Icon(icon, color: darkBrown, size: 22),
        const SizedBox(width: 8),
        Text(text, style: const TextStyle(color: darkBrown, fontSize: 17, fontFamily: 'serif')),
      ]);

  Widget _buildInput({bool isPassword = false, bool obscure = false, VoidCallback? onToggle}) => TextField(
        obscureText: obscure,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white.withAlpha(75),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(35), borderSide: const BorderSide(color: darkBrown)),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(35), borderSide: const BorderSide(color: darkBrown, width: 2)),
          suffixIcon: isPassword ? IconButton(icon: Icon(obscure ? Icons.visibility : Icons.visibility_off, color: darkBrown), onPressed: onToggle) : null,
        ),
      );

  Widget _buildButton(String text, VoidCallback onPressed, {bool isSmall = false}) => ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: mediumBrown, foregroundColor: Colors.white, elevation: 8,
          minimumSize: Size(isSmall ? 160 : double.infinity, 55), shape: const StadiumBorder(),
        ),
        child: Text(text, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      );
}
// Colores globales para que todos los archivos los usen
const Color darkBrown = Color(0xFF3E2723);
const Color mediumBrown = Color(0xFF5D4037);
const Color lightBrown = Color(0xFFD7CCC8);
const String logoUrl = 'https://raw.githubusercontent.com/GarciaGalaviz0808/imgs/refs/heads/main/logo%20(1).png';