//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CategoryType {
  /// Returns a new [CategoryType] instance.
  CategoryType({
    required this.id,
    required this.name,
    required this.nameEn,
    required this.major,
    required this.createdAt,
    required this.updatedAt,
    required this.imgUrl,
  });

  num id;

  String name;

  String nameEn;

  CategoryTypeMajorEnum major;

  DateTime createdAt;

  DateTime updatedAt;

  String imgUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CategoryType &&
    other.id == id &&
    other.name == name &&
    other.nameEn == nameEn &&
    other.major == major &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.imgUrl == imgUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (nameEn.hashCode) +
    (major.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (imgUrl.hashCode);

  @override
  String toString() => 'CategoryType[id=$id, name=$name, nameEn=$nameEn, major=$major, createdAt=$createdAt, updatedAt=$updatedAt, imgUrl=$imgUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'name_en'] = this.nameEn;
      json[r'major'] = this.major;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
      json[r'imgUrl'] = this.imgUrl;
    return json;
  }

  /// Returns a new [CategoryType] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CategoryType? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CategoryType[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CategoryType[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CategoryType(
        id: num.parse('${json[r'id']}'),
        name: mapValueOfType<String>(json, r'name')!,
        nameEn: mapValueOfType<String>(json, r'name_en')!,
        major: CategoryTypeMajorEnum.fromJson(json[r'major'])!,
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        updatedAt: mapDateTime(json, r'updatedAt', r'')!,
        imgUrl: mapValueOfType<String>(json, r'imgUrl')!,
      );
    }
    return null;
  }

  static List<CategoryType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CategoryType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CategoryType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CategoryType> mapFromJson(dynamic json) {
    final map = <String, CategoryType>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CategoryType.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CategoryType-objects as value to a dart map
  static Map<String, List<CategoryType>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CategoryType>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CategoryType.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'name_en',
    'major',
    'createdAt',
    'updatedAt',
    'imgUrl',
  };
}


class CategoryTypeMajorEnum {
  /// Instantiate a new enum with the provided [value].
  const CategoryTypeMajorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const BEVERAGE = CategoryTypeMajorEnum._(r'BEVERAGE');
  static const FOOD = CategoryTypeMajorEnum._(r'FOOD');
  static const PRODUCTION = CategoryTypeMajorEnum._(r'PRODUCTION');

  /// List of all possible values in this [enum][CategoryTypeMajorEnum].
  static const values = <CategoryTypeMajorEnum>[
    BEVERAGE,
    FOOD,
    PRODUCTION,
  ];

  static CategoryTypeMajorEnum? fromJson(dynamic value) => CategoryTypeMajorEnumTypeTransformer().decode(value);

  static List<CategoryTypeMajorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CategoryTypeMajorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CategoryTypeMajorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CategoryTypeMajorEnum] to String,
/// and [decode] dynamic data back to [CategoryTypeMajorEnum].
class CategoryTypeMajorEnumTypeTransformer {
  factory CategoryTypeMajorEnumTypeTransformer() => _instance ??= const CategoryTypeMajorEnumTypeTransformer._();

  const CategoryTypeMajorEnumTypeTransformer._();

  String encode(CategoryTypeMajorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CategoryTypeMajorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CategoryTypeMajorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'BEVERAGE': return CategoryTypeMajorEnum.BEVERAGE;
        case r'FOOD': return CategoryTypeMajorEnum.FOOD;
        case r'PRODUCTION': return CategoryTypeMajorEnum.PRODUCTION;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CategoryTypeMajorEnumTypeTransformer] instance.
  static CategoryTypeMajorEnumTypeTransformer? _instance;
}


