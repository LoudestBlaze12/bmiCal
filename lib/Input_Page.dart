import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const  Color reusableCardColor = Color(0xFF1D1E33);


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body:
      Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                //Male Gender Card
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: ReuseableCard(
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      IconButton(
                        // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                          icon: FaIcon(FontAwesomeIcons.male),
                          iconSize: 70.0,
                          onPressed: () { print("Pressed"); }
                          ),
                        Text("Male")
                      ],
                    ),
                    colour: reusableCardColor,
                  ),
                ),
                //Female Gender Card
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: ReuseableCard(
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                            icon: FaIcon(FontAwesomeIcons.female),
                            iconSize: 70.0,
                            onPressed: () { print("Pressed"); }
                        ),
                        Text("Female")
                      ],
                    ),
                    colour: reusableCardColor,
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(colour: reusableCardColor,),
          ),
          Expanded(
            child: Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: ReuseableCard(
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      ],
                    ),
                    colour: reusableCardColor,
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: ReuseableCard(
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      ],
                    ),
                    colour: reusableCardColor,
                  ),
                ),

              ],  
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFEB1555),
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}


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
