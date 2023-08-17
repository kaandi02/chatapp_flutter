import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color kPrimaryColor = const Color(0xfff9a826);

buildExploreTextTitle(String text){
  return Padding(
    padding: EdgeInsets.only(top:20,bottom: 8),
    child: Text(
      text,
      style: GoogleFonts.urbanist(
        fontSize: 36,
        fontWeight: FontWeight.w900,
        color: Colors.white,
      ),
    ),
  );
}

buildExploreTextSubTitle(String text){
  return Padding(
    padding: EdgeInsets.all(20),
    child: Text(
      text,
      style: GoogleFonts.urbanist(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.grey[400],
      ),
    ),
  );
}

buildLoginTextTitle(String text){
  return Padding(
    padding: EdgeInsets.only(top:20,bottom: 8),
    child: Text(
      text,
      style: GoogleFonts.urbanist(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
  );
}

buildLoginTextSubTitle(String text){
  return Padding(
    padding: EdgeInsets.all(0),
    child: Text(
      text,
      style: GoogleFonts.urbanist(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.grey[200],
      ),
    ),
  );
}

buildTextTitleVariation1(String text){
  return Padding(
    padding: EdgeInsets.only(bottom: 8),
    child: Text(
      text,
      style: GoogleFonts.breeSerif(
        fontSize: 28,
        fontWeight: FontWeight.w900,
        color: Colors.black,
      ),
    ),
  );
}

buildTextTitleVariation2(String text, bool opacity){
  return Padding(
    padding: EdgeInsets.only(bottom: 16),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}

buildTextSubTitleVariation1(String text){
  return Padding(
    padding: EdgeInsets.only(bottom: 8),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.grey[400],
      ),
    ),
  );
}

buildTextSubTitleVariation2(String text){
  return Padding(
    padding: EdgeInsets.only(bottom: 8),
    child: Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 16,
        color: Colors.grey[400],
      ),
    ),
  );
}