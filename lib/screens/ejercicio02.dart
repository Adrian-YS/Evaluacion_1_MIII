import 'package:evalu_1/navigators/drawer.dart';
import 'package:flutter/material.dart';

class Ejercicio02 extends StatefulWidget {
  const Ejercicio02({super.key});

  @override
  _Ejercicio02State createState() => _Ejercicio02State();
}

class _Ejercicio02State extends State<Ejercicio02> {
  final TextEditingController _alturaController = TextEditingController();
  double? _presion;
  String _resultado = '';

  final double _densidad = 1025.0; 
  final double _gravedad = 9.8;   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Presión a la que es sometido un submarino"),
      ),
      drawer: MiDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _alturaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Introduce la profundidad',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                double? altura = double.tryParse(_alturaController.text);

                setState(() {
                  if (altura == null) {
                    _resultado = 'Por favor, introduce una altura válida.';
                    _presion = null;
                  } else {
                    _presion = _densidad * _gravedad * altura;

                    _resultado = 'La presión es: ${_presion!.toStringAsFixed(2)} Pa';
                  }
                });
              },
              child: Text('Calcular'),
            ),
            SizedBox(height: 20),
            Text(
              _resultado,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
