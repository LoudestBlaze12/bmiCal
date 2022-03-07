import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_card.dart';
import 'icon_content.dart';


const bottomContainerHeight = 80.0;
const  Color reusableCardColor = Color(0xFF1D1E33);
const Color inactivateCardColor = Color(0xFF111328);
const Color activateCardColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

 Color maleCardColour = inactivateCardColor;
 Color femaleCardColour = inactivateCardColor;



  @override
  Widget build(BuildContext context) {


    void updateCard (int gender) {
      if (gender == 1) {

        if (maleCardColour == inactivateCardColor) {
          // print("Happy Feet");
          maleCardColour = activateCardColor;
          femaleCardColour = inactivateCardColor;
        } else {
          maleCardColour = inactivateCardColor;
          femaleCardColour = activateCardColor;
        }
      }
      if (gender == 2) {
        if (femaleCardColour == inactivateCardColor) {
          print("I like to move it");

          femaleCardColour = activateCardColor;
          maleCardColour = inactivateCardColor;
        } else {
          femaleCardColour = inactivateCardColor;
        }
      }


    }


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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                      updateCard(1);
                      });
                    },
                    child: ReuseableCard(
                      childCard: IconWidget(genderName: "MALE",genderIcon: FaIcon(FontAwesomeIcons.male),),
                      colour: reusableCardColor,
                    ),
                  ),
                ),
                //Female Gender Card
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateCard(2);
                      });
                    },
                    child: ReuseableCard(
                      childCard: IconWidget(genderIcon: FaIcon(FontAwesomeIcons.female),genderName: "FEMALE",),
                      colour: reusableCardColor,
                    ),
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




