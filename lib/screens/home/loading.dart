import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF83458A),
      body: Container(
        padding: EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 200,
              child: Stack(
                children: [
                  Image.asset('assets/images/logo.png'),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Image.asset("assets/images/unnya.png"),
                  ),
                ],
              ),
            ),
            Container(
              width: 300,
              child: Text(
                textAlign: TextAlign.center,
                "\"Well done is better than well said\"",
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFFFFE5E2),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SpinKitPumpingHeart(
              color: Colors.red,
              size: 50,
            )
          ],
        ),
      ),
    );
  }
}