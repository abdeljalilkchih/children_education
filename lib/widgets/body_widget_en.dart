import 'package:audioplayers/audioplayers.dart';
import 'package:children_education/controllers/c_en.dart';
import 'package:children_education/widgets/widget_icon_button.dart';
import 'package:children_education/widgets/widget_image.dart';
import 'package:flutter/material.dart';

import '../constant/letters_eng_sound.dart';

class BodyWidgetEn extends StatefulWidget {
  const BodyWidgetEn({super.key});

  @override
  State<BodyWidgetEn> createState() => _BodyWidgetEnState();
}

class _BodyWidgetEnState extends State<BodyWidgetEn> {
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
        .setSourceAsset(LettersSoundEn.myListLetterEngSound[currentIndex]);

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

          /// Widget Image Data
          child: WidgetImage(
            /// Controller English
            data: ControllerEn.getEn(currentIndex),
          ),
        ),
        const SizedBox(
          height: 50,
        ),

        /// Widget Icon Botton
        WidgetIconBotton(
          color1: const Color(0xffEA698D),
          color2: const Color(0xffEA698D),
          onTap: () {
            setState(() {});

            /// very very import increase `currentIndex` add one
            if (currentIndex < LettersSoundEn.myListLetterEngSound.length - 1) {
              currentIndex++;
            }

            /// this is a test for Arabic letter
            myAudioPlayer.setSourceAsset(
                LettersSoundEn.myListLetterEngSound[currentIndex]);
            myAudioPlayer.resume();
            setState(() {});
          },
          onPressed: () {
            if (currentIndex > 0) currentIndex--;

            /// this is a test for Arabic letter
            myAudioPlayer.setSourceAsset(
                LettersSoundEn.myListLetterEngSound[currentIndex]);
            myAudioPlayer.resume();
            setState(() {});
          },
        ),
      ],
    );
  }
}
