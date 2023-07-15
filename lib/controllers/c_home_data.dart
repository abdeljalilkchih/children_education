import 'package:children_education/model/m_home_data.dart';

import '../constant/data_home.dart';

class ControllerHomeData {
  /// Controller Home Data
  static List<ModelHomeData> listHome = [
    ///0
    ModelHomeData(
      title: DataHome.title1,
      image: DataHome.image1,
    ),

    ///1
    ModelHomeData(
      title: DataHome.title2,
      image: DataHome.image2,
    ),

    ///2
    ModelHomeData(
      title: DataHome.title3,
      image: DataHome.image3,
    ),

    ///3
    ModelHomeData(
      title: DataHome.title4,
      image: DataHome.image4,
    ),
    ModelHomeData(
      title: DataHome.title5,
      image: DataHome.image5,
    ),
  ];
  static int get length => listHome.length;

  ///get one news
  static ModelHomeData getHome(int index) => listHome.elementAt(index);
}
