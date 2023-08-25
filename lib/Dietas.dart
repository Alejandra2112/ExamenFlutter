import 'package:flutter/material.dart';

class Dietas extends StatefulWidget {
  const Dietas({Key? key}) : super(key: key);

  @override
  _DietasState createState() => _DietasState();
}

class _DietasState extends State<Dietas> {
  List<String> dias = ['LUNES', 'MARTES', 'MIERCOLES', 'JUEVES', 'VIERNES', 'SABADO', 'DOMINGO'];
  String dropvalueTD = 'LUNES';
  List <String> imagenes = [
    'https://th.bing.com/th/id/OIP.XTiqSjLKKOgtXSohHY9MhAHaE8?pid=ImgDet&rs=1',
    'https://th.bing.com/th/id/OIP.xiFhYeEOYBMj88cyl8YArQHaE8?pid=ImgDet&rs=1',
    'https://th.bing.com/th/id/OIP.-8o0P3JdRZXDkTrwHGOmUQHaE8?pid=ImgDet&rs=1',
    'https://thefoodtech.com/wp-content/uploads/2020/06/comida-saludable.jpg',
    'https://th.bing.com/th/id/OIP.V14vo0CfqJsTgw99pJl-_wHaEK?pid=ImgDet&rs=1',
    'https://canalcocina.es/medias/_cache/zoom-7633d99ea9677004a4988e94e5d30aa0-920-518.jpg',
    'https://www.clara.es/medio/2021/02/11/100-recetas-saludables-con-5-ingredientes-pescado_daf97099_1200x630.jpg'
  ];
List <String> dieta = [' \n Desayuno. Porridge de avena hecho con 30 gramos de avena, 200ml de leche desnatada, 20g de proteina whey, 30g de arándanos, 50g de uvas y 10g de nuez. Lo puedes acompañar de un té verde. \nMedia mañana. Requesón (100 gramos) con 20g de nueces y la misma cantidad de pasas que puedes acompañar con un nuevo té verde. \nComida. Lentejas con verdura y huevo. Para ello necesitarás 30 gramos de lentejas, 50g de patata y otros tantos de zanahoria y pimiento, una cebolla, un ajo y un huevo.\n Merienda. 100 gramos de yogur proteico, 50g de fruta y 10g de frutos secos. \n Cena. Ensalada de boniato que puedes preparar con 50 gramos de granada, 10g de nuez, 100g de lechuga, 40g de queso de cabra y 50g de boniato.',
' Desayuno. Tostada airfrier. Para ello necesitarás 30 gramos de pan integral, 1 huevo, 20g queso de untar light, 30g de frambuesa, 10g de nuez y el zumo de una naranja. Añade té verde como bebida matutina. \n Media mañana. Burrito de atún. Los ingredientes son: 30 gramos de tortita de trigo integral, 80g de atún, 20g de yogur, 5g de mostaza, 20g de aguacate y 10g de espinacas que te sentarán mejor en compañía de un nuevo té verde. \n Comida. Taco de tortilla de jamón. Apunta: 30 gramos de tortilla de trigo integral, 1 huevo, 30g de jamón, 10g de alubias, 20g de aguacate, 50g de tomate y 10g de espinacas. \n Merienda. 200 gramos de kéfir con 50g de fruta y 10g de frutos secos. \nCena. Lubina al horno con verduras. Necesitarás: 100 gramos de lubina, 50g de calabacín, 50g de cebolla, 50g de patatas, 1 ajo, 50g de zanahoria y 5ml de aceite oliva virgen.',
'Desayuno. Tortilas de avena y plátano. Para acompañar a tu té verde, prepara estas tortitas con 30 gramos de avena, 50g de plátano, 1 huevo, 50g de claras, 10g de crema de cacahuete, 30 g de arándanos y 1 kiwi. \n Media mañana. Repite el tentempié del lunes a base de requesón. \n Comida. Berenjena rellena de carne. Ingredientes: 1 berenjena, 80g de carne picada, 50g de pimiento rojo, 50g de pimiento verde, 50g de cebolla, 50g de tomate y 30g de mozarella. \n Merienda. 200gramos de queso fresco batido con 50g de fruta y 10g de frutos secos. \n Cena. Ensalada de mango, salmón y aguacate. Necesitarás: 100 gramos de salmón, 100g de lechuga, 30g de mango, 30g de aguacate y 5g de semilla de lino y 50g de tomate cherri.',
'  Desayuno. Porridge de avena y té verde (misma receta del lunes). \n Media mañana. Burrito de pavo. Ingredientes: 30 gramos de tortita trigo integral, 50g de pavo, 20g de aguacate, 10g espinaca, té verde y 4 tomates cherri. \n Comida. Pollo al horno con patatas: 100 gramos de pollo, 1 limón, 1 patata, 1 cuchara de aceite, verduras al gusto que pueden ser cebolla, zanahoria o calabacín (por ejemplo). \n Merienda. 100 gramos de cuajada, 50g de fruta y 10g de frutos secos. \n Cena. Bomba de coliflor con huevo. Para ello solo necesitarás tres ingredientes: 100 gramos de coliflor, 40g de mozarella y 1 huevo.',
'  Desayuno. Porridge de avena y té verde (misma receta del lunes). \n Media mañana. Burrito de pavo. Ingredientes: 30 gramos de tortita trigo integral, 50g de pavo, 20g de aguacate, 10g espinaca, té verde y 4 tomates cherri. \n Comida. Pollo al horno con patatas: 100 gramos de pollo, 1 limón, 1 patata, 1 cuchara de aceite, verduras al gusto que pueden ser cebolla, zanahoria o calabacín (por ejemplo). \nMerienda. 100 gramos de cuajada, 50g de fruta y 10g de frutos secos. \n Cena. Bomba de coliflor con huevo. Para ello solo necesitarás tres ingredientes: 100 gramos de coliflor, 40g de mozarella y 1 huevo.',
'  Desayuno. Tortitas de avena y plátano y té verde (misma receta que el miércoles). \nMedia mañana. Burrito de atún (repite el tentempié del martes). \n Comida. Garbanzos con verduras y pollo. Ingredientes: 100 gramos de garbanzos, 50g de patata, 50g de zanahoria, 50g de cebolla, 80g de pollo y 1 diente de ajo. \n Merienda. Kéfir (repite la fórmula del martes). \n Cena. Tortilla de patata y calabacín que puedes elaborar con 2 huevos, 100 gramos de calabacín, 50g de cebolla, 50g de patata y 1 cuchara de aceite oliva virgen.',
'  Desayuno. El útimo día de la semana, podrás mojar con tu té verde una tarta de manzana elaborada con 1 huevo, 50 gramos de claras, 1/2 manzana, medio yogur bio, 40g de harina de avena, levadurina y 1 kiwi. \n Media mañana. Requesón (igual que en días alternos anteriores). \n Comida. Paella de marisco. Ingredientes: 40 gramos de arroz, 50g de gamba, 30g de almeja, 100g de pimiento rojo y verde, 50g de cebolla, 100g de tomate y 1 diente de ajo. \nMerienda. Repite la merienda con queso fresco que tomaste el miércoles. \n Cena. Crep de espinacas relleno de pavo. Necesitarás: 1 huevo, 50g de clara, 20g de avena, 50g de pavo, 10g de queso en lonchas light, 20g de aguacate, 20g de lechuga y 50g de tomate.',

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dietas'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DropdownButton<String>(
              value: dropvalueTD,
              items: dias.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Container(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        Text("Dias: "),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                imagenes[dias.indexOf(dropvalueTD)],
                width: 300,
                height: 300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                dieta[dias.indexOf(dropvalueTD)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

