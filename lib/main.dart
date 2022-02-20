// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: prefer_final_fields
  var _drinks = [
    'White Russian',
    'Bellini',
    'Champagne Cocktail',
    'Irish Coffee',
    'Bamboo',
    'Gin Gin Mule',
    'Long Island Ice Tea',
    'Vesper Martini',
    'Caipirinha',
    'Tom Collins',
  ];

  // ignore: prefer_final_fields
  var _recipeDrinks = [
    'Famoso drink com creme de leite, vodka, gelo e licor de café.',
    'Bebida a base de purê de pêssego e prosecco criada por Giuseppe Cipriani.',
    'O Coquetel Champanhe ou Godmother é um drink feito a base de conhaque, bitter e champanhe.',
    'O drink é preparado com creme gelado, café quente adocicado e uísque escocês.',
    'O Bamboo é feito com o tradicional e milenar Xerez, Vermute seco, bitter Angostura e bitter de laranja.',
    'Gin. Moscow Mule e Mojito, é isso que é o Gin Gin Mule.',
    'Eles são a base para o Long Island Ice Tea. Vodka, Gim, Rum, Tequila, acrescente Triple Sec Orange, Coca cola, Suco de lima da Pérsia e gelo e seu drink está pronto.',
    'O drink apareceu pela primeira vez no romance Casino Royale. Bond quis misturar o seu preferido Vodka Martini com o Martini Original (feito de gim). Nasceu assim o Vesper, nome também da primeira Bond Girl.',
    'Este drink dispensa apresentações. Cachaça, limão, açúcar e gelo.',
    'Os ingredientes tradicionais são: Gim, Suco de limão e Refrigerante de limão.',
  ];

  // ignore: prefer_final_fields
  var _imageDrinks = [
    'images/white_russian.png',
    'images/bellini.png',
    'images/vhampagne_cocktail.png',
    'images/irish_coffee.png',
    'images/bamboo.png',
    'images/gin_gin_mule.png',
    'images/long_island_ice_tea.png',
    'images/vesper_martini.png',
    'images/caipirinha.png',
    'images/tom_collins.png',
  ];

  var _titleDrink = 'Escolha o drink do dia!';
  var _textRecipeDrinks = '';
  var _pathImageDrinks = 'images/drinks.png';

  void gerarDrink() {
    var sortNumber = Random().nextInt(_drinks.length);

    setState(() {
      _titleDrink = _drinks[sortNumber];
      _textRecipeDrinks = _recipeDrinks[sortNumber];
      _pathImageDrinks = _imageDrinks[sortNumber];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drinks do dia'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(4),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: Colors.amberAccent,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              _pathImageDrinks,
              fit: BoxFit.fill,
            ),
            Text(
              _titleDrink,
              style: TextStyle(
                fontSize: 22,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
            ),
            Text(
              _textRecipeDrinks,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.deepOrange,
              ),
              textAlign: TextAlign.justify,
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text(
                '+ Drink',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Colors.amber,
              onPressed: () {
                gerarDrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}


// Fonte: https://guiaestilomasculino.com/50-drinks-famosos-mais-populares-do-mundo/