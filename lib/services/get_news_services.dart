import 'package:dio/dio.dart';
import 'package:newsapp_clone1/models/new_model.dart';

class GetNewsServices {
  String baseUrl = "https://newsapi.org";
  String apiKey = "b4ed1154bbe74f8fb36f8bc14e0c778d";

  Future<List<NewModel>> getNews({required String q}) async {
    try {
      Dio dio = Dio();
      String url = "$baseUrl/v2/everything?q=${q}&apiKey=$apiKey";
      Response response = await dio.get(url);
      var jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<NewModel> readyNews = [];
      for (var article in articles) {
        NewModel newModel = NewModel.fromjson(article);
        readyNews.add(newModel);
      }
      print(q);
      return readyNews;
    } catch (e) {
      return [];
    }
  }
}
