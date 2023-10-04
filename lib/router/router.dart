import "package:auto_route/auto_route.dart";
import "router.gr.dart";

export "router.gr.dart";

@AutoRouterConfig(replaceInRouteName: "Screen,Route")
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(initial: true, path: "/", page: HomeRoute.page),
    ];
  }
}
