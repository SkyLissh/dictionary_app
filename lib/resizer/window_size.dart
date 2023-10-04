import "window_constraints.dart";

class Resizer {
  static Resizer instance = Resizer();

  WindowSize get height {
    switch (WindowConstraints.height) {
      case <= 480:
        return WindowSize.sm;
      case <= 768:
        return WindowSize.md;
      case <= 1024:
        return WindowSize.lg;
      case <= 1280:
        return WindowSize.xl;
      default:
        return WindowSize.xxl;
    }
  }

  WindowSize get width {
    switch (WindowConstraints.width) {
      case <= 640:
        return WindowSize.sm;
      case <= 768:
        return WindowSize.md;
      case <= 1024:
        return WindowSize.lg;
      case <= 1280:
        return WindowSize.xl;
      default:
        return WindowSize.xxl;
    }
  }

  double get containerWidth {
    return width.when(
      sm: () => 640,
      md: () => 768,
      lg: () => 1024,
      xl: () => 1280,
      xxl: () => 1536,
    );
  }
}

enum WindowSize {
  sm,
  md,
  lg,
  xl,
  xxl;

  bool get isSmall => this == WindowSize.sm;
  bool get isMedium => this == WindowSize.md;
  bool get isLarge => this == WindowSize.lg;
  bool get isXl => this == WindowSize.xl;
  bool get isXxl => this == WindowSize.xxl;

  T when<T>({
    T Function()? sm,
    T Function()? md,
    T Function()? lg,
    T Function()? xl,
    T Function()? xxl,
    T Function()? orElse,
  }) {
    final allSizesProvided =
        [sm, md, lg, xl, xxl].every((element) => element != null);

    if (!allSizesProvided && orElse == null) {
      throw Exception(
          "You need to provide all sizes or provide orElse function");
    }

    switch (this) {
      case WindowSize.sm:
        return sm?.call() ?? orElse!.call();
      case WindowSize.md:
        return md?.call() ?? orElse!.call();
      case WindowSize.lg:
        return lg?.call() ?? orElse!.call();
      case WindowSize.xl:
        return xl?.call() ?? orElse!.call();
      case WindowSize.xxl:
        return xxl?.call() ?? orElse!.call();
    }
  }
}
