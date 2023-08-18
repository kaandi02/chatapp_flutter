import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testapp/constants.dart';
import 'package:testapp/pages/login.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {

  @override
  void initState(){
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: kPrimaryColor,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.black),
        child: Column(
          children: [
            Container(
              alignment: const Alignment(0, 1),
              decoration: BoxDecoration(color:kPrimaryColor,),
              height: 500,
              width: double.infinity,
              child: SvgPicture.asset("assets/images/Group 1.svg"),
            ),
            Padding(
                padding: const EdgeInsets.all(30),
              child: buildExploreTextTitle("Stay Connected with your friends and family"),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 0,left: 30,right: 30),
              child: Row(
                children: [
                  const Icon(
                    Icons.shield_moon_rounded,
                    color: Colors.green,
                  ),
                  buildExploreTextSubTitle("Secure and private messaging"),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left:0,top:30,right: 0),
              child: Container(
                width: 350,
                height: 60,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
                }, child: buildTextTitleVariation1("Get Started"),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
