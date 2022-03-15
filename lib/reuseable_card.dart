import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReuseableCard extends StatelessWidget {

  ReuseableCard({@ required this.colour, this.childCard});

  final Color colour;
  final Widget childCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}


class GestureCard extends StatelessWidget {

  GestureCard({this.cardColorVar,this.childWidget, this.state});


  Widget childWidget;
  Color cardColorVar;

  Function state;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        state();
      },
      child: ReuseableCard(
        childCard: childWidget,
        colour: cardColorVar,
      ),
    );
  }
}