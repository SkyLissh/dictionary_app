import "package:freezed_annotation/freezed_annotation.dart";

part "phonetic.freezed.dart";
part "phonetic.g.dart";

@freezed
class Phonetic with _$Phonetic {
  const factory Phonetic({
    required String text,
    required String audio,
  }) = _Phonetic;

  factory Phonetic.fromJson(Map<String, dynamic> json) =>
      _$PhoneticFromJson(json);
}
