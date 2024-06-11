import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_starbucks/generated-code/lib/api.dart';

class MenuService extends MenusApi {
  static String baseUrl = dotenv.env['API_BASE_URL']!;
  MenuService() : super(ApiClient(basePath: baseUrl));
}
