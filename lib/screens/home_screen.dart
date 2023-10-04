import "package:flutter/material.dart";
import "package:auto_route/auto_route.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_tabler_icons/flutter_tabler_icons.dart";

import "package:dictionary/constants/constants.dart";
import "package:dictionary/shared/shared.dart";
import "package:dictionary/providers/providers.dart";
import "package:dictionary/resizer/resizer.dart";
import "package:dictionary/widgets/widgets.dart";

@RoutePage()
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final _debouncer = Debouncer(delay: const Duration(seconds: 1));

  void _onSearch(String value) {
    _debouncer(() async {
      await ref.read(dictionaryProvider.notifier).search(value);
    });
  }

  void _onToggleTheme(Brightness brightness) {
    ref
        .read(themeProvider.notifier)
        .toggleTheme(dark: brightness != Brightness.dark);
  }

  @override
  void dispose() {
    _debouncer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final wordDefinition = ref.watch(dictionaryProvider);
    final theme = Theme.of(context);
    final resizer = ResizerWidget.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.background,
        leading: const Icon(TablerIcons.book_2),
        elevation: 0,
        actions: [
          Switch(
            value: theme.brightness == Brightness.dark,
            onChanged: (value) => _onToggleTheme(theme.brightness),
          ),
          const Icon(TablerIcons.moon),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.all(Paddings.medium),
                width: !resizer.width.isSmall && !resizer.width.isMedium
                    ? 1200
                    : null,
                child: TextField(
                  onChanged: _onSearch,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(TablerIcons.search),
                    suffixIconColor: theme.colorScheme.primary,
                  ),
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: wordDefinition.when(
              data: (data) => Align(
                alignment: Alignment.center,
                child: DictionaryInfo(wordDefinition: data),
              ),
              error: (error, stack) => const WordNotFound(),
              loading: () => const Center(child: CircularProgressIndicator()),
            ),
          ),
        ],
      ),
    );
  }
}
