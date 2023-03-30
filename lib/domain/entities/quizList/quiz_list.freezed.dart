// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuizList _$QuizListFromJson(Map<String, dynamic> json) {
  return _QuizList.fromJson(json);
}

/// @nodoc
mixin _$QuizList {
  List<Quiz> get quizList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizListCopyWith<QuizList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizListCopyWith<$Res> {
  factory $QuizListCopyWith(QuizList value, $Res Function(QuizList) then) =
      _$QuizListCopyWithImpl<$Res, QuizList>;
  @useResult
  $Res call({List<Quiz> quizList});
}

/// @nodoc
class _$QuizListCopyWithImpl<$Res, $Val extends QuizList>
    implements $QuizListCopyWith<$Res> {
  _$QuizListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizList = null,
  }) {
    return _then(_value.copyWith(
      quizList: null == quizList
          ? _value.quizList
          : quizList // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizListCopyWith<$Res> implements $QuizListCopyWith<$Res> {
  factory _$$_QuizListCopyWith(
          _$_QuizList value, $Res Function(_$_QuizList) then) =
      __$$_QuizListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Quiz> quizList});
}

/// @nodoc
class __$$_QuizListCopyWithImpl<$Res>
    extends _$QuizListCopyWithImpl<$Res, _$_QuizList>
    implements _$$_QuizListCopyWith<$Res> {
  __$$_QuizListCopyWithImpl(
      _$_QuizList _value, $Res Function(_$_QuizList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizList = null,
  }) {
    return _then(_$_QuizList(
      quizList: null == quizList
          ? _value._quizList
          : quizList // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuizList with DiagnosticableTreeMixin implements _QuizList {
  const _$_QuizList({final List<Quiz> quizList = const []})
      : _quizList = quizList;

  factory _$_QuizList.fromJson(Map<String, dynamic> json) =>
      _$$_QuizListFromJson(json);

  final List<Quiz> _quizList;
  @override
  @JsonKey()
  List<Quiz> get quizList {
    if (_quizList is EqualUnmodifiableListView) return _quizList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quizList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizList(quizList: $quizList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuizList'))
      ..add(DiagnosticsProperty('quizList', quizList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizList &&
            const DeepCollectionEquality().equals(other._quizList, _quizList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_quizList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizListCopyWith<_$_QuizList> get copyWith =>
      __$$_QuizListCopyWithImpl<_$_QuizList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuizListToJson(
      this,
    );
  }
}

abstract class _QuizList implements QuizList {
  const factory _QuizList({final List<Quiz> quizList}) = _$_QuizList;

  factory _QuizList.fromJson(Map<String, dynamic> json) = _$_QuizList.fromJson;

  @override
  List<Quiz> get quizList;
  @override
  @JsonKey(ignore: true)
  _$$_QuizListCopyWith<_$_QuizList> get copyWith =>
      throw _privateConstructorUsedError;
}
