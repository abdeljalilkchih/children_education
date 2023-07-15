import 'package:children_education/widgets/widget_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/body_widet_nambers_eng.dart';

class MathematicsPageNumberdEng extends StatelessWidget {
  const MathematicsPageNumberdEng({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      /// Body Widget Numbers 1 2 3
      body: Column(
        children: [
          WidgetAppBar(
            title: "الارقام الانجليزيه",
            color: Color(0xff8B549B),
          ),
          BodyWidgetNumdersEng(),
        ],
      ),
    );
  }
}
