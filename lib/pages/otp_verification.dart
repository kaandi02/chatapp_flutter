import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/constants.dart';
import 'package:testapp/pages/home.dart';
import 'package:testapp/pages/login.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {

  @override
  void initState(){
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.black),
          child: Padding(
              padding: const EdgeInsets.only(top:75,bottom: 75,left: 30,right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTextTitleVariation2("Verify OTP",false),
                  buildTextSubTitleVariation2("Make sure you enter correct otp"),

                  Padding(
                      padding: const EdgeInsets.only(top:50),
                    child: Form(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            //OTP Digit 1
                            SizedBox(
                                height: 70,
                                width: 65,
                                child: TextFormField(
                                  onChanged: (value){
                                    if(value.length==1){
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  decoration: InputDecoration(
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: Colors.grey
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: kPrimaryColor
                                      )
                                    ),
                                  ),
                                  cursorColor: kPrimaryColor,
                                  style: GoogleFonts.urbanist(
                                    color: Colors.white
                                  ),
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                ),
                              ),

                            //OTP Digit 2
                            SizedBox(
                              height: 70,
                              width: 65,
                              child: TextFormField(
                                onChanged: (value){
                                  if(value.length==1){
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.grey
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: kPrimaryColor
                                      )
                                  ),
                                ),
                                cursorColor: kPrimaryColor,
                                style: const TextStyle(color: Colors.white),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),

                            //OTP DIgit 3
                            SizedBox(
                              height: 70,
                              width: 65,
                              child: TextFormField(
                                onChanged: (value){
                                  if(value.length==1){
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.grey
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: kPrimaryColor
                                      )
                                  ),
                                ),
                                cursorColor: kPrimaryColor,
                                style: const TextStyle(color: Colors.white),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),

                            //OTP Digit 4
                            SizedBox(
                              height: 70,
                              width: 65,
                              child: TextFormField(
                                onChanged: (value){
                                  if(value.length==1){

                                  }
                                },
                                decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.grey
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: kPrimaryColor
                                      )
                                  ),
                                ),
                                cursorColor: kPrimaryColor,
                                style: const TextStyle(color: Colors.white),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                          ],
                        )
                    )
                  ),

                  Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 130,
                              height: 40,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),
                              child: TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
                              }, child: const Text("BACK",style: TextStyle(letterSpacing:1,fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black),)),
                            ),
                            Container(
                              width: 130,
                              height: 40,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: kPrimaryColor),
                              child: TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Home()));
                              }, child: const Text("VERIFY OTP",style: TextStyle(letterSpacing:1,fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black),)),
                            ),
                          ],
                        ),
                      )
                  )

                ],
              ),
          )
        ),
      ),
    );
  }
}
