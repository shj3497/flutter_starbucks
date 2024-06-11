//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NewsDto {
  /// Returns a new [NewsDto] instance.
  NewsDto({
    required this.data,
    required this.details,
    required this.message,
  });

  NewsEntity data;

  String details;

  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewsDto &&
    other.data == data &&
    other.details == details &&
    other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (details.hashCode) +
    (message.hashCode);

  @override
  String toString() => 'NewsDto[data=$data, details=$details, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
      json[r'details'] = this.details;
      json[r'message'] = this.message;
    return json;
  }

  /// Returns a new [NewsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NewsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NewsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NewsDto(
        data: NewsEntity.fromJson(json[r'data'])!,
        details: mapValueOfType<String>(json, r'details')!,
        message: mapValueOfType<String>(json, r'message')!,
      );
    }
    return null;
  }

  static List<NewsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NewsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewsDto> mapFromJson(dynamic json) {
    final map = <String, NewsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewsDto-objects as value to a dart map
  static Map<String, List<NewsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NewsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NewsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
    'details',
    'message',
  };
}

