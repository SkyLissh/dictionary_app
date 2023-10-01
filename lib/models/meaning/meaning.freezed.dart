// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meaning.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Meaning _$MeaningFromJson(Map<String, dynamic> json) {
  return _Meaning.fromJson(json);
}

/// @nodoc
mixin _$Meaning {
  String get partOfSpeech => throw _privateConstructorUsedError;
  List<Definition> get definitions => throw _privateConstructorUsedError;
  List<String> get synonyms => throw _privateConstructorUsedError;
  List<String> get antonyms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeaningCopyWith<Meaning> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeaningCopyWith<$Res> {
  factory $MeaningCopyWith(Meaning value, $Res Function(Meaning) then) =
      _$MeaningCopyWithImpl<$Res, Meaning>;
  @useResult
  $Res call(
      {String partOfSpeech,
      List<Definition> definitions,
      List<String> synonyms,
      List<String> antonyms});
}

/// @nodoc
class _$MeaningCopyWithImpl<$Res, $Val extends Meaning>
    implements $MeaningCopyWith<$Res> {
  _$MeaningCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partOfSpeech = null,
    Object? definitions = null,
    Object? synonyms = null,
    Object? antonyms = null,
  }) {
    return _then(_value.copyWith(
      partOfSpeech: null == partOfSpeech
          ? _value.partOfSpeech
          : partOfSpeech // ignore: cast_nullable_to_non_nullable
              as String,
      definitions: null == definitions
          ? _value.definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<Definition>,
      synonyms: null == synonyms
          ? _value.synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      antonyms: null == antonyms
          ? _value.antonyms
          : antonyms // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeaningImplCopyWith<$Res> implements $MeaningCopyWith<$Res> {
  factory _$$MeaningImplCopyWith(
          _$MeaningImpl value, $Res Function(_$MeaningImpl) then) =
      __$$MeaningImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String partOfSpeech,
      List<Definition> definitions,
      List<String> synonyms,
      List<String> antonyms});
}

/// @nodoc
class __$$MeaningImplCopyWithImpl<$Res>
    extends _$MeaningCopyWithImpl<$Res, _$MeaningImpl>
    implements _$$MeaningImplCopyWith<$Res> {
  __$$MeaningImplCopyWithImpl(
      _$MeaningImpl _value, $Res Function(_$MeaningImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partOfSpeech = null,
    Object? definitions = null,
    Object? synonyms = null,
    Object? antonyms = null,
  }) {
    return _then(_$MeaningImpl(
      partOfSpeech: null == partOfSpeech
          ? _value.partOfSpeech
          : partOfSpeech // ignore: cast_nullable_to_non_nullable
              as String,
      definitions: null == definitions
          ? _value._definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<Definition>,
      synonyms: null == synonyms
          ? _value._synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      antonyms: null == antonyms
          ? _value._antonyms
          : antonyms // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeaningImpl implements _Meaning {
  const _$MeaningImpl(
      {required this.partOfSpeech,
      required final List<Definition> definitions,
      required final List<String> synonyms,
      required final List<String> antonyms})
      : _definitions = definitions,
        _synonyms = synonyms,
        _antonyms = antonyms;

  factory _$MeaningImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeaningImplFromJson(json);

  @override
  final String partOfSpeech;
  final List<Definition> _definitions;
  @override
  List<Definition> get definitions {
    if (_definitions is EqualUnmodifiableListView) return _definitions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_definitions);
  }

  final List<String> _synonyms;
  @override
  List<String> get synonyms {
    if (_synonyms is EqualUnmodifiableListView) return _synonyms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_synonyms);
  }

  final List<String> _antonyms;
  @override
  List<String> get antonyms {
    if (_antonyms is EqualUnmodifiableListView) return _antonyms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_antonyms);
  }

  @override
  String toString() {
    return 'Meaning(partOfSpeech: $partOfSpeech, definitions: $definitions, synonyms: $synonyms, antonyms: $antonyms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeaningImpl &&
            (identical(other.partOfSpeech, partOfSpeech) ||
                other.partOfSpeech == partOfSpeech) &&
            const DeepCollectionEquality()
                .equals(other._definitions, _definitions) &&
            const DeepCollectionEquality().equals(other._synonyms, _synonyms) &&
            const DeepCollectionEquality().equals(other._antonyms, _antonyms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      partOfSpeech,
      const DeepCollectionEquality().hash(_definitions),
      const DeepCollectionEquality().hash(_synonyms),
      const DeepCollectionEquality().hash(_antonyms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeaningImplCopyWith<_$MeaningImpl> get copyWith =>
      __$$MeaningImplCopyWithImpl<_$MeaningImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeaningImplToJson(
      this,
    );
  }
}

abstract class _Meaning implements Meaning {
  const factory _Meaning(
      {required final String partOfSpeech,
      required final List<Definition> definitions,
      required final List<String> synonyms,
      required final List<String> antonyms}) = _$MeaningImpl;

  factory _Meaning.fromJson(Map<String, dynamic> json) = _$MeaningImpl.fromJson;

  @override
  String get partOfSpeech;
  @override
  List<Definition> get definitions;
  @override
  List<String> get synonyms;
  @override
  List<String> get antonyms;
  @override
  @JsonKey(ignore: true)
  _$$MeaningImplCopyWith<_$MeaningImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
