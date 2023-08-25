import 'package:flutter/material.dart';
import 'package:salud_flutter/Calorias.dart';
import 'package:salud_flutter/Dietas.dart';
import 'package:salud_flutter/IMC.dart';
import 'package:salud_flutter/RutinasEjercicio.dart';
import 'package:salud_flutter/presionArterial.dart';
import 'package:salud_flutter/contacto.dart';

class Inicio extends StatefulWidget {
  const Inicio({ Key? key }) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vida Saludable "),
      ),
      body: Stack(
      alignment: Alignment.center,
      children: [
       const Image(image: NetworkImage('https://th.bing.com/th/id/R.9ed553d3e35d1c1e30603f52a0c020c3?rik=O0jsgWxlDPQ9LA&pid=ImgRaw&r=0'),width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 120),
          color: Colors.black.withOpacity(0.5),
          child: const Text(
            "'. Mantener el cuerpo saludable es una obligación… De lo contrario, no podemos mantener nuestra mente fuerte y clara (Buda)'",
            style: TextStyle(fontSize: 19.0, color: Colors.white),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const Padding(
              padding: EdgeInsets.all(7.0),
              child: DrawerHeader(
                
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.3OT4RSf4DxI5MXHUeTZrGwHaEE?pid=ImgDet&rs=1'),
                      
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(''),
              ),
            ),
            ListTile(
              leading: Icon(Icons.ac_unit_outlined, color: Colors.black,),
              title: const Text('Dietas'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Dietas ()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.ac_unit_outlined, color: Colors.black,),
              title: const Text('IMC'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const IMC()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.ac_unit_outlined, color: Colors.black,),
              title: const Text('Calorias'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Calorias()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.ac_unit_outlined, color: Colors.black,),
              title: const Text('Rutinas de Ejercicio'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RutinasEjercicio()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.ac_unit_outlined, color: Colors.black,),
              title: const Text('Presion Arterial'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PresionArterial()),
                );
              },
            ),
             ListTile(
              leading: Icon(Icons.ac_unit_outlined, color: Colors.black,),
              title: const Text('Contacto'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Contacto()),
                );
              },
            ),
            
          ],
        ),
      ),
    );
  }
}
