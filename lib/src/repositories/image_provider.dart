import 'package:http/http.dart';
import '../models/photos.dart';
import '../models/state.dart';
import 'dart:convert';

class ImageProvider {
  static final ImageProvider _imageProvider = ImageProvider._private();
  ImageProvider._private();
  factory ImageProvider() => _imageProvider;

  Client _client = Client();
  static const String _apiKey =
      "9a29064406c240651366e1c0ae1ebfe64fcda1c1d336de00af5a06226596bbbb";
  static const String _baseUrl = "https://api.unsplash.com";

  Future<State> getImagesByName(String query) async {
    Response response;
    if (_apiKey == 'api-key') {
      return State<String>.error("Please enter your API Key");
    }
    response = await _client
        .get("$_baseUrl/search/photos?page=1&query=$query&client_id=$_apiKey");
    if (response.statusCode == 200)
      return State<Photos>.success(Photos.fromJson(json.decode(response.body)));
    else
      return State<String>.error(response.statusCode.toString());
  }
}
