import 'package:flutter/material.dart';
import 'screen2.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Orders',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: OrderPage(),
      ),
    ),
  );
}


class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {

 String doneStatus1 = "Pending";
 String doneStatus2 = "Pending";
 String doneStatus3 = "Pending";
 String doneStatus4 = "Pending";
 String doneStatus5 = "Pending";
 String doneStatus6 = "Pending";
 String doneStatus7 = "Pending";


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
          children: [
            GestureDetector(
              onTap: (){
                if (doneStatus1 == "Accepted"){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return Screen2();
                     },
                    ),
                  );
                }
              },
              child: Card(
                color: Colors.white12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.00, 4.00, 20.00, 0.00),
                          child: Text(
                            'Order #162581-9',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.white60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(18, 6, 0, 0),
                                child: Icon(
                                  Icons.timer,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '$doneStatus1',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]
                        ),
                        Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(6, 6, 0, 0),
                                child: Icon(
                                  Icons.store,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '>2 lbs',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]
                        ),
                        Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 6, 8, 0),
                                child: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '* 8',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 7, 2),
                          child: SizedBox(
                            height: 24,
                            width: 55,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurpleAccent, //background color of button
                                elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder( //to set border radius to button
                                    borderRadius: BorderRadius.circular(17)
                                ),
                              ),
                              onPressed: (){},
                              child: Text(
                                  '2 200',
                                  style: TextStyle(
                                    fontSize: 8.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 3, 14, 0),
                              child: Text(
                                'USA - CA',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(60),
                            child: Image(
                              image: AssetImage('images/meltingbutter.jpg'),
                              width: 150.0,
                              height: 250.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: ElevatedButton(

                                onPressed: () {
                                  setState(() {
                                    doneStatus1 = "Rejected";
                                  });
                                },
                                child: Icon(
                                  Icons.close,
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
                              width: 75.0,
                            ),
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState((){
                                    doneStatus1 = 'Accepted';
                                  });
                                },
                                child:Icon(
                                  Icons.done,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(width: 0.4, color: Colors.white60),
                                  backgroundColor: Colors.deepPurpleAccent,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(2),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                if (doneStatus2 == "Accepted"){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return Screen2();
                    },
                    ),
                  );
                }
              },
              child: Card(
                color: Colors.white12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.00, 4.00, 20.00, 0.00),
                          child: Text(
                            'Order #162581-9',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.white60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(18, 6, 0, 0),
                                child: Icon(
                                  Icons.timer,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '$doneStatus2',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]
                        ),
                        Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(6, 6, 0, 0),
                                child: Icon(
                                  Icons.store,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '>2 lbs',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]
                        ),
                        Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 6, 8, 0),
                                child: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '* 8',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 7, 2),
                          child: SizedBox(
                            height: 24,
                            width: 55,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurpleAccent, //background color of button
                                elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder( //to set border radius to button
                                    borderRadius: BorderRadius.circular(17)
                                ),
                              ),
                              onPressed: (){},
                              child: Text(
                                '2 200',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 3, 14, 0),
                              child: Text(
                                'USA - CA',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(60),
                            child: Image(
                              image: AssetImage('images/meltingbutter.jpg'),
                              width: 150.0,
                              height: 250.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: ElevatedButton(

                                onPressed: () {
                                  setState(() {
                                    doneStatus2 = "Rejected";
                                  });
                                },
                                child: Icon(
                                  Icons.close,
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
                              width: 75.0,
                            ),
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState((){
                                    doneStatus2 = 'Accepted';
                                  });
                                },
                                child:Icon(
                                  Icons.done,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(width: 0.4, color: Colors.white60),
                                  backgroundColor: Colors.deepPurpleAccent,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(2),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                if (doneStatus3 == "Accepted"){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return Screen2();
                    },
                    ),
                  );
                }
              },
              child: Card(
                color: Colors.white12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.00, 4.00, 20.00, 0.00),
                          child: Text(
                            'Order #162581-9',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.white60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(18, 6, 0, 0),
                                child: Icon(
                                  Icons.timer,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '$doneStatus3',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]
                        ),
                        Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(6, 6, 0, 0),
                                child: Icon(
                                  Icons.store,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '>2 lbs',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]
                        ),
                        Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 6, 8, 0),
                                child: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '* 8',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 7, 2),
                          child: SizedBox(
                            height: 24,
                            width: 55,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurpleAccent, //background color of button
                                elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder( //to set border radius to button
                                    borderRadius: BorderRadius.circular(17)
                                ),
                              ),
                              onPressed: (){},
                              child: Text(
                                '2 200',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 3, 14, 0),
                              child: Text(
                                'USA - CA',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(60),
                            child: Image(
                              image: AssetImage('images/meltingbutter.jpg'),
                              width: 150.0,
                              height: 250.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: ElevatedButton(

                                onPressed: () {
                                  setState(() {
                                    doneStatus3 = "Rejected";
                                  });
                                },
                                child: Icon(
                                  Icons.close,
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
                              width: 75.0,
                            ),
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState((){
                                    doneStatus3 = 'Accepted';
                                  });
                                },
                                child:Icon(
                                  Icons.done,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(width: 0.4, color: Colors.white60),
                                  backgroundColor: Colors.deepPurpleAccent,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(2),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                if (doneStatus4 == "Accepted"){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return Screen2();
                    },
                    ),
                  );
                }
              },
              child: Card(
                color: Colors.white12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.00, 4.00, 20.00, 0.00),
                          child: Text(
                            'Order #162581-9',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.white60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(18, 6, 0, 0),
                                child: Icon(
                                  Icons.timer,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '$doneStatus4',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]
                        ),
                        Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(6, 6, 0, 0),
                                child: Icon(
                                  Icons.store,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '>2 lbs',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]
                        ),
                        Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 6, 8, 0),
                                child: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '* 8',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 7, 2),
                          child: SizedBox(
                            height: 24,
                            width: 55,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurpleAccent, //background color of button
                                elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder( //to set border radius to button
                                    borderRadius: BorderRadius.circular(17)
                                ),
                              ),
                              onPressed: (){},
                              child: Text(
                                '2 200',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 3, 14, 0),
                              child: Text(
                                'USA - CA',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(60),
                            child: Image(
                              image: AssetImage('images/meltingbutter.jpg'),
                              width: 150.0,
                              height: 250.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: ElevatedButton(

                                onPressed: () {
                                  setState(() {
                                    doneStatus4 = "Rejected";
                                  });
                                },
                                child: Icon(
                                  Icons.close,
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
                              width: 75.0,
                            ),
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState((){
                                    doneStatus4 = 'Accepted';
                                  });
                                },
                                child:Icon(
                                  Icons.done,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(width: 0.4, color: Colors.white60),
                                  backgroundColor: Colors.deepPurpleAccent,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(2),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                if (doneStatus5 == "Accepted"){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return Screen2();
                    },
                    ),
                  );
                }
              },
              child: Card(
                color: Colors.white12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.00, 4.00, 20.00, 0.00),
                          child: Text(
                            'Order #162581-9',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.white60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(18, 6, 0, 0),
                                child: Icon(
                                  Icons.timer,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '$doneStatus5',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]
                        ),
                        Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(6, 6, 0, 0),
                                child: Icon(
                                  Icons.store,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '>2 lbs',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]
                        ),
                        Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 6, 8, 0),
                                child: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '* 8',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 7, 2),
                          child: SizedBox(
                            height: 24,
                            width: 55,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurpleAccent, //background color of button
                                elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder( //to set border radius to button
                                    borderRadius: BorderRadius.circular(17)
                                ),
                              ),
                              onPressed: (){},
                              child: Text(
                                '2 200',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 3, 14, 0),
                              child: Text(
                                'USA - CA',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(60),
                            child: Image(
                              image: AssetImage('images/meltingbutter.jpg'),
                              width: 150.0,
                              height: 250.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: ElevatedButton(

                                onPressed: () {
                                  setState(() {
                                    doneStatus5 = "Rejected";
                                  });
                                },
                                child: Icon(
                                  Icons.close,
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
                              width: 75.0,
                            ),
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState((){
                                    doneStatus5 = 'Accepted';
                                  });
                                },
                                child:Icon(
                                  Icons.done,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(width: 0.4, color: Colors.white60),
                                  backgroundColor: Colors.deepPurpleAccent,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(2),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                if (doneStatus6 == "Accepted"){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return Screen2();
                    },
                    ),
                  );
                }
              },
              child: Card(
                color: Colors.white12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.00, 4.00, 20.00, 0.00),
                          child: Text(
                            'Order #162581-9',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.white60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(18, 6, 0, 0),
                                child: Icon(
                                  Icons.timer,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '$doneStatus6',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]
                        ),
                        Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(6, 6, 0, 0),
                                child: Icon(
                                  Icons.store,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '>2 lbs',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]
                        ),
                        Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 6, 8, 0),
                                child: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '* 8',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 7, 2),
                          child: SizedBox(
                            height: 24,
                            width: 55,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurpleAccent, //background color of button
                                elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder( //to set border radius to button
                                    borderRadius: BorderRadius.circular(17)
                                ),
                              ),
                              onPressed: (){},
                              child: Text(
                                '2 200',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 3, 14, 0),
                              child: Text(
                                'USA - CA',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(60),
                            child: Image(
                              image: AssetImage('images/meltingbutter.jpg'),
                              width: 150.0,
                              height: 250.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: ElevatedButton(

                                onPressed: () {
                                  setState(() {
                                    doneStatus6 = "Rejected";
                                  });
                                },
                                child: Icon(
                                  Icons.close,
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
                              width: 75.0,
                            ),
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState((){
                                    doneStatus6 = 'Accepted';
                                  });
                                },
                                child:Icon(
                                  Icons.done,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(width: 0.4, color: Colors.white60),
                                  backgroundColor: Colors.deepPurpleAccent,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(2),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                if (doneStatus7 == "Accepted"){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return Screen2();
                    },
                    ),
                  );
                }
              },
              child: Card(
                color: Colors.white12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.00, 4.00, 20.00, 0.00),
                          child: Text(
                            'Order #162581-9',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.white60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(18, 6, 0, 0),
                                child: Icon(
                                  Icons.timer,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '$doneStatus7',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]
                        ),
                        Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(6, 6, 0, 0),
                                child: Icon(
                                  Icons.store,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '>2 lbs',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]
                        ),
                        Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 6, 8, 0),
                                child: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '* 8',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 7, 2),
                          child: SizedBox(
                            height: 24,
                            width: 55,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurpleAccent, //background color of button
                                elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder( //to set border radius to button
                                    borderRadius: BorderRadius.circular(17)
                                ),
                              ),
                              onPressed: (){},
                              child: Text(
                                '2 200',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 3, 14, 0),
                              child: Text(
                                'USA - CA',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(60),
                            child: Image(
                              image: AssetImage('images/meltingbutter.jpg'),
                              width: 150.0,
                              height: 250.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: ElevatedButton(

                                onPressed: () {
                                  setState(() {
                                    doneStatus7 = "Rejected";
                                  });
                                },
                                child: Icon(
                                  Icons.close,
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
                              width: 75.0,
                            ),
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState((){
                                    doneStatus7 = 'Accepted';
                                  });
                                },
                                child:Icon(
                                  Icons.done,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(width: 0.4, color: Colors.white60),
                                  backgroundColor: Colors.deepPurpleAccent,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(2),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}


