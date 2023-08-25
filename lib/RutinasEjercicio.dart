import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class RutinasEjercicio extends StatefulWidget {
const RutinasEjercicio({ Key? key }) : super(key: key);

  @override
  State<RutinasEjercicio> createState() => _RutinasEjercicioState();
}

class _RutinasEjercicioState extends State<RutinasEjercicio> {
final List<String> links = [
  'https://youtu.be/diFjQVUL7wk?si=cFUUuTeY3cWq5c_8',
  'https://youtu.be/iQ3g-gqKe_A?si=S_rrzrqzmsEpRrPI',
  'https://youtu.be/0YRX4pEP6pY?si=_SiYq80X5yXJSeYB'
];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Rutinas de Ejercicio"),
      ),
      body: SingleChildScrollView(child: 
      Column(
       children: [
                for (int i = 0; i < 3; i++)
                YoutubePlayer(
                  controller: YoutubePlayerController(
                    initialVideoId: YoutubePlayer.convertUrlToId(links[i])!,
                    flags: const YoutubePlayerFlags(
                      autoPlay: false,
                      mute: false,
                    ),
                  ),
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.blueAccent,
                  progressColors: const ProgressBarColors(
                    playedColor: Colors.blueAccent,
                    handleColor: Colors.blueAccent,
                  ),
                ),
              ],
      )),
    );
  }
}