import 'package:children_education/widgets/widget_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/body_widget_en.dart';

class EnglishPahe extends StatelessWidget {
  const EnglishPahe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      /// Body Widget Endlish
      body: Column(
        children: [
          WidgetAppBar(
            title: "الحروف الانجليزيه",
            color: Color(0xffEA698D),
          ),
          BodyWidgetEn(),
        ],
      ),
    );
  }
}
