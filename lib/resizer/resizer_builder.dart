import "package:flutter/material.dart";

import "window_constraints.dart";
import "window_size.dart";

class _ResizerWidget extends InheritedWidget {
  final Resizer size;

  const _ResizerWidget({required Widget child, required this.size})
      : super(child: child);

  @override
  bool updateShouldNotify(_ResizerWidget oldWidget) {
    return true;
  }
}

class ResizerWidget extends StatelessWidget {
  final Widget child;

  const ResizerWidget({super.key, required this.child});

  static Resizer of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_ResizerWidget>()!.size;
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    // print("Build");

    // print(mediaQuery.size);

    WindowConstraints.setConstraints(
      mediaQuery.size.height,
      mediaQuery.size.width,
    );

    return _ResizerWidget(size: Resizer.instance, child: child);
  }
}
