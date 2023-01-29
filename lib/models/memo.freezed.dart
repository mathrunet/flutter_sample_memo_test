// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemoModel _$MemoModelFromJson(Map<String, dynamic> json) {
  return _MemoModel.fromJson(json);
}

/// @nodoc
mixin _$MemoModel {
// TODO: Set the data schema.
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  ModelTimestamp get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemoModelCopyWith<MemoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoModelCopyWith<$Res> {
  factory $MemoModelCopyWith(MemoModel value, $Res Function(MemoModel) then) =
      _$MemoModelCopyWithImpl<$Res, MemoModel>;
  @useResult
  $Res call({String title, String text, ModelTimestamp time});
}

/// @nodoc
class _$MemoModelCopyWithImpl<$Res, $Val extends MemoModel>
    implements $MemoModelCopyWith<$Res> {
  _$MemoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as ModelTimestamp,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemoModelCopyWith<$Res> implements $MemoModelCopyWith<$Res> {
  factory _$$_MemoModelCopyWith(
          _$_MemoModel value, $Res Function(_$_MemoModel) then) =
      __$$_MemoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String text, ModelTimestamp time});
}

/// @nodoc
class __$$_MemoModelCopyWithImpl<$Res>
    extends _$MemoModelCopyWithImpl<$Res, _$_MemoModel>
    implements _$$_MemoModelCopyWith<$Res> {
  __$$_MemoModelCopyWithImpl(
      _$_MemoModel _value, $Res Function(_$_MemoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
    Object? time = null,
  }) {
    return _then(_$_MemoModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as ModelTimestamp,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemoModel extends _MemoModel {
  const _$_MemoModel(
      {required this.title,
      required this.text,
      this.time = const ModelTimestamp()})
      : super._();

  factory _$_MemoModel.fromJson(Map<String, dynamic> json) =>
      _$$_MemoModelFromJson(json);

// TODO: Set the data schema.
  @override
  final String title;
  @override
  final String text;
  @override
  @JsonKey()
  final ModelTimestamp time;

  @override
  String toString() {
    return 'MemoModel(title: $title, text: $text, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemoModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, text, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemoModelCopyWith<_$_MemoModel> get copyWith =>
      __$$_MemoModelCopyWithImpl<_$_MemoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemoModelToJson(
      this,
    );
  }
}

abstract class _MemoModel extends MemoModel {
  const factory _MemoModel(
      {required final String title,
      required final String text,
      final ModelTimestamp time}) = _$_MemoModel;
  const _MemoModel._() : super._();

  factory _MemoModel.fromJson(Map<String, dynamic> json) =
      _$_MemoModel.fromJson;

  @override // TODO: Set the data schema.
  String get title;
  @override
  String get text;
  @override
  ModelTimestamp get time;
  @override
  @JsonKey(ignore: true)
  _$$_MemoModelCopyWith<_$_MemoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
