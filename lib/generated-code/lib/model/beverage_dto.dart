//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BeverageDto {
  /// Returns a new [BeverageDto] instance.
  BeverageDto({
    required this.id,
    required this.menuId,
    required this.name,
    required this.nameEn,
    required this.description,
    required this.price,
    this.notice,
    required this.imgUrl,
    required this.categoryId,
    this.isBest = false,
    this.isNew = false,
    this.isRecommended = false,
    this.isHot = false,
    this.isIce = false,
    required this.createdAt,
    required this.updatedAt,
    required this.menu,
    this.options = const [],
    required this.category,
  });

  num id;

  num menuId;

  String name;

  String? nameEn;

  String description;

  String price;

  String? notice;

  String imgUrl;

  num categoryId;

  bool isBest;

  bool isNew;

  bool isRecommended;

  bool isHot;

  bool isIce;

  DateTime createdAt;

  DateTime updatedAt;

  MenuType menu;

  List<OptionType> options;

  CategoryType category;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BeverageDto &&
    other.id == id &&
    other.menuId == menuId &&
    other.name == name &&
    other.nameEn == nameEn &&
    other.description == description &&
    other.price == price &&
    other.notice == notice &&
    other.imgUrl == imgUrl &&
    other.categoryId == categoryId &&
    other.isBest == isBest &&
    other.isNew == isNew &&
    other.isRecommended == isRecommended &&
    other.isHot == isHot &&
    other.isIce == isIce &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.menu == menu &&
    _deepEquality.equals(other.options, options) &&
    other.category == category;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (menuId.hashCode) +
    (name.hashCode) +
    (nameEn == null ? 0 : nameEn!.hashCode) +
    (description.hashCode) +
    (price.hashCode) +
    (notice == null ? 0 : notice!.hashCode) +
    (imgUrl.hashCode) +
    (categoryId.hashCode) +
    (isBest.hashCode) +
    (isNew.hashCode) +
    (isRecommended.hashCode) +
    (isHot.hashCode) +
    (isIce.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (menu.hashCode) +
    (options.hashCode) +
    (category.hashCode);

  @override
  String toString() => 'BeverageDto[id=$id, menuId=$menuId, name=$name, nameEn=$nameEn, description=$description, price=$price, notice=$notice, imgUrl=$imgUrl, categoryId=$categoryId, isBest=$isBest, isNew=$isNew, isRecommended=$isRecommended, isHot=$isHot, isIce=$isIce, createdAt=$createdAt, updatedAt=$updatedAt, menu=$menu, options=$options, category=$category]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'menuId'] = this.menuId;
      json[r'name'] = this.name;
    if (this.nameEn != null) {
      json[r'name_en'] = this.nameEn;
    } else {
      json[r'name_en'] = null;
    }
      json[r'description'] = this.description;
      json[r'price'] = this.price;
    if (this.notice != null) {
      json[r'notice'] = this.notice;
    } else {
      json[r'notice'] = null;
    }
      json[r'imgUrl'] = this.imgUrl;
      json[r'categoryId'] = this.categoryId;
      json[r'isBest'] = this.isBest;
      json[r'isNew'] = this.isNew;
      json[r'isRecommended'] = this.isRecommended;
      json[r'isHot'] = this.isHot;
      json[r'isIce'] = this.isIce;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
      json[r'menu'] = this.menu;
      json[r'options'] = this.options;
      json[r'category'] = this.category;
    return json;
  }

  /// Returns a new [BeverageDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BeverageDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BeverageDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BeverageDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BeverageDto(
        id: num.parse('${json[r'id']}'),
        menuId: num.parse('${json[r'menuId']}'),
        name: mapValueOfType<String>(json, r'name')!,
        nameEn: mapValueOfType<String>(json, r'name_en'),
        description: mapValueOfType<String>(json, r'description')!,
        price: mapValueOfType<String>(json, r'price')!,
        notice: mapValueOfType<String>(json, r'notice'),
        imgUrl: mapValueOfType<String>(json, r'imgUrl')!,
        categoryId: num.parse('${json[r'categoryId']}'),
        isBest: mapValueOfType<bool>(json, r'isBest')!,
        isNew: mapValueOfType<bool>(json, r'isNew')!,
        isRecommended: mapValueOfType<bool>(json, r'isRecommended')!,
        isHot: mapValueOfType<bool>(json, r'isHot')!,
        isIce: mapValueOfType<bool>(json, r'isIce')!,
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        updatedAt: mapDateTime(json, r'updatedAt', r'')!,
        menu: MenuType.fromJson(json[r'menu'])!,
        options: OptionType.listFromJson(json[r'options']),
        category: CategoryType.fromJson(json[r'category'])!,
      );
    }
    return null;
  }

  static List<BeverageDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BeverageDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BeverageDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BeverageDto> mapFromJson(dynamic json) {
    final map = <String, BeverageDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BeverageDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BeverageDto-objects as value to a dart map
  static Map<String, List<BeverageDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BeverageDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BeverageDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'menuId',
    'name',
    'name_en',
    'description',
    'price',
    'imgUrl',
    'categoryId',
    'isBest',
    'isNew',
    'isRecommended',
    'isHot',
    'isIce',
    'createdAt',
    'updatedAt',
    'menu',
    'options',
    'category',
  };
}

