

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mvvm_flutter/data/models/pokemon.dart';

import 'package:mvvm_flutter/main.dart';
import 'package:mvvm_flutter/view/widgets/movie_list.dart';
import 'package:mvvm_flutter/view/widgets/w_pokemon.dart';
import 'package:mvvm_flutter/view_model/movie_view_model.dart';

void main() {
  testWidgets('Testar widget que mostra pokemons na lista', (WidgetTester tester) async {
    PokemonViewModel pokemonViewModel = new PokemonViewModel();
    pokemonViewModel.pokemon = new Results();
    pokemonViewModel.pokemon.name = 'Pikachu';
    await tester.pumpWidget(WPokemon(pokemonViewModel: pokemonViewModel,));

    final titleFinder = find.text('Pikachu');


    expect(titleFinder, findsOneWidget);

  });
}
