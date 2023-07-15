import 'package:children_education/widgets/widget_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/body_widget_animals.dart';

class AnimalsPage extends StatelessWidget {
  const AnimalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    ///
    return const Scaffold(
      /// Body Widget Animals
      body: Column(
        children: [
          WidgetAppBar(
            title: "أصوات الحيوانات",
            color: Colors.green,
          ),
          BodyWidgetAnimals(),
        ],
      ),
    );
  }
}
