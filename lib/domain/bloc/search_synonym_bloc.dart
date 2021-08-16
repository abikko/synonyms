import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:synonyms/data/remote/repository/synonym_repository.dart';
import 'package:synonyms/domain/model/word.dart';

part 'search_synonym_event.dart';
part 'search_synonym_state.dart';

class SearchSynonymBloc extends Bloc<SearchSynonymEvent, SearchSynonymState> {
  final SynonymRepository repository;
  final Dio dio;

  SearchSynonymBloc({required this.repository, required this.dio})
      : super(SearchSynonymInitial());

  @override
  Stream<SearchSynonymState> mapEventToState(
    SearchSynonymEvent event,
  ) async* {
    if (event is SearchSynonymPressed) {
      yield* repository.searchSynonym(dio: dio, searchingWord: event.text);
    }
  }
}
