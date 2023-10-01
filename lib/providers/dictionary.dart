import "dart:convert";

import "package:http/http.dart" as http;
import "package:riverpod/riverpod.dart";

import "package:dictionary/models/models.dart";

final dictionaryProvider =
    StateNotifierProvider<DictionaryNotifier, AsyncValue<WordDefinition?>>(
        (ref) {
  return DictionaryNotifier();
});

class DictionaryNotifier extends StateNotifier<AsyncValue<WordDefinition?>> {
  final _url = "api.dictionaryapi.dev";

  DictionaryNotifier() : super(const AsyncValue.data(null));

  Future<void> search(String word) async {
    state = const AsyncValue.loading();

    final uri = Uri.https(_url, "/api/v2/entries/en/$word");

    final res = await http.get(uri);

    if (res.statusCode > 299) {
      state = AsyncValue.error(res.body, StackTrace.current);
      return;
    }

    final data = (json.decode(res.body) as List<dynamic>)
        .map((e) => WordDefinition.fromJson(e))
        .toList();

    state = AsyncValue.data(data.isNotEmpty ? data.first : null);
  }
}
