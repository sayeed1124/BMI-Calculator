import 'package:bmi/result_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'enum_file.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedCard = Gender.unselected;
  int sliderValue = 0;
  int weight = 40;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            //fontWeight: FontWeight.bold,
            // fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(children: [
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
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedCard == Gender.male
                              ? Colors.black
                              : Color.fromARGB(255, 236, 234, 234),
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.mars,
                            color: Colors.blue,
                            size: 50,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "MALE",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )
                        ],
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
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: selectedCard == Gender.female
                                ? Colors.black
                                : Color.fromARGB(255, 236, 234, 234),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.venus,
                            color: Colors.pink,
                            size: 50,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "FEMALE",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )
                        ],
                      ),
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
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 236, 234, 234),
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HEIGHT",
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              sliderValue.toString(),
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("cm",
                                style: TextStyle(
                                  fontSize: 18,
                                ))
                          ],
                        ),
                        Slider(
                          value: sliderValue.toDouble(),
                          onChanged: (value) {
                            setState(() {
                              sliderValue = value.toInt();
                            });
                          },
                          min: 0,
                          max: 250,
                          activeColor: Colors.black,
                          inactiveColor: Colors.grey[350],
                        )
                      ],
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
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 236, 234, 234),
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '$weight',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                child: Icon(FontAwesomeIcons.minus),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                child: Icon(FontAwesomeIcons.plus),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '$age',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                child: Icon(FontAwesomeIcons.minus),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                child: Icon(FontAwesomeIcons.plus),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 236, 234, 234),
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(
                () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Result_Widget(
                        weight: weight, height: sliderValue, age: age),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  );
                },
              );
            },
            child: Container(
              height: 60,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "Calculate BMI",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
