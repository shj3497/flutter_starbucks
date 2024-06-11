//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NewsEntity {
  /// Returns a new [NewsEntity] instance.
  NewsEntity({
    required this.id,
    required this.title,
    this.description,
    this.thumbnail,
    required this.period,
    this.content,
    required this.type,
    this.isFixed = false,
    this.isHomeList = false,
    required this.createdAt,
    required this.updatedAt,
  });

  num id;

  String title;

  String? description;

  String? thumbnail;

  String period;

  String? content;

  NewsEntityTypeEnum type;

  bool isFixed;

  bool isHomeList;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewsEntity &&
    other.id == id &&
    other.title == title &&
    other.description == description &&
    other.thumbnail == thumbnail &&
    other.period == period &&
    other.content == content &&
    other.type == type &&
    other.isFixed == isFixed &&
    other.isHomeList == isHomeList &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (thumbnail == null ? 0 : thumbnail!.hashCode) +
    (period.hashCode) +
    (content == null ? 0 : content!.hashCode) +
    (type.hashCode) +
    (isFixed.hashCode) +
    (isHomeList.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'NewsEntity[id=$id, title=$title, description=$description, thumbnail=$thumbnail, period=$period, content=$content, type=$type, isFixed=$isFixed, isHomeList=$isHomeList, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'title'] = this.title;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.thumbnail != null) {
      json[r'thumbnail'] = this.thumbnail;
    } else {
      json[r'thumbnail'] = null;
    }
      json[r'period'] = this.period;
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
      json[r'type'] = this.type;
      json[r'isFixed'] = this.isFixed;
      json[r'isHomeList'] = this.isHomeList;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [NewsEntity] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewsEntity? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NewsEntity[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NewsEntity[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NewsEntity(
        id: num.parse('${json[r'id']}'),
        title: mapValueOfType<String>(json, r'title')!,
        description: mapValueOfType<String>(json, r'description'),
        thumbnail: mapValueOfType<String>(json, r'thumbnail'),
        period: mapValueOfType<String>(json, r'period')!,
        content: mapValueOfType<String>(json, r'content'),
        type: NewsEntityTypeEnum.fromJson(json[r'type'])!,
        isFixed: mapValueOfType<bool>(json, r'isFixed') ?? false,
        isHomeList: mapValueOfType<bool>(json, r'isHomeList') ?? false,
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        updatedAt: mapDateTime(json, r'updatedAt', r'')!,
      );
    }
    return null;
  }

  static List<NewsEntity> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NewsEntity>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewsEntity.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewsEntity> mapFromJson(dynamic json) {
    final map = <String, NewsEntity>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewsEntity.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewsEntity-objects as value to a dart map
  static Map<String, List<NewsEntity>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NewsEntity>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NewsEntity.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'title',
    'period',
    'type',
    'createdAt',
    'updatedAt',
  };
}


class NewsEntityTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const NewsEntityTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EVENT = NewsEntityTypeEnum._(r'EVENT');
  static const NEWS = NewsEntityTypeEnum._(r'NEWS');
  static const NOTICE = NewsEntityTypeEnum._(r'NOTICE');

  /// List of all possible values in this [enum][NewsEntityTypeEnum].
  static const values = <NewsEntityTypeEnum>[
    EVENT,
    NEWS,
    NOTICE,
  ];

  static NewsEntityTypeEnum? fromJson(dynamic value) => NewsEntityTypeEnumTypeTransformer().decode(value);

  static List<NewsEntityTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NewsEntityTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewsEntityTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NewsEntityTypeEnum] to String,
/// and [decode] dynamic data back to [NewsEntityTypeEnum].
class NewsEntityTypeEnumTypeTransformer {
  factory NewsEntityTypeEnumTypeTransformer() => _instance ??= const NewsEntityTypeEnumTypeTransformer._();

  const NewsEntityTypeEnumTypeTransformer._();

  String encode(NewsEntityTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NewsEntityTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NewsEntityTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EVENT': return NewsEntityTypeEnum.EVENT;
        case r'NEWS': return NewsEntityTypeEnum.NEWS;
        case r'NOTICE': return NewsEntityTypeEnum.NOTICE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NewsEntityTypeEnumTypeTransformer] instance.
  static NewsEntityTypeEnumTypeTransformer? _instance;
}


