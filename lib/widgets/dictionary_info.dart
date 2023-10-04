import "package:flutter/material.dart";
import "package:flutter_tabler_icons/flutter_tabler_icons.dart";
import "package:url_launcher/url_launcher.dart";

import "package:dictionary/constants/constants.dart";
import "package:dictionary/extensions/extensions.dart";
import "package:dictionary/models/models.dart";
import "package:dictionary/resizer/resizer.dart";
import "package:dictionary/widgets/widgets.dart";

class DictionaryInfo extends StatelessWidget {
  final WordDefinition? wordDefinition;

  const DictionaryInfo({super.key, required this.wordDefinition});

  void _onLinkTap(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }

  @override
  Widget build(BuildContext context) {
    if (wordDefinition == null) {
      return const WordNotFound();
    }

    final l10n = context.l10n;
    final theme = Theme.of(context);
    final resizer = ResizerWidget.of(context);

    return Container(
      padding: const EdgeInsets.all(Paddings.medium),
      width: !resizer.width.isSmall && !resizer.width.isMedium ? 1200 : null,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                wordDefinition!.word,
                style: theme.textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (wordDefinition?.phonetic != null) ...[
                const SizedBox(height: Paddings.small),
                Text(
                  wordDefinition!.phonetic!,
                  style: TextStyle(color: theme.colorScheme.primary),
                ),
              ]
            ]),
            IconButton.filledTonal(
              onPressed: () {},
              icon: Icon(
                TablerIcons.player_play_filled,
                color: theme.colorScheme.primary,
              ),
            )
          ],
        ),
        for (final meaning in wordDefinition!.meanings) ...[
          MeaningInfo(meaning: meaning),
        ],
        const SizedBox(height: Paddings.medium),
        Text(
          l10n.source,
          style: const TextStyle(color: Palette.zinc500),
        ),
        const SizedBox(height: Paddings.small),
        Flexible(
          child: MouseRegion(
            cursor: MaterialStateMouseCursor.clickable,
            child: GestureDetector(
              onTap: () => _onLinkTap(wordDefinition!.sourceUrls.first),
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                Flexible(
                  child: Text(
                    wordDefinition!.sourceUrls.first,
                    style:
                        const TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(width: Paddings.small),
                const Icon(TablerIcons.external_link)
              ]),
            ),
          ),
        ),
      ]),
    );
  }
}
