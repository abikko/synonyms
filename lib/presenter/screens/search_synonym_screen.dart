import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synonyms/domain/bloc/search_synonym_bloc.dart';
import 'package:synonyms/presenter/widgets/word_item.dart';

class SearchSynonymScreen extends StatefulWidget {
  const SearchSynonymScreen({Key? key}) : super(key: key);

  @override
  _SearchSynonymScreenState createState() => _SearchSynonymScreenState();
}

class _SearchSynonymScreenState extends State<SearchSynonymScreen> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Column(
          children: [
            SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: CupertinoSearchTextField(
                controller: controller,
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            ElevatedButton(
              onPressed: () => context
                  .read<SearchSynonymBloc>()
                  .add(SearchSynonymPressed(text: controller.text)),
              child: Text("Поиск"),
            ),
            SizedBox(
              height: 12.0,
            ),
            BlocBuilder<SearchSynonymBloc, SearchSynonymState>(
              builder: (context, state) {
                if (state is SearchSynonymLoaded) {
                  return Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) =>
                          WordItem(word: state.synonyms.synonyms![index]),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 12.0),
                      itemCount: state.synonyms.synonyms!.length,
                    ),
                  );
                } else if (state is SearchSynonymLoading) {
                  return CupertinoActivityIndicator();
                }
                return Container(
                  height: 0.0,
                  width: 0.0,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
