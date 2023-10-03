import "package:freezed_annotation/freezed_annotation.dart";

part "definition.freezed.dart";
part "definition.g.dart";

@freezed
class Definition with _$Definition {
  const factory Definition({
    required String definition,
    required List<String> synonyms,
    required List<String> antonyms,
    String? example,
  }) = _Definition;

  factory Definition.fromJson(Map<String, dynamic> json) =>
      _$DefinitionFromJson(json);
}
