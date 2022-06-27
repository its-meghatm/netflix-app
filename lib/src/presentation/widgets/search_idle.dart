import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/src/application/search/search_bloc.dart';
import 'package:netflix/src/presentation/widgets/tittle.dart';
import 'package:netflix/src/presentation/widgets/top_search.dart';
import 'package:netflix/src/utils/constants.dart';

import '../../utils/utils.dart';

class SearchIdle extends StatelessWidget {
  const SearchIdle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tittle(
          tittle: 'Top Searches',
        ),
        kHeight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return Center(child: CircularProgressIndicator());
              } else if (state.isError) {
                return Center(child: Text("Error occured"));
              } else if (state.idleList.isEmpty) {
                return Center(child: Text("no data found"));
              }
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final movie = state.idleList[index];
                    return TopSearchItems(
                      title: movie.title ?? 'No title ',
                      imaUrl: '$imageAppendUrl${movie.posterPath}',
                    );
                  },
                  separatorBuilder: (context, index) => kHeight5,
                  itemCount: state.idleList.length);
            },
          ),
        )
      ],
    );
  }
}
