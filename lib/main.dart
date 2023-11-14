// ignore_for_file: avoid_unnecessary_containers

import 'package:antimicrobial/prescribing.dart';
import 'package:antimicrobial/templates.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'BarChartSample4.dart';
import 'LineChartSample7.dart';
import 'constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:overlayment/overlayment.dart';

void main() {
  //runApp(const MyApp());
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override

  // LineChart lineChart =
  //     LineChart.fromDateTimeMaps([line1, line2], [Colors.green, Colors.blue]);

  Widget build(BuildContext context) {
    final key = GlobalKey<NavigatorState>();
    Overlayment.navigationKey = key;
    return MaterialApp(
        navigatorKey: key,
        title: 'Antimicrobial Analytics Platform',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: Scaffold(body: MyHome()));
  }
}

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  var menuBColor = kBlack;
  var menuTColor = kTextGrey;
  var dashBColor = kBrownGrey;
  var dashTColor = kWhite;
  var presBColor = kBlack;
  var presTColor = kTextGrey;
  var resBColor = kBlack;
  var resTColor = kTextGrey;

  Map<DateTime, double> date = {
    DateTime(2021, 07, 01): 25,
    DateTime(2021, 07, 02): 30,
    DateTime(2021, 07, 03): 35,
    DateTime(2021, 07, 04): 40,
    DateTime(2021, 07, 05): 45,
    DateTime(2021, 07, 06): 50
  };

  List<String> items = [
    'Ward',
    'Consultant',
    'Team',
  ];

  String selectedItem = "Ward";

  List<String> items2 = [
    'Amikacin',
    'Amoxicillin',
    'Ceftazidime',
    'Ceftriaxone',
    'Ciprofloxacin',
    'Clindamycin',
    'Co-amoxiclav',
    'Co-trimoxazole',
    'Daptomycin',
    'Ertapenem',
    'Gentamicin',
    'Linezolid',
    'Meropenem',
    'Piperacillin-Tazobactam',
    'Teicoplanin',
    'Temocillin',
    'Tigecycline',
    'Vancomycin',
  ];

  //String selectedItem = "Amikacin";

  int selData = 0;
  bool selValue = false;
  String selPatient = "";
  String selectedPatient = "";
  String sectionTitle = "";
  Widget patientInformation = Container();

  var b1BackColour = kWhite;
  var b1TopText = kBlack;
  var b1BottomText = kBlack;
  var b2BackColour = kGreen;
  var b2TopText = kWhite;
  var b2BottomText = kWhite;
  var b3BackColour = kWhite;
  var b3TopText = kLightGrey;
  var b3BottomText = kBlack;
  var b4BackColour = kWhite;
  var b4TopText = kBlack;
  var b4BottomText = kBlack;
  var b5BackColour = kWhite;
  var b5TopText = kYellow;
  var b5BottomText = kBlack;
  var b6BackColour = kWhite;
  var b6TopText = kBlack;
  var b6BottomText = kBlack;
  var b7BackColour = kWhite;
  var b7TopText = kGreen;
  var b7BottomText = kBlack;
  var b8BackColour = kWhite;
  var b8TopText = kLightGrey;
  var b8BottomText = kBlack;
  var b9BackColour = kWhite;
  var b9TopText = kBlack;
  var b9BottomText = kBlack;

  List<Map<String, dynamic>> data = [
    {
      'mrn': 123456,
      'name': 'Muhammad Khan',
      'location': 'Wandle 2',
      'bed': 'B3',
      'duration': 2
    },
    {
      'mrn': 228751,
      'name': 'Emma White',
      'location': 'AMU',
      'bed': 'C5',
      'duration': 3
    },
    {
      'mrn': 394685,
      'name': 'Isabella Kim',
      'location': 'Edgecombe 2',
      'bed': 'C2',
      'duration': 3
    },
    {
      'mrn': 4711236,
      'name': 'Amir Khan',
      'location': 'Edgecombe 2',
      'bed': 'A1',
      'duration': 2
    },
    {
      'mrn': 506238,
      'name': 'Sam Price',
      'location': 'Fairfield 2',
      'bed': 'B1',
      'duration': 2
    },
    {
      'mrn': 989992,
      'name': 'Olivia Smith',
      'location': 'Purley 1',
      'bed': 'D3',
      'duration': 2
    },
    {
      'mrn': 892645,
      'name': 'Noah Martin',
      'location': 'Purley 3',
      'bed': 'A3',
      'duration': 2
    },
    {
      'mrn': 101658,
      'name': 'Yasmin Ahmed',
      'location': 'Queens 2',
      'bed': 'SR1',
      'duration': 2
    },
  ];

  List<Map<String, dynamic>> data2 = [
    {
      'mrn': 557692,
      'name': 'Alejandro Lopez',
      'location': 'Queens 1',
      'bed': 'SR3',
      'duration': 30
    },
    {
      'mrn': 778351,
      'name': 'Chloe Taylor',
      'location': 'Edgecombe 1',
      'bed': 'C6',
      'duration': 14
    },
    {
      'mrn': 363636,
      'name': 'Sofia Rossi',
      'location': 'Duppas 1',
      'bed': 'A1',
      'duration': 10
    },
    {
      'mrn': 123456,
      'name': 'Muhammad Khan',
      'location': 'Wandle 2',
      'bed': 'B3',
      'duration': 12
    },
    {
      'mrn': 201985,
      'name': 'Liam Wilson',
      'location': 'Duppas 2',
      'bed': 'B3',
      'duration': 15
    },
    {
      'mrn': 236444,
      'name': 'Jacob Brown',
      'location': 'Queens 2',
      'bed': 'C1',
      'duration': 17
    },
  ];

  List<Map<String, dynamic>> data3 = [
    {
      'mrn': 659423,
      'name': 'John Doe',
      'location': 'Fairfield 1',
      'bed': 'D4',
      'duration': 11
    },
    {
      'mrn': 125333,
      'name': 'Jane Smith',
      'location': 'Wandle 3',
      'bed': 'SR3',
      'duration': 15
    },
    {
      'mrn': 754287,
      'name': 'Bob Johnson',
      'location': 'Purley 2',
      'bed': 'A3',
      'duration': 5
    },
    {
      'mrn': 654654,
      'name': 'Peter Khalil',
      'location': 'Queens 2',
      'bed': 'C2',
      'duration': 16
    },
    {
      'mrn': 553662,
      'name': 'Sam Price',
      'location': 'Queens 3',
      'bed': 'SR1',
      'duration': 3
    },
    {
      'mrn': 988721,
      'name': 'Isa Izquierdo',
      'location': 'Fairfield 1',
      'bed': 'B5',
      'duration': 9
    },
    {
      'mrn': 412691,
      'name': 'Olivia Charles',
      'location': 'Reedham',
      'bed': 'C3',
      'duration': 14
    },
    {
      'mrn': 112111,
      'name': 'Imran Qureshi',
      'location': 'Edgecombe 2',
      'bed': 'SR1',
      'duration': 13
    },
  ];

  List<Map<String, dynamic>> data4 = [
    {
      'mrn': 234441,
      'name': 'John Doe',
      'location': 'Duppas 1',
      'bed': 'D3',
      'duration': 13
    },
    {
      'mrn': 235666,
      'name': 'Jane Smith',
      'location': 'AMU',
      'bed': 'D5',
      'duration': 4
    },
    {
      'mrn': 968824,
      'name': 'Bob Johnson',
      'location': 'ITU',
      'bed': '5',
      'duration': 21
    },
    {
      'mrn': 208656,
      'name': 'Peter Khalil',
      'location': 'Purley 1',
      'bed': 'A2',
      'duration': 11
    },
    {
      'mrn': 777821,
      'name': 'Sam Price',
      'location': 'Theatres',
      'bed': '6',
      'duration': 2
    },
    {
      'mrn': 100238,
      'name': 'Isa Izquierdo',
      'location': 'Queens 1',
      'bed': 'C5',
      'duration': 13
    },
    {
      'mrn': 637541,
      'name': 'Olivia Charles',
      'location': 'AMU',
      'bed': 'D2',
      'duration': 6
    },
    {
      'mrn': 323224,
      'name': 'Imran Qureshi',
      'location': 'Edgecombe 1',
      'bed': 'B3',
      'duration': 9
    },
  ];

  List<Map<String, dynamic>> data5 = [
    {'mrn': 1, 'name': 'John Doe', 'location': 30, 'bed': 30, 'duration': 30},
    {'mrn': 2, 'name': 'Jane Smith', 'location': 25, 'bed': 30, 'duration': 30},
    {
      'mrn': 3,
      'name': 'Bob Johnson',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
    {
      'mrn': 4,
      'name': 'Peter Khalil',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
    {'mrn': 5, 'name': 'Sam Price', 'location': 40, 'bed': 30, 'duration': 30},
    {
      'mrn': 6,
      'name': 'Isa Izquierdo',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
    {
      'mrn': 7,
      'name': 'Olivia Charles',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
    {
      'mrn': 8,
      'name': 'Imran Qureshi',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
  ];

  List<Map<String, dynamic>> data6 = [
    {'mrn': 1, 'name': 'John Doe', 'location': 30, 'bed': 30, 'duration': 30},
    {'mrn': 2, 'name': 'Jane Smith', 'location': 25, 'bed': 30, 'duration': 30},
    {
      'mrn': 3,
      'name': 'Bob Johnson',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
    {
      'mrn': 4,
      'name': 'Peter Khalil',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
    {'mrn': 5, 'name': 'Sam Price', 'location': 40, 'bed': 30, 'duration': 30},
    {
      'mrn': 6,
      'name': 'Isa Izquierdo',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
    {
      'mrn': 7,
      'name': 'Olivia Charles',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
    {
      'mrn': 8,
      'name': 'Imran Qureshi',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
  ];

  List<Map<String, dynamic>> data7 = [
    {'mrn': 1, 'name': 'John Doe', 'location': 30, 'bed': 30, 'duration': 30},
    {'mrn': 2, 'name': 'Jane Smith', 'location': 25, 'bed': 30, 'duration': 30},
    {
      'mrn': 3,
      'name': 'Bob Johnson',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
    {
      'mrn': 4,
      'name': 'Peter Khalil',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
    {'mrn': 5, 'name': 'Sam Price', 'location': 40, 'bed': 30, 'duration': 30},
    {
      'mrn': 6,
      'name': 'Isa Izquierdo',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
    {
      'mrn': 7,
      'name': 'Olivia Charles',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
    {
      'mrn': 8,
      'name': 'Imran Qureshi',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
  ];

  List<Map<String, dynamic>> data8 = [
    {'mrn': 1, 'name': 'John Doe', 'location': 30, 'bed': 30, 'duration': 30},
    {'mrn': 2, 'name': 'Jane Smith', 'location': 25, 'bed': 30, 'duration': 30},
    {
      'mrn': 3,
      'name': 'Bob Johnson',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
    {
      'mrn': 4,
      'name': 'Peter Khalil',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
    {'mrn': 5, 'name': 'Sam Price', 'location': 40, 'bed': 30, 'duration': 30},
    {
      'mrn': 6,
      'name': 'Isa Izquierdo',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
    {
      'mrn': 7,
      'name': 'Olivia Charles',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
    {
      'mrn': 8,
      'name': 'Imran Qureshi',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
  ];

  List<Map<String, dynamic>> data9 = [
    {'mrn': 1, 'name': 'John Doe', 'location': 30, 'bed': 30, 'duration': 30},
    {'mrn': 2, 'name': 'Jane Smith', 'location': 25, 'bed': 30, 'duration': 30},
    {
      'mrn': 3,
      'name': 'Bob Johnson',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
    {
      'mrn': 4,
      'name': 'Peter Khalil',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
    {'mrn': 5, 'name': 'Sam Price', 'location': 40, 'bed': 30, 'duration': 30},
    {
      'mrn': 6,
      'name': 'Isa Izquierdo',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
    {
      'mrn': 7,
      'name': 'Olivia Charles',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
    {
      'mrn': 8,
      'name': 'Imran Qureshi',
      'location': 40,
      'bed': 30,
      'duration': 30
    },
  ];

  List<Map<String, dynamic>> data12 = [
    {
      'Antibiotic': "Ceftriaxone",
      'Start Date': '14/05/2023',
      'Duration': 5,
      'Indication': 'Intra-abdominal sepsis',
    },
    {
      'Antibiotic': 'Metronidazole',
      'Start Date': '14/05/2023',
      'Duration': 5,
      'Indication': 'Intra-abdominal sepsis',
    },
    {
      'Antibiotic': 'Amikacin',
      'Start Date': '18/05/2023',
      'Duration': 1,
      'Indication': 'Intra-abdominal sepsis',
    },
  ];

  Set<int> selectedIds = {};

  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Container(
                color: Colors.black,
                width: MediaQuery.of(context).size.width * 0.138,
                height: MediaQuery.of(context).size.height * 1.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.039,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.019,
                        ),
                        Container(
                          //color: Colors.orange,
                          width: MediaQuery.of(context).size.width * 0.07,
                          height: MediaQuery.of(context).size.height * 0.075,
                          child: const AutoSizeText(
                            'AMS\nGuardian',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: 'Helvetica'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.125,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.015,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.08,
                          height: MediaQuery.of(context).size.height * 0.035,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(2),
                            ),
                            color: menuBColor,
                            shape: BoxShape.rectangle,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.005,
                              ),
                              Container(
                                //color: Colors.orange,
                                width: MediaQuery.of(context).size.width * 0.03,
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                                child: AutoSizeText('MENU',
                                    style: TextStyle(
                                        color: menuTColor,
                                        fontSize: 16,
                                        fontFamily: 'Helvetica')),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.024,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.015,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.08,
                          height: MediaQuery.of(context).size.height * 0.035,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(2),
                            ),
                            color: dashBColor,
                            shape: BoxShape.rectangle,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.005,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(_createRoute1());
                                },
                                child: Container(
                                  //color: Colors.orange,
                                  width:
                                      MediaQuery.of(context).size.width * 0.045,
                                  height: MediaQuery.of(context).size.height *
                                      0.025,
                                  child: AutoSizeText('Dashboard',
                                      style: TextStyle(
                                          color: dashTColor,
                                          fontSize: 16,
                                          fontFamily: 'Helvetica')),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.015,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.08,
                          height: MediaQuery.of(context).size.height * 0.035,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(2),
                            ),
                            color: presBColor,
                            shape: BoxShape.rectangle,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.005,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(_createRoute2());
                                },
                                child: Container(
                                  //color: Colors.orange,
                                  width:
                                      MediaQuery.of(context).size.width * 0.045,
                                  height: MediaQuery.of(context).size.height *
                                      0.025,
                                  child: AutoSizeText('Prescribing',
                                      style: TextStyle(
                                          color: presTColor,
                                          fontSize: 16,
                                          fontFamily: 'Helvetica')),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.015,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.08,
                          height: MediaQuery.of(context).size.height * 0.035,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(2),
                            ),
                            color: resBColor,
                            shape: BoxShape.rectangle,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.005,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    Navigator.of(context).push(_createRoute3());
                                  });
                                },
                                child: Container(
                                  //color: Colors.orange,
                                  width:
                                      MediaQuery.of(context).size.width * 0.045,
                                  height: MediaQuery.of(context).size.height *
                                      0.025,
                                  child: AutoSizeText('Resistance',
                                      style: TextStyle(
                                          color: resTColor,
                                          fontSize: 16,
                                          fontFamily: 'Helvetica')),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            color: kWhite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.039,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.028,
                    ),
                    Container(
                      //color: Colors.orange,
                      width: MediaQuery.of(context).size.width * 0.19,
                      height: MediaQuery.of(context).size.height * 0.048,
                      child: const AutoSizeText('Croydon University Hospital',
                          style: TextStyle(
                              color: kBlack,
                              fontSize: 28,
                              fontFamily: 'Helvetica')),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.58,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          //color: Colors.orange,
                          width: MediaQuery.of(context).size.width * 0.049,
                          height: MediaQuery.of(context).size.height * 0.025,
                          child: const AutoSizeText('Imran Qureshi',
                              style: TextStyle(
                                  color: kBlack,
                                  fontSize: 14,
                                  fontFamily: 'Helvetica')),
                        ),
                        Container(
                          //color: Colors.orange,
                          width: MediaQuery.of(context).size.width * 0.0325,
                          height: MediaQuery.of(context).size.height * 0.016,
                          child: AutoSizeText('Consultant',
                              style: TextStyle(
                                  color: kTextGrey,
                                  fontSize: 12,
                                  fontFamily: 'Helvetica')),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.015,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0268,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.015,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.825,
                      height: 0.25,
                      color: kTextGrey,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0379,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.028,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText('Dashboard',
                            style: TextStyle(
                                color: kBlack,
                                fontSize: 18,
                                fontFamily: 'Helvetica')),
                        // Row(
                        //   children: [
                        //     AutoSizeText('Dashboard ',
                        //         style: TextStyle(
                        //             color: kLightGrey,
                        //             fontSize: 15,
                        //             fontFamily: 'Helvetica')),
                        //     AutoSizeText('→ Overview',
                        //         style: TextStyle(
                        //             color: kBlack,
                        //             fontSize: 15,
                        //             fontFamily: 'Helvetica')),
                        //   ],
                        // ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.031,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.028,
                    ),
                    const InfoTemplate(
                      title: 'Active Prescriptions',
                      number: 115,
                      colour: kdarkYellow,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    const InfoTemplate(
                      title: 'Intravenous',
                      number: 82,
                      colour: Colors.black,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    const InfoTemplate(
                      title: 'Carbapenem',
                      number: 33,
                      colour: kGreen,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    const InfoTemplate(
                      title: 'Restricted',
                      number: 28,
                      colour: klightGray,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    const InfoTemplate(
                      title: 'Greater than 5 days',
                      number: 41,
                      colour: Colors.black,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.0855,
                          height: MediaQuery.of(context).size.height * 0.058,
                          decoration: BoxDecoration(
                            border: Border.all(color: kGreen, width: 0.5),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(6),
                            ),
                            color: kGreen,
                            shape: BoxShape.rectangle,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              const Center(
                                child: AutoSizeText('+ manage',
                                    style: TextStyle(
                                        color: kWhite,
                                        fontSize: 16,
                                        fontFamily: 'Helvetica',
                                        fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.011,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.0855,
                          height: MediaQuery.of(context).size.height * 0.058,
                          decoration: BoxDecoration(
                            border: Border.all(color: kLightGrey, width: 0.5),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(6),
                            ),
                            color: kLightGrey,
                            shape: BoxShape.rectangle,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // SizedBox(
                              //   width:
                              //       MediaQuery.of(context).size.width * 0.0067,
                              // ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              const Center(
                                child: AutoSizeText('default',
                                    style: TextStyle(
                                        color: kWhite,
                                        fontSize: 16,
                                        fontFamily: 'Helvetica',
                                        fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0237,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.015,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.825,
                      height: 0.25,
                      color: kTextGrey,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.028,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.028,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4225,
                              height:
                                  MediaQuery.of(context).size.height * 0.335,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: kLightGrey, width: 0.5),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(6),
                                ),
                                color: kWhite,
                                shape: BoxShape.rectangle,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 90.0, top: 25.0, bottom: 10.0),
                                    child: AutoSizeText(
                                        'Prescriptions Run Chart',
                                        style: TextStyle(
                                            color: kGreen,
                                            fontFamily: 'Helvetica',
                                            fontWeight: FontWeight.w600)),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        color: Colors.orange,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.0067,
                                      ),
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.35,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.25,
                                          child: LineChartSample7()),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.0169,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.269,
                              height:
                                  MediaQuery.of(context).size.height * 0.335,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: kLightGrey, width: 0.5),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(6),
                                ),
                                color: kWhite,
                                shape: BoxShape.rectangle,
                              ),
                              child: Column(
                                children: [
                                  // const Padding(
                                  //   padding: EdgeInsets.only(
                                  //       top: 25.0, bottom: 10.0),
                                  //   child: Center(
                                  //     child: AutoSizeText('Greater than 5 days',
                                  //         style: TextStyle(
                                  //             color: Colors.black,
                                  //             fontFamily: 'Helvetica',
                                  //             fontWeight: FontWeight.w600)),
                                  //   ),
                                  // ),
                                  BarChartSample4(),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.0237,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.028,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.708,
                              height:
                                  MediaQuery.of(context).size.height * 0.195,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: kVeryLightGrey, width: 0.5),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(6),
                                ),
                                color: kVeryLightGrey,
                                shape: BoxShape.rectangle,
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.055,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02,
                                      ),
                                      GestureDetector(
                                        onTap: () async {
                                          setState(() {
                                            sectionTitle = 'Unwell';
                                          });
                                        },
                                        child: Container(
                                          // height: MediaQuery.of(context).size.height * (height / 844),
                                          // width: MediaQuery.of(context).size.width * (width / 390),
                                          child: Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  // Circle with picture
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.03,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.06,
                                                    decoration:
                                                        const BoxDecoration(
                                                            color: kdarkYellow,
                                                            shape: BoxShape
                                                                .circle),
                                                    child: Center(
                                                      child: SizedBox(
                                                          //color: Colors.pink,
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.0105,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.031,
                                                          child: Image.asset(
                                                              'images/unwell_icon.png')),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            (5 / 1180),
                                                  ),
                                                  // Number
                                                  const AutoSizeText(
                                                    '12',
                                                    style: TextStyle(
                                                        color: kdarkYellow,
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily:
                                                            'Helvetica'),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    (10 / 1180),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  // Title with button
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      const AutoSizeText(
                                                        'Unwell',
                                                        style: TextStyle(
                                                            color: kdarkGrey,
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontFamily:
                                                                'Helvetica'),
                                                      ),
                                                      SizedBox(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            (5 / 1180),
                                                      ),
                                                      StatefulBuilder(builder:
                                                          (context, setState) {
                                                        return SizedBox(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.03,
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.03,
                                                          child: ElevatedButton(
                                                            onPressed:
                                                                () async {
                                                              Overlayment.show(
                                                                  context:
                                                                      context,
                                                                  OverPanel(
                                                                    height: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        1,
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.4,
                                                                    //offset: Offset.zero,
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      child:
                                                                          Column(
                                                                        children: [
                                                                          Container(
                                                                            child:
                                                                                Column(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Container(
                                                                                  color: klightGray,
                                                                                  height: MediaQuery.of(context).size.height * 0.025,
                                                                                  width: MediaQuery.of(context).size.width * 1,
                                                                                ),
                                                                                SizedBox(
                                                                                  height: MediaQuery.of(context).size.height * 0.025,
                                                                                ),
                                                                                Row(
                                                                                  children: [
                                                                                    SizedBox(
                                                                                      width: MediaQuery.of(context).size.width * 0.025,
                                                                                    ),
                                                                                    Column(
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        const AutoSizeText('Unwell', style: TextStyle(color: kGreen, fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Helvetica')),
                                                                                        SizedBox(
                                                                                          height: MediaQuery.of(context).size.height * 0.025,
                                                                                        ),
                                                                                        SizedBox(
                                                                                          width: MediaQuery.of(context).size.width * 0.35,
                                                                                          child: const AutoSizeText('The following patients have been on antibiotics for more than 48 hours and they remain febrile on a static or increasing trend +/- haemodynamically unstable', style: TextStyle(color: kdarkGrey, fontSize: 12, fontWeight: FontWeight.w400, fontFamily: 'Helvetica')),
                                                                                        ),
                                                                                        SizedBox(
                                                                                          height: MediaQuery.of(context).size.height * 0.025,
                                                                                        ),
                                                                                        SizedBox(
                                                                                          width: MediaQuery.of(context).size.width * 0.34,
                                                                                          child: const Divider(
                                                                                            color: kLightGrey,
                                                                                            height: 1, // thickness of the line
                                                                                          ),
                                                                                        ),
                                                                                        SizedBox(
                                                                                          height: MediaQuery.of(context).size.height * 0.025,
                                                                                        ),
                                                                                        Column(
                                                                                          children: [
                                                                                            Row(
                                                                                              children: [
                                                                                                SizedBox(
                                                                                                  width: MediaQuery.of(context).size.width * 0.34,
                                                                                                  height: MediaQuery.of(context).size.height * 0.35,
                                                                                                  child: DataTable2(
                                                                                                    showCheckboxColumn: false,
                                                                                                    columnSpacing: 12,
                                                                                                    horizontalMargin: 12,
                                                                                                    minWidth: 600,
                                                                                                    columns: const [
                                                                                                      DataColumn2(
                                                                                                        label: AutoSizeText('MRN', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                                                                                                        size: ColumnSize.L,
                                                                                                      ),
                                                                                                      DataColumn(
                                                                                                        label: AutoSizeText('Name', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                                                                                                      ),
                                                                                                      DataColumn(
                                                                                                        label: AutoSizeText('Location', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                                                                                                      ),
                                                                                                      DataColumn(
                                                                                                        label: AutoSizeText('Bed', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                                                                                                      ),
                                                                                                      DataColumn(
                                                                                                        label: AutoSizeText('Duration', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                                                                                                        //numeric: true,
                                                                                                      ),
                                                                                                    ],
                                                                                                    rows: data.map((item) {
                                                                                                      bool selected = selectedIds.contains(item['mrn']);
                                                                                                      return DataRow(
                                                                                                        selected: selected,
                                                                                                        onSelectChanged: (value) {
                                                                                                          bool selected = selectedIds.contains(item['mrn']);

                                                                                                          setState(() {
                                                                                                            selValue = value!;
                                                                                                            sectionTitle = 'Unwell';

                                                                                                            if (selected) {
                                                                                                              selectedIds.remove(item['mrn']);
                                                                                                              selected = false;
                                                                                                            } else {
                                                                                                              selectedIds.add(item['mrn']);
                                                                                                            }

                                                                                                            if (selValue == true) {
                                                                                                              if (selectedIds.last == 123456) {
                                                                                                                selPatient = 'Muhammad Khan';
                                                                                                              } else if (selectedIds.last == 228751) {
                                                                                                                selPatient = "Emma White";
                                                                                                              } else if (selectedIds.last == 394685) {
                                                                                                                selPatient = "Isabella Kim";
                                                                                                              } else if (selectedIds.last == 4711236) {
                                                                                                                selPatient = "Amir Khan";
                                                                                                              } else if (selectedIds.last == 506238) {
                                                                                                                selPatient = "Sam Price";
                                                                                                              } else if (selectedIds.last == 989992) {
                                                                                                                selPatient = "Olivia Smith";
                                                                                                              } else if (selectedIds.last == 892645) {
                                                                                                                selPatient = "Noah Martin";
                                                                                                              } else if (selectedIds.last == 101658) {
                                                                                                                selPatient = "Yasmin Ahmed";
                                                                                                              }

                                                                                                              selectedPatient = selPatient;
                                                                                                            }
                                                                                                          });
                                                                                                        },
                                                                                                        cells: [
                                                                                                          DataCell(AutoSizeText('${item['mrn']}')),
                                                                                                          DataCell(AutoSizeText(item['name'])),
                                                                                                          DataCell(AutoSizeText('${item['location']}')),
                                                                                                          DataCell(AutoSizeText('${item['bed']}')),
                                                                                                          DataCell(AutoSizeText('${item['duration']}')),
                                                                                                        ],
                                                                                                      );
                                                                                                    }).toList(),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            SizedBox(
                                                                                              width: MediaQuery.of(context).size.width * 0.34,
                                                                                              child: const Divider(
                                                                                                color: kLightGrey,
                                                                                                height: 1, // thickness of the line
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        PatientUnwellInfo(),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    color:
                                                                        kWhite,
                                                                  ));
                                                              //_show(alignment);
                                                            },
                                                            style: ButtonStyle(
                                                                shape: MaterialStateProperty
                                                                    .all<
                                                                        RoundedRectangleBorder>(
                                                                  RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                                backgroundColor:
                                                                    MaterialStateColor.resolveWith(
                                                                        (states) =>
                                                                            kdarkGrey)),
                                                            child: Image.asset(
                                                                'images/right_triangle.png'),
                                                          ),
                                                        );
                                                      }),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            (15 / 1180),
                                                  ),
                                                  // Explanation
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            (70 / 632),
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            (40 / 1180),
                                                    child: const AutoSizeText(
                                                      'Patient remains unwell after 48 hours of antimicrobial therapy',
                                                      style: TextStyle(
                                                          color: kdarkGrey,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily:
                                                              'Helvetica'),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02,
                                      ),
                                      GestureDetector(
                                        onTap: () async {},
                                        child: Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                // Circle with picture
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.03,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.06,
                                                  decoration:
                                                      const BoxDecoration(
                                                          color: Colors.black,
                                                          shape:
                                                              BoxShape.circle),
                                                  child: Center(
                                                    child: SizedBox(
                                                        //color: Colors.pink,
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.0125,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.031,
                                                        child: Image.asset(
                                                            'images/renal_icon.png')),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      (5 / 1180),
                                                ),
                                                // Number
                                                const AutoSizeText(
                                                  '14',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 24,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'Helvetica'),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  (10 / 1180),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                // Title with button
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    const AutoSizeText(
                                                      'Renal',
                                                      style: TextStyle(
                                                          color: kdarkGrey,
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontFamily:
                                                              'Helvetica'),
                                                    ),
                                                    SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              (5 / 1180),
                                                    ),
                                                    StatefulBuilder(builder:
                                                        (context, setState) {
                                                      return SizedBox(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.03,
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.03,
                                                        child: ElevatedButton(
                                                          onPressed: () async {
                                                            Overlayment.show(
                                                                context:
                                                                    context,
                                                                OverPanel(
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      1,
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.4,
                                                                  //offset: Offset.zero,
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Container(
                                                                          child:
                                                                              Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                color: klightGray,
                                                                                height: MediaQuery.of(context).size.height * 0.025,
                                                                                width: MediaQuery.of(context).size.width * 1,
                                                                              ),
                                                                              SizedBox(
                                                                                height: MediaQuery.of(context).size.height * 0.025,
                                                                              ),
                                                                              Row(
                                                                                children: [
                                                                                  SizedBox(
                                                                                    width: MediaQuery.of(context).size.width * 0.025,
                                                                                  ),
                                                                                  Column(
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      const AutoSizeText('Renal Impairment', style: TextStyle(color: kGreen, fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Helvetica')),
                                                                                      SizedBox(
                                                                                        height: MediaQuery.of(context).size.height * 0.025,
                                                                                      ),
                                                                                      SizedBox(
                                                                                        width: MediaQuery.of(context).size.width * 0.35,
                                                                                        child: const AutoSizeText('The following patients have declining renal function and are on antibiotics, which are known to cause renal dysfunction.', style: TextStyle(color: kdarkGrey, fontSize: 12, fontWeight: FontWeight.w400, fontFamily: 'Helvetica')),
                                                                                      ),
                                                                                      SizedBox(
                                                                                        height: MediaQuery.of(context).size.height * 0.025,
                                                                                      ),
                                                                                      SizedBox(
                                                                                        width: MediaQuery.of(context).size.width * 0.34,
                                                                                        child: const Divider(
                                                                                          color: kLightGrey,
                                                                                          height: 1, // thickness of the line
                                                                                        ),
                                                                                      ),
                                                                                      SizedBox(
                                                                                        height: MediaQuery.of(context).size.height * 0.025,
                                                                                      ),
                                                                                      Column(
                                                                                        children: [
                                                                                          Row(
                                                                                            children: [
                                                                                              SizedBox(
                                                                                                width: MediaQuery.of(context).size.width * 0.34,
                                                                                                height: MediaQuery.of(context).size.height * 0.35,
                                                                                                child: DataTable2(
                                                                                                  showCheckboxColumn: false,
                                                                                                  columnSpacing: 12,
                                                                                                  horizontalMargin: 12,
                                                                                                  minWidth: 600,
                                                                                                  columns: const [
                                                                                                    DataColumn2(
                                                                                                      label: AutoSizeText('MRN', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                                                                                                      size: ColumnSize.L,
                                                                                                    ),
                                                                                                    DataColumn(
                                                                                                      label: AutoSizeText('Name', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                                                                                                    ),
                                                                                                    DataColumn(
                                                                                                      label: AutoSizeText('Location', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                                                                                                    ),
                                                                                                    DataColumn(
                                                                                                      label: AutoSizeText('Bed', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                                                                                                    ),
                                                                                                    DataColumn(
                                                                                                      label: AutoSizeText('Duration', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                                                                                                      //numeric: true,
                                                                                                    ),
                                                                                                  ],
                                                                                                  rows: data2.map((item) {
                                                                                                    bool selected = selectedIds.contains(item['mrn']);
                                                                                                    return DataRow(
                                                                                                      selected: selected,
                                                                                                      onSelectChanged: (value) {
                                                                                                        bool selected = selectedIds.contains(item['mrn']);

                                                                                                        setState(() {
                                                                                                          selValue = value!;
                                                                                                          sectionTitle = 'Renal';

                                                                                                          if (selected) {
                                                                                                            selectedIds.remove(item['mrn']);
                                                                                                            selected = false;
                                                                                                          } else {
                                                                                                            selectedIds.add(item['mrn']);
                                                                                                          }

                                                                                                          if (selValue == true) {
                                                                                                            if (selectedIds.last == 123456) {
                                                                                                              selPatient = 'Isobel Jones';
                                                                                                            } else if (selectedIds.last == 228751) {
                                                                                                              selPatient = "Sven Tadley";
                                                                                                            } else if (selectedIds.last == 394685) {
                                                                                                              selPatient = "Marco Cunha";
                                                                                                            } else if (selectedIds.last == 4711236) {
                                                                                                              selPatient = "Sarah Andrews";
                                                                                                            } else if (selectedIds.last == 506238) {
                                                                                                              selPatient = "Nabeel Ahmed";
                                                                                                            } else if (selectedIds.last == 989992) {
                                                                                                              selPatient = "Adetunde Olabi";
                                                                                                            } else if (selectedIds.last == 892645) {
                                                                                                              selPatient = "Felicity Squires";
                                                                                                            } else if (selectedIds.last == 101658) {
                                                                                                              selPatient = "Juliette Harding";
                                                                                                            }

                                                                                                            selectedPatient = selPatient;
                                                                                                          }
                                                                                                        });
                                                                                                      },
                                                                                                      cells: [
                                                                                                        DataCell(AutoSizeText('${item['mrn']}')),
                                                                                                        DataCell(AutoSizeText(item['name'])),
                                                                                                        DataCell(AutoSizeText('${item['location']}')),
                                                                                                        DataCell(AutoSizeText('${item['bed']}')),
                                                                                                        DataCell(AutoSizeText('${item['duration']}')),
                                                                                                      ],
                                                                                                    );
                                                                                                  }).toList(),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          SizedBox(
                                                                                            width: MediaQuery.of(context).size.width * 0.34,
                                                                                            child: const Divider(
                                                                                              color: kLightGrey,
                                                                                              height: 1, // thickness of the line
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      PatientRenalInfo(),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  color: kWhite,
                                                                ));
                                                            //_show(alignment);
                                                          },
                                                          style: ButtonStyle(
                                                              shape: MaterialStateProperty
                                                                  .all<
                                                                      RoundedRectangleBorder>(
                                                                RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.0),
                                                                ),
                                                              ),
                                                              backgroundColor:
                                                                  MaterialStateColor
                                                                      .resolveWith(
                                                                          (states) =>
                                                                              kdarkGrey)),
                                                          child: Image.asset(
                                                              'images/right_triangle.png'),
                                                        ),
                                                      );
                                                    }),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      (15 / 1180),
                                                ),
                                                // Explanation
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      (70 / 632),
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      (40 / 1180),
                                                  child: const AutoSizeText(
                                                    'On nephrotoxic antimicrobials with declining eGFR',
                                                    style: TextStyle(
                                                        color: kdarkGrey,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontFamily:
                                                            'Helvetica'),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02,
                                      ),
                                      GestureDetector(
                                        onTap: () async {},
                                        // child: DashButton(
                                        //   title: 'Afebrile',
                                        //   explanation:
                                        //       '48 hrs of antimicrobials but never had a fever',
                                        //   location: 'afebrile_icon.png',
                                        //   number: 7,
                                        //   colour: kGreen,
                                        //   child: createTable(
                                        //       'Afebrile Patients',
                                        //       'The following patients have been on antibiotics from admission and have not had an episode of fever or hypothermia throughout',
                                        //       3),
                                        // ),
                                        child: Container(
                                          // height: MediaQuery.of(context).size.height * (height / 844),
                                          // width: MediaQuery.of(context).size.width * (width / 390),
                                          child: Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  // Circle with picture
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.03,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.06,
                                                    decoration:
                                                        const BoxDecoration(
                                                            color: kGreen,
                                                            shape: BoxShape
                                                                .circle),
                                                    child: Center(
                                                      child: SizedBox(
                                                          //color: Colors.pink,
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.0205,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.031,
                                                          child: Image.asset(
                                                              'images/afebrile_icon.png')),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            (5 / 1180),
                                                  ),
                                                  // Number
                                                  const AutoSizeText(
                                                    '7',
                                                    style: TextStyle(
                                                        color: kGreen,
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily:
                                                            'Helvetica'),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    (10 / 1180),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  // Title with button
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      const AutoSizeText(
                                                        'Afebrile',
                                                        style: TextStyle(
                                                            color: kdarkGrey,
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontFamily:
                                                                'Helvetica'),
                                                      ),
                                                      SizedBox(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            (5 / 1180),
                                                      ),
                                                      StatefulBuilder(builder:
                                                          (context, setState) {
                                                        return SizedBox(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.03,
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.03,
                                                          child: ElevatedButton(
                                                            onPressed:
                                                                () async {
                                                              Overlayment.show(
                                                                  context:
                                                                      context,
                                                                  OverPanel(
                                                                    height: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        1,
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.4,
                                                                    //offset: Offset.zero,
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      child:
                                                                          Column(
                                                                        children: [
                                                                          Container(
                                                                            child:
                                                                                Column(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Container(
                                                                                  color: klightGray,
                                                                                  height: MediaQuery.of(context).size.height * 0.025,
                                                                                  width: MediaQuery.of(context).size.width * 1,
                                                                                ),
                                                                                SizedBox(
                                                                                  height: MediaQuery.of(context).size.height * 0.025,
                                                                                ),
                                                                                Row(
                                                                                  children: [
                                                                                    SizedBox(
                                                                                      width: MediaQuery.of(context).size.width * 0.025,
                                                                                    ),
                                                                                    Column(
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        const AutoSizeText('Afebrile', style: TextStyle(color: kGreen, fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Helvetica')),
                                                                                        SizedBox(
                                                                                          height: MediaQuery.of(context).size.height * 0.025,
                                                                                        ),
                                                                                        SizedBox(
                                                                                          width: MediaQuery.of(context).size.width * 0.35,
                                                                                          child: const AutoSizeText('The following patients have been on antibiotics from admission and have not had an episode of fever or hypothermia throughout', style: TextStyle(color: kdarkGrey, fontSize: 12, fontWeight: FontWeight.w400, fontFamily: 'Helvetica')),
                                                                                        ),
                                                                                        SizedBox(
                                                                                          height: MediaQuery.of(context).size.height * 0.025,
                                                                                        ),
                                                                                        SizedBox(
                                                                                          width: MediaQuery.of(context).size.width * 0.34,
                                                                                          child: const Divider(
                                                                                            color: kLightGrey,
                                                                                            height: 1, // thickness of the line
                                                                                          ),
                                                                                        ),
                                                                                        SizedBox(
                                                                                          height: MediaQuery.of(context).size.height * 0.025,
                                                                                        ),
                                                                                        Column(
                                                                                          children: [
                                                                                            Row(
                                                                                              children: [
                                                                                                SizedBox(
                                                                                                  width: MediaQuery.of(context).size.width * 0.34,
                                                                                                  height: MediaQuery.of(context).size.height * 0.35,
                                                                                                  child: DataTable2(
                                                                                                    showCheckboxColumn: false,
                                                                                                    columnSpacing: 12,
                                                                                                    horizontalMargin: 12,
                                                                                                    minWidth: 600,
                                                                                                    columns: const [
                                                                                                      DataColumn2(
                                                                                                        label: AutoSizeText('MRN', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                                                                                                        size: ColumnSize.L,
                                                                                                      ),
                                                                                                      DataColumn(
                                                                                                        label: AutoSizeText('Name', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                                                                                                      ),
                                                                                                      DataColumn(
                                                                                                        label: AutoSizeText('Location', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                                                                                                      ),
                                                                                                      DataColumn(
                                                                                                        label: AutoSizeText('Bed', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                                                                                                      ),
                                                                                                      DataColumn(
                                                                                                        label: AutoSizeText('Duration', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                                                                                                        //numeric: true,
                                                                                                      ),
                                                                                                    ],
                                                                                                    rows: data3.map((item) {
                                                                                                      bool selected = selectedIds.contains(item['mrn']);
                                                                                                      return DataRow(
                                                                                                        selected: selected,
                                                                                                        onSelectChanged: (value) {
                                                                                                          bool selected = selectedIds.contains(item['mrn']);

                                                                                                          setState(() {
                                                                                                            selValue = value!;
                                                                                                            sectionTitle = 'Afebrile';

                                                                                                            if (selected) {
                                                                                                              selectedIds.remove(item['mrn']);
                                                                                                              selected = false;
                                                                                                            } else {
                                                                                                              selectedIds.add(item['mrn']);
                                                                                                            }

                                                                                                            if (selValue == true) {
                                                                                                              if (selectedIds.last == 123456) {
                                                                                                                selPatient = 'Muhammad Khan';
                                                                                                              } else if (selectedIds.last == 228751) {
                                                                                                                selPatient = "Emma White";
                                                                                                              } else if (selectedIds.last == 394685) {
                                                                                                                selPatient = "Isabella Kim";
                                                                                                              } else if (selectedIds.last == 4711236) {
                                                                                                                selPatient = "Amir Khan";
                                                                                                              } else if (selectedIds.last == 506238) {
                                                                                                                selPatient = "Sam Price";
                                                                                                              } else if (selectedIds.last == 989992) {
                                                                                                                selPatient = "Olivia Smith";
                                                                                                              } else if (selectedIds.last == 892645) {
                                                                                                                selPatient = "Noah Martin";
                                                                                                              } else if (selectedIds.last == 101658) {
                                                                                                                selPatient = "Yasmin Ahmed";
                                                                                                              }

                                                                                                              selectedPatient = selPatient;
                                                                                                            }
                                                                                                          });
                                                                                                        },
                                                                                                        cells: [
                                                                                                          DataCell(AutoSizeText('${item['mrn']}')),
                                                                                                          DataCell(AutoSizeText(item['name'])),
                                                                                                          DataCell(AutoSizeText('${item['location']}')),
                                                                                                          DataCell(AutoSizeText('${item['bed']}')),
                                                                                                          DataCell(AutoSizeText('${item['duration']}')),
                                                                                                        ],
                                                                                                      );
                                                                                                    }).toList(),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            SizedBox(
                                                                                              width: MediaQuery.of(context).size.width * 0.34,
                                                                                              child: const Divider(
                                                                                                color: kLightGrey,
                                                                                                height: 1, // thickness of the line
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        PatientUnwellInfo(),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    color:
                                                                        kWhite,
                                                                  ));
                                                              //_show(alignment);
                                                            },
                                                            style: ButtonStyle(
                                                                shape: MaterialStateProperty
                                                                    .all<
                                                                        RoundedRectangleBorder>(
                                                                  RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                                backgroundColor:
                                                                    MaterialStateColor.resolveWith(
                                                                        (states) =>
                                                                            kdarkGrey)),
                                                            child: Image.asset(
                                                                'images/right_triangle.png'),
                                                          ),
                                                        );
                                                      }),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            (15 / 1180),
                                                  ),
                                                  // Explanation
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            (70 / 632),
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            (40 / 1180),
                                                    child: const AutoSizeText(
                                                      '48 hrs of antimicrobials but never had a fever',
                                                      style: TextStyle(
                                                          color: kdarkGrey,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily:
                                                              'Helvetica'),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02,
                                      ),
                                      GestureDetector(
                                        onTap: () async {},
                                        // child: DashButton(
                                        //   title: 'Oral Switch',
                                        //   explanation:
                                        //       'Patient on intravenous antibiotics suitable for oral switch',
                                        //   location: 'oralswitch_icon.png',
                                        //   number: 11,
                                        //   colour: klightGray,
                                        //   child: createTable(
                                        //       'Oral Switch',
                                        //       'The following patients are currently on intravenous antibiotics. They should now be suitable for a switch to an oral antibiotic',
                                        //       4),
                                        // ),
                                        child: Container(
                                          // height: MediaQuery.of(context).size.height * (height / 844),
                                          // width: MediaQuery.of(context).size.width * (width / 390),
                                          child: Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  // Circle with picture
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.03,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.06,
                                                    decoration:
                                                        const BoxDecoration(
                                                            color: klightGray,
                                                            shape: BoxShape
                                                                .circle),
                                                    child: Center(
                                                      child: SizedBox(
                                                          //color: Colors.pink,
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.0105,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.031,
                                                          child: Image.asset(
                                                              'images/oralswitch_icon.png')),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            (5 / 1180),
                                                  ),
                                                  // Number
                                                  const AutoSizeText(
                                                    '11',
                                                    style: TextStyle(
                                                        color: klightGray,
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily:
                                                            'Helvetica'),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    (10 / 1180),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  // Title with button
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      const AutoSizeText(
                                                        'Oral Switch',
                                                        style: TextStyle(
                                                            color: kdarkGrey,
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontFamily:
                                                                'Helvetica'),
                                                      ),
                                                      SizedBox(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            (5 / 1180),
                                                      ),
                                                      StatefulBuilder(builder:
                                                          (context, setState) {
                                                        return SizedBox(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.03,
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.03,
                                                          child: ElevatedButton(
                                                            onPressed:
                                                                () async {
                                                              Overlayment.show(
                                                                  context:
                                                                      context,
                                                                  OverPanel(
                                                                    height: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        1,
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.4,
                                                                    //offset: Offset.zero,
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      child:
                                                                          Column(
                                                                        children: [
                                                                          Container(
                                                                            child:
                                                                                Column(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Container(
                                                                                  color: klightGray,
                                                                                  height: MediaQuery.of(context).size.height * 0.025,
                                                                                  width: MediaQuery.of(context).size.width * 1,
                                                                                ),
                                                                                SizedBox(
                                                                                  height: MediaQuery.of(context).size.height * 0.025,
                                                                                ),
                                                                                Row(
                                                                                  children: [
                                                                                    SizedBox(
                                                                                      width: MediaQuery.of(context).size.width * 0.025,
                                                                                    ),
                                                                                    Column(
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        const AutoSizeText('Oral Switch', style: TextStyle(color: kGreen, fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Helvetica')),
                                                                                        SizedBox(
                                                                                          height: MediaQuery.of(context).size.height * 0.025,
                                                                                        ),
                                                                                        SizedBox(
                                                                                          width: MediaQuery.of(context).size.width * 0.35,
                                                                                          child: const AutoSizeText('The following patients are currently on intravenous antibiotics. They should now be suitable for a switch to an oral antibiotic', style: TextStyle(color: kdarkGrey, fontSize: 12, fontWeight: FontWeight.w400, fontFamily: 'Helvetica')),
                                                                                        ),
                                                                                        SizedBox(
                                                                                          height: MediaQuery.of(context).size.height * 0.025,
                                                                                        ),
                                                                                        SizedBox(
                                                                                          width: MediaQuery.of(context).size.width * 0.34,
                                                                                          child: const Divider(
                                                                                            color: kLightGrey,
                                                                                            height: 1, // thickness of the line
                                                                                          ),
                                                                                        ),
                                                                                        SizedBox(
                                                                                          height: MediaQuery.of(context).size.height * 0.025,
                                                                                        ),
                                                                                        Column(
                                                                                          children: [
                                                                                            Row(
                                                                                              children: [
                                                                                                SizedBox(
                                                                                                  width: MediaQuery.of(context).size.width * 0.34,
                                                                                                  height: MediaQuery.of(context).size.height * 0.35,
                                                                                                  child: DataTable2(
                                                                                                    showCheckboxColumn: false,
                                                                                                    columnSpacing: 12,
                                                                                                    horizontalMargin: 12,
                                                                                                    minWidth: 600,
                                                                                                    columns: const [
                                                                                                      DataColumn2(
                                                                                                        label: AutoSizeText('MRN', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                                                                                                        size: ColumnSize.L,
                                                                                                      ),
                                                                                                      DataColumn(
                                                                                                        label: AutoSizeText('Name', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                                                                                                      ),
                                                                                                      DataColumn(
                                                                                                        label: AutoSizeText('Location', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                                                                                                      ),
                                                                                                      DataColumn(
                                                                                                        label: AutoSizeText('Bed', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                                                                                                      ),
                                                                                                      DataColumn(
                                                                                                        label: AutoSizeText('Duration', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                                                                                                        //numeric: true,
                                                                                                      ),
                                                                                                    ],
                                                                                                    rows: data4.map((item) {
                                                                                                      bool selected = selectedIds.contains(item['mrn']);
                                                                                                      return DataRow(
                                                                                                        selected: selected,
                                                                                                        onSelectChanged: (value) {
                                                                                                          bool selected = selectedIds.contains(item['mrn']);

                                                                                                          setState(() {
                                                                                                            selValue = value!;
                                                                                                            sectionTitle = 'Unwell';

                                                                                                            if (selected) {
                                                                                                              selectedIds.remove(item['mrn']);
                                                                                                              selected = false;
                                                                                                            } else {
                                                                                                              selectedIds.add(item['mrn']);
                                                                                                            }

                                                                                                            if (selValue == true) {
                                                                                                              if (selectedIds.last == 123456) {
                                                                                                                selPatient = 'Muhammad Khan';
                                                                                                              } else if (selectedIds.last == 228751) {
                                                                                                                selPatient = "Emma White";
                                                                                                              } else if (selectedIds.last == 394685) {
                                                                                                                selPatient = "Isabella Kim";
                                                                                                              } else if (selectedIds.last == 4711236) {
                                                                                                                selPatient = "Amir Khan";
                                                                                                              } else if (selectedIds.last == 506238) {
                                                                                                                selPatient = "Sam Price";
                                                                                                              } else if (selectedIds.last == 989992) {
                                                                                                                selPatient = "Olivia Smith";
                                                                                                              } else if (selectedIds.last == 892645) {
                                                                                                                selPatient = "Noah Martin";
                                                                                                              } else if (selectedIds.last == 101658) {
                                                                                                                selPatient = "Yasmin Ahmed";
                                                                                                              }

                                                                                                              selectedPatient = selPatient;
                                                                                                            }
                                                                                                          });
                                                                                                        },
                                                                                                        cells: [
                                                                                                          DataCell(AutoSizeText('${item['mrn']}')),
                                                                                                          DataCell(AutoSizeText(item['name'])),
                                                                                                          DataCell(AutoSizeText('${item['location']}')),
                                                                                                          DataCell(AutoSizeText('${item['bed']}')),
                                                                                                          DataCell(AutoSizeText('${item['duration']}')),
                                                                                                        ],
                                                                                                      );
                                                                                                    }).toList(),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            SizedBox(
                                                                                              width: MediaQuery.of(context).size.width * 0.34,
                                                                                              child: const Divider(
                                                                                                color: kLightGrey,
                                                                                                height: 1, // thickness of the line
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        PatientUnwellInfo(),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    color:
                                                                        kWhite,
                                                                  ));
                                                              //_show(alignment);
                                                            },
                                                            style: ButtonStyle(
                                                                shape: MaterialStateProperty
                                                                    .all<
                                                                        RoundedRectangleBorder>(
                                                                  RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                                backgroundColor:
                                                                    MaterialStateColor.resolveWith(
                                                                        (states) =>
                                                                            kdarkGrey)),
                                                            child: Image.asset(
                                                                'images/right_triangle.png'),
                                                          ),
                                                        );
                                                      }),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            (15 / 1180),
                                                  ),
                                                  // Explanation
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            (70 / 632),
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            (40 / 1180),
                                                    child: const AutoSizeText(
                                                      'Patient on intravenous antibiotics suitable for oral switch',
                                                      style: TextStyle(
                                                          color: kdarkGrey,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily:
                                                              'Helvetica'),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.028,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const AutoSizeText('AMS Focus',
                                    style: TextStyle(
                                        color: kBlack,
                                        fontSize: 16,
                                        fontFamily: 'Helvetica',
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                DropdownButton(
                                  items: items.map((String value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: AutoSizeText(value),
                                    );
                                  }).toList(),
                                  value: selectedItem,
                                  onChanged: (newValue) {
                                    setState(() {
                                      selectedItem = newValue!;
                                    });
                                  },
                                ),
                                AMSFocus(selectedItem),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget AMSFocus(String type) {
    List<String> items;
    List<String> values;

    if (type == 'Ward') {
      items = [
        'AMU',
        'Duppas 1',
        'Purley 1',
        'ESC',
        'Edgecombe 1',
        'Edgecombe 2',
        'Queens 2',
      ];

      values = [
        '20',
        '18',
        '14',
        '9',
        '7',
        '7',
        '5',
      ];
    } else if (type == 'Consultant') {
      items = [
        'Samuels',
        'Khan A',
        'Ferdinand',
        'Nicholls',
        'Henry',
        'Abiola',
        'Trent',
      ];

      values = [
        '13',
        '12',
        '12',
        '8',
        '5',
        '5',
        '3',
      ];
    } else {
      items = [
        'Colorectal',
        'Respiratory',
        'Cardiology',
        'Endocrinology',
        'Intensive Care',
        'Urology',
        'Renal',
      ];

      values = [
        '16',
        '14',
        '11',
        '9',
        '8',
        '7',
        '3',
      ];
    }

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.031,
              bottom: MediaQuery.of(context).size.height * 0.018),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.09,
            child: Row(
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.07,
                    child: AutoSizeText(items[0],
                        style: const TextStyle(fontFamily: 'Helvetica'))),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                    child: AutoSizeText(values[0],
                        style: const TextStyle(fontWeight: FontWeight.bold))),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.018),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.0825,
            height: 0.25,
            color: kTextGrey,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.01,
              bottom: MediaQuery.of(context).size.height * 0.018),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.09,
            child: Row(
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.07,
                    child: AutoSizeText(items[1],
                        style: const TextStyle(fontFamily: 'Helvetica'))),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                    child: AutoSizeText(values[1],
                        style: const TextStyle(fontWeight: FontWeight.bold))),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.018),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.0825,
            height: 0.25,
            color: kTextGrey,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.01,
              bottom: MediaQuery.of(context).size.height * 0.018),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.09,
            child: Row(
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.07,
                    child: AutoSizeText(items[2],
                        style: const TextStyle(fontFamily: 'Helvetica'))),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                    child: AutoSizeText(values[2],
                        style: const TextStyle(fontWeight: FontWeight.bold))),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.018),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.0825,
            height: 0.25,
            color: kTextGrey,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.01,
              bottom: MediaQuery.of(context).size.height * 0.018),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.09,
            child: Row(
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.07,
                    child: AutoSizeText(items[3],
                        style: const TextStyle(fontFamily: 'Helvetica'))),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                    child: AutoSizeText(values[3],
                        style: const TextStyle(fontWeight: FontWeight.bold))),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.018),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.0825,
            height: 0.25,
            color: kTextGrey,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.01,
              bottom: MediaQuery.of(context).size.height * 0.018),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.09,
            child: Row(
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.07,
                    child: AutoSizeText(items[4],
                        style: const TextStyle(fontFamily: 'Helvetica'))),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                    child: AutoSizeText(values[4],
                        style: const TextStyle(fontWeight: FontWeight.bold))),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.018),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.0825,
            height: 0.25,
            color: kTextGrey,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.01,
              bottom: MediaQuery.of(context).size.height * 0.018),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.09,
            child: Row(
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.07,
                    child: AutoSizeText(items[5],
                        style: const TextStyle(fontFamily: 'Helvetica'))),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                    child: AutoSizeText(values[5],
                        style: const TextStyle(fontWeight: FontWeight.bold))),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.018),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.0825,
            height: 0.25,
            color: kTextGrey,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.01,
              bottom: MediaQuery.of(context).size.height * 0.018),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.09,
            child: Row(
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.07,
                    child: AutoSizeText(items[6],
                        style: const TextStyle(fontFamily: 'Helvetica'))),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                    child: AutoSizeText(values[6],
                        style: const TextStyle(fontWeight: FontWeight.bold))),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.018),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.0825,
            height: 0.25,
            color: kTextGrey,
          ),
        ),
      ],
    );
  }

  Widget createTable(String title, String explanation, int sData) {
    selData = sData;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: klightGray,
              height: MediaQuery.of(context).size.height * 0.025,
              width: MediaQuery.of(context).size.width * 1,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.025,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(title,
                        style: const TextStyle(
                            color: kGreen,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Helvetica')),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: AutoSizeText(explanation,
                          style: const TextStyle(
                              color: kdarkGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Helvetica')),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.34,
                      child: const Divider(
                        color: kLightGrey,
                        height: 1, // thickness of the line
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.34,
                              height: MediaQuery.of(context).size.height * 0.35,
                              child: DataTable2(
                                showCheckboxColumn: false,
                                columnSpacing: 12,
                                horizontalMargin: 12,
                                minWidth: 600,
                                columns: const [
                                  DataColumn2(
                                    label: AutoSizeText('MRN',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Helvetica')),
                                    size: ColumnSize.L,
                                  ),
                                  DataColumn(
                                    label: AutoSizeText('Name',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Helvetica')),
                                  ),
                                  DataColumn(
                                    label: AutoSizeText('Location',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Helvetica')),
                                  ),
                                  DataColumn(
                                    label: AutoSizeText('Bed',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Helvetica')),
                                  ),
                                  DataColumn(
                                    label: AutoSizeText('Duration',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Helvetica')),
                                    //numeric: true,
                                  ),
                                ],
                                rows: selData == 1
                                    ? data.map((item) {
                                        bool selected =
                                            selectedIds.contains(item['mrn']);
                                        return DataRow(
                                          selected: selected,
                                          onSelectChanged: (value) {
                                            bool selected = selectedIds
                                                .contains(item['mrn']);

                                            setState(() {
                                              selValue = value!;
                                              sectionTitle = 'Unwell';

                                              if (selected) {
                                                selectedIds.remove(item['mrn']);
                                                selected = false;
                                              } else {
                                                selectedIds.add(item['mrn']);
                                              }

                                              if (selValue == true) {
                                                if (selectedIds.last ==
                                                    123456) {
                                                  selPatient = 'Muhammad Khan';
                                                } else if (selectedIds.last ==
                                                    228751) {
                                                  selPatient = "Emma White";
                                                } else if (selectedIds
                                                    .contains('394685')) {
                                                  selPatient = "Isabella Kim";
                                                } else if (selectedIds
                                                    .contains('4711236')) {
                                                  selPatient = "Amir Khan";
                                                } else if (selectedIds
                                                    .contains('506238')) {
                                                  selPatient = "Sam Price";
                                                } else if (selectedIds
                                                    .contains('989992')) {
                                                  selPatient = "Olivia Smith";
                                                } else if (selectedIds
                                                    .contains('892645')) {
                                                  selPatient = "Noah Martin";
                                                } else if (selectedIds
                                                    .contains('101658')) {
                                                  selPatient = "Yasmin Ahmed";
                                                }
                                              }
                                            });

                                            if (sectionTitle == 'Unwell' &&
                                                selPatient ==
                                                    'Muhammad Khan') {}
                                          },
                                          cells: [
                                            DataCell(
                                                AutoSizeText('${item['mrn']}')),
                                            DataCell(
                                                AutoSizeText(item['name'])),
                                            DataCell(AutoSizeText(
                                                '${item['location']}')),
                                            DataCell(
                                                AutoSizeText('${item['bed']}')),
                                            DataCell(AutoSizeText(
                                                '${item['duration']}')),
                                          ],
                                        );
                                      }).toList()
                                    : selData == 2
                                        ? data2.map((item) {
                                            bool selected = selectedIds
                                                .contains(item['mrn']);
                                            return DataRow(
                                              selected: selected,
                                              onSelectChanged: (value) {
                                                setState(() {
                                                  selValue = value!;

                                                  if (selected) {
                                                    selectedIds
                                                        .remove(item['mrn']);
                                                    selected = false;
                                                  } else {
                                                    selectedIds
                                                        .add(item['mrn']);
                                                  }

                                                  if (selValue == true) {
                                                    if (selectedIds
                                                        .contains('557692')) {
                                                      selPatient =
                                                          "Alejandro Lopez";
                                                    } else if (selectedIds
                                                        .contains('778351')) {
                                                      selPatient =
                                                          "Chloe Taylor";
                                                    } else if (selectedIds
                                                        .contains('363636')) {
                                                      selPatient =
                                                          "Sofia Rossi";
                                                    } else if (selectedIds
                                                        .contains('123456')) {
                                                      selPatient =
                                                          "Muhammad Khan";
                                                    } else if (selectedIds
                                                        .contains('201985')) {
                                                      selPatient =
                                                          "Liam Wilson";
                                                    } else if (selectedIds
                                                        .contains('236444')) {
                                                      selPatient =
                                                          "Jacob Brown";
                                                    }
                                                  }
                                                });
                                              },
                                              cells: [
                                                DataCell(AutoSizeText(
                                                    '${item['mrn']}')),
                                                DataCell(
                                                    AutoSizeText(item['name'])),
                                                DataCell(AutoSizeText(
                                                    '${item['location']}')),
                                                DataCell(AutoSizeText(
                                                    '${item['bed']}')),
                                                DataCell(AutoSizeText(
                                                    '${item['duration']}')),
                                              ],
                                            );
                                          }).toList()
                                        : selData == 3
                                            ? data3.map((item) {
                                                bool selected = selectedIds
                                                    .contains(item['mrn']);
                                                return DataRow(
                                                  selected: selected,
                                                  onSelectChanged: (value) {
                                                    setState(() {
                                                      selValue = value!;

                                                      if (selected) {
                                                        selectedIds.remove(
                                                            item['mrn']);
                                                        selected = false;
                                                      } else {
                                                        selectedIds
                                                            .add(item['mrn']);
                                                      }

                                                      if (selValue == true) {
                                                        //print(selectedIds.);
                                                      }
                                                    });
                                                  },
                                                  cells: [
                                                    DataCell(AutoSizeText(
                                                        '${item['mrn']}')),
                                                    DataCell(AutoSizeText(
                                                        item['name'])),
                                                    DataCell(AutoSizeText(
                                                        '${item['location']}')),
                                                    DataCell(AutoSizeText(
                                                        '${item['bed']}')),
                                                    DataCell(AutoSizeText(
                                                        '${item['duration']}')),
                                                  ],
                                                );
                                              }).toList()
                                            : selData == 4
                                                ? data4.map((item) {
                                                    bool selected = selectedIds
                                                        .contains(item['mrn']);
                                                    return DataRow(
                                                      selected: selected,
                                                      onSelectChanged: (value) {
                                                        setState(() {
                                                          selValue = value!;

                                                          if (selected) {
                                                            selectedIds.remove(
                                                                item['mrn']);
                                                            selected = false;
                                                          } else {
                                                            selectedIds.add(
                                                                item['mrn']);
                                                          }

                                                          if (selValue ==
                                                              true) {
                                                            //print(selectedIds.);
                                                          }
                                                        });
                                                      },
                                                      cells: [
                                                        DataCell(AutoSizeText(
                                                            '${item['mrn']}')),
                                                        DataCell(AutoSizeText(
                                                            item['name'])),
                                                        DataCell(AutoSizeText(
                                                            '${item['location']}')),
                                                        DataCell(AutoSizeText(
                                                            '${item['bed']}')),
                                                        DataCell(AutoSizeText(
                                                            '${item['duration']}')),
                                                      ],
                                                    );
                                                  }).toList()
                                                : selData == 5
                                                    ? data5.map((item) {
                                                        bool selected =
                                                            selectedIds
                                                                .contains(item[
                                                                    'mrn']);
                                                        return DataRow(
                                                          selected: selected,
                                                          onSelectChanged:
                                                              (value) {
                                                            setState(() {
                                                              selValue = value!;

                                                              if (selected) {
                                                                selectedIds
                                                                    .remove(item[
                                                                        'mrn']);
                                                                selected =
                                                                    false;
                                                              } else {
                                                                selectedIds.add(
                                                                    item[
                                                                        'mrn']);
                                                              }

                                                              if (selValue ==
                                                                  true) {
                                                                //print(selectedIds.);
                                                              }
                                                            });
                                                          },
                                                          cells: [
                                                            DataCell(AutoSizeText(
                                                                '${item['mrn']}')),
                                                            DataCell(AutoSizeText(
                                                                item['name'])),
                                                            DataCell(AutoSizeText(
                                                                '${item['location']}')),
                                                            DataCell(AutoSizeText(
                                                                '${item['bed']}')),
                                                            DataCell(AutoSizeText(
                                                                '${item['duration']}')),
                                                          ],
                                                        );
                                                      }).toList()
                                                    : selData == 6
                                                        ? data6.map((item) {
                                                            bool selected =
                                                                selectedIds
                                                                    .contains(item[
                                                                        'mrn']);
                                                            return DataRow(
                                                              selected:
                                                                  selected,
                                                              onSelectChanged:
                                                                  (value) {
                                                                setState(() {
                                                                  selValue =
                                                                      value!;

                                                                  if (selected) {
                                                                    selectedIds
                                                                        .remove(
                                                                            item['mrn']);
                                                                    selected =
                                                                        false;
                                                                  } else {
                                                                    selectedIds
                                                                        .add(item[
                                                                            'mrn']);
                                                                  }

                                                                  if (selValue ==
                                                                      true) {
                                                                    //print(selectedIds.);
                                                                  }
                                                                });
                                                              },
                                                              cells: [
                                                                DataCell(
                                                                    AutoSizeText(
                                                                        '${item['mrn']}')),
                                                                DataCell(
                                                                    AutoSizeText(
                                                                        item[
                                                                            'name'])),
                                                                DataCell(
                                                                    AutoSizeText(
                                                                        '${item['location']}')),
                                                                DataCell(
                                                                    AutoSizeText(
                                                                        '${item['bed']}')),
                                                                DataCell(
                                                                    AutoSizeText(
                                                                        '${item['duration']}')),
                                                              ],
                                                            );
                                                          }).toList()
                                                        : selData == 7
                                                            ? data7.map((item) {
                                                                bool selected =
                                                                    selectedIds
                                                                        .contains(
                                                                            item['mrn']);
                                                                return DataRow(
                                                                  selected:
                                                                      selected,
                                                                  onSelectChanged:
                                                                      (value) {
                                                                    setState(
                                                                        () {
                                                                      selValue =
                                                                          value!;

                                                                      if (selected) {
                                                                        selectedIds
                                                                            .remove(item['mrn']);
                                                                        selected =
                                                                            false;
                                                                      } else {
                                                                        selectedIds
                                                                            .add(item['mrn']);
                                                                      }

                                                                      if (selValue ==
                                                                          true) {
                                                                        //print(selectedIds.);
                                                                      }
                                                                    });
                                                                  },
                                                                  cells: [
                                                                    DataCell(
                                                                        AutoSizeText(
                                                                            '${item['mrn']}')),
                                                                    DataCell(
                                                                        AutoSizeText(
                                                                            item['name'])),
                                                                    DataCell(
                                                                        AutoSizeText(
                                                                            '${item['location']}')),
                                                                    DataCell(
                                                                        AutoSizeText(
                                                                            '${item['bed']}')),
                                                                    DataCell(
                                                                        AutoSizeText(
                                                                            '${item['duration']}')),
                                                                  ],
                                                                );
                                                              }).toList()
                                                            : selData == 8
                                                                ? data8.map(
                                                                    (item) {
                                                                    bool
                                                                        selected =
                                                                        selectedIds
                                                                            .contains(item['mrn']);
                                                                    return DataRow(
                                                                      selected:
                                                                          selected,
                                                                      onSelectChanged:
                                                                          (value) {
                                                                        setState(
                                                                            () {
                                                                          selValue =
                                                                              value!;

                                                                          if (selected) {
                                                                            selectedIds.remove(item['mrn']);
                                                                            selected =
                                                                                false;
                                                                          } else {
                                                                            selectedIds.add(item['mrn']);
                                                                          }

                                                                          if (selValue ==
                                                                              true) {
                                                                            //print(selectedIds.);
                                                                          }
                                                                        });
                                                                      },
                                                                      cells: [
                                                                        DataCell(
                                                                            AutoSizeText('${item['mrn']}')),
                                                                        DataCell(
                                                                            AutoSizeText(item['name'])),
                                                                        DataCell(
                                                                            AutoSizeText('${item['location']}')),
                                                                        DataCell(
                                                                            AutoSizeText('${item['bed']}')),
                                                                        DataCell(
                                                                            AutoSizeText('${item['duration']}')),
                                                                      ],
                                                                    );
                                                                  }).toList()
                                                                : data9.map(
                                                                    (item) {
                                                                    bool
                                                                        selected =
                                                                        selectedIds
                                                                            .contains(item['mrn']);
                                                                    return DataRow(
                                                                      selected:
                                                                          selected,
                                                                      onSelectChanged:
                                                                          (value) {
                                                                        setState(
                                                                            () {
                                                                          selValue =
                                                                              value!;

                                                                          if (selected) {
                                                                            selectedIds.remove(item['mrn']);
                                                                            selected =
                                                                                false;
                                                                          } else {
                                                                            selectedIds.add(item['mrn']);
                                                                          }

                                                                          if (selValue ==
                                                                              true) {
                                                                            //print(selectedIds.);
                                                                          }
                                                                        });
                                                                      },
                                                                      cells: [
                                                                        DataCell(
                                                                            AutoSizeText('${item['mrn']}')),
                                                                        DataCell(
                                                                            AutoSizeText(item['name'])),
                                                                        DataCell(
                                                                            AutoSizeText('${item['location']}')),
                                                                        DataCell(
                                                                            AutoSizeText('${item['bed']}')),
                                                                        DataCell(
                                                                            AutoSizeText('${item['duration']}')),
                                                                      ],
                                                                    );
                                                                  }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget returnPatientInfo() {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.34,
          child: const Divider(
            color: kLightGrey,
            height: 1, // thickness of the line
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.2,
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText('Muhammad'),
      ],
    );
  }

  Route _createRoute1() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const MyApp(),
      transitionDuration: const Duration(seconds: 0),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  Route _createRoute2() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const Prescribing(),
      transitionDuration: const Duration(seconds: 0),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  Route _createRoute3() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const Prescribing(),
      transitionDuration: const Duration(seconds: 0),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }
}
