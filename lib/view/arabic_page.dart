import 'package:children_education/widgets/widget_app_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/body_widget_ar.dart';

class ArabicPage extends StatelessWidget {
  const ArabicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      /// Body Widget Arabic
      body: Column(
        children: [
          WidgetAppBar(
            title: "الأحرف العربية",
            color: Color(0xffE30613),
          ),
          BodyWidgetAr(),
        ],
      ),
    );
  }
}
