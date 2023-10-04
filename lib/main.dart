import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "resizer/resizer.dart";

import "package:dictionary/extensions/extensions.dart";
import "package:dictionary/l10n/l10n.dart";
import "package:dictionary/router/router.dart";
import "package:dictionary/theme/theme.dart";
import "package:dictionary/providers/providers.dart";

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  static final router = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return ResizerWidget(
      child: MaterialApp.router(
        theme: CustomTheme.light,
        darkTheme: CustomTheme.dark,
        themeMode: themeMode,
        onGenerateTitle: (context) => context.l10n.appTitle,
        debugShowCheckedModeBanner: false,
        supportedLocales: L10n.locales,
        localizationsDelegates: L10n.delegates,
        routerConfig: router.config(),
      ),
    );
  }
}
