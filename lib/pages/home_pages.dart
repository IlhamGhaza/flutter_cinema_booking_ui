import 'package:flutter/material.dart';
import 'package:flutter_cinema_booking_ui/const.dart';
import 'package:flutter_cinema_booking_ui/models/category_model.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: headerParts(),
      body: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          searchBar(),
          const SizedBox(height: 30,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Catogory", style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold
                  ),
                ),
                Spacer(),
                Text("View All", style: TextStyle(
                  color: Colors.white54,
                  fontSize: 13,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(width: 10,),
              Icon(
                Icons.arrow_forward_ios,
                color: buttonColor,
                size: 15,
              )
            ],
          ),
          ),
          const SizedBox(height: 17,),
          Row(
           
          )
        //   Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 20),
        //   ),
        ],
      ),
    );
  }

  Padding searchBar() {
    return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 17),
              filled: true,fillColor: Colors.white.withOpacity(0.05),
              hintText: "Search",
              hintStyle: TextStyle(
                color: Colors.white54,
              ),
              prefixIcon: Icon(Icons.search,size: 35, color: Colors.white54,),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(27),
                borderSide: BorderSide.none
              ),
            ),
          ),
          );
  }

  AppBar headerParts() {
    return AppBar(
      backgroundColor: appBackgroundColor,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: "Welcome User",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              letterSpacing: 1,
                              color: Colors.white54)),
                      TextSpan(
                          text: "👋",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Let\'s relax and watch the movie',
                style: TextStyle(
                  height: 0.6, 
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1,
                ),
                )
              ],
            ),
            Container(
              width: 40,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit:BoxFit.cover,
                  image: NetworkImage("https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
                  ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
