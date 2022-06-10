import 'package:flutter/material.dart';

import 'app/router/app_router.dart';
import 'home/home.dart';

class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SizedBox(
        child: HomePage(),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamedAndRemoveUntil(
            AppRouter.signIn,
            (Route<dynamic> route) => false,
          );
        },
      ),
    );
  }
}
