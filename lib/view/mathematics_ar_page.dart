import 'package:children_education/widgets/widget_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/body_widget_nambers_ar.dart';

class MathematicsPageNumbersAr extends StatelessWidget {
  const MathematicsPageNumbersAr({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      /// Body Widget Numbers 1 2 3
      body: Column(
        children: [
          WidgetAppBar(
            title: "الارقام العربيه",
            color: Color(0xff8B549B),
          ),
          BodyWidgetArNumbers(),
        ],
      ),
    );
  }
}
