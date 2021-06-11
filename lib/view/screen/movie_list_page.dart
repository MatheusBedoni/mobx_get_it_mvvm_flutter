
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mvvm_flutter/view/widgets/movie_list.dart';
import 'package:mvvm_flutter/view_model/movie_list_view_model.dart';
import 'package:mvvm_flutter/view_model/movie_view_model.dart';



class MovieListPage extends StatefulWidget {
  @override 
  _MovieListPageState createState() => _MovieListPageState(); 
}

class _MovieListPageState extends State<MovieListPage> {

  final pokemonObj = GetIt.I.get<MovieListViewModel>();
  @override
  void initState() {
    super.initState();
    pokemonObj.fetchPokemon();
  }

  @override
  Widget build(BuildContext context) {
    final pokemonObj = GetIt.I.get<MovieListViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies")
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(children: <Widget>[

          Expanded(
            child:Observer(builder: (_) {
              return PokemonList(pokemon:pokemonObj.movies);
           },))
        ])
      )
   
    );
  }
}