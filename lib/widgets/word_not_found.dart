import "package:flutter/material.dart";

import "package:dictionary/extensions/extensions.dart";

class WordNotFound extends StatelessWidget {
  const WordNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Center(
      child: Column(children: [
        Text(l10n.wordNotFound),
      ]),
    );
  }
}
