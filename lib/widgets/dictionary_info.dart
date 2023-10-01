import "package:flutter/material.dart";
import "package:flutter_tabler_icons/flutter_tabler_icons.dart";

import "package:dictionary/constants/constants.dart";
import "package:dictionary/models/models.dart";
import "package:dictionary/widgets/widgets.dart";

class DictionaryInfo extends StatelessWidget {
  final WordDefinition? wordDefinition;

  const DictionaryInfo({super.key, required this.wordDefinition});

  @override
  Widget build(BuildContext context) {
    if (wordDefinition == null) {
      return const WordNotFound();
    }

    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Paddings.medium),
      child: Column(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                wordDefinition!.word,
                style: theme.textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: Paddings.small),
              Text(
                wordDefinition!.phonetic,
                style: TextStyle(color: theme.colorScheme.primary),
              ),
            ]),
            IconButton.filledTonal(
              onPressed: () {},
              icon: Icon(
                TablerIcons.player_play_filled,
                color: theme.colorScheme.primary,
              ),
            )
          ],
        )
      ]),
    );
  }
}
