import '../constant/Numbers_Eng_Image.dart';
import '../model/m_data.dart';

class ControllerNu {
  /// Controller Numbers
  static List<ModelData> listNu = [
    ///0
    ModelData(image: NumbersEngImage.letter1eng),
    ModelData(image: NumbersEngImage.letter2eng),
    ModelData(image: NumbersEngImage.letter3eng),
    ModelData(image: NumbersEngImage.letter4eng),
    ModelData(image: NumbersEngImage.letter5eng),
    ModelData(image: NumbersEngImage.letter6eng),
    ModelData(image: NumbersEngImage.letter7eng),
    ModelData(image: NumbersEngImage.letter8eng),
    ModelData(image: NumbersEngImage.letter9eng),
  ];
  static int get length => listNu.length;

  ///get one news
  static ModelData getNu(int index) => listNu.elementAt(index);
}
