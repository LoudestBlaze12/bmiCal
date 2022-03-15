import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_card.dart';
import 'icon_content.dart';
import 'constants.dart';




enum Gender {
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

 Color maleCardColour = kInactivateCardColor;
 Color femaleCardColour = kInactivateCardColor;

 void updateCard (Gender selectedGender) {
   if (selectedGender == Gender.male) {
     //when the male button was selected
     if (maleCardColour == kActivateCardColor) {
       maleCardColour = kInactivateCardColor;

     } else {
       // When the Male button was unselected
       maleCardColour = kActivateCardColor;
       femaleCardColour = kInactivateCardColor;
     }
   }
   else  {
     //Female button was selected
     if (femaleCardColour == kActivateCardColor) {
       femaleCardColour = kInactivateCardColor;

     } else {
       //When the Female button is not selected
       femaleCardColour = kActivateCardColor;
       maleCardColour = kInactivateCardColor;
     }
   }
   //(gender == 2)

 }

  int height = 180;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  child: GestureCard(
                    childWidget: IconWidget(genderIcon: FaIcon(FontAwesomeIcons.male),genderName: "MALE",),
                    cardColorVar: maleCardColour,
                    state: (){
                      setState(() {
                        updateCard(Gender.male);
                      });
                    }
                  )
                ),

                //Female Gender Card
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: GestureCard(
                      childWidget: IconWidget(genderIcon: FaIcon(FontAwesomeIcons.female),genderName: "FEMALE",),
                      cardColorVar: femaleCardColour,
                      state: (){
                        setState(() {
                          updateCard(Gender.female);
                        });
                      }
                  )
                ),

              ],
            ),
          ),
          Expanded(
            child: GestureCard(
              cardColorVar: kReusableCardColor,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Height Label
                  Text("Height",
                  style: kLabelTextStyle,),

                  //Height Display Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text("$height",
                      style: kNumberTextStyle ,
                      ),
                      Text("cm",
                        style: kLabelTextStyle,
                      ),

                    ],
                  ),

                 SliderTheme(
                   data: SliderTheme.of(context).copyWith(
                     inactiveTrackColor: Color(0xFF8D8E98),
                     overlayColor: Color(0x1AF1F1F1),
                     activeTrackColor: Colors.white,
                     thumbColor: Color(0xFFEB1555),
                     trackHeight: 1.5,
                     thumbShape: RoundSliderThumbShape(
                       enabledThumbRadius: 10.0,
                     ),
                     overlayShape: RoundSliderOverlayShape(
                       overlayRadius: 20.0,
                     )
                   ),
                   child: Slider(
                     value: height.toDouble(),
                     min: 120.0,
                     max: 220.0,
                     onChanged: (double newValue) {
                       setState(() {
                         height = newValue.toInt();
                         print(height);
                       });
                     },
                   ),
                 ),
                ],
              ),
            )
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
                    colour: kReusableCardColor,
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
                    colour: kReusableCardColor,
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
            height: kBottomContainerHeight,
          ),
        ],
      ),
    );
  }
}




