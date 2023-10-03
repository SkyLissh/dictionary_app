import "package:flutter/material.dart";

import "package:dictionary/constants/constants.dart";
import "package:dictionary/extensions/extensions.dart";

class WordNotFound extends StatelessWidget {
  const WordNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(Paddings.medium),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          ">.<",
          style: theme.textTheme.displayLarge!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          l10n.wordNotFound,
          style: theme.textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
      ]),
    );
  }
}
