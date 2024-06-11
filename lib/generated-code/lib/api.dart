//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/benefits_api.dart';
part 'api/beverages_api.dart';
part 'api/categories_api.dart';
part 'api/menus_api.dart';
part 'api/news_api.dart';
part 'api/options_api.dart';

part 'model/benefit_entity.dart';
part 'model/beverage.dart';
part 'model/beverage_dto.dart';
part 'model/category_dto.dart';
part 'model/category_type.dart';
part 'model/common_menu.dart';
part 'model/membership_benefit.dart';
part 'model/menu_dto.dart';
part 'model/menu_option.dart';
part 'model/menu_type.dart';
part 'model/news_dto.dart';
part 'model/news_entity.dart';
part 'model/omit_type_class.dart';
part 'model/option_type.dart';
part 'model/paginated_benefit.dart';
part 'model/paginated_beverage.dart';
part 'model/paginated_category.dart';
part 'model/paginated_menu.dart';
part 'model/paginated_news.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
