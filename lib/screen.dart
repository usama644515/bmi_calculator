import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'enum_file.dart';
import 'result.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Gender selectedCard = Gender.both;
  int sliderValue = 50;
  int age = 20;
  int weight = 50;
  int mul = 10000;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCard = Gender.male;
                    });
                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.mars,
                            color: Colors.white, size: 80.0),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('MALE',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: selectedCard == Gender.male
                          ? Colors.black
                          : Colors.blue,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedCard = Gender.female;
                  });
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.venus,
                          color: Colors.white, size: 80.0),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('FEMALE',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: selectedCard == Gender.female
                        ? Colors.black
                        : Colors.blue,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              )),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            sliderValue.toString(),
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text('cm',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              )),
                        ],
                      ),
                      Slider(
                          value: sliderValue.toDouble(),
                          min: 9,
                          max: 270,
                          activeColor: Colors.black,
                          inactiveColor: Colors.grey,
                          onChanged: (value) {
                            setState(() {
                              sliderValue = value.toInt();
                            });
                          })
                    ],
                  ),
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '$weight',
                        style: TextStyle(
                            fontSize: 50.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                weight++;
                              });
                            },
                            child: CircleAvatar(
                              radius: 20.0,
                              backgroundColor: Colors.white,
                              child: Icon(FontAwesomeIcons.plus),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                weight--;
                              });
                            },
                            child: CircleAvatar(
                              radius: 20.0,
                              backgroundColor: Colors.white,
                              child: Icon(FontAwesomeIcons.minus),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'AGE',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$age',
                      style: TextStyle(
                          fontSize: 50.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              age++;
                            });
                          },
                          child: CircleAvatar(
                            radius: 20.0,
                            backgroundColor: Colors.white,
                            child: Icon(FontAwesomeIcons.plus),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              age--;
                            });
                          },
                          child: CircleAvatar(
                            radius: 20.0,
                            backgroundColor: Colors.white,
                            child: Icon(FontAwesomeIcons.minus),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20.0),
                ),
              )),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Result(
                            weight: weight,
                            height: sliderValue,
                            multi: mul
                            )),
                  );
                },
                child: Container(
                  child: Center(
                      child: Text(
                    'Calculate',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  )),
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
