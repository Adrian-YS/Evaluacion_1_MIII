import 'package:evalu_1/navigators/drawer.dart';
import 'package:flutter/material.dart';

class Ejercicio01 extends StatefulWidget {
  const Ejercicio01({super.key});

  @override
  _Ejercicio02State createState() => _Ejercicio02State();
}

class _Ejercicio02State extends State<Ejercicio01> {
  final TextEditingController _velocidadInicialController = TextEditingController();
  final TextEditingController _velocidadFinalController = TextEditingController();

  double? _tiempo;
  String _resultado = '';

  final double _tiempoMinimo = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pruebas de Velocidad"),
      ),
      drawer: MiDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _velocidadInicialController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Introduce Velocidad Inicial (m/s)',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _velocidadFinalController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Introduce Velocidad Final (m/s)',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double? velocidadInicial = double.tryParse(_velocidadInicialController.text);
                double? velocidadFinal = double.tryParse(_velocidadFinalController.text);

                setState(() {
                  if (velocidadInicial == null || velocidadFinal == null) {
                    _resultado = 'Por favor, introduce números válidos.';
                    _tiempo = null;
                  } else {
                    const double aceleracion = 10.0; 
                    _tiempo = (velocidadFinal - velocidadInicial) / aceleracion;

                    if (_tiempo! > _tiempoMinimo) {
                      _resultado = 'El vehículo SI aprobó. Tiempo: ${_tiempo!.toStringAsFixed(2)} s';
                    } else {
                      _resultado = 'El vehículo NO aprobó. Tiempo: ${_tiempo!.toStringAsFixed(2)} s';
                    }
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
