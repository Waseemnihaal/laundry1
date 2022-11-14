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
  List<bool> select = [false, false, false, false, false];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 40, 40, 92),
        body: Padding(
          padding: const EdgeInsets.only(right: 25, left: 25),
          child: Column(
            children: [
              Container(
                height: 200,
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
              ToggleButtons(
                fillColor: Colors.white,
                direction: Axis.vertical,
                borderRadius: BorderRadius.circular(10),
                children: [
                  Container(
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
                        '\t\tRegular Wash',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
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
                          '\t\tRegular Wash + Ironing',
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
                          '\t\tWash and Press',
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
                isSelected: select,
                onPressed: (int newindex) {
                  setState(() {
                    for (int index = 0; index < select.length; index++) {
                      if (index == newindex) {
                        select[index] = !select[index];
                      } else {
                        select[index] = false;
                      }
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
