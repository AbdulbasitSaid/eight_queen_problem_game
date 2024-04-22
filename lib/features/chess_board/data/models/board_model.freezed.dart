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
  int get placesQueensCount => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  bool get isSafe => throw _privateConstructorUsedError;
  bool get isGameCompleted => throw _privateConstructorUsedError;

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
      int placesQueensCount,
      int size,
      bool isSafe,
      bool isGameCompleted});
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
    Object? placesQueensCount = null,
    Object? size = null,
    Object? isSafe = null,
    Object? isGameCompleted = null,
  }) {
    return _then(_value.copyWith(
      board: null == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      placesQueensCount: null == placesQueensCount
          ? _value.placesQueensCount
          : placesQueensCount // ignore: cast_nullable_to_non_nullable
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
      int placesQueensCount,
      int size,
      bool isSafe,
      bool isGameCompleted});
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
    Object? placesQueensCount = null,
    Object? size = null,
    Object? isSafe = null,
    Object? isGameCompleted = null,
  }) {
    return _then(_$BoardModelImpl(
      board: null == board
          ? _value._board
          : board // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      placesQueensCount: null == placesQueensCount
          ? _value.placesQueensCount
          : placesQueensCount // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc

class _$BoardModelImpl implements _BoardModel {
  const _$BoardModelImpl(
      {required final List<List<int>> board,
      required this.placesQueensCount,
      required this.size,
      required this.isSafe,
      required this.isGameCompleted})
      : _board = board;

  final List<List<int>> _board;
  @override
  List<List<int>> get board {
    if (_board is EqualUnmodifiableListView) return _board;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_board);
  }

  @override
  final int placesQueensCount;
  @override
  final int size;
  @override
  final bool isSafe;
  @override
  final bool isGameCompleted;

  @override
  String toString() {
    return 'BoardModel(board: $board, placesQueensCount: $placesQueensCount, size: $size, isSafe: $isSafe, isGameCompleted: $isGameCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardModelImpl &&
            const DeepCollectionEquality().equals(other._board, _board) &&
            (identical(other.placesQueensCount, placesQueensCount) ||
                other.placesQueensCount == placesQueensCount) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.isSafe, isSafe) || other.isSafe == isSafe) &&
            (identical(other.isGameCompleted, isGameCompleted) ||
                other.isGameCompleted == isGameCompleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_board),
      placesQueensCount,
      size,
      isSafe,
      isGameCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardModelImplCopyWith<_$BoardModelImpl> get copyWith =>
      __$$BoardModelImplCopyWithImpl<_$BoardModelImpl>(this, _$identity);
}

abstract class _BoardModel implements BoardModel {
  const factory _BoardModel(
      {required final List<List<int>> board,
      required final int placesQueensCount,
      required final int size,
      required final bool isSafe,
      required final bool isGameCompleted}) = _$BoardModelImpl;

  @override
  List<List<int>> get board;
  @override
  int get placesQueensCount;
  @override
  int get size;
  @override
  bool get isSafe;
  @override
  bool get isGameCompleted;
  @override
  @JsonKey(ignore: true)
  _$$BoardModelImplCopyWith<_$BoardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
