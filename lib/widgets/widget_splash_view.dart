import 'package:children_education/constant/styel_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant/data_splash.dart';
import '../view/home_page.dart';

class WidgetSplashView extends StatefulWidget {
  const WidgetSplashView({super.key});

  @override
  State<WidgetSplashView> createState() => _WidgetSplashViewState();
}

class _WidgetSplashViewState extends State<WidgetSplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4)).then(
      (value) => Navigator.of(context).pushReplacement(
        CupertinoPageRoute(
          builder: (context) => const HomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 140,
          ),

          /// logo
          Image.asset(SplashView.logo),

          const Text(
            /// title 1
            SplashView.title1,
            style: Styles.textStyle18,
          ),
          const Text(
            /// title 2
            SplashView.title2,
            style: Styles.textStyle18,
          ),

          /// image
          Image.asset(
            SplashView.group,
          ),
        ],
      ),
    );
  }
}
