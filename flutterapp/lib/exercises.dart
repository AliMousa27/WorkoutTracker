import 'package:flutter/material.dart';

class Exercises extends StatelessWidget {
  const Exercises({super.key});

  @override
  Widget build(BuildContext context) {
    //media query for text positoning
    bool isMobile = MediaQuery.of(context).size.width < 400;
    //defining a the xercise text
    const TextStyle textStyle = TextStyle(
      fontSize: 30,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
    const Widget exerciseListText = Text('Exercise List', style: textStyle);
    //if is mobile center otherwise add padding
    final Widget exerciseText = isMobile
        ? const Expanded(child: Center(child: exerciseListText))
        : const Padding(
            padding: EdgeInsets.only(left: 80), child: exerciseListText);

    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 200,
              height: 50,
            ),
            Row(
              children: [exerciseText],
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: SizedBox(
                //60% of screen width
                width: MediaQuery.of(context).size.width * 0.8,
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 141, 141, 141),
                        blurRadius: 20.0,
                        spreadRadius: -10,
                        offset: Offset(0.0, 15.0),
                      )
                    ],
                  ),
                  child: TextField(
                    // TODO ADD CONTROLLER FOR SEARCHING
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        icon: const Icon(Icons.more_vert),
                        onPressed: () {
                          // TODO handle drop down menu here
                        },
                      ),
                      fillColor: Colors.grey[300],
                      filled: true,
                      hintText: 'Search...',
                      prefixIcon: IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {
                          // TODO Perform the search here
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
