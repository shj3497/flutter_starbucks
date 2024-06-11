import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_starbucks/generated-code/lib/api.dart';

class BeverageService extends BeveragesApi {
  static String baseUrl = dotenv.env['API_BASE_URL']!;
  BeverageService() : super(ApiClient(basePath: baseUrl));
}
