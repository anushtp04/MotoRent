import 'package:car_rent_new/pages/navPages/account_page.dart';
import 'package:car_rent_new/pages/navPages/home_page.dart';
import 'package:car_rent_new/pages/navPages/cart_page.dart';
import 'package:car_rent_new/pages/navPages/search_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  List pages = [HomePage(), SearchPage(), CartPage(), AccountPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[currentIndex],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Colors.black,
            iconSize: 26,
            selectedFontSize: 20,
            unselectedFontSize: 20,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_rounded), label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Account"),
            ],
          ),
        ),
      ),
    );
  }
}
