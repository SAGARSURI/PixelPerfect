import 'image_provider.dart';
import '../models/state.dart';

class Repository {
  static final Repository _repository = Repository._private();
  Repository._private();
  factory Repository() => _repository;

  ImageProvider imageProvider = ImageProvider();

  Future<State> imageData(query) => imageProvider.getImagesByName(query);
}
