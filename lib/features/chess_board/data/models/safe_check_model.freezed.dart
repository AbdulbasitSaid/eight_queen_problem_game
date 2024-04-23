// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'safe_check_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SafeCheckModel {
  bool get isSafe => throw _privateConstructorUsedError;
  Map<String, int>? get attackingQueenPosition =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SafeCheckModelCopyWith<SafeCheckModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SafeCheckModelCopyWith<$Res> {
  factory $SafeCheckModelCopyWith(
          SafeCheckModel value, $Res Function(SafeCheckModel) then) =
      _$SafeCheckModelCopyWithImpl<$Res, SafeCheckModel>;
  @useResult
  $Res call({bool isSafe, Map<String, int>? attackingQueenPosition});
}

/// @nodoc
class _$SafeCheckModelCopyWithImpl<$Res, $Val extends SafeCheckModel>
    implements $SafeCheckModelCopyWith<$Res> {
  _$SafeCheckModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSafe = null,
    Object? attackingQueenPosition = freezed,
  }) {
    return _then(_value.copyWith(
      isSafe: null == isSafe
          ? _value.isSafe
          : isSafe // ignore: cast_nullable_to_non_nullable
              as bool,
      attackingQueenPosition: freezed == attackingQueenPosition
          ? _value.attackingQueenPosition
          : attackingQueenPosition // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SafeCheckModelImplCopyWith<$Res>
    implements $SafeCheckModelCopyWith<$Res> {
  factory _$$SafeCheckModelImplCopyWith(_$SafeCheckModelImpl value,
          $Res Function(_$SafeCheckModelImpl) then) =
      __$$SafeCheckModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSafe, Map<String, int>? attackingQueenPosition});
}

/// @nodoc
class __$$SafeCheckModelImplCopyWithImpl<$Res>
    extends _$SafeCheckModelCopyWithImpl<$Res, _$SafeCheckModelImpl>
    implements _$$SafeCheckModelImplCopyWith<$Res> {
  __$$SafeCheckModelImplCopyWithImpl(
      _$SafeCheckModelImpl _value, $Res Function(_$SafeCheckModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSafe = null,
    Object? attackingQueenPosition = freezed,
  }) {
    return _then(_$SafeCheckModelImpl(
      isSafe: null == isSafe
          ? _value.isSafe
          : isSafe // ignore: cast_nullable_to_non_nullable
              as bool,
      attackingQueenPosition: freezed == attackingQueenPosition
          ? _value._attackingQueenPosition
          : attackingQueenPosition // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
    ));
  }
}

/// @nodoc

class _$SafeCheckModelImpl implements _SafeCheckModel {
  const _$SafeCheckModelImpl(
      {required this.isSafe,
      required final Map<String, int>? attackingQueenPosition})
      : _attackingQueenPosition = attackingQueenPosition;

  @override
  final bool isSafe;
  final Map<String, int>? _attackingQueenPosition;
  @override
  Map<String, int>? get attackingQueenPosition {
    final value = _attackingQueenPosition;
    if (value == null) return null;
    if (_attackingQueenPosition is EqualUnmodifiableMapView)
      return _attackingQueenPosition;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SafeCheckModel(isSafe: $isSafe, attackingQueenPosition: $attackingQueenPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SafeCheckModelImpl &&
            (identical(other.isSafe, isSafe) || other.isSafe == isSafe) &&
            const DeepCollectionEquality().equals(
                other._attackingQueenPosition, _attackingQueenPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSafe,
      const DeepCollectionEquality().hash(_attackingQueenPosition));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SafeCheckModelImplCopyWith<_$SafeCheckModelImpl> get copyWith =>
      __$$SafeCheckModelImplCopyWithImpl<_$SafeCheckModelImpl>(
          this, _$identity);
}

abstract class _SafeCheckModel implements SafeCheckModel {
  const factory _SafeCheckModel(
          {required final bool isSafe,
          required final Map<String, int>? attackingQueenPosition}) =
      _$SafeCheckModelImpl;

  @override
  bool get isSafe;
  @override
  Map<String, int>? get attackingQueenPosition;
  @override
  @JsonKey(ignore: true)
  _$$SafeCheckModelImplCopyWith<_$SafeCheckModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
