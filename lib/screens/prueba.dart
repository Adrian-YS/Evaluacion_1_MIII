import 'package:evalu_1/navigators/drawer.dart';
import 'package:evalu_1/screens/ejercicio02.dart';
import 'package:flutter/material.dart';

class Prueba extends StatelessWidget {
  const Prueba({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Prueba")),
      ),
      drawer: MiDrawer(),
      body: 
      Column(
        children: [
          Center(child: Text("Adrian Ybañez Sanchez")),
          Center(child: Text("Adrian-YS"),),
          boton1_btn(context)
        ],
      ),
    );
  }
}

Widget boton1_btn(context){
  return ElevatedButton(onPressed: ()=> alerta(context), child: Text("Redirigir"));
}

void alerta(context){
  showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      title: Text("ALERTA"),
      content: Text("¿Deseas ir al Ejercicio 2?"),
      actions: [
        FilledButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Ejercicio02())), child: Text("Aceptar")),
        FilledButton(onPressed: ()=> Navigator.pop(context), child: Text("Cancelar"))
      ],
    );
  });
}