// ignore_for_file: camel_case_types, prefer_final_fields, prefer_const_constructors, deprecated_member_use, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:waste_collector/constants.dart';
import 'package:waste_collector/models/adminModel.dart';
import 'package:waste_collector/screens/addBasket.dart';

import 'package:waste_collector/screens/addOfficer.dart';
import 'package:waste_collector/screens/changeBasket.dart';
import 'package:waste_collector/screens/gps.dart';

import '../models/fetchData.dart';

class admin extends StatefulWidget {
  const admin({Key? key}) : super(key: key);

  @override
  State<admin> createState() => _adminState();
}

class _adminState extends State<admin> {
  fetchData _fetchData = fetchData();

  @override
  void initState() {
    super.initState();
    _fetchData.fetchMyAccountAdmin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Stack(
        children: [
          myData(),
          Padding(
              padding: EdgeInsets.fromLTRB(15, 50, 15, 0),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/photos/customer1.png'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15)),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 270, 10, 0),
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: box,
                    width: 6,
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/photos/avatar.png'),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 340, 90, 0),
            child: Text('???????? ???????????????? ???????????? ??????????????',
                style: TextStyle(
                  fontFamily: 'El Messiri',
                  fontSize: 18,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  //
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 400, 15, 0),
            child: Text('???? ?????? ??',
                style: TextStyle(
                  fontFamily: 'El Messiri',
                  fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  //
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 440, 15, 0),
            child: SizedBox(
              width: 500,
              child: Text(
                "?????????? ?????????? ?????????? ???? ?????????? ?????????? ???????????????? ???????? ???????? ???????? ???? ?????????????? ???????????????? ?????????????????? ?????????? ?????? ?????? ?????????????? ?????? ?????????????? ???????????????? ???? ?????????? ???????????????? ???? ?????????? ?????? ?????????????? ???????????? ?????????? ?????? ???????????????? ?????????? ???????? ?????????? ?????????? ?????????? ???? ???????? ?????????? ???????????????? ???????????? ???????????? ?????? ???????? ??????????????.",
                maxLines: 7,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: 'El Messiri',
                  fontSize: 18,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  //
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 680, 15, 0),
            child: Text('????????????:',
                style: TextStyle(
                  fontFamily: 'El Messiri',
                  fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  //
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 730, 40, 0),
            child: Row(
              children: [
                FlatButton(
                  height: 150,
                  minWidth: 120,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => add()),
                    );
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: box, borderRadius: BorderRadius.circular(15)),
                      width: 120,
                      height: 150,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/photos/add1.png',
                            height: 100,
                            width: 100,
                          ),
                          Text('?????????? ???????? ????????',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'El Messiri',
                                fontSize: 16,

                                color: Colors.black,
                                decoration: TextDecoration.none,
                                //
                              )),
                        ],
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                FlatButton(
                  height: 150,
                  minWidth: 120,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => addBasket()),
                    );
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: box, borderRadius: BorderRadius.circular(15)),
                      width: 120,
                      height: 150,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/photos/addBas.png',
                            height: 100,
                            width: 100,
                          ),
                          Text('?????????? ?????????? ??????????',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'El Messiri',
                                fontSize: 16,

                                color: Colors.black,
                                decoration: TextDecoration.none,
                                //
                              )),
                        ],
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 900, 40, 0),
            child: Row(
              children: [
                FlatButton(
                  height: 150,
                  minWidth: 120,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => change()),
                    );
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: box, borderRadius: BorderRadius.circular(15)),
                      width: 120,
                      height: 150,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/photos/changeBasket.png',
                            height: 100,
                            width: 100,
                          ),
                          Text('?????????? ?????? ??????????',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'El Messiri',
                                fontSize: 16,

                                color: Colors.black,
                                decoration: TextDecoration.none,
                                //
                              )),
                        ],
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                FlatButton(
                  height: 150,
                  minWidth: 120,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => gps()),
                    );
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: box, borderRadius: BorderRadius.circular(15)),
                      width: 120,
                      height: 150,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/photos/gps.png',
                            height: 120,
                            width: 120,
                          ),
                          Text('???????? ????????????????',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'El Messiri',
                                fontSize: 16,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                                //
                              )),
                        ],
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 1100, 15, 0),
            child: Text('???????? ?????? ??????????????:',
                style: TextStyle(
                  fontFamily: 'El Messiri',
                  fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  //
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 1140, 15, 0),
            child: SizedBox(
              width: 500,
              child: Text(
                "???????????? - ???????? ?????????????? ?????????????? ???????? ???????? ???????? ?????????? ?????? ???????????????? ?????????? ?????? ???????????? ?????????????? ?????????? ?????? ?????????????? ?????????????? ???????????????? ???????????????? ???????? ?????????? ???????????????? ???????? ???????? ?????????? ???????????????? ?????? ?????? ?????????? ?????? ???????????? ???????????????? ?? ?????? ???????????? ???????? ???????????? ?????? ?????????? ?????????? ???????? ???????? ?????? ???????? ????????????????.",
                maxLines: 7,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: 'El Messiri',
                  fontSize: 18,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  //
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 1360, 15, 0),
            child: SizedBox(
              width: 500,
              child: Text(
                "?????????????? - ???????????? ?????????????? ???????? ???????? ???????????? ???????????????? ?????? ?????????? ???? ?????????? ?????????? ???????? ?????? ???? ?????????????? ???? ?????????????? ???????????????? ???????? ?????????????? ???? ???????????????? ???? ?????? ?????????? ???????? ???????? ???? ?????? ???????????? ???????? ???????? ???????? ?????? ?????????????? ?????????????? ?????????????? ?????? ???????? ???????????????? ???????????????? ??????????.",
                maxLines: 7,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: 'El Messiri',
                  fontSize: 18,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  //
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 1600, 15, 0),
            child: Text('?????????? ????????:',
                style: TextStyle(
                  fontFamily: 'El Messiri',
                  fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  //
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1650),
            child: Column(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: box, borderRadius: BorderRadius.circular(15)),
                    width: 350,
                    height: 70,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset(
                          'assets/photos/location.png',
                          height: 35,
                          width: 35,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('?????????? - ???????? ???????????? - ???????????? ???????????? ????????????',
                            style: TextStyle(
                              fontFamily: 'El Messiri',
                              fontSize: 15,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              //
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1740),
            child: Column(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: box, borderRadius: BorderRadius.circular(15)),
                    width: 350,
                    height: 70,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/photos/email.png',
                          height: 35,
                          width: 35,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text('roaa.barq@gmail.com',
                            style: TextStyle(
                              fontFamily: 'El Messiri',
                              fontSize: 20,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              //
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1830),
            child: Column(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: box, borderRadius: BorderRadius.circular(15)),
                    width: 350,
                    height: 70,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/photos/phone.png',
                          height: 35,
                          width: 35,
                        ),
                        SizedBox(
                          width: 65,
                        ),
                        Text('970-569569044+',
                            style: TextStyle(
                              fontFamily: 'El Messiri',
                              fontSize: 20,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              //
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 1940),
              child: Container(
                color: greenDark,
                height: 170,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text('???????? ????????',
                        style: TextStyle(
                          fontFamily: 'El Messiri',
                          fontSize: 30,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          //
                        )),
                    Text('???????? ???????????????? ???????????? ??????????',
                        style: TextStyle(
                          fontFamily: 'El Messiri',
                          fontSize: 20,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          //
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                        'Copyright 2022 Roaa Barq, Dalia Omar All rights reserved',
                        style: TextStyle(
                          fontFamily: 'Yanone Kaffeesatz',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          //
                        )),
                  ],
                ),
                // width: MediaQuery.of(context).size.width,
              )),
        ],
      )),
    );
  }

  Widget myData() {
    return FutureBuilder(
        future: _fetchData.fetchMyAccountAdmin(),
        builder: (context, snapchot) {
          var data = snapchot.data as adminModel;
          return data == null
              ? Text("???????? ??????????????")
              : Padding(
                  padding: EdgeInsets.fromLTRB(20, 270, 90, 0),
                  child: Text("???????? ?????????? ???? ???????? ???????????? " + data.name + " ..",
                      maxLines: 2,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'El Messiri',
                        fontSize: 20,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        //
                      )),
                );
        });
  }
}
