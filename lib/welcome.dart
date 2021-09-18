import 'package:flutter/material.dart';
import 'package:saloonapp/login.dart';

import 'login1.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  // Widget build(BuildContext context) {
  //   double height = MediaQuery.of(context).size.height;
  //   double width = MediaQuery.of(context).size.width;
  //   return Scaffold(
  //     body: Column(
  //       children: <Widget>[
  //         Image.asset(
  //           'assets/welcome.png',
  //           height: height,
  //           width: width,
  //           fit: BoxFit.cover,
  //         ),
  //         Text("data")
  //       ],
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.black,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.3,
                    child: Image.asset(
                      'assets/welcome.png',
                      fit: BoxFit.contain,
                      // width: 300,
                      // height: 500,
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                          child: Image.asset('assets/logo.png',
                              fit: BoxFit.cover)),
                      SizedBox(height: 30),
                      Text('VIDIYAL',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.amber[300],
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                      Text('Financial Management',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.normal)),
                      SizedBox(height: 70),
                      Text('CREATING WEALTH',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.amber[300], fontSize: 25)),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                    width: double.infinity,
                    // child: FloatingActionButton.extended(
                    //   onPressed: () {
                    //     Navigator.push(context,
                    //         MaterialPageRoute(builder: (_) => LoginScreen()));
                    //   },
                    //   label: const Text('GET STARTED'),
                    //   backgroundColor: Colors.amber.shade400,
                    // ),

                    child: ElevatedButton(
                      child: Text(
                        "GET STARTED",
                        style: new TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Login1()));
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(240, 60),
                        primary: Colors.amber.shade400,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
