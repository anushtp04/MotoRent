import 'package:car_rent_new/widget/app_large_text.dart';
import 'package:car_rent_new/widget/responsive_button.dart';
import 'package:flutter/material.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  var welcomeImages = [
    "assets/welcomeImages/cars2.jpg",
    "assets/welcomeImages/car5.jpg",
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
          itemCount: welcomeImages.length,
          itemBuilder: (context, index) {
            return Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(welcomeImages[index]),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                margin: EdgeInsets.only(top: 150,left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    index == 0 ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "FAST ",),
                        AppLargeText(text: "AND"),
                        AppLargeText(text: "EASY WAY"),
                        AppLargeText(text: "TO RENT A CAR"),
                        SizedBox(height: 40,),
                        ResponsiveButton(width: 80,)

                      ],
                    ) : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "FIND "),
                        AppLargeText(text: "THE IDEAL"),
                        AppLargeText(text: "CAR RENTAL "),
                        AppLargeText(text: "FOR YOUR TRIP"),
                        SizedBox(height: 40,),
                        ResponsiveButton(width: 80)

                      ],
                    ),
                    Column(
                      children: List.generate(2, (dotIndex) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 7),
                          width: 8,
                          height: index==dotIndex ? 25 : 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.deepPurple.shade900
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),

            );
          },),
    );
  }
}
