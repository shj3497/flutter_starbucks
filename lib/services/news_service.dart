import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_starbucks/models/api/news_model.dart';
import 'package:http/http.dart' as http;

class NewsService {
  static String baseUrl = dotenv.env['API_BASE_URL']!;

  static Future<List<NewsModel>> getNews({
    bool? isHomeList,
    List<NewsType>? newsType,
    int? page = 1,
    int? pageSize = 12,
  }) async {
    List<NewsModel> newsInstances = [];

    String url = '$baseUrl/api/news?';
    if (isHomeList != null) {
      url += '&isHomeList=$isHomeList';
    }
    if (newsType != null) {
      var newsTypeS = newsType.join(',');
      url += '&newsType=$newsTypeS';
    }
    if (page != null) {
      url += '&page=$page';
    }
    if (pageSize != null) {
      url += '&pageSize=$pageSize';
    }

    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List<dynamic> news = jsonDecode(response.body)['nodes'];

      for (var item in news) {
        newsInstances.add(NewsModel.fromJson(item));
      }

      return newsInstances;
    }
    throw Error();
  }
}
