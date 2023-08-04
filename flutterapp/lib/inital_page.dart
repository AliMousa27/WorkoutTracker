import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

abstract class InitalPage extends StatelessWidget {
  const InitalPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          //this fixes the pixel overflow
          child: Column(
            children: [
              SizedBox(
                  height: 200, child: constraintsFinder(context, buildWaves)),
              SizedBox(
                height: 400,
                child: Transform.translate(
                    offset: const Offset(0, -20),
                    child: constraintsFinder(context, createContainer)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container createContainer(BuildContext context, BoxConstraints constraints) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          border: Border.all(color: Colors.black)),
      height: constraints.maxHeight / 1.7,
      width: MediaQuery.of(context).size.width / 1.05,
      child: SingleChildScrollView(
        child: addContentToContainer(context),
      ),
    );
  }

//Needs to be overriden toa dd content to the box
  Column addContentToContainer(BuildContext context);

  SizedBox createTextField(
      String text, double heightFactor, IconData icon, bool obscureText) {
    return SizedBox(
      width: 350,
      child: TextFormField(
        textAlign: TextAlign.center,
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          label: Text(text),
          filled: true,
          fillColor: const Color.fromARGB(255, 248, 244, 244),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
      ),
    );
  }

  ClipRRect buildWaves(BuildContext context, BoxConstraints constraints) {
    const backgroundColor = Color.fromARGB(255, 65, 168, 236);
    const colors = [
      Color.fromARGB(255, 81, 197, 250),
      Color.fromARGB(255, 2, 116, 189)
    ];
    const durations = [5000, 4000];
    const heightPercentages = [0.2, 0.4];

    return ClipRRect(
      borderRadius: BorderRadius.circular(10), // Set the desired corner radius
      child: WaveWidget(
        config: CustomConfig(
          colors: colors,
          durations: durations,
          heightPercentages: heightPercentages,
        ),
        backgroundColor: backgroundColor,
        size: Size(double.infinity, constraints.maxHeight / 1.5),
        waveAmplitude: 0,
      ),
    );
  }

  Text textStyler(String text, double fontSize, Color fontColor,
      FontWeight fontWeight, TextAlign allignment) {
    return Text(
      text,
      textAlign: allignment,
      style: TextStyle(
          color: fontColor, fontSize: fontSize, fontWeight: fontWeight),
    );
  }

  LayoutBuilder constraintsFinder(BuildContext context, Function function) {
    return LayoutBuilder(
      builder: (context, constraints) => function(context, constraints),
    );
  }

  SizedBox createStyledButton(
      double btnWidth,
      double btnHeight,
      double btnCornerRadius,
      Function onPress,
      String btnText,
      BuildContext context) {
    return SizedBox(
      height: btnHeight,
      width: btnWidth,
      child: ElevatedButton(
        onPressed: () => onPress(context),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(btnCornerRadius),
            ),
          ),
          // Remove default background, overlay, shadow, etc.
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
          overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
          elevation: MaterialStateProperty.all<double>(0),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(btnCornerRadius),
            gradient: const LinearGradient(
              colors: [
                Colors.blue, // Replace with your desired start color
                Color.fromARGB(
                    255, 91, 203, 255), // Replace with your desired end color
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Center(
            child: Text(btnText),
          ),
        ),
      ),
    );
  }
}
