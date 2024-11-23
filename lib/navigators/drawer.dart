import 'package:evalu_1/screens/ejercicio01.dart';
import 'package:evalu_1/screens/ejercicio02.dart';
import 'package:evalu_1/screens/prueba.dart';
import 'package:flutter/material.dart';

class MiDrawer extends StatelessWidget {
  const MiDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Prueba", style: TextStyle(color: Colors.deepPurple)),
            tileColor: Colors.blueAccent,
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Prueba())),
          ),
          ListTile(
            tileColor: Colors.cyanAccent,
            title: Text("Ejercicio 1"),
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Ejercicio01())),
          ),
          ListTile(
            title: Text("Ejercicio 2"),
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Ejercicio02())),
          )
        ],
      ),
    );
  }
}