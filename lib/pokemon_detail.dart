import 'package:flutter/material.dart';
import 'package:flutter_pokedex/model/pokedex.dart';

class PokemonDetail extends StatelessWidget {
  Pokemon pokemon;
  PokemonDetail({this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          pokemon.name,
          textAlign: TextAlign.center,
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            height: MediaQuery.of(context).size.height * (2 / 3),
            width: MediaQuery.of(context).size.width - 20,
            left: 10,
            top: MediaQuery.of(context).size.height * 0.1,
            child: Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14)
              ),
              child: Text(pokemon.name),
            ),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: Hero(
                tag: pokemon.img,
                child: Container(
                  width: 200,
                  height: 200,
                  child: FadeInImage.assetNetwork(placeholder: "assets/loading.gif", image: pokemon.img, fit: BoxFit.cover,)
                )),
          )
        ],
      ),
    );
  }
}
