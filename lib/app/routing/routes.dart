import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jalgasssss/modules/dashboard/view/dashborad.dart';

import '../../modules/home/view/home_page.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return HomePage();
      },
    )
  ],
);
