import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cinema_booking_ui/pages/ticket_page.dart';

import '../const.dart';
import '../models/seats_model.dart';
import 'account_page.dart';
import 'discover_pages.dart';
import 'home_pages.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<IconData> buttomIcons = [
    Icons.home_filled,
    CupertinoIcons.compass_fill,
    CupertinoIcons.ticket_fill,
    Icons.person_rounded,
  ];
  int currentIndex = 0;
  late final List<Widget> page;
  @override
  @override
  void initState() {
    super.initState();
    page = [
      const HomePageCinema(),
      const DiscoverPages(),
      const TicketPage(),
      AccountPage()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBackgroundColor,
        bottomNavigationBar: SizedBox(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              buttomIcons.length,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: currentIndex == index ? 25 : 0,
                      width: currentIndex == index ? 30 : 0,
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.1),
                          spreadRadius: currentIndex == index ? 10 : 0,
                          blurRadius: currentIndex == index ? 15 : 0,
                        )
                      ]),
                    ),
                    Icon(
                      buttomIcons[index],
                      color: currentIndex == index
                          ? Colors.white
                          : Colors.white.withOpacity(0.3),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        body: page[currentIndex],
        );
  }

  NavBarPage(iconName) {
    return Center(
      child: Icon(
        iconName,
        size: 100,
        color: Colors.white,
      ),
    );
  }
}
