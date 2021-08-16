import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synonyms/data/remote/repository/synonym_repository.dart';
import 'package:synonyms/domain/bloc/search_synonym_bloc.dart';
import 'package:synonyms/internal/app_module.dart';
import 'package:synonyms/presenter/screens/search_synonym_screen.dart';

class AppRoutes {
  static Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      default:
        return CupertinoPageRoute(
          builder: (context) => BlocProvider<SearchSynonymBloc>(
            create: (context) => SearchSynonymBloc(
                repository: SynonymRepository(), dio: getIt<Dio>()),
            child: SearchSynonymScreen(),
          ),
        );
    }
  }
}
