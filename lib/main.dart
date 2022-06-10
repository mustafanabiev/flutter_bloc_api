import 'package:bloc_api/locator.dart';
import 'package:bloc_api/src/app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/app_page.dart';
import 'src/services/boredService.dart';
import 'package:go_router/go_router.dart';

void main() {
  setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: AppRouter.onGenerateRoute,
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context) => BoredService(),
          ),
        ],
        child: const AppPage(),
      ),
    );
    // .router(
    //     routeInformationParser: router.routeInformationParser,
    //     routerDelegate: router.routerDelegate,

    //   );
  }
}
