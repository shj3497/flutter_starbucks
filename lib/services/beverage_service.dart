import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_starbucks/models/api/beverage_model.dart';
import 'package:http/http.dart' as http;

class BeverageService {
  static String baseUrl = dotenv.env['API_BASE_URL']!;

  static Future<List<BeverageModel>> getBeverages() async {
    List<BeverageModel> beverageInstances = [];

    final url = Uri.parse('$baseUrl/api/beverages');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> beverages = jsonDecode(response.body)['nodes'];

      for (var beverage in beverages) {
        beverageInstances.add(BeverageModel.fromJson(beverage));
      }
      return beverageInstances;
    }
    throw Error();
  }
}
