import 'package:evalu_1/screens/prueba.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Redireccion(),
    );
  }
}

class Redireccion extends StatelessWidget {
  const Redireccion({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Prueba(),
    );
  }
}