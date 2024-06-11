//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MenuDto {
  /// Returns a new [MenuDto] instance.
  MenuDto({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    this.beverages = const [],
    this.menuOptions = const [],
  });

  num id;

  /// 분류 이름
  String name;

  DateTime createdAt;

  DateTime updatedAt;

  List<Beverage> beverages;

  List<MenuOption> menuOptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MenuDto &&
    other.id == id &&
    other.name == name &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    _deepEquality.equals(other.beverages, beverages) &&
    _deepEquality.equals(other.menuOptions, menuOptions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (beverages.hashCode) +
    (menuOptions.hashCode);

  @override
  String toString() => 'MenuDto[id=$id, name=$name, createdAt=$createdAt, updatedAt=$updatedAt, beverages=$beverages, menuOptions=$menuOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
      json[r'beverages'] = this.beverages;
      json[r'menuOptions'] = this.menuOptions;
    return json;
  }

  /// Returns a new [MenuDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MenuDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MenuDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MenuDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MenuDto(
        id: num.parse('${json[r'id']}'),
        name: mapValueOfType<String>(json, r'name')!,
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        updatedAt: mapDateTime(json, r'updatedAt', r'')!,
        beverages: Beverage.listFromJson(json[r'beverages']),
        menuOptions: MenuOption.listFromJson(json[r'menuOptions']),
      );
    }
    return null;
  }

  static List<MenuDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MenuDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MenuDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MenuDto> mapFromJson(dynamic json) {
    final map = <String, MenuDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MenuDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MenuDto-objects as value to a dart map
  static Map<String, List<MenuDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MenuDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MenuDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'createdAt',
    'updatedAt',
    'beverages',
    'menuOptions',
  };
}

