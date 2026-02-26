import 'package:flutter/material.dart';
import 'package:myapp/widgets/pantalla1.dart';
import 'package:myapp/widgets/pantalla2.dart';
import 'package:myapp/widgets/pantalla3.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ArtStore - Melanie Garcia',
      theme: ThemeData(useMaterial3: true),
      // Definición de Rutas Nombradas
      initialRoute: '/',
      routes: {
        '/': (context) => const Pantalla1(),
        '/login': (context) => const Pantalla2(),
        '/register': (context) => const Pantalla3(),
      },
    );
  }
}

