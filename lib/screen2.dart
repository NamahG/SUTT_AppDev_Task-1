import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

// void main() {
//   return runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         appBar: AppBar(
//           title: Text('Details'),
//           backgroundColor: Colors.white,
//         ),
//         body: Screen2(),
//       ),
//     ),
//   );
// }


class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        titleSpacing: 00.0,
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Details',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            image: AssetImage('images/details.jpg'),
            alignment: Alignment.center,
            height: 500,
            width: 800,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8,0,0,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircularPercentIndicator(
                  radius: 60,
                  lineWidth: 10,
                  backgroundColor: Colors.white10,
                  progressColor: Colors.deepPurpleAccent,
                  percent: 0.47,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '47% ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 37,
                        ),
                      ),
                      Text(
                        'Progress',
                        style: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  animation: true,
                  animationDuration: 2000,
                  backgroundWidth: 1.5,
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: ElevatedButton(

                    onPressed: () {
                    },
                    child: Icon(
                      Icons.flash_on,
                      color: Colors.white,
                      size: 15,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      side: BorderSide(width: 0.4, color: Colors.white60),
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(2),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: ElevatedButton(

                    onPressed: () {
                    },
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 15,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      side: BorderSide(width: 0.4, color: Colors.white60),
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(2),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
