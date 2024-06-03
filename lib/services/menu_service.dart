import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_starbucks/models/api/menu_model.dart';
import 'package:http/http.dart' as http;

class MenuService {
  static String baseUrl = dotenv.env['API_BASE_URL']!;

  static Future<MenuModel> getMenu({
    required String menuId,
    int? beverageId,
    int? foodId,
  }) async {
    String url = '$baseUrl/api/menus/$menuId?';
    if (beverageId != null) {
      url += '&beverageId=$beverageId';
    }
    if (foodId != null) {
      url += '&foodId=$foodId';
    }

    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final menu = jsonDecode(response.body)['data'];
      return MenuModel.fromJson(menu);
    }
    throw Error();
  }
}
