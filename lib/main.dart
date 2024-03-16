import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Basketballapp());
}

class Basketballapp extends StatefulWidget {
  Basketballapp({super.key});

  @override
  State<Basketballapp> createState() => _BasketballappState();
}

class _BasketballappState extends State<Basketballapp> {
  int teama = 0;

  int teamb = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: Text(
                'points counter',
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
            body: Column(
              children: [
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(children: [
                      Text('Team A', style: TextStyle(fontSize: 40)),
                      Text('$teama', style: TextStyle(fontSize: 150)),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teama++;
                            });
                          },
                          child: Text('Add 1 point ',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(60, 50),
                          )),
                      SizedBox(height: 12),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teama += 2;
                            });
                          },
                          child: Text('Add 2 points',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(60, 50),
                          )),
                      SizedBox(height: 12),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teama += 3;
                            });
                          },
                          child: Text('Add 3 points',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(60, 50),
                          )),
                    ]),
                    SizedBox(
                      height: 370,
                      child: VerticalDivider(
                        thickness: 1,
                      ),
                    ),
                    Column(children: [
                      Text('Team B', style: TextStyle(fontSize: 40)),
                      Text('$teamb', style: TextStyle(fontSize: 150)),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamb++;
                            });
                          },
                          child: Text('Add 1 point ',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(60, 50),
                          )),
                      SizedBox(height: 12),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamb += 2;
                            });
                          },
                          child: Text('Add 2 points',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(60, 50),
                          )),
                      SizedBox(height: 12),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamb += 3;
                            });
                          },
                          child: Text('Add 3 points',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(60, 50),
                          )),
                    ]),
                  ],
                ),
                SizedBox(height: 90),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teama = 0;
                        teamb = 0;
                      });
                    },
                    child: Text('    restart    ',
                        style: TextStyle(fontSize: 22, color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(70, 50),
                    )),
              ],
            )));
  }
}
