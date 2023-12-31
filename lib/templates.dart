import 'package:auto_size_text/auto_size_text.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'package:overlayment/overlayment.dart';

import 'data.dart';

class widgets extends StatelessWidget {
  const widgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class BorderBox extends StatelessWidget {
  final double height;
  final double width;
  final Color colour;
  final double lwidth;
  final Widget child;
  final double curve;

  const BorderBox(
      {Key? key,
      required this.height,
      required this.width,
      required this.colour,
      required this.lwidth,
      required this.child,
      required this.curve})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * (height / 844),
      width: MediaQuery.of(context).size.width * (width / 390),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(curve),
        ),
        border: Border.all(
          color: colour, // Set border color
          width: lwidth, // Set border width
        ),
      ),
      child: child,
    );
  }
}

class DashButton extends StatelessWidget {
  final String title;
  final String explanation;
  final Color colour;
  final String location;
  final double number;
  final Widget child;

  const DashButton(
      {Key? key,
      required this.title,
      required this.explanation,
      required this.location,
      required this.number,
      required this.colour,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * (height / 844),
      // width: MediaQuery.of(context).size.width * (width / 390),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Circle with picture
              Container(
                width: MediaQuery.of(context).size.width * 0.03,
                height: MediaQuery.of(context).size.height * 0.06,
                decoration:
                    BoxDecoration(color: colour, shape: BoxShape.circle),
                child: Container(
                    //color: Colors.pink,
                    width: MediaQuery.of(context).size.width * 0.0105,
                    height: MediaQuery.of(context).size.height * 0.031,
                    child: Image.asset('images/$location')),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * (5 / 1180),
              ),
              // Number
              AutoSizeText(
                '$number',
                style: TextStyle(
                    color: colour,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Helvetica'),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * (10 / 1180),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title with button
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AutoSizeText(
                    title,
                    style: const TextStyle(
                        color: kdarkGrey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Helvetica'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * (5 / 1180),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.03,
                    child: ElevatedButton(
                      onPressed: () async {
                        Overlayment.show(
                            context: context,
                            OverPanel(
                              height: MediaQuery.of(context).size.height * 1,
                              width: MediaQuery.of(context).size.width * 0.4,
                              //offset: Offset.zero,
                              child: child,
                              alignment: Alignment.centerRight,
                              color: kWhite,
                            ));
                        //_show(alignment);
                      },
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => kdarkGrey)),
                      child: Image.asset('images/right_triangle.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * (15 / 1180),
              ),
              // Explanation
              Container(
                width: MediaQuery.of(context).size.width * (70 / 632),
                height: MediaQuery.of(context).size.height * (40 / 1180),
                child: AutoSizeText(
                  explanation,
                  style: const TextStyle(
                      color: kdarkGrey,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Helvetica'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class InfoTemplate extends StatelessWidget {
  final String title;
  final double number;
  final Color colour;

  const InfoTemplate({
    Key? key,
    required this.title,
    required this.number,
    required this.colour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                //color: Colors.orange,
                width: MediaQuery.of(context).size.width * 0.075,
                height: MediaQuery.of(context).size.height * 0.025,
                child: AutoSizeText(title,
                    style: TextStyle(
                        color: colour,
                        fontSize: 15,
                        fontFamily: 'Helvetica',
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                //color: Colors.orange,
                width: MediaQuery.of(context).size.width * 0.024,
                height: MediaQuery.of(context).size.height * 0.035,
                child: AutoSizeText('$number',
                    style: const TextStyle(
                        color: kBlack, fontSize: 25, fontFamily: 'Helvetica')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PatientUnwellInfo extends StatelessWidget {
  PatientUnwellInfo({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> bloods = [
    {
      'Date': '07.11',
      'HB': '88',
      'WBC': '17.8',
      'Neut': '15.3',
      'Plt': '456',
      'CRP': '267',
      'Urea': '10.3',
      'Cr': '130',
      'eGFR': '36',
      'ALP': '125',
      'ALT': '32',
    },
    {
      'Date': '07.11',
      'HB': '92',
      'WBC': '16.9',
      'Neut': '15.2',
      'Plt': '489',
      'CRP': '269',
      'Urea': '11.4',
      'Cr': '132',
      'eGFR': '32',
      'ALP': '138',
      'ALT': '28',
    },
    {
      'Date': '08.11',
      'HB': '90',
      'WBC': '17.5',
      'Neut': '16.1',
      'Plt': '535',
      'CRP': '290',
      'Urea': '11.2',
      'Cr': '140',
      'eGFR': '30',
      'ALP': '128',
      'ALT': '24',
    }
  ];

  final List<Map<String, dynamic>> obs = [
    {
      'Date': '07.11',
      'Temp': '38.3',
      'HR': '105',
      'BP': '105/78',
      'RR': '24',
      'Sats': '92%',
    },
    {
      'Date': '07.11',
      'Temp': '38.4',
      'HR': '111',
      'BP': '90/75',
      'RR': '24',
      'Sats': '92%',
    },
    {
      'Date': '07.11',
      'Temp': '38.2',
      'HR': '110',
      'BP': '92/72',
      'RR': '24',
      'Sats': '90%',
    },
    {
      'Date': '08.11',
      'Temp': '37.6',
      'HR': '102',
      'BP': '103/84',
      'RR': '22',
      'Sats': '92%',
    },
    {
      'Date': '08.11',
      'Temp': '39.0',
      'HR': '118',
      'BP': '92/68',
      'RR': '24',
      'Sats': '92%',
    },
    {
      'Date': '08.11',
      'Temp': '38.8',
      'HR': '116',
      'BP': '88/64',
      'RR': '26',
      'Sats': '90%',
    },
  ];

  final List<Map<String, dynamic>> antimicrobials = [
    {
      'Antibiotic': 'Amoxicillin',
      'Route': 'IV',
      'Dose': '1g tds',
      'Start': '07.11',
      'Stop': '-',
      'Duration': '2',
      'Indication': 'CAP',
    },
    {
      'Antibiotic': 'Clarithromycin',
      'Route': 'PO',
      'Dose': '500mg bd',
      'Start': '07.11',
      'Stop': '-',
      'Duration': '2',
      'Indication': 'CAP',
    },
    {
      'Antibiotic': 'Amikacin',
      'Route': 'IV',
      'Dose': '1g stat',
      'Start': '07.11',
      'Stop': '07.11',
      'Duration': '1',
      'Indication': 'CAP',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        Container(
          child: const AutoSizeText(
            'Patient Details',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.125,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      AutoSizeText('Name: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: kGreen)),
                      AutoSizeText('Muhammad Khan'),
                    ],
                  ),
                  SizedBoxH(height: 5),
                  Row(
                    children: [
                      AutoSizeText('Number: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: kGreen)),
                      AutoSizeText('123456'),
                    ],
                  ),
                  SizedBoxH(height: 5),
                  Row(
                    children: [
                      AutoSizeText('Age/Sex: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: kGreen)),
                      AutoSizeText('62 year old male'),
                    ],
                  ),
                  SizedBoxH(height: 5),
                  Row(
                    children: [
                      AutoSizeText('Admission Type: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: kGreen)),
                      AutoSizeText('Emergency Admission'),
                    ],
                  ),
                  SizedBoxH(height: 5),
                  Row(
                    children: [
                      AutoSizeText('Admission Date: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: kGreen)),
                      AutoSizeText('7th November 2023'),
                      Spacer(),
                      AutoSizeText('Day 8'),
                      SizedBoxW(width: 20),
                    ],
                  ),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Admission Clerking',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 1.21,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    'PC:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Cough, fever, sweating and sob\n'),
                  AutoSizeText(
                    'HPC:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText(
                      'Muhammad presented with a three day history of feeling unwell, becoming increasingly short of breath. He complained of some chest pain, sweating, and fevers.\n\nMuhammad recently travelled to Spain for a work-related trip where he stayed in a hotel and went swimming at the beach. He started to feel unwell about four days after returning from his trip. He has a slight cough, which is productive of green sputum. He feels tired and has had a fever and been sweating. He has no headache, nausea or vomiting.\n\nHe drank only bottled water in Spain and ate at a number of restaurants. He denies any diarrhoea or pr bleeding. Of note, he travelled with his wife and children and none of them are unwell.\n'),
                  AutoSizeText(
                    'PMH:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Asthma\n'),
                  AutoSizeText(
                    'Allergies:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('NKDA\n'),
                  AutoSizeText(
                    'DH:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Salbutamol 2 puffs BD prn\n'),
                  AutoSizeText(
                    'SH:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText(
                      'Works as an accountant\nLives with his wife and three children\nIndependent of ADLs\nSmokes 5 cigarettes per day\nETOH none\n'),
                  AutoSizeText(
                    'OE:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText(
                      'Temp: 38.2\nHR: 105\nBP: 105/86\nRR: 24\nSats: 91% on 4 litres nasal cannulae\n\nResp:\nCrackles at the right mid-zone\n\nCVS\nHeart sounds normal\n'),
                  AutoSizeText(
                    'DD:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Pneumonia\nAtypical infection\nLegionella\n'),
                  AutoSizeText(
                    'Plan:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText(
                      'Antibiotics\nIV Fluids\nOxygen\nBlood Gas\nBlood Cultures\nChest X-ray\n'),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const Row(
          children: [
            SizedBoxW(width: 10),
            AutoSizeText(
              'Observations',
              style: TextStyle(fontWeight: FontWeight.bold, color: kGreen),
            ),
          ],
        ),
        SizedBoxH(height: 10),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.34,
          height: MediaQuery.of(context).size.height * 0.35,
          child: DataTable2(
            showCheckboxColumn: false,
            columnSpacing: 12,
            horizontalMargin: 12,
            minWidth: 300,
            columns: const [
              DataColumn2(
                label: AutoSizeText('Date',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                size: ColumnSize.L,
              ),
              DataColumn(
                label: AutoSizeText('Temp',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('HR',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('BP',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('RR',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('Sats',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
            ],
            rows: obs.map((item) {
              return DataRow(
                selected: false,
                onSelectChanged: (value) {
                  //bool selected = selectedIds.contains(item['mrn']);
                },
                cells: [
                  DataCell(AutoSizeText(item['Date'])),
                  DataCell(AutoSizeText(item['Temp'])),
                  DataCell(AutoSizeText(item['HR'])),
                  DataCell(AutoSizeText(item['BP'])),
                  DataCell(AutoSizeText(item['RR'])),
                  DataCell(AutoSizeText(item['Sats'])),
                ],
              );
            }).toList(),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const Row(
          children: [
            SizedBoxW(width: 10),
            AutoSizeText(
              'Blood Results',
              style: TextStyle(fontWeight: FontWeight.bold, color: kGreen),
            ),
          ],
        ),
        SizedBoxH(height: 10),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.34,
          height: MediaQuery.of(context).size.height * 0.21,
          child: DataTable2(
            showCheckboxColumn: false,
            columnSpacing: 12,
            horizontalMargin: 12,
            minWidth: 300,
            columns: const [
              DataColumn2(
                label: AutoSizeText('Date',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                size: ColumnSize.L,
              ),
              DataColumn(
                label: AutoSizeText('HB',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('WBC',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('Neut',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('Plt',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('CRP',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                //numeric: true,
              ),
              DataColumn(
                label: AutoSizeText('Urea',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                //numeric: true,
              ),
              DataColumn(
                label: AutoSizeText('Cr',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                //numeric: true,
              ),
              DataColumn(
                label: AutoSizeText('eGFR',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                //numeric: true,
              ),
              DataColumn(
                label: AutoSizeText('ALP',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                //numeric: true,
              ),
              DataColumn(
                label: AutoSizeText('ALT',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                //numeric: true,
              ),
            ],
            rows: bloods.map((item) {
              return DataRow(
                selected: false,
                onSelectChanged: (value) {
                  //bool selected = selectedIds.contains(item['mrn']);
                },
                cells: [
                  DataCell(AutoSizeText(item['Date'])),
                  DataCell(AutoSizeText(item['HB'])),
                  DataCell(AutoSizeText(item['WBC'])),
                  DataCell(AutoSizeText(item['Neut'])),
                  DataCell(AutoSizeText(item['Plt'])),
                  DataCell(AutoSizeText(item['CRP'])),
                  DataCell(AutoSizeText(item['Urea'])),
                  DataCell(AutoSizeText(item['Cr'])),
                  DataCell(AutoSizeText(item['eGFR'])),
                  DataCell(AutoSizeText(item['ALP'])),
                  DataCell(AutoSizeText(item['ALT'])),
                ],
              );
            }).toList(),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Microbiology Results',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.16,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    '07.11.23 Urine: Pneumococcal Antigen',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Not detected\n'),
                  AutoSizeText(
                    '07.11.23 Urine: Legionella Antigen',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Not detected\n'),
                  AutoSizeText(
                    '07.11.23 Blood Cultures',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Not detected'),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Radiology Results',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.13,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    '07.11.23 Chest X-Ray\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText(
                      'Clinical details: Presented with fever, cough and shortness of breath.\n'),
                  AutoSizeText(
                      'There is evidence of dense consolidation at the lower left base of the lung. There are no other suspicious masses or lesions. '),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const Row(
          children: [
            SizedBoxW(width: 10),
            AutoSizeText(
              'Antimicrobial Therapy',
              style: TextStyle(fontWeight: FontWeight.bold, color: kGreen),
            ),
          ],
        ),
        SizedBoxH(height: 10),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.34,
          height: MediaQuery.of(context).size.height * 0.2,
          child: DataTable2(
            showCheckboxColumn: false,
            columnSpacing: 12,
            horizontalMargin: 12,
            minWidth: 500,
            columns: const [
              DataColumn2(
                label: AutoSizeText('Antibiotic',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                size: ColumnSize.L,
              ),
              DataColumn(
                label: AutoSizeText('Route',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('Dose',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('Start',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('Stop',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('Duration',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                //numeric: true,
              ),
              DataColumn(
                label: AutoSizeText('Indication',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                //numeric: true,
              ),
            ],
            rows: antimicrobials.map((item) {
              return DataRow(
                selected: false,
                onSelectChanged: (value) {
                  //bool selected = selectedIds.contains(item['mrn']);
                },
                cells: [
                  DataCell(AutoSizeText(item['Antibiotic'])),
                  DataCell(AutoSizeText(item['Route'])),
                  DataCell(AutoSizeText(item['Dose'])),
                  DataCell(AutoSizeText(item['Start'])),
                  DataCell(AutoSizeText(item['Stop'])),
                  DataCell(AutoSizeText(item['Duration'])),
                  DataCell(AutoSizeText(item['Indication'])),
                ],
              );
            }).toList(),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Summary',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.13,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                      'Mr Khan was admitted to Croydon University Hospital on the 07.11.23 with a lower respiratory tract infection. He was commenced on Amoxicillin IV 1g TDS and Clarithromycin 500mg BD as well as being a single dose of Amikacin. Over the past 48 hours, his condition has not improved and he is remains febrile and haemodynamically unstable. His blood results are not improving and his chest x-ray shows evidence of dense consolidation. Of note he has no positive Microbiology results. His conditions continues to deteriorate.'),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Action',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Suggestion',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                      'Given that this patient is deteriorating and is persistently febrile, blood cultures should be repeated as well as an escalation in the antibiotic therapy from Amoxicillin and Clarithromycin to Piperacillin-Tazobactam and Clarithromycin. Continue to monitor the patient for the next 48 hours and discuss with Microbiology if no improvement.'),
                ],
              ),
            )),
        SizedBoxH(height: 20),
      ],
    );
  }
}

class PatientRenalInfo extends StatelessWidget {
  //const PatientRenalInfo({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> bloods = [
    {
      'Date': '10.11',
      'HB': '88',
      'WBC': '15.2',
      'Neut': '13.1',
      'Plt': '672',
      'CRP': '190',
      'Urea': '10.3',
      'Cr': '130',
      'eGFR': '67',
      'ALP': '184',
      'ALT': '32',
    },
    {
      'Date': '11.11',
      'HB': '92',
      'WBC': '14.9',
      'Neut': '12.2',
      'Plt': '700',
      'CRP': '182',
      'Urea': '11.4',
      'Cr': '160',
      'eGFR': '62',
      'ALP': '182',
      'ALT': '28',
    },
    {
      'Date': '12.11',
      'HB': '90',
      'WBC': '15.5',
      'Neut': '13.1',
      'Plt': '709',
      'CRP': '185',
      'Urea': '12.2',
      'Cr': '185',
      'eGFR': '52',
      'ALP': '178',
      'ALT': '26',
    },
    {
      'Date': '13.11',
      'HB': '94',
      'WBC': '15.2',
      'Neut': '12.9',
      'Plt': '730',
      'CRP': '202',
      'Urea': '13.5',
      'Cr': '202',
      'eGFR': '48',
      'ALP': '174',
      'ALT': '24',
    },
    {
      'Date': '14.11',
      'HB': '96',
      'WBC': '14.5',
      'Neut': '11.8',
      'Plt': '726',
      'CRP': '215',
      'Urea': '11.2',
      'Cr': '219',
      'eGFR': '30',
      'ALP': '128',
      'ALT': '24',
    }
  ];

  final List<Map<String, dynamic>> obs = [
    {
      'Date': '10.11',
      'Temp': '37.6',
      'HR': '105',
      'BP': '105/78',
      'RR': '24',
      'Sats': '94%',
    },
    {
      'Date': '11.11',
      'Temp': '37.4',
      'HR': '102',
      'BP': '102/68',
      'RR': '20',
      'Sats': '94%',
    },
    {
      'Date': '12.11',
      'Temp': '37.3',
      'HR': '99',
      'BP': '110/86',
      'RR': '24',
      'Sats': '92%',
    },
    {
      'Date': '13.11',
      'Temp': '37.1',
      'HR': '100',
      'BP': '103/84',
      'RR': '22',
      'Sats': '92%',
    },
    {
      'Date': '14.11',
      'Temp': '37.2',
      'HR': '96',
      'BP': '106/74',
      'RR': '22',
      'Sats': '94%',
    },
    {
      'Date': '15.11',
      'Temp': '37.0',
      'HR': '97',
      'BP': '112/78',
      'RR': '22',
      'Sats': '95%',
    },
  ];

  final List<Map<String, dynamic>> antimicrobials = [
    {
      'Antibiotic': 'Amoxicillin',
      'Route': 'IV',
      'Dose': '1g tds',
      'Start': '07.11',
      'Stop': '-',
      'Duration': '2',
      'Indication': 'CAP',
    },
    {
      'Antibiotic': 'Clarithromycin',
      'Route': 'PO',
      'Dose': '500mg bd',
      'Start': '07.11',
      'Stop': '-',
      'Duration': '2',
      'Indication': 'CAP',
    },
    {
      'Antibiotic': 'Amikacin',
      'Route': 'IV',
      'Dose': '1g stat',
      'Start': '07.11',
      'Stop': '07.11',
      'Duration': '1',
      'Indication': 'CAP',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        Container(
          //color: Colors.orange,
          height: MediaQuery.of(context).size.height * 0.022,
          width: MediaQuery.of(context).size.width * 0.05,
          child: const AutoSizeText(
            'Patient Details',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.12,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        //color: Colors.orange,
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.125,
                        child: const AutoSizeText.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: 'Name: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: kGreen)),
                            TextSpan(
                              text: 'Alejandro Lopez\n',
                              //style: TextStyle(color: Colors.blue)),
                            ),
                            TextSpan(
                                text: 'Number: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: kGreen)),
                            TextSpan(
                              text: '557692\n',
                              //style: TextStyle(color: Colors.blue)),
                            ),
                            TextSpan(
                                text: 'Age/Sex: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: kGreen)),
                            TextSpan(
                              text: '39 year old male\n',
                              //style: TextStyle(color: Colors.blue)),
                            ),
                            TextSpan(
                                text: 'Admission Type: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: kGreen)),
                            TextSpan(
                              text: 'Emergency Admission\n',
                              //style: TextStyle(color: Colors.blue)),
                            ),
                            TextSpan(
                                text: 'Admission Date: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: kGreen)),
                            TextSpan(
                              text: '15th October 2023\n',
                              //style: TextStyle(color: Colors.blue)),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Admission Clerking',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 1.2,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    'PC:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Central abdominal pain\n'),
                  AutoSizeText(
                    'HPC:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText(
                      'Alejandro presented with a two day history of central abdominal pain. The pain came on gradually and was quite sharp in nature. He was also feeling some associated back pain, with the pain in the centre of the abdomen going straight through to the back. He describes the pain as 8-9/10. Painkillers seem to help with the pain marginally, but it is not obviously exacerbated by anything.\n\nHe has not been doing any strenuous activity lately, no recent history of travel and no change in sexual activity, same female partner for the last 10 years. Alejandro was recently made redundant and this has been causing him a lot of stress. He is drinking more heavily than he usually does.\n'),
                  AutoSizeText(
                    'PMH:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Nil\n'),
                  AutoSizeText(
                    'Allergies:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Allergic to Penicillin - lip swelling\n'),
                  AutoSizeText(
                    'DH:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Nil\n'),
                  AutoSizeText(
                    'SH:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText(
                      'Currently unemployed\nLives with his wife and two children\nIndependent of ADLs\nSmokes 20 cigarettes per day\nETOH about 30 units a week\n'),
                  AutoSizeText(
                    'OE:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText(
                      'Temp: 37.6\nHR: 102\nBP: 113/84\nRR: 20\nSats: 96% on air\n\nResp:\nNil\n\nCVS\nHeart sounds normal\n\nGI:\nTender to palaption in the centre of the abdomen with some mild percussion tenderness. No shifting dullness. Could not appreciate a pulsatile or expansile mass.\n'),
                  AutoSizeText(
                    'DD:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Hepato-biliary infection\nPancreatitis\n'),
                  AutoSizeText(
                    'Plan:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText(
                      'Antibiotics\nIV Fluids\nUSS Abdomen\nMonitor LFTs\n'),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const Row(
          children: [
            SizedBoxW(width: 10),
            AutoSizeText(
              'Observations',
              style: TextStyle(fontWeight: FontWeight.bold, color: kGreen),
            ),
          ],
        ),
        SizedBoxH(height: 10),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.34,
          height: MediaQuery.of(context).size.height * 0.35,
          child: DataTable2(
            showCheckboxColumn: false,
            columnSpacing: 12,
            horizontalMargin: 12,
            minWidth: 300,
            columns: const [
              DataColumn2(
                label: AutoSizeText('Date',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                size: ColumnSize.L,
              ),
              DataColumn(
                label: AutoSizeText('Temp',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('HR',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('BP',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('RR',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('Sats',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
            ],
            rows: obs.map((item) {
              return DataRow(
                selected: false,
                onSelectChanged: (value) {
                  //bool selected = selectedIds.contains(item['mrn']);
                },
                cells: [
                  DataCell(AutoSizeText(item['Date'])),
                  DataCell(AutoSizeText(item['Temp'])),
                  DataCell(AutoSizeText(item['HR'])),
                  DataCell(AutoSizeText(item['BP'])),
                  DataCell(AutoSizeText(item['RR'])),
                  DataCell(AutoSizeText(item['Sats'])),
                ],
              );
            }).toList(),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const Row(
          children: [
            SizedBoxW(width: 10),
            AutoSizeText(
              'Blood Results',
              style: TextStyle(fontWeight: FontWeight.bold, color: kGreen),
            ),
          ],
        ),
        SizedBoxH(height: 10),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.34,
          height: MediaQuery.of(context).size.height * 0.30,
          child: DataTable2(
            showCheckboxColumn: false,
            columnSpacing: 12,
            horizontalMargin: 12,
            minWidth: 300,
            columns: const [
              DataColumn2(
                label: AutoSizeText('Date',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                size: ColumnSize.L,
              ),
              DataColumn(
                label: AutoSizeText('HB',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('WBC',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('Neut',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('Plt',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('CRP',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                //numeric: true,
              ),
              DataColumn(
                label: AutoSizeText('Urea',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                //numeric: true,
              ),
              DataColumn(
                label: AutoSizeText('Cr',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                //numeric: true,
              ),
              DataColumn(
                label: AutoSizeText('eGFR',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                //numeric: true,
              ),
              DataColumn(
                label: AutoSizeText('ALP',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                //numeric: true,
              ),
              DataColumn(
                label: AutoSizeText('ALT',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                //numeric: true,
              ),
            ],
            rows: bloods.map((item) {
              return DataRow(
                selected: false,
                onSelectChanged: (value) {
                  //bool selected = selectedIds.contains(item['mrn']);
                },
                cells: [
                  DataCell(AutoSizeText(item['Date'])),
                  DataCell(AutoSizeText(item['HB'])),
                  DataCell(AutoSizeText(item['WBC'])),
                  DataCell(AutoSizeText(item['Neut'])),
                  DataCell(AutoSizeText(item['Plt'])),
                  DataCell(AutoSizeText(item['CRP'])),
                  DataCell(AutoSizeText(item['Urea'])),
                  DataCell(AutoSizeText(item['Cr'])),
                  DataCell(AutoSizeText(item['eGFR'])),
                  DataCell(AutoSizeText(item['ALP'])),
                  DataCell(AutoSizeText(item['ALT'])),
                ],
              );
            }).toList(),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Microbiology Results',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.16,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    '07.11.23 Urine: Pneumococcal Antigen',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Not detected\n'),
                  AutoSizeText(
                    '07.11.23 Urine: Legionella Antigen',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Not detected\n'),
                  AutoSizeText(
                    '07.11.23 Blood Cultures',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Not detected'),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Radiology Results',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.13,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    '07.11.23 Chest X-Ray\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText(
                      'Clinical details: Presented with fever, cough and shortness of breath.\n'),
                  AutoSizeText(
                      'There is evidence of dense consolidation at the lower left base of the lung. There are no other suspicious masses or lesions. '),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const Row(
          children: [
            SizedBoxW(width: 10),
            AutoSizeText(
              'Antimicrobial Therapy',
              style: TextStyle(fontWeight: FontWeight.bold, color: kGreen),
            ),
          ],
        ),
        SizedBoxH(height: 10),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.34,
          height: MediaQuery.of(context).size.height * 0.2,
          child: DataTable2(
            showCheckboxColumn: false,
            columnSpacing: 12,
            horizontalMargin: 12,
            minWidth: 500,
            columns: const [
              DataColumn2(
                label: AutoSizeText('Antibiotic',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                size: ColumnSize.L,
              ),
              DataColumn(
                label: AutoSizeText('Route',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('Dose',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('Start',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('Stop',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
              ),
              DataColumn(
                label: AutoSizeText('Duration',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                //numeric: true,
              ),
              DataColumn(
                label: AutoSizeText('Indication',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontFamily: 'Helvetica')),
                //numeric: true,
              ),
            ],
            rows: antimicrobials.map((item) {
              return DataRow(
                selected: false,
                onSelectChanged: (value) {
                  //bool selected = selectedIds.contains(item['mrn']);
                },
                cells: [
                  DataCell(AutoSizeText(item['Antibiotic'])),
                  DataCell(AutoSizeText(item['Route'])),
                  DataCell(AutoSizeText(item['Dose'])),
                  DataCell(AutoSizeText(item['Start'])),
                  DataCell(AutoSizeText(item['Stop'])),
                  DataCell(AutoSizeText(item['Duration'])),
                  DataCell(AutoSizeText(item['Indication'])),
                ],
              );
            }).toList(),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Summary',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.13,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                      'Mr Khan was admitted to Croydon University Hospital on the 07.11.23 with a lower respiratory tract infection. He was commenced on Amoxicillin IV 1g TDS and Clarithromycin 500mg BD as well as being a single dose of Amikacin. Over the past 48 hours, his condition has not improved and he is remains febrile and haemodynamically unstable. His blood results are not improving and his chest x-ray shows evidence of dense consolidation. Of note he has no positive Microbiology results. His conditions continues to deteriorate.'),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Action',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Suggestion',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                      'Given that this patient is deteriorating and is persistently febrile, blood cultures should be repeated as well as an escalation in the antibiotic therapy from Amoxicillin and Clarithromycin to Piperacillin-Tazobactam and Clarithromycin. Continue to monitor the patient for the next 48 hours and discuss with Microbiology if no improvement.'),
                ],
              ),
            )),
        SizedBoxH(height: 20),
      ],
    );
  }
}

class PatientAfebrileInfo extends StatelessWidget {
  const PatientAfebrileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Patient Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.125,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      AutoSizeText('Name: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: kGreen)),
                      AutoSizeText('Muhammad Khan'),
                    ],
                  ),
                  SizedBoxH(height: 5),
                  Row(
                    children: [
                      AutoSizeText('Number: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: kGreen)),
                      AutoSizeText('123456'),
                    ],
                  ),
                  SizedBoxH(height: 5),
                  Row(
                    children: [
                      AutoSizeText('Age/Sex: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: kGreen)),
                      AutoSizeText('62 year old male'),
                    ],
                  ),
                  SizedBoxH(height: 5),
                  Row(
                    children: [
                      AutoSizeText('Admission Type: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: kGreen)),
                      AutoSizeText('Emergency Admission'),
                    ],
                  ),
                  SizedBoxH(height: 5),
                  Row(
                    children: [
                      AutoSizeText('Admission Date: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: kGreen)),
                      AutoSizeText('7th November 2023'),
                      Spacer(),
                      AutoSizeText('Day 8'),
                      SizedBoxW(width: 20),
                    ],
                  ),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Admission Clerking',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 1.135,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    'PC:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Cough, fever, sweating and sob\n'),
                  AutoSizeText(
                    'HPC:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText(
                      'Muhammad presented with a three day history of feeling unwell, becoming increasingly short of breath. He complained of some chest pain, sweating, and fevers.\n\nMuhammad recently travelled to Spain for a work-related trip where he stayed in a hotel and went swimming at the beach. He started to feel unwell about four days after returning from his trip. He has a slight cough, which is productive of green sputum. He feels tired and has had a fever and been sweating. He has no headache, nausea or vomiting.\n\nHe drank only bottled water in Spain and ate at a number of restaurants. He denies any diarrhoea or pr bleeding. Of note, he travelled with his wife and children and none of them are unwell.\n'),
                  AutoSizeText(
                    'PMH:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Asthma\n'),
                  AutoSizeText(
                    'Allergies:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('NKDA\n'),
                  AutoSizeText(
                    'DH:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Salbutamol 2 puffs BD prn\n'),
                  AutoSizeText(
                    'SH:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText(
                      'Works as an accountant\nLives with his wife and three children\nIndependent of ADLs\nSmokes 5 cigarettes per day\nETOH none\n'),
                  AutoSizeText(
                    'OE:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText(
                      'Temp: 38.2\nHR: 105\nBP: 105/86\nRR: 24\nSats: 91% on 4 litres nasal cannulae\n\nResp:\nCrackles at the right mid-zone\n\nCVS\nHeart sounds normal\n'),
                  AutoSizeText(
                    'DD:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Pneumonia\nAtypical infection\nLegionella\n'),
                  AutoSizeText(
                    'Plan:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Pneumonia\nAtypical infection\nLegionella'),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Blood Results',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('Muhammad Khan'),
                  AutoSizeText('123456'),
                  AutoSizeText('62 year old male'),
                  AutoSizeText('Emergency Admission'),
                  AutoSizeText('20th November 2022'),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Microbiology Results',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('Muhammad Khan'),
                  AutoSizeText('123456'),
                  AutoSizeText('62 year old male'),
                  AutoSizeText('Emergency Admission'),
                  AutoSizeText('20th November 2022'),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Radiology Results',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('Muhammad Khan'),
                  AutoSizeText('123456'),
                  AutoSizeText('62 year old male'),
                  AutoSizeText('Emergency Admission'),
                  AutoSizeText('20th November 2022'),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Antimicrobial Therapy',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('Muhammad Khan'),
                  AutoSizeText('123456'),
                  AutoSizeText('62 year old male'),
                  AutoSizeText('Emergency Admission'),
                  AutoSizeText('20th November 2022'),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Summary',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('Muhammad Khan'),
                  AutoSizeText('123456'),
                  AutoSizeText('62 year old male'),
                  AutoSizeText('Emergency Admission'),
                  AutoSizeText('20th November 2022'),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Response',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('Muhammad Khan'),
                  AutoSizeText('123456'),
                  AutoSizeText('62 year old male'),
                  AutoSizeText('Emergency Admission'),
                  Row(
                    children: [
                      AutoSizeText('7th November 2023'),
                      Spacer(),
                      AutoSizeText('Day 8'),
                    ],
                  ),
                ],
              ),
            )),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('Muhammad Khan'),
                  AutoSizeText('123456'),
                  AutoSizeText('62 year old male'),
                  AutoSizeText('Emergency Admission'),
                  AutoSizeText('20th November 2022'),
                ],
              ),
            )),
      ],
    );
  }
}

class PatientOralSwitchInfo extends StatelessWidget {
  const PatientOralSwitchInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Patient Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.125,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      AutoSizeText('Name: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: kGreen)),
                      AutoSizeText('Muhammad Khan'),
                    ],
                  ),
                  SizedBoxH(height: 5),
                  Row(
                    children: [
                      AutoSizeText('Number: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: kGreen)),
                      AutoSizeText('123456'),
                    ],
                  ),
                  SizedBoxH(height: 5),
                  Row(
                    children: [
                      AutoSizeText('Age/Sex: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: kGreen)),
                      AutoSizeText('62 year old male'),
                    ],
                  ),
                  SizedBoxH(height: 5),
                  Row(
                    children: [
                      AutoSizeText('Admission Type: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: kGreen)),
                      AutoSizeText('Emergency Admission'),
                    ],
                  ),
                  SizedBoxH(height: 5),
                  Row(
                    children: [
                      AutoSizeText('Admission Date: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: kGreen)),
                      AutoSizeText('7th November 2023'),
                      Spacer(),
                      AutoSizeText('Day 8'),
                      SizedBoxW(width: 20),
                    ],
                  ),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Admission Clerking',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 1.135,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    'PC:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Cough, fever, sweating and sob\n'),
                  AutoSizeText(
                    'HPC:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText(
                      'Muhammad presented with a three day history of feeling unwell, becoming increasingly short of breath. He complained of some chest pain, sweating, and fevers.\n\nMuhammad recently travelled to Spain for a work-related trip where he stayed in a hotel and went swimming at the beach. He started to feel unwell about four days after returning from his trip. He has a slight cough, which is productive of green sputum. He feels tired and has had a fever and been sweating. He has no headache, nausea or vomiting.\n\nHe drank only bottled water in Spain and ate at a number of restaurants. He denies any diarrhoea or pr bleeding. Of note, he travelled with his wife and children and none of them are unwell.\n'),
                  AutoSizeText(
                    'PMH:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Asthma\n'),
                  AutoSizeText(
                    'Allergies:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('NKDA\n'),
                  AutoSizeText(
                    'DH:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Salbutamol 2 puffs BD prn\n'),
                  AutoSizeText(
                    'SH:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText(
                      'Works as an accountant\nLives with his wife and three children\nIndependent of ADLs\nSmokes 5 cigarettes per day\nETOH none\n'),
                  AutoSizeText(
                    'OE:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText(
                      'Temp: 38.2\nHR: 105\nBP: 105/86\nRR: 24\nSats: 91% on 4 litres nasal cannulae\n\nResp:\nCrackles at the right mid-zone\n\nCVS\nHeart sounds normal\n'),
                  AutoSizeText(
                    'DD:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Pneumonia\nAtypical infection\nLegionella\n'),
                  AutoSizeText(
                    'Plan:\n',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: kGreen),
                  ),
                  AutoSizeText('Pneumonia\nAtypical infection\nLegionella'),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Blood Results',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('Muhammad Khan'),
                  AutoSizeText('123456'),
                  AutoSizeText('62 year old male'),
                  AutoSizeText('Emergency Admission'),
                  AutoSizeText('20th November 2022'),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Microbiology Results',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('Muhammad Khan'),
                  AutoSizeText('123456'),
                  AutoSizeText('62 year old male'),
                  AutoSizeText('Emergency Admission'),
                  AutoSizeText('20th November 2022'),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Radiology Results',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('Muhammad Khan'),
                  AutoSizeText('123456'),
                  AutoSizeText('62 year old male'),
                  AutoSizeText('Emergency Admission'),
                  AutoSizeText('20th November 2022'),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Antimicrobial Therapy',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('Muhammad Khan'),
                  AutoSizeText('123456'),
                  AutoSizeText('62 year old male'),
                  AutoSizeText('Emergency Admission'),
                  AutoSizeText('20th November 2022'),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Summary',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('Muhammad Khan'),
                  AutoSizeText('123456'),
                  AutoSizeText('62 year old male'),
                  AutoSizeText('Emergency Admission'),
                  AutoSizeText('20th November 2022'),
                ],
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        const AutoSizeText(
          'Response',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('Muhammad Khan'),
                  AutoSizeText('123456'),
                  AutoSizeText('62 year old male'),
                  AutoSizeText('Emergency Admission'),
                  Row(
                    children: [
                      AutoSizeText('7th November 2023'),
                      Spacer(),
                      AutoSizeText('Day 8'),
                    ],
                  ),
                ],
              ),
            )),
        SizedBoxH(height: 10),
        BorderBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.07,
            colour: kLightGrey,
            lwidth: 0.5,
            curve: 6,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('Muhammad Khan'),
                  AutoSizeText('123456'),
                  AutoSizeText('62 year old male'),
                  AutoSizeText('Emergency Admission'),
                  AutoSizeText('20th November 2022'),
                ],
              ),
            )),
      ],
    );
  }
}

class SizedBoxH extends StatelessWidget {
  final double height;

  const SizedBoxH({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *
          (height / MediaQuery.of(context).size.height),
    );
  }
}

class SizedBoxW extends StatelessWidget {
  final double width;

  const SizedBoxW({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width *
          (width / MediaQuery.of(context).size.width),
    );
  }
}
