import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/widgets.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int bloodox = 0;
  int bloodoxh = 1;
  int bloodpr = 4;
  int bloodprh = 3;
  int bodytemp = 15;
  int bodytemph = 2;
  int heartrate = 7;
  int heartrateh = 4;
  int totalp = 957;

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: mediaQueryHeight * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: mediaQueryHeight * 0.06,
                    width: mediaQueryWidth * 0.9,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      border: Border.all(color: Colors.grey, width: 0.05),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: mediaQueryWidth * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Patients",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17,fontFamily:'Roboto'),
                          ),
                          Text(
                            '$totalp',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold,fontFamily:'Roboto'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: mediaQueryHeight * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: mediaQueryWidth * 0.49,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: mediaQueryWidth*0.1),
                                child: Text(
                                  'Blood Oxygen',
                                  style: TextStyle(fontSize: 16,fontFamily:'Roboto'),
                                ),
                              ),
                              Image.asset('assets/bloodOxy.png',width:mediaQueryWidth*0.1),
                            ],
                          ),
                          SizedBox(height: mediaQueryHeight*0.03,),
                          Text(
                            '$bloodox',
                            style: TextStyle(fontSize: 46, color: Colors.blue,fontFamily:'Roboto'),
                          ),
                          Text(
                            'Patients',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold,fontFamily:'Roboto'),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: mediaQueryHeight * 0.05),
                            child: Text(
                              bloodoxh == 1
                                  ? '$bloodoxh hour ago'
                                  : '$bloodoxh hours ago',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey,fontFamily:'Roboto'),
                            ),
                          ),
                        ],
                      )),
                  DottedLine(
                    lineLength: mediaQueryHeight*0.25,
                    dashColor: Colors.black12,
                    dashLength: 2,
                    lineThickness: 2,
                    dashGapLength: 2,
                    direction: Axis.vertical,
                  ),
                  Container(
                      width: mediaQueryWidth * 0.49,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: mediaQueryWidth*0.1),
                                child: Text(
                                  'Blood Pressure',
                                  style: TextStyle(fontSize: 16,fontFamily:'Roboto'),
                                ),
                              ),
                              Image.asset('assets/whiteblood.png',width:mediaQueryWidth*0.1),
                            ],
                          ),
                          SizedBox(height: mediaQueryHeight*0.03,),
                          Text(
                            '$bloodpr',
                            style: TextStyle(fontSize: 46, color: Colors.blue,fontFamily:'Roboto'),
                          ),
                          Text(
                            'Patients',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold,fontFamily:'Roboto'),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: mediaQueryHeight * 0.05),
                            child: Text(
                              bloodprh == 1
                                  ? '$bloodprh hour ago'
                                  : '$bloodprh hours ago',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey,fontFamily:'Roboto'),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              SizedBox(height: mediaQueryHeight*0.05,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DottedLine(
                    lineLength: mediaQueryWidth*0.35,
                    dashColor: Colors.black12,
                    dashLength: 2,
                    lineThickness: 2,
                    dashGapLength: 2,
                  ),

                  DottedLine(
                    dashColor: Colors.black12,
                    lineLength: mediaQueryWidth*0.35,
                    dashLength: 2,
                    lineThickness: 2,
                    dashGapLength: 2,
                  ),
                ],
              ),
              SizedBox(height: mediaQueryHeight*0.001,),
              SizedBox(
                height: mediaQueryHeight * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: mediaQueryWidth * 0.49,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: mediaQueryWidth*0.03),
                                child: Text(
                                  'Body Temperature',
                                  style: TextStyle(fontSize: 16,fontFamily:'Roboto'),
                                ),
                              ),
                              Image.asset('assets/temp.png',width:mediaQueryWidth*0.1,)
                            ],
                          ),
                          SizedBox(height: mediaQueryHeight*0.03),
                          Text(
                            '$bodytemp',
                            style: TextStyle(fontSize: 46, color: Colors.blue,fontFamily:'Roboto'),
                          ),
                          Text(
                            'Patients',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold,fontFamily:'Roboto'),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: mediaQueryHeight * 0.05),
                            child: Text(
                              bodytemph == 1
                                  ? '$bodytemph hour ago'
                                  : '$bodytemph hours ago',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey,fontFamily:'Roboto'),
                            ),
                          ),
                        ],
                      )),
                  DottedLine(
                    dashColor: Colors.black12,
                    lineLength: mediaQueryHeight*0.25,
                    dashLength: 2,
                    lineThickness: 2,
                    dashGapLength: 2,
                    direction: Axis.vertical,
                  ),
                  Container(
                      width: mediaQueryWidth * 0.49,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:EdgeInsets.only(left:mediaQueryWidth*0.1),
                                child: Text(
                                  'Heart Rate',
                                  style: TextStyle(fontSize: 16,fontFamily:'Roboto'),
                                ),
                              ),
                              Image.asset('assets/heart.png',width: mediaQueryWidth*0.1,),
                            ],
                          ),
                          SizedBox(height:mediaQueryHeight*0.03),
                          Text(
                            '$heartrate',
                            style: TextStyle(fontSize: 46, color: Colors.blue,fontFamily:'Roboto'),
                          ),
                          Text(
                            'Patients',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold,fontFamily:'Roboto'),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: mediaQueryHeight * 0.05),
                            child: Text(
                              heartrateh == 1
                                  ? '$heartrateh hour ago'
                                  : '$heartrateh hours ago',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey,fontFamily:'Roboto'),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
