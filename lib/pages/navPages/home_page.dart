import 'package:car_rent_new/controller/allCarController.dart';
import 'package:car_rent_new/widget/app_text.dart';
import 'package:car_rent_new/widget/homePage_widgets/fordCars.dart';
import 'package:car_rent_new/widget/homePage_widgets/hyundaiCars.dart';
import 'package:car_rent_new/widget/homePage_widgets/marutiCars.dart';
import 'package:car_rent_new/widget/homePage_widgets/toyotaCars.dart';
import 'package:car_rent_new/widget/homePage_widgets/vwCars.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widget/homePage_widgets/search_box.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final allCarController = Get.put(AllCarController());

  final logoLists = [
    "assets/logo/suzuki.png",
    "assets/logo/toyota.png",
    "assets/logo/hyundai.png",
    "assets/logo/ford.png",
    "assets/logo/vw.png",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: logoLists.length,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(left: 10, top: 10, bottom: 6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Icon(
              Icons.menu,
            ),
          ),
          title: RichText(
              text: TextSpan(
                  text: "Moto",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                  children: [
                TextSpan(
                    text: "Rent", style: TextStyle(color: Colors.blue.shade900))
              ])),
          centerTitle: true,
          actions: [
            CircleAvatar(
                radius: 22,
                child: Icon(Icons.person),
                backgroundColor: Colors.blue.shade900),
            SizedBox(width: 10),
          ],
        ),
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SearchBox(),
              SizedBox(height: 30),
              AppText(
                text: "Brands",
                color: Colors.black,
                size: 22,
              ),
              SizedBox(
                height: 20,
              ),
              TabBar(
                  indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: Colors.blue.shade900, width: 2)),
                  indicatorColor: Colors.red,
                  labelPadding: EdgeInsets.symmetric(horizontal: 5),
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  tabs: List.generate(logoLists.length, (currentIndex) {
                    return Container(
                      width: 60,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blueGrey.shade200),
                      ),
                      child: Tab(
                        child: Image.asset(
                          logoLists[currentIndex],
                          width: 50,
                          height: 45,
                        ),
                      ),
                    );
                  })),
              SizedBox(height: 30),
              AppText(
                text: "Available Cars",
                size: 22,
                color: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    MarutiCars(),
                    ToyotaCars(),
                    HyundaiCars(),
                    FordCars(),
                    VWCars()
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
