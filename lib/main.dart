import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  get child => null;


  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor){
    return Container(
      child: RaisedButton(
        onPressed: (){
          //TODO add function for button press
        },
        child: Text(btntxt,
          style: TextStyle(
            fontSize: 35,
            color: txtcolor,
          ),
        ),
        shape: CircleBorder(),
        color: btncolor,
        padding: EdgeInsets.all(20),
      ),
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Calculator'), backgroundColor: Colors.black,),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //Calculator display
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(padding: EdgeInsets.all(10.0),
                  child: Text('0',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white,
                      fontSize: 100
                    ),
                  ),
                ),
              ],
            ),

                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //here buttons function will be called where we will pass some arguements
                  calcbutton('AC', Colors.grey, Colors.black),
                  calcbutton('+/-', Colors.grey, Colors.black),
                  calcbutton('%', Colors.grey, Colors.black),
                  calcbutton('/', Colors.amber.shade700, Colors.white),
                ],
              ),
              SizedBox(height: 10),
        //now we will copy above row code and many more rows
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //here buttons function will be called where we will pass some arguements
                  calcbutton('7', Colors.grey.shade800, Colors.black),
                  calcbutton('8', Colors.grey.shade800, Colors.black),
                  calcbutton('9', Colors.grey.shade800, Colors.black),
                  calcbutton('x', Colors.amber.shade700, Colors.white),
                ],
              ),
              SizedBox(height: 10),
        //same as above we will make more rows in a similar way
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //here buttons function will be called where we will pass some arguements
                  calcbutton('4', Colors.grey.shade800, Colors.black),
                  calcbutton('5', Colors.grey.shade800, Colors.black),
                  calcbutton('6', Colors.grey.shade800, Colors.black),
                  calcbutton('-', Colors.amber.shade700, Colors.white),
                ],
              ),
              SizedBox(height: 10),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //here buttons function will be called where we will pass some arguements
                  calcbutton('1', Colors.grey.shade800, Colors.black),
                  calcbutton('2', Colors.grey.shade800, Colors.black),
                  calcbutton('3', Colors.grey.shade800, Colors.black),
                  calcbutton('+', Colors.amber.shade700, Colors.white),
                ],
              ),
              SizedBox(height: 10),
              //now last row is different as it has 0 button
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //this is button 0
                  // ignore: deprecated_member_use
                  RaisedButton(
                     padding: EdgeInsets.fromLTRB(34, 20, 128, 20),
                     onPressed: (){
                      //button function
                    },
                    shape: StadiumBorder(),
                    child: Text("0",
                    style: TextStyle(
                    fontSize: 35,
                    color: Colors.white
                     ),
                    ),
                      ),
                      calcbutton('.', Colors.grey.shade800, Colors.white),
                      calcbutton('=', Colors.grey.shade700, Colors.white),
                    ],
                  ),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              );
            }
}