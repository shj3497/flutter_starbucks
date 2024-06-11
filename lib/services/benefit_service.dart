import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_starbucks/generated-code/lib/api.dart';

class BenefitService extends BenefitsApi {
  static String baseUrl = dotenv.env['API_BASE_URL']!;
  BenefitService() : super(ApiClient(basePath: baseUrl));
}
