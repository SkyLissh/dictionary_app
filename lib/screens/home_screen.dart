import "package:flutter/material.dart";
import "package:auto_route/auto_route.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_tabler_icons/flutter_tabler_icons.dart";

import "package:dictionary/constants/constants.dart";
import "package:dictionary/shared/shared.dart";
import "package:dictionary/providers/providers.dart";
import "package:dictionary/widgets/widgets.dart";

@RoutePage()
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  bool _value = false;
  final _debouncer = Debouncer(delay: const Duration(seconds: 1));

  void _onSearch(String value) {
    _debouncer(() async {
      await ref.read(dictionaryProvider.notifier).search(value);
    });
  }

  @override
  void dispose() {
    _debouncer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final wordDefinition = ref.watch(dictionaryProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.background,
        leading: const Icon(TablerIcons.book_2),
        elevation: 0,
        actions: [
          Switch(
            value: _value,
            onChanged: (value) => setState(() => _value = value),
          ),
          const Icon(TablerIcons.moon)
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(Paddings.medium),
            sliver: SliverToBoxAdapter(
              child: TextField(
                onChanged: _onSearch,
                decoration: InputDecoration(
                  suffixIcon: const Icon(TablerIcons.search),
                  suffixIconColor: colorScheme.primary,
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: wordDefinition.when(
              data: (data) => DictionaryInfo(wordDefinition: data),
              error: (error, stack) => const WordNotFound(),
              loading: () => const Center(child: CircularProgressIndicator()),
            ),
          ),
        ],
      ),
    );
  }
}
