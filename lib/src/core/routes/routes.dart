import 'package:auto_route/auto_route.dart';
import 'package:study/src/core/routes/routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: PerfilRoute.page),
        AutoRoute(page: BlogDetailRoute.page),
      ];
}
