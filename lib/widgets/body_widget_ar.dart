import 'package:audioplayers/audioplayers.dart';
import 'package:children_education/widgets/widget_icon_button.dart';
import 'package:children_education/widgets/widget_image.dart';
import 'package:flutter/material.dart';
import '../constant/letters_sound_ar.dart';
import '../controllers/c_ar.dart';

class BodyWidgetAr extends StatefulWidget {
  const BodyWidgetAr({super.key});

  @override
  State<BodyWidgetAr> createState() => _BodyWidgetArState();
}

class _BodyWidgetArState extends State<BodyWidgetAr> {
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
        .setSourceAsset(LettersSoundAr.myListLetterArSound[currentIndex]);

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
            data: ControllerLettersAr.getAr(currentIndex),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        WidgetIconBotton(
          color2: const Color(0xffE30613),
          color1: const Color(0xffE30613),
          onTap: () {
            /// very very import increase `currentIndex` add one
            if (currentIndex < LettersSoundAr.myListLetterArSound.length - 1) {
              currentIndex++;
            }

            /// this is a test for Arabic letter
            myAudioPlayer.setSourceAsset(
                LettersSoundAr.myListLetterArSound[currentIndex]);
            myAudioPlayer.resume();
            setState(() {});
          },
          onPressed: () {
            /// very very import decrease `currentIndex` add one
            if (currentIndex > 0) currentIndex--;

            /// this is a test for Arabic letter
            myAudioPlayer.setSourceAsset(
                LettersSoundAr.myListLetterArSound[currentIndex]);
            myAudioPlayer.resume();
            setState(() {});
          },
        ),
      ],
    );
  }
}
