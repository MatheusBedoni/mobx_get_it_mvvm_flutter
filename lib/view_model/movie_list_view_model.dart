import 'package:mvvm_flutter/data/services/s_api.dart';
import 'package:mobx/mobx.dart';

import 'movie_view_model.dart';
part 'movie_list_view_model.g.dart';

class MovieListViewModel = _MovieListViewModel with _$MovieListViewModel;

abstract  class _MovieListViewModel  with Store {
  @observable
  List<PokemonViewModel> movies = [];

  @action
  Future<void> fetchPokemon() async {
    final results =  await Webservice().fetchPokemon();
    this.movies = results.map((item) => PokemonViewModel(pokemon: item)).toList();
    print(this.movies.length);
  }

}