import 'package:flutter/material.dart';
import 'package:laundry/Second.dart';

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
      home: Builder(builder: (context) {
        return Scaffold(
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
                          width: 85,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Stack(children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  color: Color.fromARGB(255, 239, 234, 234),
                                  child: Icon(
                                    Icons.remove,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                ConstrainedBox(
                                  constraints: BoxConstraints.tightFor(
                                      height: 25, width: 25),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.transparent,
                                          elevation: 0),
                                      onPressed: (() => decrement('rw')),
                                      child: Text('')),
                                ),
                              ]),
                              Text(
                                '${itemcount['rw']}',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                              Stack(children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  color: Color.fromARGB(255, 239, 234, 234),
                                  child: Icon(
                                    Icons.add,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                ConstrainedBox(
                                  constraints: BoxConstraints.tightFor(
                                      height: 25, width: 25),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.transparent,
                                          elevation: 0),
                                      onPressed: (() => increment('rw')),
                                      child: Text('')),
                                ),
                              ]),
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
                          itemcount['rw'] = 1;
                        } else {
                          itemcount['rw'] = 0;
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Regular Wash + Ironing',
                              style: TextStyle(
                                  color: col1 ? Colors.black : Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 85,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Stack(children: [
                                  Container(
                                    height: 25,
                                    width: 25,
                                    color: Color.fromARGB(255, 239, 234, 234),
                                    child: Icon(
                                      Icons.remove,
                                      size: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  ConstrainedBox(
                                    constraints: BoxConstraints.tightFor(
                                        height: 25, width: 25),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.transparent,
                                            elevation: 0),
                                        onPressed: (() => decrement('rwi')),
                                        child: Text('')),
                                  ),
                                ]),
                                Text(
                                  '${itemcount['rwi']}',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                                Stack(children: [
                                  Container(
                                    height: 25,
                                    width: 25,
                                    color: Color.fromARGB(255, 239, 234, 234),
                                    child: Icon(
                                      Icons.add,
                                      size: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  ConstrainedBox(
                                    constraints: BoxConstraints.tightFor(
                                        height: 25, width: 25),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.transparent,
                                            elevation: 0),
                                        onPressed: (() => increment('rwi')),
                                        child: Text('')),
                                  ),
                                ]),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: col1
                                  ? Color.fromARGB(255, 152, 228, 94)
                                  : Colors.white70,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        setState(() {
                          col1 = !col1;

                          if (col1) {
                            itemcount['rwi'] = 1;
                          } else {
                            itemcount['rwi'] = 0;
                          }
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Wash and Press',
                              style: TextStyle(
                                  color: col2 ? Colors.black : Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 85,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Stack(children: [
                                  Container(
                                    height: 25,
                                    width: 25,
                                    color: Color.fromARGB(255, 239, 234, 234),
                                    child: Icon(
                                      Icons.remove,
                                      size: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  ConstrainedBox(
                                    constraints: BoxConstraints.tightFor(
                                        height: 25, width: 25),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.transparent,
                                            elevation: 0),
                                        onPressed: (() => decrement('wp')),
                                        child: Text('')),
                                  ),
                                ]),
                                Text(
                                  '${itemcount['wp']}',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                                Stack(children: [
                                  Container(
                                    height: 25,
                                    width: 25,
                                    color: Color.fromARGB(255, 239, 234, 234),
                                    child: Icon(
                                      Icons.add,
                                      size: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  ConstrainedBox(
                                    constraints: BoxConstraints.tightFor(
                                        height: 25, width: 25),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.transparent,
                                            elevation: 0),
                                        onPressed: (() => increment('wp')),
                                        child: Text('')),
                                  ),
                                ]),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: col2
                                  ? Color.fromARGB(255, 152, 228, 94)
                                  : Colors.white70,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        setState(() {
                          col2 = !col2;

                          if (col2) {
                            itemcount['wp'] = 1;
                          } else {
                            itemcount['wp'] = 0;
                          }
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
                        primary: col3 ? Colors.white : Colors.transparent,
                        elevation: 0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Dry cleaning',
                              style: TextStyle(
                                  color: col3 ? Colors.black : Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 85,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Stack(children: [
                                  Container(
                                    height: 25,
                                    width: 25,
                                    color: Color.fromARGB(255, 239, 234, 234),
                                    child: Icon(
                                      Icons.remove,
                                      size: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  ConstrainedBox(
                                    constraints: BoxConstraints.tightFor(
                                        height: 25, width: 25),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.transparent,
                                            elevation: 0),
                                        onPressed: (() => decrement('dc')),
                                        child: Text('')),
                                  ),
                                ]),
                                Text(
                                  '${itemcount['dc']}',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                                Stack(children: [
                                  Container(
                                    height: 25,
                                    width: 25,
                                    color: Color.fromARGB(255, 239, 234, 234),
                                    child: Icon(
                                      Icons.add,
                                      size: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  ConstrainedBox(
                                    constraints: BoxConstraints.tightFor(
                                        height: 25, width: 25),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.transparent,
                                            elevation: 0),
                                        onPressed: (() => increment('dc')),
                                        child: Text('')),
                                  ),
                                ]),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: col3
                                  ? Color.fromARGB(255, 152, 228, 94)
                                  : Colors.white70,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        setState(() {
                          col3 = !col3;

                          if (col3) {
                            itemcount['dc'] = 1;
                          } else {
                            itemcount['dc'] = 0;
                          }
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
                        primary: col4 ? Colors.white : Colors.transparent,
                        elevation: 0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Just Ironing',
                              style: TextStyle(
                                  color: col4 ? Colors.black : Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 85,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Stack(children: [
                                  Container(
                                    height: 25,
                                    width: 25,
                                    color: Color.fromARGB(255, 239, 234, 234),
                                    child: Icon(
                                      Icons.remove,
                                      size: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  ConstrainedBox(
                                    constraints: BoxConstraints.tightFor(
                                        height: 25, width: 25),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.transparent,
                                            elevation: 0),
                                        onPressed: (() => decrement('ji')),
                                        child: Text('')),
                                  ),
                                ]),
                                Text(
                                  '${itemcount['ji']}',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                                Stack(children: [
                                  Container(
                                    height: 25,
                                    width: 25,
                                    color: Color.fromARGB(255, 239, 234, 234),
                                    child: Icon(
                                      Icons.add,
                                      size: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  ConstrainedBox(
                                    constraints: BoxConstraints.tightFor(
                                        height: 25, width: 25),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.transparent,
                                            elevation: 0),
                                        onPressed: (() => increment('ji')),
                                        child: Text('')),
                                  ),
                                ]),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: col4
                                  ? Color.fromARGB(255, 152, 228, 94)
                                  : Colors.white70,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        setState(() {
                          col4 = !col4;

                          if (col4) {
                            itemcount['ji'] = 1;
                          } else {
                            itemcount['ji'] = 0;
                          }
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 40),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 30,
                      width: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                          Text('2',
                              style: TextStyle(
                                color: Color.fromARGB(255, 109, 104, 104),
                              )),
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Second()));
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
        );
      }),
    );
  }
}
