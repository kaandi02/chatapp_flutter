import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:testapp/constants.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

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
        body: SafeArea(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(color: kPrimaryColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 50),
                  child: buildTextTitleVariation2("COMPANY LOGO",false),
                ),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                                padding: EdgeInsets.all(0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    buildLoginTextTitle("Login"),
                                    buildLoginTextSubTitle("Welcome to the World of Secured Messaging"),
                                  ],
                                )
                            ),
                            Container(
                              height: 200,
                              width: double.infinity,
                              child: SvgPicture.asset("assets/images/undraw_messages_re_qy9x.svg"),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 25,vertical:5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Stack(
                                children: [
                                  InternationalPhoneNumberInput(
                                    onInputChanged: (value){},
                                    initialValue: PhoneNumber(isoCode: "IN"),
                                    selectorConfig: SelectorConfig(
                                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                                    ),
                                  ),
                                ],
                              )
                            ),
                            Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),
                              child: TextButton(
                                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(kPrimaryColor),),
                                onPressed: (){
                                  print("Pressed!..");
                                //Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                              }, child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600)),
                              )
                            ),
                          ],
                        )
                      ),
                    )
                )
              ],
            ),
            ),
          ),
    );
  }
}
