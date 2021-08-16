import 'package:json_annotation/json_annotation.dart';

part 'word.g.dart';

@JsonSerializable()
class Word {
	@JsonKey(name: 'word')
	String? word;
	@JsonKey(name: 'synonyms')
	List<String>? synonyms;

	Word({this.word, this.synonyms});

	factory Word.fromJson(Map<String, dynamic> json) => _$WordFromJson(json);

	Map<String, dynamic> toJson() => _$WordToJson(this);
}
