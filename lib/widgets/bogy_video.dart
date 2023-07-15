import 'package:children_education/widgets/widget_video_page.dart';
import 'package:flutter/material.dart';

import '../controllers/c_video.dart';

class BodyVideo extends StatelessWidget {
  const BodyVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ControllerVideo.length,
      itemBuilder: (context, index) => WidgetVideoPage(
        /// Controller Video web
        data: ControllerVideo.getVideo(index),
      ),
    );
  }
}
