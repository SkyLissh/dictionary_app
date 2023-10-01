// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WordDefinitionImpl _$$WordDefinitionImplFromJson(Map<String, dynamic> json) =>
    _$WordDefinitionImpl(
      word: json['word'] as String,
      phonetic: json['phonetic'] as String,
      phonetics: (json['phonetics'] as List<dynamic>)
          .map((e) => Phonetic.fromJson(e as Map<String, dynamic>))
          .toList(),
      meanings: (json['meanings'] as List<dynamic>)
          .map((e) => Meaning.fromJson(e as Map<String, dynamic>))
          .toList(),
      sourceUrls: (json['sourceUrls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$WordDefinitionImplToJson(
        _$WordDefinitionImpl instance) =>
    <String, dynamic>{
      'word': instance.word,
      'phonetic': instance.phonetic,
      'phonetics': instance.phonetics,
      'meanings': instance.meanings,
      'sourceUrls': instance.sourceUrls,
    };
