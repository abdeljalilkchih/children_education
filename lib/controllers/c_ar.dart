import '../constant/letters_imge_ar.dart';
import '../model/m_data.dart';

class ControllerLettersAr {
  /// Controller Arabic
  static List<ModelData> listlettersAr = [
    ModelData(image: LettersImageAr.letter1ar),
    ModelData(image: LettersImageAr.letter2ar),
    ModelData(image: LettersImageAr.letter3ar),
    ModelData(image: LettersImageAr.letter4ar),
    ModelData(image: LettersImageAr.letter5ar),
    ModelData(image: LettersImageAr.letter6ar),
    ModelData(image: LettersImageAr.letter7ar),
    ModelData(image: LettersImageAr.letter8ar),
    ModelData(image: LettersImageAr.letter9ar),
    ModelData(image: LettersImageAr.letter10ar),
    ModelData(image: LettersImageAr.letter11ar),
    ModelData(image: LettersImageAr.letter12ar),
    ModelData(image: LettersImageAr.letter13ar),
    ModelData(image: LettersImageAr.letter14ar),
    ModelData(image: LettersImageAr.letter15ar),
    ModelData(image: LettersImageAr.letter16ar),
    ModelData(image: LettersImageAr.letter17ar),
    ModelData(image: LettersImageAr.letter18ar),
    ModelData(image: LettersImageAr.letter19ar),
    ModelData(image: LettersImageAr.letter20ar),
    ModelData(image: LettersImageAr.letter21ar),
    ModelData(image: LettersImageAr.letter22ar),
    ModelData(image: LettersImageAr.letter23ar),
    ModelData(image: LettersImageAr.letter24ar),
    ModelData(image: LettersImageAr.letter25ar),
    ModelData(image: LettersImageAr.letter26ar),
    ModelData(image: LettersImageAr.letter27ar),
    ModelData(image: LettersImageAr.letter28ar),
  ];
  static int get length => listlettersAr.length;

  ///get one news
  static ModelData getAr(int index) => listlettersAr.elementAt(index);
}
