import 'package:dio/dio.dart';
import 'package:synonyms/domain/bloc/search_synonym_bloc.dart';
import 'package:synonyms/domain/model/word.dart';

class SynonymRepository {
  Stream<SearchSynonymState> searchSynonym({dio, searchingWord}) async* {
    yield SearchSynonymLoading();
    try {
      Response response = await dio.get(
        "/words/$searchingWord/synonyms",
      );
      Word word = Word.fromJson(response.data);
      yield SearchSynonymLoaded(synonyms: word);
    } on DioError catch (e) {}
  }
}
