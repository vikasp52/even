// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

History _$HistoryFromJson(Map<String, dynamic> json) {
  return _History.fromJson(json);
}

/// @nodoc
class _$HistoryTearOff {
  const _$HistoryTearOff();

  _History call(
      {required int id,
      required String serviceType,
      required String name,
      String? recommendedBy,
      required String address,
      required String hospitalImage,
      required List<String> documents,
      required String feedback,
      required String time,
      required String day}) {
    return _History(
      id: id,
      serviceType: serviceType,
      name: name,
      recommendedBy: recommendedBy,
      address: address,
      hospitalImage: hospitalImage,
      documents: documents,
      feedback: feedback,
      time: time,
      day: day,
    );
  }

  History fromJson(Map<String, Object?> json) {
    return History.fromJson(json);
  }
}

/// @nodoc
const $History = _$HistoryTearOff();

/// @nodoc
mixin _$History {
  int get id => throw _privateConstructorUsedError;
  String get serviceType => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get recommendedBy => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get hospitalImage => throw _privateConstructorUsedError;
  List<String> get documents => throw _privateConstructorUsedError;
  String get feedback => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryCopyWith<History> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryCopyWith<$Res> {
  factory $HistoryCopyWith(History value, $Res Function(History) then) =
      _$HistoryCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String serviceType,
      String name,
      String? recommendedBy,
      String address,
      String hospitalImage,
      List<String> documents,
      String feedback,
      String time,
      String day});
}

/// @nodoc
class _$HistoryCopyWithImpl<$Res> implements $HistoryCopyWith<$Res> {
  _$HistoryCopyWithImpl(this._value, this._then);

  final History _value;
  // ignore: unused_field
  final $Res Function(History) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? serviceType = freezed,
    Object? name = freezed,
    Object? recommendedBy = freezed,
    Object? address = freezed,
    Object? hospitalImage = freezed,
    Object? documents = freezed,
    Object? feedback = freezed,
    Object? time = freezed,
    Object? day = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      serviceType: serviceType == freezed
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedBy: recommendedBy == freezed
          ? _value.recommendedBy
          : recommendedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      hospitalImage: hospitalImage == freezed
          ? _value.hospitalImage
          : hospitalImage // ignore: cast_nullable_to_non_nullable
              as String,
      documents: documents == freezed
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<String>,
      feedback: feedback == freezed
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$HistoryCopyWith<$Res> implements $HistoryCopyWith<$Res> {
  factory _$HistoryCopyWith(_History value, $Res Function(_History) then) =
      __$HistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String serviceType,
      String name,
      String? recommendedBy,
      String address,
      String hospitalImage,
      List<String> documents,
      String feedback,
      String time,
      String day});
}

/// @nodoc
class __$HistoryCopyWithImpl<$Res> extends _$HistoryCopyWithImpl<$Res>
    implements _$HistoryCopyWith<$Res> {
  __$HistoryCopyWithImpl(_History _value, $Res Function(_History) _then)
      : super(_value, (v) => _then(v as _History));

  @override
  _History get _value => super._value as _History;

  @override
  $Res call({
    Object? id = freezed,
    Object? serviceType = freezed,
    Object? name = freezed,
    Object? recommendedBy = freezed,
    Object? address = freezed,
    Object? hospitalImage = freezed,
    Object? documents = freezed,
    Object? feedback = freezed,
    Object? time = freezed,
    Object? day = freezed,
  }) {
    return _then(_History(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      serviceType: serviceType == freezed
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedBy: recommendedBy == freezed
          ? _value.recommendedBy
          : recommendedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      hospitalImage: hospitalImage == freezed
          ? _value.hospitalImage
          : hospitalImage // ignore: cast_nullable_to_non_nullable
              as String,
      documents: documents == freezed
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<String>,
      feedback: feedback == freezed
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_History implements _History {
  const _$_History(
      {required this.id,
      required this.serviceType,
      required this.name,
      this.recommendedBy,
      required this.address,
      required this.hospitalImage,
      required this.documents,
      required this.feedback,
      required this.time,
      required this.day});

  factory _$_History.fromJson(Map<String, dynamic> json) =>
      _$$_HistoryFromJson(json);

  @override
  final int id;
  @override
  final String serviceType;
  @override
  final String name;
  @override
  final String? recommendedBy;
  @override
  final String address;
  @override
  final String hospitalImage;
  @override
  final List<String> documents;
  @override
  final String feedback;
  @override
  final String time;
  @override
  final String day;

  @override
  String toString() {
    return 'History(id: $id, serviceType: $serviceType, name: $name, recommendedBy: $recommendedBy, address: $address, hospitalImage: $hospitalImage, documents: $documents, feedback: $feedback, time: $time, day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _History &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.serviceType, serviceType) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.recommendedBy, recommendedBy) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.hospitalImage, hospitalImage) &&
            const DeepCollectionEquality().equals(other.documents, documents) &&
            const DeepCollectionEquality().equals(other.feedback, feedback) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.day, day));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(serviceType),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(recommendedBy),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(hospitalImage),
      const DeepCollectionEquality().hash(documents),
      const DeepCollectionEquality().hash(feedback),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(day));

  @JsonKey(ignore: true)
  @override
  _$HistoryCopyWith<_History> get copyWith =>
      __$HistoryCopyWithImpl<_History>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HistoryToJson(this);
  }
}

abstract class _History implements History {
  const factory _History(
      {required int id,
      required String serviceType,
      required String name,
      String? recommendedBy,
      required String address,
      required String hospitalImage,
      required List<String> documents,
      required String feedback,
      required String time,
      required String day}) = _$_History;

  factory _History.fromJson(Map<String, dynamic> json) = _$_History.fromJson;

  @override
  int get id;
  @override
  String get serviceType;
  @override
  String get name;
  @override
  String? get recommendedBy;
  @override
  String get address;
  @override
  String get hospitalImage;
  @override
  List<String> get documents;
  @override
  String get feedback;
  @override
  String get time;
  @override
  String get day;
  @override
  @JsonKey(ignore: true)
  _$HistoryCopyWith<_History> get copyWith =>
      throw _privateConstructorUsedError;
}
