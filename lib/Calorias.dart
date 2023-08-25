import 'package:flutter/material.dart';
import 'package:salud_flutter/widgets/inputs_form.dart';

class Calorias extends StatefulWidget {
  const Calorias({ Key? key }) : super(key: key);

  @override
  _CaloriasState createState() => _CaloriasState();
}

class _CaloriasState extends State<Calorias> {
  List<String> genero = ['HOMBRE', 'MUJER',];
  String dropvalueTD = 'MUJER';
   List<Icon> iconos = [Icon(Icons.woman),Icon(Icons.man)];
   final caloriasDesayuno = TextEditingController();
   final caloriasAlmuerzo = TextEditingController();
   final caloriasCena = TextEditingController();
   int resultado = 0;
  String info = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calorias'),
      ),
      body: SingleChildScrollView(child: 
      Column(
        children: [
           DropdownButton<String>(
                value: dropvalueTD,
                items: genero.map((String value) {
                  int index = genero.indexOf(value);
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Container(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: [
      
                         iconos[genero.indexOf(dropvalueTD)],
      
                          Text(" Genero:  ",),
                          
                          Text(
                            value,
                            style: const TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropvalueTD = newValue!;
                    
                  });
                },
              ),

              InputsForm(controller: caloriasDesayuno, obscureText: false, hintext: 'Ingrese calorias "Desayuno" ', labelText: 'Desayuno'),
              InputsForm(controller: caloriasAlmuerzo, obscureText: false, hintext: 'Ingrese caloria "Almuerzo"', labelText: 'Almuerzo'),
              InputsForm(controller: caloriasCena, obscureText: false, hintext: 'Ingrese calorias "Cena"', labelText: 'Cena'),


              ElevatedButton(
               onPressed: () {
  setState(() {
    resultado = int.parse(caloriasDesayuno.text) + int.parse(caloriasAlmuerzo.text) + int.parse(caloriasCena.text);
    if ((dropvalueTD == 'MUJER' || dropvalueTD == 'HOMBRE') && resultado <= 1600) {
  info = "Deficit Calorico";
} else if (dropvalueTD == 'MUJER' && resultado >= 1600 && resultado <= 2000) {
  info = "Consumo normal";
} else if (dropvalueTD == 'MUJER' && resultado > 2000) {
  info = "Consumo excesivo de calorias";
} else if (dropvalueTD == 'HOMBRE' && resultado >= 2000 && resultado <= 2500) {
  info = "Consumo normal";
} else if (dropvalueTD == 'HOMBRE' && resultado > 2500) {
  info = "Consumo excesivo de calorias";
}

  });
},

                
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  minimumSize: const Size(50, 50),
                ),
                child: const Text('Ver calorias'),
              ),
              SizedBox(height: 10,),
              Text('Resultado: $resultado y el deficit calorico es: $info')
        ],
      )),
      
    );
  }
}