import 'package:flutter/material.dart';

class SizeConfig { 
  // class media query biar app responsive, dgn cara mengambil layar aktual 
  static MediaQueryData _mediaQueryData = 
  MediaQueryData.fromView(
    // ignore: deprecated_member_use
    WidgetsBinding.instance.window  
  );
  //variable untuk menampung default size dari aplikasi, 
  //platform yang spesifik dan mendapatkan ukuran aktual dari platform tersebut 
  static double screenWidth = 0.0;
  static double screenHeight = 0.0;
  static double screenSize = 0.0;

 // fungsi ini adalah untuk pemanggilan awal ketika app di jalankan
 // dan untuk mennetukan ukruan dari laayr latform
  void init (BuildContext context) {
    //berfungsi untuk mengambil ukuran aktual pada platform, karena di dalam variable _mediaquerydata, didalamnya memanggil class media query 
    //class itu sendiri di berfungsi untuk mengambil ukuran platform
    _mediaQueryData = MediaQuery.of(context);
    //untuk mengambil hanya data ukuran width, begitupula dengan yang heightb
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
  }
}
// menggunakan size standart dari handphone iphone x, 812 x 375
double getProporsionateHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // ini adalah perhitungan untuk mengahsilkan nilai dan ukuran objek yang responsif sesuai dengan platform
  return (inputHeight / 812.0) * screenHeight;
}
double getProporsionateWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 375.0) * screenWidth;
}