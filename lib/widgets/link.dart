import "package:flutter/material.dart";
import "package:url_launcher/url_launcher.dart";
import "package:flutter_tabler_icons/flutter_tabler_icons.dart";

import "package:dictionary/constants/constants.dart";

class Link extends StatelessWidget {
  final String url;

  const Link({super.key, required this.url});

  void _onTap() async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: MaterialStateMouseCursor.clickable,
      child: GestureDetector(
        onTap: _onTap,
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          Flexible(
            child: Text(
              url,
              style: const TextStyle(decoration: TextDecoration.underline),
            ),
          ),
          const SizedBox(width: Paddings.small),
          const Icon(TablerIcons.external_link)
        ]),
      ),
    );
  }
}
