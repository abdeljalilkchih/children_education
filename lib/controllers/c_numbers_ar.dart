import '../constant/numbers_ar_image.dart';
import '../model/m_data.dart';

class ControllerNumbersAr {
  /// Controller Numbers
  static List<ModelData> listNumbersAr = [
    ///0
    ModelData(
      image: NumbersImageAr.number1ar,
    ),
    ModelData(
      image: NumbersImageAr.number2ar,
    ),
    ModelData(
      image: NumbersImageAr.number3ar,
    ),
    ModelData(
      image: NumbersImageAr.number4ar,
    ),
    ModelData(
      image: NumbersImageAr.number5ar,
    ),
    ModelData(
      image: NumbersImageAr.number6ar,
    ),
    ModelData(
      image: NumbersImageAr.number7ar,
    ),
    ModelData(
      image: NumbersImageAr.number8ar,
    ),
    ModelData(
      image: NumbersImageAr.number9ar,
    ),
  ];
  static int get length => listNumbersAr.length;

  ///get one news
  static ModelData getNuAr(int index) => listNumbersAr.elementAt(index);
}
