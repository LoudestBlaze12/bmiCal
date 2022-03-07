import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconWidget extends StatelessWidget {

  IconWidget({@required this.genderName, @required this.genderIcon});

  final String genderName;

  final FaIcon genderIcon;

  // = FaIcon(FontAwesomeIcons.female)

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
              icon: genderIcon,
              iconSize: 70.0,
              onPressed: () { print("Pressed"); }
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(genderName,
            style: TextStyle(
                color: Color(0XFF8D8E98)
            ),)
        ],
      ),
    );
  }

}