import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //List<bool> select = [false, false, false, false, false];
  bool col = false, col1 = false, col2 = false, col3 = false, col4 = false;
  int a = 0, b = 0;
  void increment() {
    setState(() {
      if (a == 20) {
      } else {
        a++;
        col = true;
      }
    });
  }

  void decrement() {
    setState(() {
      if (a == 0) {
      } else if (a == 1) {
        col = false;
        a--;
      } else {
        a--;
      }
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 40, 40, 92),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 25, left: 25),
          child: Column(
            children: [
              Container(
                height: 100,
                width: 400,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: 'Preparing your basket\n',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    TextSpan(
                        text: '\nCostumise ',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    TextSpan(
                        text: 'select how you wish to do\nyour laundry',
                        style: TextStyle(fontSize: 15, color: Colors.white))
                  ])),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white, width: 1.5),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: col ? Colors.white : Colors.transparent,
                    elevation: 0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Regular Wash',
                          style: TextStyle(
                              color: col ? Colors.black : Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ConstrainedBox(
                              constraints: BoxConstraints.tightFor(
                                  height: 25, width: 25),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary:
                                        Color.fromARGB(255, 239, 234, 234)),
                                onPressed: decrement,
                                child: Icon(
                                  Icons.remove,
                                  size: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Text(
                              '$a',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            ConstrainedBox(
                              constraints: BoxConstraints.tightFor(
                                  height: 25, width: 25),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary:
                                        Color.fromARGB(255, 239, 234, 234)),
                                onPressed: increment,
                                child: Icon(
                                  Icons.add,
                                  size: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: col
                              ? Color.fromARGB(255, 152, 228, 94)
                              : Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      col = !col;

                      if (col) {
                        a = 1;
                      } else {
                        a = 0;
                      }
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 1.5),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: col1 ? Colors.white : Colors.transparent,
                      elevation: 0,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Regular Wash + Ironing',
                        style: TextStyle(
                            color: col1 ? Colors.black : Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        col1 = !col1;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 1.5),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: col2 ? Colors.white : Colors.transparent,
                      elevation: 0,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Wash and Press',
                        style: TextStyle(
                            color: col2 ? Colors.black : Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        col2 = !col2;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 1.5),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '\t\tDry cleaning',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 1.5),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '\t\tJust Ironing',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
