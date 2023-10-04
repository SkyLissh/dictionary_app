import "package:flutter/material.dart";

import "package:dictionary/constants/constants.dart";
import "package:dictionary/extensions/extensions.dart";
import "package:dictionary/models/models.dart";

class MeaningInfo extends StatelessWidget {
  final Meaning meaning;

  const MeaningInfo({super.key, required this.meaning});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Paddings.small),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          meaning.partOfSpeech,
          style: theme.textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: Paddings.large),
        Text(
          l10n.meaning,
          style: theme.textTheme.titleSmall!.copyWith(
            color: Palette.zinc500,
          ),
        ),
        for (final definition in meaning.definitions) ...[
          const SizedBox(height: Paddings.medium),
          Row(children: [
            Text(
              "\u2022",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.primary,
              ),
            ),
            const SizedBox(width: Paddings.small),
            Expanded(child: Text(definition.definition)),
          ]),
          if (definition.example != null) ...[
            const SizedBox(height: Paddings.medium),
            Padding(
              padding: const EdgeInsets.only(left: Paddings.medium),
              child: Text(
                "\"${definition.example!}\"",
                style: const TextStyle(color: Palette.zinc500),
              ),
            ),
          ],
        ],
        if (meaning.synonyms.isNotEmpty) ...[
          const SizedBox(height: Paddings.medium),
          _WordList(title: l10n.synonyms, words: meaning.synonyms),
        ],
        if (meaning.antonyms.isNotEmpty) ...[
          const SizedBox(height: Paddings.medium),
          _WordList(title: l10n.antonyms, words: meaning.antonyms),
        ],
      ]),
    );
  }
}

class _WordList extends StatelessWidget {
  final String title;
  final List<String> words;

  const _WordList({required this.title, required this.words});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(children: [
      Text(
        title,
        style: theme.textTheme.titleSmall!.copyWith(
          color: Palette.zinc500,
        ),
      ),
      const SizedBox(width: Paddings.medium),
      Expanded(
        child: Text(
          words.join(", "),
          style: TextStyle(
            color: theme.colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ]);
  }
}
