//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BenefitEntity {
  /// Returns a new [BenefitEntity] instance.
  BenefitEntity({
    required this.id,
    required this.shortTitle,
    required this.title,
    required this.description,
    required this.imgUrl,
    required this.createdAt,
    required this.updatedAt,
    this.membership = const [],
  });

  num id;

  String shortTitle;

  String title;

  String description;

  String imgUrl;

  DateTime createdAt;

  DateTime updatedAt;

  List<MembershipBenefit> membership;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BenefitEntity &&
    other.id == id &&
    other.shortTitle == shortTitle &&
    other.title == title &&
    other.description == description &&
    other.imgUrl == imgUrl &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    _deepEquality.equals(other.membership, membership);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (shortTitle.hashCode) +
    (title.hashCode) +
    (description.hashCode) +
    (imgUrl.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (membership.hashCode);

  @override
  String toString() => 'BenefitEntity[id=$id, shortTitle=$shortTitle, title=$title, description=$description, imgUrl=$imgUrl, createdAt=$createdAt, updatedAt=$updatedAt, membership=$membership]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'shortTitle'] = this.shortTitle;
      json[r'title'] = this.title;
      json[r'description'] = this.description;
      json[r'imgUrl'] = this.imgUrl;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
      json[r'membership'] = this.membership;
    return json;
  }

  /// Returns a new [BenefitEntity] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BenefitEntity? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BenefitEntity[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BenefitEntity[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BenefitEntity(
        id: num.parse('${json[r'id']}'),
        shortTitle: mapValueOfType<String>(json, r'shortTitle')!,
        title: mapValueOfType<String>(json, r'title')!,
        description: mapValueOfType<String>(json, r'description')!,
        imgUrl: mapValueOfType<String>(json, r'imgUrl')!,
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        updatedAt: mapDateTime(json, r'updatedAt', r'')!,
        membership: MembershipBenefit.listFromJson(json[r'membership']),
      );
    }
    return null;
  }

  static List<BenefitEntity> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BenefitEntity>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BenefitEntity.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BenefitEntity> mapFromJson(dynamic json) {
    final map = <String, BenefitEntity>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BenefitEntity.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BenefitEntity-objects as value to a dart map
  static Map<String, List<BenefitEntity>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BenefitEntity>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BenefitEntity.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'shortTitle',
    'title',
    'description',
    'imgUrl',
    'createdAt',
    'updatedAt',
    'membership',
  };
}

