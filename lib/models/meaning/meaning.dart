import "package:freezed_annotation/freezed_annotation.dart";

import "package:dictionary/models/models.dart";

part "meaning.freezed.dart";
part "meaning.g.dart";

@freezed
class Meaning with _$Meaning {
  const factory Meaning({
    required String partOfSpeech,
    required List<Definition> definitions,
    required List<String> synonyms,
    required List<String> antonyms,
  }) = _Meaning;

  factory Meaning.fromJson(Map<String, dynamic> json) =>
      _$MeaningFromJson(json);
}
