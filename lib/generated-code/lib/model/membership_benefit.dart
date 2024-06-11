//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MembershipBenefit {
  /// Returns a new [MembershipBenefit] instance.
  MembershipBenefit({
    required this.rank,
  });

  MembershipBenefitRankEnum rank;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MembershipBenefit &&
    other.rank == rank;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rank.hashCode);

  @override
  String toString() => 'MembershipBenefit[rank=$rank]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rank'] = this.rank;
    return json;
  }

  /// Returns a new [MembershipBenefit] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MembershipBenefit? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MembershipBenefit[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MembershipBenefit[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MembershipBenefit(
        rank: MembershipBenefitRankEnum.fromJson(json[r'rank'])!,
      );
    }
    return null;
  }

  static List<MembershipBenefit> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MembershipBenefit>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MembershipBenefit.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MembershipBenefit> mapFromJson(dynamic json) {
    final map = <String, MembershipBenefit>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MembershipBenefit.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MembershipBenefit-objects as value to a dart map
  static Map<String, List<MembershipBenefit>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MembershipBenefit>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MembershipBenefit.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'rank',
  };
}


class MembershipBenefitRankEnum {
  /// Instantiate a new enum with the provided [value].
  const MembershipBenefitRankEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const WELCOME = MembershipBenefitRankEnum._(r'WELCOME');
  static const GREEN = MembershipBenefitRankEnum._(r'GREEN');
  static const GOLD = MembershipBenefitRankEnum._(r'GOLD');

  /// List of all possible values in this [enum][MembershipBenefitRankEnum].
  static const values = <MembershipBenefitRankEnum>[
    WELCOME,
    GREEN,
    GOLD,
  ];

  static MembershipBenefitRankEnum? fromJson(dynamic value) => MembershipBenefitRankEnumTypeTransformer().decode(value);

  static List<MembershipBenefitRankEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MembershipBenefitRankEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MembershipBenefitRankEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MembershipBenefitRankEnum] to String,
/// and [decode] dynamic data back to [MembershipBenefitRankEnum].
class MembershipBenefitRankEnumTypeTransformer {
  factory MembershipBenefitRankEnumTypeTransformer() => _instance ??= const MembershipBenefitRankEnumTypeTransformer._();

  const MembershipBenefitRankEnumTypeTransformer._();

  String encode(MembershipBenefitRankEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MembershipBenefitRankEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MembershipBenefitRankEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'WELCOME': return MembershipBenefitRankEnum.WELCOME;
        case r'GREEN': return MembershipBenefitRankEnum.GREEN;
        case r'GOLD': return MembershipBenefitRankEnum.GOLD;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MembershipBenefitRankEnumTypeTransformer] instance.
  static MembershipBenefitRankEnumTypeTransformer? _instance;
}


