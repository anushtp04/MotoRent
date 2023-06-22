import 'package:car_rent_new/widget/searchPage_widgets/allCars.dart';
import 'package:flutter/material.dart';

import '../../widget/app_text.dart';
import '../../widget/homePage_widgets/search_box.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
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
      ),
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SearchBox(),
              SizedBox(height: 30),
              AppText(text: "All Cars",size: 22,color: Colors.black,),
              SizedBox(height: 10,),
              Expanded(
                child: AllCars()
              )
            ]),
          ),
        )
    );
  }
}
