import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_starbucks/models/api/benefit_model.dart';
import 'package:http/http.dart' as http;

class BenefitService {
  static String baseUrl = dotenv.env['API_BASE_URL']!;
  Future<List<BenefitModel>> getBenefits() async {
    List<BenefitModel> benefitInstances = [];

    final url = Uri.parse('$baseUrl/api/benefits');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> benefits = jsonDecode(response.body)['nodes'];
      for (var benefit in benefits) {
        benefitInstances.add(BenefitModel.fromJson(benefit));
      }

      return benefitInstances;
    }
    throw Error();
  }
}
