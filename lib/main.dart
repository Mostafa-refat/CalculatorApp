import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: CalcApp(),
    );
  }
}

class CalcApp extends StatefulWidget {
  @override
  _CalcAppState createState() => _CalcAppState();
}

class _CalcAppState extends State<CalcApp> {
  double firstNumber;
  double secondNumber;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Calculation App",
            style: TextStyle(
              color: Color(0xff878787),
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white30),
                      ),
                      hintText: "First Number",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 15),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white30),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        firstNumber = double.parse(value);
                      });
                    },
                  ),
                ),
                SizedBox(width: 25),
                Expanded(
                  flex: 2,
                  child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white30),
                        ),
                        hintText: "Second Number",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white30),
                        ),
                      ),
                      onChanged: (value) {
                        secondNumber = double.parse(value);
                      }),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      result = firstNumber + secondNumber;
                    });
                  },
                  color: Colors.black54,
                  child: Icon(Icons.add),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      result = firstNumber - secondNumber;
                    });
                  },
                  color: Colors.black54,
                  child: Icon(Icons.remove),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      result = firstNumber * secondNumber;
                    });
                  },
                  color: Colors.black54,
                  child: Icon(Icons.close),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      result = firstNumber / secondNumber;
                    });
                  },
                  color: Colors.black54,
                  child: Text(
                    '/',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                'Result = $result',
                style: TextStyle(color: Colors.grey, fontSize: 25),
              ),
            )
          ],
        ));
  }
}
