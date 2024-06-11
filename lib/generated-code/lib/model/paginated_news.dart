//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaginatedNews {
  /// Returns a new [PaginatedNews] instance.
  PaginatedNews({
    this.nodes = const [],
    required this.totalCount,
    required this.hasNextPage,
  });

  List<NewsEntity> nodes;

  num totalCount;

  bool hasNextPage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedNews &&
    _deepEquality.equals(other.nodes, nodes) &&
    other.totalCount == totalCount &&
    other.hasNextPage == hasNextPage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (nodes.hashCode) +
    (totalCount.hashCode) +
    (hasNextPage.hashCode);

  @override
  String toString() => 'PaginatedNews[nodes=$nodes, totalCount=$totalCount, hasNextPage=$hasNextPage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'nodes'] = this.nodes;
      json[r'totalCount'] = this.totalCount;
      json[r'hasNextPage'] = this.hasNextPage;
    return json;
  }

  /// Returns a new [PaginatedNews] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaginatedNews? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaginatedNews[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaginatedNews[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaginatedNews(
        nodes: NewsEntity.listFromJson(json[r'nodes']),
        totalCount: num.parse('${json[r'totalCount']}'),
        hasNextPage: mapValueOfType<bool>(json, r'hasNextPage')!,
      );
    }
    return null;
  }

  static List<PaginatedNews> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaginatedNews>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaginatedNews.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaginatedNews> mapFromJson(dynamic json) {
    final map = <String, PaginatedNews>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaginatedNews.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaginatedNews-objects as value to a dart map
  static Map<String, List<PaginatedNews>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaginatedNews>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaginatedNews.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'nodes',
    'totalCount',
    'hasNextPage',
  };
}

