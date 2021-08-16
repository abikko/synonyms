part of 'search_synonym_bloc.dart';

@immutable
abstract class SearchSynonymEvent {}

class SearchSynonymPressed extends SearchSynonymEvent {
  final String? text;

  SearchSynonymPressed({this.text});
}
