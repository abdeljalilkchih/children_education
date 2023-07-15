import 'package:audioplayers/audioplayers.dart';
import 'package:children_education/widgets/widget_icon_button.dart';
import 'package:children_education/widgets/widget_image.dart';
import 'package:flutter/material.dart';

import '../constant/numbers_eng_sound.dart';
import '../controllers/c_numbers_eng.dart';

class BodyWidgetNumdersEng extends StatefulWidget {
  const BodyWidgetNumdersEng({super.key});

  @override
  State<BodyWidgetNumdersEng> createState() => _BodyWidgetNumdersEngState();
}

class _BodyWidgetNumdersEngState extends State<BodyWidgetNumdersEng> {
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
        .setSourceAsset(NumbersEngSound.myListNumbersEngSound[currentIndex]);

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
            /// ControllerNumbers
            data: ControllerNu.getNu(currentIndex),
          ),
        ),
        const SizedBox(
          height: 50,
        ),

        /// Widget Icon Botton
        WidgetIconBotton(
          color1: const Color(0xff8B549B),
          color2: const Color(0xff8B549B),
          onTap: () {
            setState(() {});

            /// very very import increase `currentIndex` add one
            if (currentIndex <
                NumbersEngSound.myListNumbersEngSound.length - 1) {
              currentIndex++;
            }

            /// this is a test for Arabic letter
            myAudioPlayer.setSourceAsset(
                NumbersEngSound.myListNumbersEngSound[currentIndex]);
            myAudioPlayer.resume();
            setState(() {});
          },
          onPressed: () {
            /// very very import decrease `currentIndex` add one
            if (currentIndex > 0) currentIndex--;

            /// this is a test for Arabic letter
            myAudioPlayer.setSourceAsset(
                NumbersEngSound.myListNumbersEngSound[currentIndex]);
            myAudioPlayer.resume();
            setState(() {});
          },
        ),
      ],
    );
  }
}
