import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:synonyms/internal/app_module.dart';
import 'package:synonyms/presenter/utils/routes/app_routes.dart';

void main() {
  initGetIt();
  runApp(SynonymsApp());
}

class SynonymsApp extends StatelessWidget {
  const SynonymsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: "Synonyms",
      onGenerateRoute: (routeSettings) =>
          AppRoutes.generateRoute(routeSettings),
    );
  }
}
