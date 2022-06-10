import 'package:flutter/material.dart';

import '../../home/home.dart';
import '../../sign_in/password.dart';
import '../../sign_in/sign_in_page.dart';

class AppRouter {
  static const String home = '/';
  static const String signIn = '/sign_in';
  static const String password = '/sign_in/password';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const HomePage(),
        );
      case signIn:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const SignInPage(),
        );
      case password:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const Password(),
        );
      default:
        throw RouteExc().toString();
    }
  }
}

class RouteExc implements Exception {
  RouteExc();

  @override
  String toString() => 'Route not found!';
}

// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// import '../../home/home.dart';
// import '../../sign_in/password.dart';
// import '../../sign_in/sign_in_page.dart';

// final GoRouter _router = GoRouter(
//     routes: <GoRoute>[
//       GoRoute(
//         path: '/',
//         builder: (BuildContext context, GoRouterState state) =>
//             const HomePage(),
//       ),
//       GoRoute(
//         path: '/page2',
//         builder: (BuildContext context, GoRouterState state) =>
//             const SignInPage(),
//       ),
//       GoRoute(
//         path: '/page2',
//         builder: (BuildContext context, GoRouterState state) =>
//             const Password(),
//       ),
//     ],
//   );