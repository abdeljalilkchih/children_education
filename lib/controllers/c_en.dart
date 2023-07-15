import '../constant/letters_eng_imge.dart';

import '../model/m_data.dart';

class ControllerEn {
  /// /// Controller English
  static List<ModelData> listEn = [
    ///0
    ModelData(image: LettersImageEn.letter1eng),
    ModelData(image: LettersImageEn.letter2eng),
    ModelData(image: LettersImageEn.letter3eng),
    ModelData(image: LettersImageEn.letter4eng),
    ModelData(image: LettersImageEn.letter5eng),
    ModelData(image: LettersImageEn.letter6eng),
    ModelData(image: LettersImageEn.letter7eng),
    ModelData(image: LettersImageEn.letter8eng),
    ModelData(image: LettersImageEn.letter9eng),
    ModelData(image: LettersImageEn.letter11eng),
    ModelData(image: LettersImageEn.letter12eng),
    ModelData(image: LettersImageEn.letter10eng),
    ModelData(image: LettersImageEn.letter13eng),
    ModelData(image: LettersImageEn.letter14eng),
    ModelData(image: LettersImageEn.letter15eng),
    ModelData(image: LettersImageEn.letter16eng),
    ModelData(image: LettersImageEn.letter17eng),
    ModelData(image: LettersImageEn.letter18eng),
    ModelData(image: LettersImageEn.letter19eng),
    ModelData(image: LettersImageEn.letter20eng),
    ModelData(image: LettersImageEn.letter21eng),
    ModelData(image: LettersImageEn.letter22eng),
    ModelData(image: LettersImageEn.letter23eng),
    ModelData(image: LettersImageEn.letter24eng),
    ModelData(image: LettersImageEn.letter25eng),
    ModelData(image: LettersImageEn.letter26eng),
  ];
  static int get length => listEn.length;

  ///get one news
  static ModelData getEn(int index) => listEn.elementAt(index);
}
