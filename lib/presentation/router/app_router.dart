import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:test_bloc_task/presentation/pages/detail_info/detail_info_page.dart';
import 'package:test_bloc_task/presentation/pages/home/home_page.dart';
import 'package:test_bloc_task/presentation/pages/setting_detail/setting_detail_page.dart';
import 'package:test_bloc_task/presentation/router/route_name.dart';

typedef TransitionBuilder = Widget Function(
  BuildContext context,
  Animation<double> animation,
  Animation<double> sAnimation,
  Widget child,
);

mixin AppRouter {
  static final navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'navigatorKey');

  static final GoRouter router = GoRouter(
    navigatorKey: navigatorKey,
    debugLogDiagnostics: true,
    initialLocation: RouteName.home,
    routes: [
      GoRoute(
        parentNavigatorKey: navigatorKey,
        path: RouteName.home,
        builder: (context, state) {
          return const HomePage();
        },
        routes: [
          GoRoute(
            parentNavigatorKey: navigatorKey,
            path: RouteName.getPageName(fullPath: RouteName.settingDetailPage),
            pageBuilder: (context, state) => CupertinoPage(
              key: ValueKey(state.pageKey),
              child: const SettingDetailPage(),
            ),
            routes: [
              GoRoute(
                parentNavigatorKey: navigatorKey,
                path: RouteName.getPageName(fullPath: RouteName.detailInfoPage),
                pageBuilder: (context, state) => CupertinoPage(
                  key: ValueKey(state.pageKey),
                  child: const DetailInfoPage(),
                ),
              ),
            ],
          ),
        ],
      )
    ],
    errorPageBuilder: (context, state) => CupertinoPage(
      key: state.pageKey,
      child: Center(
        child: Text(state.uri.toString()),
      ),
    ),
  );
}
