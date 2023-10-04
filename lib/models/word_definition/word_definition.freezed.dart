// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WordDefinition _$WordDefinitionFromJson(Map<String, dynamic> json) {
  return _WordDefinition.fromJson(json);
}

/// @nodoc
mixin _$WordDefinition {
  String get word => throw _privateConstructorUsedError;
  String? get phonetic => throw _privateConstructorUsedError;
  List<Phonetic> get phonetics => throw _privateConstructorUsedError;
  List<Meaning> get meanings => throw _privateConstructorUsedError;
  List<String> get sourceUrls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordDefinitionCopyWith<WordDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordDefinitionCopyWith<$Res> {
  factory $WordDefinitionCopyWith(
          WordDefinition value, $Res Function(WordDefinition) then) =
      _$WordDefinitionCopyWithImpl<$Res, WordDefinition>;
  @useResult
  $Res call(
      {String word,
      String? phonetic,
      List<Phonetic> phonetics,
      List<Meaning> meanings,
      List<String> sourceUrls});
}

/// @nodoc
class _$WordDefinitionCopyWithImpl<$Res, $Val extends WordDefinition>
    implements $WordDefinitionCopyWith<$Res> {
  _$WordDefinitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? phonetic = freezed,
    Object? phonetics = null,
    Object? meanings = null,
    Object? sourceUrls = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      phonetic: freezed == phonetic
          ? _value.phonetic
          : phonetic // ignore: cast_nullable_to_non_nullable
              as String?,
      phonetics: null == phonetics
          ? _value.phonetics
          : phonetics // ignore: cast_nullable_to_non_nullable
              as List<Phonetic>,
      meanings: null == meanings
          ? _value.meanings
          : meanings // ignore: cast_nullable_to_non_nullable
              as List<Meaning>,
      sourceUrls: null == sourceUrls
          ? _value.sourceUrls
          : sourceUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordDefinitionImplCopyWith<$Res>
    implements $WordDefinitionCopyWith<$Res> {
  factory _$$WordDefinitionImplCopyWith(_$WordDefinitionImpl value,
          $Res Function(_$WordDefinitionImpl) then) =
      __$$WordDefinitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String word,
      String? phonetic,
      List<Phonetic> phonetics,
      List<Meaning> meanings,
      List<String> sourceUrls});
}

/// @nodoc
class __$$WordDefinitionImplCopyWithImpl<$Res>
    extends _$WordDefinitionCopyWithImpl<$Res, _$WordDefinitionImpl>
    implements _$$WordDefinitionImplCopyWith<$Res> {
  __$$WordDefinitionImplCopyWithImpl(
      _$WordDefinitionImpl _value, $Res Function(_$WordDefinitionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? phonetic = freezed,
    Object? phonetics = null,
    Object? meanings = null,
    Object? sourceUrls = null,
  }) {
    return _then(_$WordDefinitionImpl(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      phonetic: freezed == phonetic
          ? _value.phonetic
          : phonetic // ignore: cast_nullable_to_non_nullable
              as String?,
      phonetics: null == phonetics
          ? _value._phonetics
          : phonetics // ignore: cast_nullable_to_non_nullable
              as List<Phonetic>,
      meanings: null == meanings
          ? _value._meanings
          : meanings // ignore: cast_nullable_to_non_nullable
              as List<Meaning>,
      sourceUrls: null == sourceUrls
          ? _value._sourceUrls
          : sourceUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordDefinitionImpl implements _WordDefinition {
  const _$WordDefinitionImpl(
      {required this.word,
      required this.phonetic,
      required final List<Phonetic> phonetics,
      required final List<Meaning> meanings,
      required final List<String> sourceUrls})
      : _phonetics = phonetics,
        _meanings = meanings,
        _sourceUrls = sourceUrls;

  factory _$WordDefinitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordDefinitionImplFromJson(json);

  @override
  final String word;
  @override
  final String? phonetic;
  final List<Phonetic> _phonetics;
  @override
  List<Phonetic> get phonetics {
    if (_phonetics is EqualUnmodifiableListView) return _phonetics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_phonetics);
  }

  final List<Meaning> _meanings;
  @override
  List<Meaning> get meanings {
    if (_meanings is EqualUnmodifiableListView) return _meanings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meanings);
  }

  final List<String> _sourceUrls;
  @override
  List<String> get sourceUrls {
    if (_sourceUrls is EqualUnmodifiableListView) return _sourceUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sourceUrls);
  }

  @override
  String toString() {
    return 'WordDefinition(word: $word, phonetic: $phonetic, phonetics: $phonetics, meanings: $meanings, sourceUrls: $sourceUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordDefinitionImpl &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.phonetic, phonetic) ||
                other.phonetic == phonetic) &&
            const DeepCollectionEquality()
                .equals(other._phonetics, _phonetics) &&
            const DeepCollectionEquality().equals(other._meanings, _meanings) &&
            const DeepCollectionEquality()
                .equals(other._sourceUrls, _sourceUrls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      word,
      phonetic,
      const DeepCollectionEquality().hash(_phonetics),
      const DeepCollectionEquality().hash(_meanings),
      const DeepCollectionEquality().hash(_sourceUrls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordDefinitionImplCopyWith<_$WordDefinitionImpl> get copyWith =>
      __$$WordDefinitionImplCopyWithImpl<_$WordDefinitionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordDefinitionImplToJson(
      this,
    );
  }
}

abstract class _WordDefinition implements WordDefinition {
  const factory _WordDefinition(
      {required final String word,
      required final String? phonetic,
      required final List<Phonetic> phonetics,
      required final List<Meaning> meanings,
      required final List<String> sourceUrls}) = _$WordDefinitionImpl;

  factory _WordDefinition.fromJson(Map<String, dynamic> json) =
      _$WordDefinitionImpl.fromJson;

  @override
  String get word;
  @override
  String? get phonetic;
  @override
  List<Phonetic> get phonetics;
  @override
  List<Meaning> get meanings;
  @override
  List<String> get sourceUrls;
  @override
  @JsonKey(ignore: true)
  _$$WordDefinitionImplCopyWith<_$WordDefinitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
