// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MovieListViewModel on _MovieListViewModel, Store {
  final _$moviesAtom = Atom(name: '_MovieListViewModel.movies');

  @override
  List<PokemonViewModel> get movies {
    _$moviesAtom.reportRead();
    return super.movies;
  }

  @override
  set movies(List<PokemonViewModel> value) {
    _$moviesAtom.reportWrite(value, super.movies, () {
      super.movies = value;
    });
  }

  final _$fetchPokemonAsyncAction =
      AsyncAction('_MovieListViewModel.fetchPokemon');

  @override
  Future<void> fetchPokemon() {
    return _$fetchPokemonAsyncAction.run(() => super.fetchPokemon());
  }

  @override
  String toString() {
    return '''
movies: ${movies}
    ''';
  }
}
