import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:testapp/constants.dart';
import 'package:testapp/pages/otp_verification.dart';

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
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 50),
                  child: buildTextTitleVariation2("COMPANY LOGO",false),
                ),
                Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Column(
                          children: [
                            /*
                            Container(
                              height: 200,
                              width: double.infinity,
                              child: SvgPicture.asset("assets/images/undraw_messages_re_qy9x.svg"),
                            ),*/
                            Padding(
                                padding: const EdgeInsets.all(0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    buildLoginTextTitle("Login"),
                                    buildLoginTextSubTitle("Welcome to the World of Secured Messaging"),
                                  ],
                                )
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 150),
                              child:
                              Column(
                                  children:[
                                    Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 25,vertical:5),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Stack(
                                          children: [
                                            InternationalPhoneNumberInput(
                                              onInputChanged: (value){},
                                              initialValue: PhoneNumber(isoCode: "IN"),
                                              selectorConfig: const SelectorConfig(
                                                selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                                              ),
                                            ),
                                          ],
                                        )
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:0,top:30,right: 0),
                                      child: Container(
                                        width: 150,
                                        height: 50,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: kPrimaryColor),
                                        child: TextButton(onPressed: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const OtpVerification()));
                                        }, child: const Text("LOGIN",style: TextStyle(letterSpacing:2,fontSize: 20,fontWeight: FontWeight.w900,color: Colors.black),)),
                                      ),
                                    )
                                  ]
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
