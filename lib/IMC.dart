import 'package:flutter/material.dart';
import 'package:salud_flutter/widgets/inputs_form.dart';

class IMC extends StatefulWidget {
  const IMC({ Key? key }) : super(key: key);

  @override
  _IMCState createState() => _IMCState();
}

class _IMCState extends State<IMC> {
    final peso = TextEditingController();
  final altura = TextEditingController();
  double resultado = 0; 
  String info = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IMC'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InputsForm(controller: peso, obscureText: false, hintext: 'Ingrese su peso', labelText: 'Peso'),
            InputsForm(controller: altura, obscureText: false, hintext: 'Ingrese su altura', labelText: 'Altura'),
           ElevatedButton(
  onPressed: () {
    setState(() {
      double weight = double.parse(peso.text);
      double height = double.parse(altura.text);

      resultado = weight / (height * height);

      if (resultado <= 18.5) {
        info = 'Su peso está catalogado como peso inferior al normal.\nSu índice de masa corporal es $resultado';
      } else if (resultado <= 24.9) {
        info = 'Su peso está catalogado como normal.\nSu índice de masa corporal es $resultado';
      } else if (resultado <= 29.9) {
        info = 'Su peso está catalogado como peso superior a lo normal.\nSu índice de masa corporal es $resultado';
      } else {
        info = 'Su peso está catalogado como obesidad.\nSu índice de masa corporal es $resultado';
      }
    });
  },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                minimumSize: const Size(50, 50),
              ),
              child: const Text('Mostrar Información'),
            ),
            SizedBox(height: 20), 
            Text('Resultado: $resultado \n $info')
          ],
        ),
      ),
      
    );
  }
}