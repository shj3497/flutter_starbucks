//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MenuOption {
  /// Returns a new [MenuOption] instance.
  MenuOption({
    required this.id,
    required this.menuId,
    required this.name,
    required this.imgUrl,
    this.isHot = false,
    this.isIce = false,
  });

  num id;

  num menuId;

  String name;

  String imgUrl;

  bool isHot;

  bool isIce;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MenuOption &&
    other.id == id &&
    other.menuId == menuId &&
    other.name == name &&
    other.imgUrl == imgUrl &&
    other.isHot == isHot &&
    other.isIce == isIce;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (menuId.hashCode) +
    (name.hashCode) +
    (imgUrl.hashCode) +
    (isHot.hashCode) +
    (isIce.hashCode);

  @override
  String toString() => 'MenuOption[id=$id, menuId=$menuId, name=$name, imgUrl=$imgUrl, isHot=$isHot, isIce=$isIce]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'menuId'] = this.menuId;
      json[r'name'] = this.name;
      json[r'imgUrl'] = this.imgUrl;
      json[r'isHot'] = this.isHot;
      json[r'isIce'] = this.isIce;
    return json;
  }

  /// Returns a new [MenuOption] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MenuOption? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MenuOption[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MenuOption[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MenuOption(
        id: num.parse('${json[r'id']}'),
        menuId: num.parse('${json[r'menuId']}'),
        name: mapValueOfType<String>(json, r'name')!,
        imgUrl: mapValueOfType<String>(json, r'imgUrl')!,
        isHot: mapValueOfType<bool>(json, r'isHot')!,
        isIce: mapValueOfType<bool>(json, r'isIce')!,
      );
    }
    return null;
  }

  static List<MenuOption> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MenuOption>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MenuOption.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MenuOption> mapFromJson(dynamic json) {
    final map = <String, MenuOption>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MenuOption.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MenuOption-objects as value to a dart map
  static Map<String, List<MenuOption>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MenuOption>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MenuOption.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'menuId',
    'name',
    'imgUrl',
    'isHot',
    'isIce',
  };
}

