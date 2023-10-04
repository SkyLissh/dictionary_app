import "package:freezed_annotation/freezed_annotation.dart";

import "package:dictionary/models/models.dart";

part "word_definition.freezed.dart";
part "word_definition.g.dart";

@Freezed()
class WordDefinition with _$WordDefinition {
  const factory WordDefinition({
    required String word,
    required String? phonetic,
    required List<Phonetic> phonetics,
    required List<Meaning> meanings,
    required List<String> sourceUrls,
  }) = _WordDefinition;

  factory WordDefinition.fromJson(Map<String, dynamic> json) =>
      _$WordDefinitionFromJson(json);
}
