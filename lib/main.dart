import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:dictionary/extensions/extensions.dart";
import "package:dictionary/l10n/l10n.dart";
import "package:dictionary/router/router.dart";
import "package:dictionary/themes/themes.dart";

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter();

    return MaterialApp.router(
      theme: CustomTheme.theme,
      onGenerateTitle: (context) => context.l10n.appTitle,
      debugShowCheckedModeBanner: false,
      supportedLocales: L10n.locales,
      localizationsDelegates: L10n.delegates,
      routerConfig: router.config(),
    );
  }
}
