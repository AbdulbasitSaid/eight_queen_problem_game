// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BoardModel {
  List<List<int>> get board => throw _privateConstructorUsedError;
  int get remainingQueensCount => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  bool get isSafe => throw _privateConstructorUsedError;
  bool get isGameCompleted => throw _privateConstructorUsedError;
  Map<String, int>? get attackingQueenPosition =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardModelCopyWith<BoardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardModelCopyWith<$Res> {
  factory $BoardModelCopyWith(
          BoardModel value, $Res Function(BoardModel) then) =
      _$BoardModelCopyWithImpl<$Res, BoardModel>;
  @useResult
  $Res call(
      {List<List<int>> board,
      int remainingQueensCount,
      int size,
      bool isSafe,
      bool isGameCompleted,
      Map<String, int>? attackingQueenPosition});
}

/// @nodoc
class _$BoardModelCopyWithImpl<$Res, $Val extends BoardModel>
    implements $BoardModelCopyWith<$Res> {
  _$BoardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? board = null,
    Object? remainingQueensCount = null,
    Object? size = null,
    Object? isSafe = null,
    Object? isGameCompleted = null,
    Object? attackingQueenPosition = freezed,
  }) {
    return _then(_value.copyWith(
      board: null == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      remainingQueensCount: null == remainingQueensCount
          ? _value.remainingQueensCount
          : remainingQueensCount // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      isSafe: null == isSafe
          ? _value.isSafe
          : isSafe // ignore: cast_nullable_to_non_nullable
              as bool,
      isGameCompleted: null == isGameCompleted
          ? _value.isGameCompleted
          : isGameCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      attackingQueenPosition: freezed == attackingQueenPosition
          ? _value.attackingQueenPosition
          : attackingQueenPosition // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoardModelImplCopyWith<$Res>
    implements $BoardModelCopyWith<$Res> {
  factory _$$BoardModelImplCopyWith(
          _$BoardModelImpl value, $Res Function(_$BoardModelImpl) then) =
      __$$BoardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<List<int>> board,
      int remainingQueensCount,
      int size,
      bool isSafe,
      bool isGameCompleted,
      Map<String, int>? attackingQueenPosition});
}

/// @nodoc
class __$$BoardModelImplCopyWithImpl<$Res>
    extends _$BoardModelCopyWithImpl<$Res, _$BoardModelImpl>
    implements _$$BoardModelImplCopyWith<$Res> {
  __$$BoardModelImplCopyWithImpl(
      _$BoardModelImpl _value, $Res Function(_$BoardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? board = null,
    Object? remainingQueensCount = null,
    Object? size = null,
    Object? isSafe = null,
    Object? isGameCompleted = null,
    Object? attackingQueenPosition = freezed,
  }) {
    return _then(_$BoardModelImpl(
      board: null == board
          ? _value._board
          : board // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      remainingQueensCount: null == remainingQueensCount
          ? _value.remainingQueensCount
          : remainingQueensCount // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      isSafe: null == isSafe
          ? _value.isSafe
          : isSafe // ignore: cast_nullable_to_non_nullable
              as bool,
      isGameCompleted: null == isGameCompleted
          ? _value.isGameCompleted
          : isGameCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      attackingQueenPosition: freezed == attackingQueenPosition
          ? _value._attackingQueenPosition
          : attackingQueenPosition // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
    ));
  }
}

/// @nodoc

class _$BoardModelImpl implements _BoardModel {
  const _$BoardModelImpl(
      {required final List<List<int>> board,
      required this.remainingQueensCount,
      required this.size,
      required this.isSafe,
      required this.isGameCompleted,
      final Map<String, int>? attackingQueenPosition})
      : _board = board,
        _attackingQueenPosition = attackingQueenPosition;

  final List<List<int>> _board;
  @override
  List<List<int>> get board {
    if (_board is EqualUnmodifiableListView) return _board;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_board);
  }

  @override
  final int remainingQueensCount;
  @override
  final int size;
  @override
  final bool isSafe;
  @override
  final bool isGameCompleted;
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
    return 'BoardModel(board: $board, remainingQueensCount: $remainingQueensCount, size: $size, isSafe: $isSafe, isGameCompleted: $isGameCompleted, attackingQueenPosition: $attackingQueenPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardModelImpl &&
            const DeepCollectionEquality().equals(other._board, _board) &&
            (identical(other.remainingQueensCount, remainingQueensCount) ||
                other.remainingQueensCount == remainingQueensCount) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.isSafe, isSafe) || other.isSafe == isSafe) &&
            (identical(other.isGameCompleted, isGameCompleted) ||
                other.isGameCompleted == isGameCompleted) &&
            const DeepCollectionEquality().equals(
                other._attackingQueenPosition, _attackingQueenPosition));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_board),
      remainingQueensCount,
      size,
      isSafe,
      isGameCompleted,
      const DeepCollectionEquality().hash(_attackingQueenPosition));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardModelImplCopyWith<_$BoardModelImpl> get copyWith =>
      __$$BoardModelImplCopyWithImpl<_$BoardModelImpl>(this, _$identity);
}

abstract class _BoardModel implements BoardModel {
  const factory _BoardModel(
      {required final List<List<int>> board,
      required final int remainingQueensCount,
      required final int size,
      required final bool isSafe,
      required final bool isGameCompleted,
      final Map<String, int>? attackingQueenPosition}) = _$BoardModelImpl;

  @override
  List<List<int>> get board;
  @override
  int get remainingQueensCount;
  @override
  int get size;
  @override
  bool get isSafe;
  @override
  bool get isGameCompleted;
  @override
  Map<String, int>? get attackingQueenPosition;
  @override
  @JsonKey(ignore: true)
  _$$BoardModelImplCopyWith<_$BoardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
