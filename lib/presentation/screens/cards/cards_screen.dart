
import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  { 'elevation': 0.0, 'description': 'Elevation 0'},
  { 'elevation': 1.0, 'description': 'Elevation 1'},
  { 'elevation': 2.0, 'description': 'Elevation 2'},
  { 'elevation': 3.0, 'description': 'Elevation 3'},
  { 'elevation': 4.0, 'description': 'Elevation 4'},
  
];

class CardsScreen extends StatelessWidget {

  static const String name = "cards";

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen'),
      ),
      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map((card) => _CardType1(
            elevation: card['elevation'],
            label: card['description'],
          )),

          ...cards.map((card) => _CardType2(
            elevation: card['elevation'],
            label: card['description'],
          )),

          ...cards.map((card) => _CardType3(
            elevation: card['elevation'],
            label: card['description'],
          )),

          ...cards.map((card) => _CardType4(
            elevation: card['elevation'],
            label: card['description'],
          )),

          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType1({  required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {
                  // Handle delete action
                },
              )),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(label),
              )
          ],
        ),  
      ),
    );
  }
}

class _CardType2 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType2({  required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
      ),
      elevation: elevation,
      child: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton( 
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {
                  // Handle delete action
                },
              )),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text('$label - outlined'),
              )
          ],
        ),  
      ),
    );
  }
}

class _CardType3 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType3({  required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card( 
      color: Theme.of(context).colorScheme.primaryContainer,
      elevation: elevation,
      child: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {
                  // Handle delete action
                },
              )),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text('$label -  filled'),
              )
          ],
        ),  
      ),
    );
  }
}

class _CardType4 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType4({  required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card( 
      clipBehavior: Clip.hardEdge,
      color: Theme.of(context).colorScheme.primaryContainer,
      elevation: elevation,
      child: Stack(
        children: [
      
          Image.network(
            'https://picsum.photos/seed/picsum/660/350',
            height: 350,
            fit: BoxFit.cover,
          ),
      
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
              ),
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {
                  // Handle delete action
                },
              ),
            )),
        ],
      ),
    );
  }
}