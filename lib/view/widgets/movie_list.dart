
import 'package:flutter/material.dart';
import 'package:mvvm_flutter/view/widgets/w_pokemon.dart';
import 'package:mvvm_flutter/view_model/movie_view_model.dart';



class PokemonList extends StatelessWidget {

  final List<PokemonViewModel> pokemon;

  PokemonList({this.pokemon});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.pokemon.length,
      itemBuilder: (context, index) {
        
        final pokemon = this.pokemon[index];

        return WPokemon(pokemonViewModel: pokemon,);
      },
    );
  }
}