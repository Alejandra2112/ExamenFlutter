import 'package:flutter/material.dart';
import 'package:salud_flutter/Calorias.dart';
import 'package:salud_flutter/Dietas.dart';
import 'package:salud_flutter/IMC.dart';
import 'package:salud_flutter/RutinasEjercicio.dart';
import 'package:salud_flutter/contacto.dart';
import 'package:salud_flutter/inicio.dart';
import 'package:salud_flutter/presionArterial.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Inicio(),
      // theme: AppTheme.darkTheme, 
    );
  }
}