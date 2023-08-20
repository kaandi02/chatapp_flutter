import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:testapp/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.black),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 50),
                    child: buildLoginTextTitle("Good Afternoon , User"),
                  ),

                  Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                        ),
                      )
                  )
                ],
              )
          )
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }
  
  
  Widget bottomNavBar(){
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.black,
            tabBackgroundColor: kPrimaryColor,
            padding: const EdgeInsets.all(20),
            onTabChange: (index){
              print(index);
            },
            gap: 5,
            tabs: const [
              GButton(icon: Icons.group,text: "Groups",),
              GButton(icon: Icons.message,text: "Chats"),
              GButton(icon: Icons.newspaper,text: "News",),
              GButton(icon: Icons.account_circle,text: "My Account",),
            ]),
      ),
    );
  }
  
}
