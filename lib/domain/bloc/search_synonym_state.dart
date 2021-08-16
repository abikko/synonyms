part of 'search_synonym_bloc.dart';

@immutable
abstract class SearchSynonymState {}

class SearchSynonymInitial extends SearchSynonymState {}

class SearchSynonymLoading extends SearchSynonymState {}

class SearchSynonymLoaded extends SearchSynonymState {
  final Word synonyms;

  SearchSynonymLoaded({required this.synonyms});
}
