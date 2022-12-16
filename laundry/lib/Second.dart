import 'package:flutter/material.dart';
import 'main.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  bool col = false, col1 = false, col2 = false, col3 = false, col4 = false;
  //int a = 0, b = 0, c = 0, d = 0, e = 0;
  var itemcount = {'rw': 0, 'rwi': 0, 'wp': 0, 'dc': 0, 'ji': 0};

  void increment(key) {
    setState(() {
      if (itemcount[key] == 500) {
      } else {
        itemcount[key] = itemcount[key]! + 1;
        if (key == 'rw') {
          col = true;
        } else if (key == 'rwi') {
          col1 = true;
        } else if (key == 'wp') {
          col2 = true;
        } else if (key == 'dc') {
          col3 = true;
        } else if (key == 'ji') {
          col4 = true;
        }
      }
    });
  }

  void decrement(key) {
    setState(() {
      if (itemcount[key] == 0) {
      } else if (itemcount[key] == 1) {
        if (key == 'rw') {
          col = false;
        } else if (key == 'rwi') {
          col1 = false;
        } else if (key == 'wp') {
          col2 = false;
        } else if (key == 'dc') {
          col3 = false;
        } else if (key == 'ji') {
          col4 = false;
        }
        itemcount[key] = itemcount[key]! - 1;
      } else {
        itemcount[key] = itemcount[key]! - 1;
      }
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 27, 27, 36),
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
                        text: '\nBook your Delivery service, ',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    TextSpan(
                        text:
                            'select your conveniemts time and address for\npick-up and drop',
                        style: TextStyle(fontSize: 15, color: Colors.white))
                  ])),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white, width: 1.5),
                ),
                child: ExpansionTile(
                  title: Text(
                    'Select Pickup Address',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 152, 228, 94),
                        ),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            'Add new address',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 1.5),
                  ),
                  child: ExpansionTile(
                    title: Text(
                      'Select Time-slot',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 70, right: 70),
                              child: Stack(children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      Icons.arrow_left,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Feb 2022',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.arrow_right,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ConstrainedBox(
                                      constraints: BoxConstraints.tightFor(
                                          height: 30, width: 30),
                                      child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15))),
                                        child: Text(''),
                                        onPressed: () {},
                                      ),
                                    ),
                                    ConstrainedBox(
                                      constraints: BoxConstraints.tightFor(
                                          height: 30, width: 80),
                                      child: OutlinedButton(
                                        child: Text(''),
                                        onPressed: () {},
                                      ),
                                    ),
                                    ConstrainedBox(
                                      constraints: BoxConstraints.tightFor(
                                          height: 30, width: 30),
                                      child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15))),
                                        child: Text(''),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: col
                                                ? Color.fromARGB(
                                                    255, 152, 228, 94)
                                                : Colors.transparent,
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(13))),
                                        onPressed: () {
                                          setState(() {
                                            col = !col;
                                          });
                                        },
                                        child: Text(
                                          '',
                                        )),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: col
                                                ? Color.fromARGB(
                                                    255, 152, 228, 94)
                                                : Colors.transparent,
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(13))),
                                        onPressed: () {
                                          setState(() {
                                            col = !col;
                                          });
                                        },
                                        child: Text('')),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: col
                                                ? Color.fromARGB(
                                                    255, 152, 228, 94)
                                                : Colors.transparent,
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(13))),
                                        onPressed: () {
                                          setState(() {
                                            col = !col;
                                          });
                                        },
                                        child: Text('')),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: col
                                                ? Color.fromARGB(
                                                    255, 152, 228, 94)
                                                : Colors.transparent,
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(13))),
                                        onPressed: () {
                                          setState(() {
                                            col = !col;
                                          });
                                        },
                                        child: Text('')),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: col
                                                ? Color.fromARGB(
                                                    255, 152, 228, 94)
                                                : Colors.transparent,
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(13))),
                                        onPressed: () {
                                          setState(() {
                                            col = !col;
                                          });
                                        },
                                        child: Text('')),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: col
                                                ? Color.fromARGB(
                                                    255, 152, 228, 94)
                                                : Colors.transparent,
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(13))),
                                        onPressed: () {
                                          setState(() {
                                            col = !col;
                                          });
                                        },
                                        child: Text('')),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: col
                                                ? Color.fromARGB(
                                                    255, 152, 228, 94)
                                                : Colors.transparent,
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(13))),
                                        onPressed: () {
                                          setState(() {
                                            col = !col;
                                          });
                                        },
                                        child: Text('')),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 1.5),
                  ),
                  child: ExpansionTile(
                    title: Text(
                      'Select drop Address',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 152, 228, 94),
                          ),
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              'Add new address',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 30,
                    width: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('1',
                            style: TextStyle(
                              color: Color.fromARGB(255, 109, 104, 104),
                            )),
                        Text(
                          '2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                        Text('3',
                            style: TextStyle(
                              color: Color.fromARGB(255, 109, 104, 104),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 152, 228, 94),
                  ),
                  child: OutlinedButton(
                    onPressed: () {
                      // Navigator.pop(context);
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
