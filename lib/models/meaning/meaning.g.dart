// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meaning.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeaningImpl _$$MeaningImplFromJson(Map<String, dynamic> json) =>
    _$MeaningImpl(
      partOfSpeech: json['partOfSpeech'] as String,
      definitions: (json['definitions'] as List<dynamic>)
          .map((e) => Definition.fromJson(e as Map<String, dynamic>))
          .toList(),
      synonyms:
          (json['synonyms'] as List<dynamic>).map((e) => e as String).toList(),
      antonyms:
          (json['antonyms'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$MeaningImplToJson(_$MeaningImpl instance) =>
    <String, dynamic>{
      'partOfSpeech': instance.partOfSpeech,
      'definitions': instance.definitions,
      'synonyms': instance.synonyms,
      'antonyms': instance.antonyms,
    };
