import '../constant/animals_images.dart';
import '../model/m_data.dart';

class ControllerAnimalsImages {
  /// Controller Animals Images
  static List<ModelData> listlettersAnimals = [
    ModelData(image: AnimalsImages.animals1ar),
    ModelData(image: AnimalsImages.animals2ar),
    ModelData(image: AnimalsImages.animals3ar),
    ModelData(image: AnimalsImages.animals4ar),
    ModelData(image: AnimalsImages.animals5ar),
    ModelData(image: AnimalsImages.animals6ar),
    ModelData(image: AnimalsImages.animals7ar),
    ModelData(image: AnimalsImages.animals8ar),
    ModelData(image: AnimalsImages.animals9ar),
    ModelData(image: AnimalsImages.animals10ar),
    ModelData(image: AnimalsImages.animals11ar),
    ModelData(image: AnimalsImages.animals12ar),
    ModelData(image: AnimalsImages.animals13ar),
    ModelData(image: AnimalsImages.animals14ar),
    ModelData(image: AnimalsImages.animals15ar),
    ModelData(image: AnimalsImages.animals16ar),
    ModelData(image: AnimalsImages.animals17ar),
    ModelData(image: AnimalsImages.animals18ar),
    ModelData(image: AnimalsImages.animals19ar),
    ModelData(image: AnimalsImages.animals20ar),
    ModelData(image: AnimalsImages.animals21ar),
    ModelData(image: AnimalsImages.animals22ar),
    ModelData(image: AnimalsImages.animals23ar),
    ModelData(image: AnimalsImages.animals24ar),
    ModelData(image: AnimalsImages.animals25ar),
    ModelData(image: AnimalsImages.animals26ar),
    ModelData(image: AnimalsImages.animals27ar),
    ModelData(image: AnimalsImages.animals28ar),
    ModelData(image: AnimalsImages.animals29ar),
  ];
  static int get length => listlettersAnimals.length;

  ///get one news
  static ModelData getAn(int index) => listlettersAnimals.elementAt(index);
}
