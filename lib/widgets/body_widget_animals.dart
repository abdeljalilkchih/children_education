import 'package:audioplayers/audioplayers.dart';
import 'package:children_education/widgets/widget_icon_button.dart';
import 'package:children_education/widgets/widget_image.dart';
import 'package:flutter/material.dart';

import '../constant/animals_sound.dart';
import '../controllers/c_animals.dart';

class BodyWidgetAnimals extends StatefulWidget {
  const BodyWidgetAnimals({super.key});

  @override
  State<BodyWidgetAnimals> createState() => _BodyWidgetAnimalsState();
}

class _BodyWidgetAnimalsState extends State<BodyWidgetAnimals> {
  int currentIndex = 0;
  late AudioPlayer myAudioPlayer;

  /// run just when open page
  @override
  void initState() {
    super.initState();

    /// object audio
    myAudioPlayer = AudioPlayer();

    /// run audio depended current `index` list
    myAudioPlayer
        .setSourceAsset(AnimalsSound.myListLetterAnimalsSound[currentIndex]);

    /// fix audio when  `paused` or `stopped`.
    myAudioPlayer.resume();
  }

  /// run end page `finish`
  @override
  void dispose() {
    super.dispose();

    /// stop audio when out page
    // myAudioPlayer.stop();
    myAudioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 500,
          child: WidgetImage(
            data: ControllerAnimalsImages.getAn(currentIndex),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        WidgetIconBotton(
          color1: Colors.green,
          color2: Colors.green,
          onTap: () {
            /// very very import increase `currentIndex` add one
            if (currentIndex <
                AnimalsSound.myListLetterAnimalsSound.length - 1) {
              currentIndex++;
            }

            /// this is a test for Arabic letter
            myAudioPlayer.setSourceAsset(
                AnimalsSound.myListLetterAnimalsSound[currentIndex]);
            myAudioPlayer.resume();
            setState(() {});
          },
          onPressed: () {
            /// very very import decrease `currentIndex` add one
            if (currentIndex > 0) currentIndex--;

            /// this is a test for Arabic letter
            myAudioPlayer.setSourceAsset(
                AnimalsSound.myListLetterAnimalsSound[currentIndex]);
            myAudioPlayer.resume();
            setState(() {});
          },
        ),
      ],
    );
  }
}
