import 'package:children_education/constant/color.dart';
import 'package:flutter/material.dart';

import '../widgets/body_home.dart';
import '../widgets/bogy_video.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// change index
  int currentIndex = 0;

  /// The [TextStyle] of the [BottomNavigationBarItem] labels when they are
  /// selected.
  TextStyle? mySelectedLabelStyle;

  /// The [TextStyle] of the [BottomNavigationBarItem] labels when they are not
  /// selected.
  TextStyle? myUnselectedLabelStyle;
  List<Color> cuaBColor = [
    kcolorn1,
    kcolorn3,
  ];
  List<String> appNameList = [
    'تعليم الأطفال اللغة العربية',
    'تعليم الأطفال عبر الفيديو'
  ];
  List<Color> foAppbarColor = [Colors.white, Colors.black];

  /// list content body
  List<Widget> navigationBody = const [
    BodyHome(),
    BodyVideo(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cuaBColor[currentIndex],
        foregroundColor: foAppbarColor[currentIndex],
        title: Text(
          appNameList[currentIndex],
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
      ),

      /// BodyHome
      body: navigationBody[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        elevation: 20,

        /// type work background
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          currentIndex = index;

          /// refresh
          setState(() {});
        },
        items: [
          /// index 0
          BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              activeIcon: const Icon(
                Icons.home_outlined,
                size: 30,
              ),
              label: 'الصفحة الرئيسية',
              backgroundColor: cuaBColor[currentIndex]),

          /// index 1
          BottomNavigationBarItem(
              icon: const Icon(Icons.video_library),
              activeIcon: const Icon(
                Icons.video_library_outlined,
                size: 30,
              ),
              label: 'الفيديوهات التعليمة',
              backgroundColor: cuaBColor[currentIndex]),
        ],
      ),
    );
  }
}
