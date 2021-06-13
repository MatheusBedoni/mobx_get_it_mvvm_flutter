import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_flutter/view_model/movie_view_model.dart';

class WPokemon extends StatelessWidget{
  PokemonViewModel pokemonViewModel;

  WPokemon({this.pokemonViewModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.shade200,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(2, 8), // Shadow position
          ),
        ],
      ),
      width: 50,
      height: 100,
      child: Text(pokemonViewModel.title,textDirection: TextDirection.rtl),
    );
  }

}