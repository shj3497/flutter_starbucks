import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_starbucks/generated-code/lib/api.dart';

class NewsService extends NewsApi {
  static String baseUrl = dotenv.env['API_BASE_URL']!;
  NewsService() : super(ApiClient(basePath: baseUrl));
}
