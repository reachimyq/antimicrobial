import 'package:antimicrobial/templates.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'main.dart';
import 'package:data_table_2/data_table_2.dart';

class Prescribing extends StatefulWidget {
  const Prescribing({Key? key}) : super(key: key);

  @override
  State<Prescribing> createState() => _PrescribingState();
}

class _PrescribingState extends State<Prescribing> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  var menuBColor = kBlack;
  var menuTColor = kTextGrey;
  var dashBColor = kBlack;
  var dashTColor = kTextGrey;
  var presBColor = kBrownGrey;
  var presTColor = kWhite;
  var resBColor = kBlack;
  var resTColor = kTextGrey;

  List<String> items = [
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

  String selectedItem = "Amikacin";

  int selData = 2;
  bool selValue = false;
  String selPatient = "";

  String abxValue = "100 (44%)";
  int selectedRow = -1;

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
      'duration': 12
    },
    {
      'mrn': 228751,
      'name': 'Emma White',
      'location': 'AMU',
      'bed': 'C5',
      'duration': 4
    },
    {
      'mrn': 394685,
      'name': 'Isabella Kim',
      'location': 'Edgecombe 2',
      'bed': 'C2',
      'duration': 6
    },
    {
      'mrn': 4711236,
      'name': 'Amir Khan',
      'location': 'Edgecombe 2',
      'bed': 'A1',
      'duration': 11
    },
    {
      'mrn': 506238,
      'name': 'Sam Price',
      'location': 'Fairfield 2',
      'bed': 'B1',
      'duration': 5
    },
    {
      'mrn': 989992,
      'name': 'Olivia Smith',
      'location': 'Purley 1',
      'bed': 'D3',
      'duration': 13
    },
    {
      'mrn': 892645,
      'name': 'Noah Martin',
      'location': 'Purley 3',
      'bed': 'A3',
      'duration': 22
    },
    {
      'mrn': 101658,
      'name': 'Yasmin Ahmed',
      'location': 'Queens 2',
      'bed': 'SR1',
      'duration': 3
    },
  ];

  List<Map<String, dynamic>> data2 = [
    {
      'mrn': 557692,
      'name': 'Alejandro Lopez',
      'location': 'Queens 1',
      'bed': 'SR3',
      'duration': 6
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

  List<Map<String, dynamic>> data4 = [
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
                        const AutoSizeText(
                          'AMS\nGuardian',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'Helvetica'),
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
                              AutoSizeText('MENU',
                                  style: TextStyle(
                                      color: menuTColor,
                                      fontSize: 16,
                                      fontFamily: 'Helvetica')),
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
                                  setState(() {
                                    Navigator.of(context).push(_createRoute1());
                                  });
                                },
                                child: AutoSizeText('Dashboard',
                                    style: TextStyle(
                                        color: dashTColor,
                                        fontSize: 16,
                                        fontFamily: 'Helvetica')),
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
                                  setState(() {
                                    Navigator.of(context).push(_createRoute2());
                                  });
                                },
                                child: AutoSizeText('Prescribing',
                                    style: TextStyle(
                                        color: presTColor,
                                        fontSize: 16,
                                        fontFamily: 'Helvetica')),
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
                                child: AutoSizeText('Resistance',
                                    style: TextStyle(
                                        color: resTColor,
                                        fontSize: 16,
                                        fontFamily: 'Helvetica')),
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
                    const AutoSizeText('Croydon University Hospital',
                        style: TextStyle(
                            color: kBlack,
                            fontSize: 28,
                            fontFamily: 'Helvetica')),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.58,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AutoSizeText('Imran Qureshi',
                            style: TextStyle(
                                color: kBlack,
                                fontSize: 14,
                                fontFamily: 'Helvetica')),
                        AutoSizeText('Consultant',
                            style: TextStyle(
                                color: kTextGrey,
                                fontSize: 12,
                                fontFamily: 'Helvetica')),
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
                        AutoSizeText('Prescribing',
                            style: TextStyle(
                                color: kBlack,
                                fontSize: 18,
                                fontFamily: 'Helvetica')),
                        Row(
                          children: [
                            AutoSizeText('Prescribing ',
                                style: TextStyle(
                                    color: kLightGrey,
                                    fontSize: 15,
                                    fontFamily: 'Helvetica')),
                            AutoSizeText('→ Overview',
                                style: TextStyle(
                                    color: kBlack,
                                    fontSize: 15,
                                    fontFamily: 'Helvetica')),
                          ],
                        ),
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
                    Container(
                      width: MediaQuery.of(context).size.width * 0.127,
                      height: MediaQuery.of(context).size.height * 0.128,
                      decoration: BoxDecoration(
                        border: Border.all(color: kLightGrey, width: 0.5),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(6),
                        ),
                        color: kWhite,
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.0067,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.015,
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

                                    if (newValue == "Amikacin") {
                                      abxValue = '100 (44%)';
                                    } else if (newValue == "Amoxicillin") {
                                      abxValue = '80 (35%)';
                                    } else if (newValue == "Ceftazidime") {
                                      abxValue = '10 (4%)';
                                    } else if (newValue == "Ceftriaxone") {
                                      abxValue = '150 (67%)';
                                    } else if (newValue == "Ciprofloxacin") {
                                      abxValue = '50 (22%)';
                                    } else if (newValue == "Clindamycin") {
                                      abxValue = '20 (8%)';
                                    }
                                  });
                                },
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              AutoSizeText(abxValue,
                                  style: const TextStyle(
                                      color: kBlack,
                                      fontSize: 20,
                                      fontFamily: 'Helvetica')),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selData = 1;
                          b1BackColour = kGreen;
                          b1TopText = kWhite;
                          b1BottomText = kWhite;
                          b2BackColour = kWhite;
                          b2TopText = kGreen;
                          b2BottomText = kBlack;
                          b3BackColour = kWhite;
                          b3TopText = kLightGrey;
                          b3BottomText = kBlack;
                          b4BackColour = kWhite;
                          b4TopText = kBlack;
                          b4BottomText = kBlack;
                          b5BackColour = kWhite;
                          b5TopText = kYellow;
                          b5BottomText = kBlack;
                          b6BackColour = kWhite;
                          b6TopText = kBlack;
                          b6BottomText = kBlack;
                          b7BackColour = kWhite;
                          b7TopText = kGreen;
                          b7BottomText = kBlack;
                          b8BackColour = kWhite;
                          b8TopText = kLightGrey;
                          b8BottomText = kBlack;
                          b9BackColour = kWhite;
                          b9TopText = kBlack;
                          b9BottomText = kBlack;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.127,
                        height: MediaQuery.of(context).size.height * 0.128,
                        decoration: BoxDecoration(
                          border: Border.all(color: kLightGrey, width: 0.5),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(6),
                          ),
                          color: b1BackColour,
                          shape: BoxShape.rectangle,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.0067,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.115,
                                  child: AutoSizeText(
                                      'On Aminoglycosides with impaired renal function',
                                      style: TextStyle(
                                          color: b1TopText,
                                          fontSize: 15,
                                          fontFamily: 'Helvetica',
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                AutoSizeText('82 (22%)',
                                    style: TextStyle(
                                        color: b1BottomText,
                                        fontSize: 20,
                                        fontFamily: 'Helvetica')),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selData = 2;
                          b1BackColour = kWhite;
                          b1TopText = kBlack;
                          b1BottomText = kBlack;
                          b2BackColour = kGreen;
                          b2TopText = kWhite;
                          b2BottomText = kWhite;
                          b3BackColour = kWhite;
                          b3TopText = kLightGrey;
                          b3BottomText = kBlack;
                          b4BackColour = kWhite;
                          b4TopText = kBlack;
                          b4BottomText = kBlack;
                          b5BackColour = kWhite;
                          b5TopText = kYellow;
                          b5BottomText = kBlack;
                          b6BackColour = kWhite;
                          b6TopText = kBlack;
                          b6BottomText = kBlack;
                          b7BackColour = kWhite;
                          b7TopText = kGreen;
                          b7BottomText = kBlack;
                          b8BackColour = kWhite;
                          b8TopText = kLightGrey;
                          b8BottomText = kBlack;
                          b9BackColour = kWhite;
                          b9TopText = kBlack;
                          b9BottomText = kBlack;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.127,
                        height: MediaQuery.of(context).size.height * 0.128,
                        decoration: BoxDecoration(
                          border: Border.all(color: kLightGrey, width: 0.5),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(6),
                          ),
                          color: b2BackColour,
                          shape: BoxShape.rectangle,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.0067,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.115,
                                  child: AutoSizeText('On Aminoglycosides for > 5 days',
                                      style: TextStyle(
                                          color: b2TopText,
                                          fontSize: 15,
                                          fontFamily: 'Helvetica',
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                AutoSizeText('33 (8%)',
                                    style: TextStyle(
                                        color: b2BottomText,
                                        fontSize: 20,
                                        fontFamily: 'Helvetica')),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selData = 3;
                          b1BackColour = kWhite;
                          b1TopText = kBlack;
                          b1BottomText = kBlack;
                          b2BackColour = kWhite;
                          b2TopText = kGreen;
                          b2BottomText = kBlack;
                          b3BackColour = kGreen;
                          b3TopText = kWhite;
                          b3BottomText = kWhite;
                          b4BackColour = kWhite;
                          b4TopText = kBlack;
                          b4BottomText = kBlack;
                          b5BackColour = kWhite;
                          b5TopText = kYellow;
                          b5BottomText = kBlack;
                          b6BackColour = kWhite;
                          b6TopText = kBlack;
                          b6BottomText = kBlack;
                          b7BackColour = kWhite;
                          b7TopText = kGreen;
                          b7BottomText = kBlack;
                          b8BackColour = kWhite;
                          b8TopText = kLightGrey;
                          b8BottomText = kBlack;
                          b9BackColour = kWhite;
                          b9TopText = kBlack;
                          b9BottomText = kBlack;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.127,
                        height: MediaQuery.of(context).size.height * 0.128,
                        decoration: BoxDecoration(
                          border: Border.all(color: kLightGrey, width: 0.5),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(6),
                          ),
                          color: b3BackColour,
                          shape: BoxShape.rectangle,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.0067,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.115,
                                  child: AutoSizeText(
                                      'On TDM with persistently high or low TDM levels',
                                      style: TextStyle(
                                          color: b3TopText,
                                          fontSize: 15,
                                          fontFamily: 'Helvetica',
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                AutoSizeText('3 (1%)',
                                    style: TextStyle(
                                        color: b3BottomText,
                                        fontSize: 20,
                                        fontFamily: 'Helvetica')),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selData = 4;
                          b1BackColour = kWhite;
                          b1TopText = kBlack;
                          b1BottomText = kBlack;
                          b2BackColour = kWhite;
                          b2TopText = kGreen;
                          b2BottomText = kBlack;
                          b3BackColour = kWhite;
                          b3TopText = kLightGrey;
                          b3BottomText = kBlack;
                          b4BackColour = kGreen;
                          b4TopText = kWhite;
                          b4BottomText = kWhite;
                          b5BackColour = kWhite;
                          b5TopText = kYellow;
                          b5BottomText = kBlack;
                          b6BackColour = kWhite;
                          b6TopText = kBlack;
                          b6BottomText = kBlack;
                          b7BackColour = kWhite;
                          b7TopText = kGreen;
                          b7BottomText = kBlack;
                          b8BackColour = kWhite;
                          b8TopText = kLightGrey;
                          b8BottomText = kBlack;
                          b9BackColour = kWhite;
                          b9TopText = kBlack;
                          b9BottomText = kBlack;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.127,
                        height: MediaQuery.of(context).size.height * 0.128,
                        decoration: BoxDecoration(
                          border: Border.all(color: kLightGrey, width: 0.5),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(6),
                          ),
                          color: b4BackColour,
                          shape: BoxShape.rectangle,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.0067,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.115,
                                  child: AutoSizeText(
                                      'On IV antibiotic which is highly bioavailable',
                                      style: TextStyle(
                                          color: b4TopText,
                                          fontSize: 15,
                                          fontFamily: 'Helvetica',
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                AutoSizeText('20 (6%)',
                                    style: TextStyle(
                                        color: b4BottomText,
                                        fontSize: 20,
                                        fontFamily: 'Helvetica')),
                              ],
                            ),
                          ],
                        ),
                      ),
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
                                        fontWeight: FontWeight.bold)),
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
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
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
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selData = 5;
                          b1BackColour = kWhite;
                          b1TopText = kBlack;
                          b1BottomText = kBlack;
                          b2BackColour = kWhite;
                          b2TopText = kGreen;
                          b2BottomText = kBlack;
                          b3BackColour = kWhite;
                          b3TopText = kLightGrey;
                          b3BottomText = kBlack;
                          b4BackColour = kWhite;
                          b4TopText = kBlack;
                          b4BottomText = kBlack;
                          b5BackColour = kGreen;
                          b5TopText = kWhite;
                          b5BottomText = kWhite;
                          b6BackColour = kWhite;
                          b6TopText = kBlack;
                          b6BottomText = kBlack;
                          b7BackColour = kWhite;
                          b7TopText = kGreen;
                          b7BottomText = kBlack;
                          b8BackColour = kWhite;
                          b8TopText = kLightGrey;
                          b8BottomText = kBlack;
                          b9BackColour = kWhite;
                          b9TopText = kBlack;
                          b9BottomText = kBlack;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.127,
                        height: MediaQuery.of(context).size.height * 0.128,
                        decoration: BoxDecoration(
                          border: Border.all(color: kLightGrey, width: 0.5),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(6),
                          ),
                          color: b5BackColour,
                          shape: BoxShape.rectangle,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.0067,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.115,
                                  child: AutoSizeText(
                                      'Patient on antibiotics with diarrhoea',
                                      style: TextStyle(
                                          color: b5TopText,
                                          fontSize: 15,
                                          fontFamily: 'Helvetica',
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                AutoSizeText('12 (3%)',
                                    style: TextStyle(
                                        color: b5BottomText,
                                        fontSize: 20,
                                        fontFamily: 'Helvetica')),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selData = 6;
                          b1BackColour = kWhite;
                          b1TopText = kBlack;
                          b1BottomText = kBlack;
                          b2BackColour = kWhite;
                          b2TopText = kGreen;
                          b2BottomText = kBlack;
                          b3BackColour = kWhite;
                          b3TopText = kLightGrey;
                          b3BottomText = kBlack;
                          b4BackColour = kWhite;
                          b4TopText = kBlack;
                          b4BottomText = kBlack;
                          b5BackColour = kWhite;
                          b5TopText = kYellow;
                          b5BottomText = kBlack;
                          b6BackColour = kGreen;
                          b6TopText = kWhite;
                          b6BottomText = kWhite;
                          b7BackColour = kWhite;
                          b7TopText = kGreen;
                          b7BottomText = kBlack;
                          b8BackColour = kWhite;
                          b8TopText = kLightGrey;
                          b8BottomText = kBlack;
                          b9BackColour = kWhite;
                          b9TopText = kBlack;
                          b9BottomText = kBlack;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.127,
                        height: MediaQuery.of(context).size.height * 0.128,
                        decoration: BoxDecoration(
                          border: Border.all(color: kLightGrey, width: 0.5),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(6),
                          ),
                          color: b6BackColour,
                          shape: BoxShape.rectangle,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.0067,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.115,
                                  child: AutoSizeText(
                                      'On incorrect antibiotic for the indication',
                                      style: TextStyle(
                                          color: b6TopText,
                                          fontSize: 15,
                                          fontFamily: 'Helvetica',
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                AutoSizeText('40 (10%)',
                                    style: TextStyle(
                                        color: b6BottomText,
                                        fontSize: 20,
                                        fontFamily: 'Helvetica')),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selData = 7;
                          b1BackColour = kWhite;
                          b1TopText = kBlack;
                          b1BottomText = kBlack;
                          b2BackColour = kWhite;
                          b2TopText = kGreen;
                          b2BottomText = kBlack;
                          b3BackColour = kWhite;
                          b3TopText = kLightGrey;
                          b3BottomText = kBlack;
                          b4BackColour = kWhite;
                          b4TopText = kBlack;
                          b4BottomText = kBlack;
                          b5BackColour = kWhite;
                          b5TopText = kYellow;
                          b5BottomText = kBlack;
                          b6BackColour = kWhite;
                          b6TopText = kBlack;
                          b6BottomText = kBlack;
                          b7BackColour = kGreen;
                          b7TopText = kWhite;
                          b7BottomText = kWhite;
                          b8BackColour = kWhite;
                          b8TopText = kLightGrey;
                          b8BottomText = kBlack;
                          b9BackColour = kWhite;
                          b9TopText = kBlack;
                          b9BottomText = kBlack;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.127,
                        height: MediaQuery.of(context).size.height * 0.128,
                        decoration: BoxDecoration(
                          border: Border.all(color: kLightGrey, width: 0.5),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(6),
                          ),
                          color: b7BackColour,
                          shape: BoxShape.rectangle,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.0067,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.115,
                                  child: AutoSizeText(
                                      'Has a Penicillin allergy and on antibiotics',
                                      style: TextStyle(
                                          color: b7TopText,
                                          fontSize: 15,
                                          fontFamily: 'Helvetica',
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                AutoSizeText('38 (9%)',
                                    style: TextStyle(
                                        color: b7BottomText,
                                        fontSize: 20,
                                        fontFamily: 'Helvetica')),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selData = 1;
                          b1BackColour = kWhite;
                          b1TopText = kBlack;
                          b1BottomText = kBlack;
                          b2BackColour = kWhite;
                          b2TopText = kGreen;
                          b2BottomText = kBlack;
                          b3BackColour = kWhite;
                          b3TopText = kLightGrey;
                          b3BottomText = kBlack;
                          b4BackColour = kWhite;
                          b4TopText = kBlack;
                          b4BottomText = kBlack;
                          b5BackColour = kWhite;
                          b5TopText = kYellow;
                          b5BottomText = kBlack;
                          b6BackColour = kWhite;
                          b6TopText = kBlack;
                          b6BottomText = kBlack;
                          b7BackColour = kWhite;
                          b7TopText = kGreen;
                          b7BottomText = kBlack;
                          b8BackColour = kGreen;
                          b8TopText = kWhite;
                          b8BottomText = kWhite;
                          b9BackColour = kWhite;
                          b9TopText = kBlack;
                          b9BottomText = kBlack;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.127,
                        height: MediaQuery.of(context).size.height * 0.128,
                        decoration: BoxDecoration(
                          border: Border.all(color: kLightGrey, width: 0.5),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(6),
                          ),
                          color: b8BackColour,
                          shape: BoxShape.rectangle,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.0067,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.115,
                                  child: AutoSizeText(
                                      'Patients with malignancy on antibiotics',
                                      style: TextStyle(
                                          color: b8TopText,
                                          fontSize: 15,
                                          fontFamily: 'Helvetica',
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                AutoSizeText('5 (2%)',
                                    style: TextStyle(
                                        color: b8BottomText,
                                        fontSize: 20,
                                        fontFamily: 'Helvetica')),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selData = 1;
                          b1BackColour = kWhite;
                          b1TopText = kBlack;
                          b1BottomText = kBlack;
                          b2BackColour = kWhite;
                          b2TopText = kGreen;
                          b2BottomText = kBlack;
                          b3BackColour = kWhite;
                          b3TopText = kLightGrey;
                          b3BottomText = kBlack;
                          b4BackColour = kWhite;
                          b4TopText = kBlack;
                          b4BottomText = kBlack;
                          b5BackColour = kWhite;
                          b5TopText = kYellow;
                          b5BottomText = kBlack;
                          b6BackColour = kWhite;
                          b6TopText = kBlack;
                          b6BottomText = kBlack;
                          b7BackColour = kWhite;
                          b7TopText = kGreen;
                          b7BottomText = kBlack;
                          b8BackColour = kWhite;
                          b8TopText = kLightGrey;
                          b8BottomText = kBlack;
                          b9BackColour = kGreen;
                          b9TopText = kWhite;
                          b9BottomText = kWhite;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.127,
                        height: MediaQuery.of(context).size.height * 0.128,
                        decoration: BoxDecoration(
                          border: Border.all(color: kLightGrey, width: 0.5),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(6),
                          ),
                          color: b9BackColour,
                          shape: BoxShape.rectangle,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.0067,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.115,
                                  child: AutoSizeText(
                                      'Patients with complicated infections',
                                      style: TextStyle(
                                          color: b9TopText,
                                          fontSize: 15,
                                          fontFamily: 'Helvetica',
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                AutoSizeText('30 (8%)',
                                    style: TextStyle(
                                        color: b9BottomText,
                                        fontSize: 20,
                                        fontFamily: 'Helvetica')),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.0855,
                      height: MediaQuery.of(context).size.height * 0.126,
                      decoration: BoxDecoration(
                        border: Border.all(color: kYellow, width: 0.5),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(6),
                        ),
                        color: kYellow,
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // SizedBox(
                          //   width: MediaQuery.of(context).size.width * 0.0067,
                          // ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          const Center(
                            child: AutoSizeText('Ward\nRound',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: kWhite,
                                    fontSize: 16,
                                    fontFamily: 'Helvetica',
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0258,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.028,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.82,
                      height: 0.25,
                      color: kTextGrey,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.028,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.398,
                              height:
                                  MediaQuery.of(context).size.height * 0.4066,
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
                                    ? data2.map((item) {
                                        bool selected =
                                            selectedIds.contains(item['mrn']);
                                        return DataRow(
                                          selected: selected,
                                          onSelectChanged: (value) {
                                            bool selected = selectedIds
                                                .contains(item['mrn']);

                                            setState(() {
                                              selValue = value!;

                                              print('Item = ${item['mrn']}');
                                              print(value);

                                              if (selValue == true) {
                                                if (item['mrn'].toString() ==
                                                    '557692') {
                                                  selPatient =
                                                      "Alejandro Lopez";
                                                } else if (selectedIds
                                                    .contains('228751')) {
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

                                                print(selected);
                                                print(
                                                    'Selected patient = $selPatient');
                                              }
                                            });
                                          },
                                          cells: [
                                            DataCell(AutoSizeText('${item['mrn']}')),
                                            DataCell(AutoSizeText(item['name'])),
                                            DataCell(
                                                AutoSizeText('${item['location']}')),
                                            DataCell(AutoSizeText('${item['bed']}')),
                                            DataCell(
                                                AutoSizeText('${item['duration']}')),
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
                                                    if (item['mrn']
                                                            .toString() ==
                                                        '557692') {
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
                                                DataCell(
                                                    AutoSizeText('${item['mrn']}')),
                                                DataCell(AutoSizeText(item['name'])),
                                                DataCell(AutoSizeText(
                                                    '${item['location']}')),
                                                DataCell(
                                                    AutoSizeText('${item['bed']}')),
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
                                                                DataCell(AutoSizeText(
                                                                    '${item['mrn']}')),
                                                                DataCell(AutoSizeText(
                                                                    item[
                                                                        'name'])),
                                                                DataCell(AutoSizeText(
                                                                    '${item['location']}')),
                                                                DataCell(AutoSizeText(
                                                                    '${item['bed']}')),
                                                                DataCell(AutoSizeText(
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
                                                                    DataCell(AutoSizeText(
                                                                        '${item['mrn']}')),
                                                                    DataCell(AutoSizeText(
                                                                        item[
                                                                            'name'])),
                                                                    DataCell(AutoSizeText(
                                                                        '${item['location']}')),
                                                                    DataCell(AutoSizeText(
                                                                        '${item['bed']}')),
                                                                    DataCell(AutoSizeText(
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
                            Padding(
                              padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width *
                                      0.023),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.38,
                                width: 0.25,
                                color: kTextGrey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      //color: Colors.orange,
                      width: MediaQuery.of(context).size.width * 0.398,
                      height: MediaQuery.of(context).size.height * 0.4066,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            // SizedBox(
                            //   height: MediaQuery.of(context).size.height * 0.0125,
                            // ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width *
                                      0.023),
                              child: (selData == 2) &&
                                      (selPatient == "Alejandro Lopez")
                                  ? SingleChildScrollView(
                                      child: PatientRenalInfo(),
                                    )
                                  : Container(),
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
