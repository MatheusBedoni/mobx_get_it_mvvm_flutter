import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'view/screen/movie_list_page.dart';
import 'view_model/movie_list_view_model.dart';

void main() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton<MovieListViewModel>(MovieListViewModel());
  runApp(App());
}


class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Movies",
        debugShowCheckedModeBanner: false,
        home:
        MovieListPage()
    );
  }

}