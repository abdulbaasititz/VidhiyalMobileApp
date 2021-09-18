import 'package:flutter/material.dart';

class Login1 extends StatelessWidget {
  const Login1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [Colors.black, Colors.black, Colors.black]),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 80,
            ),

            // Header(),
            // Positioned(
            //   top: 30,
            //   child: Container(
            //     child: MaterialButton(
            //       onPressed: () {},
            //       color: Colors.blue,
            //       textColor: Colors.white,
            //       child: Icon(
            //         Icons.camera_alt,
            //         size: 24,
            //       ),
            //       padding: EdgeInsets.all(50),
            //       shape: CircleBorder(),
            //     ),
            //   ),
            // ),
            // Positioned(
            //     top: 30,
            //     child: MaterialButton(
            //       onPressed: () {},
            //       color: Colors.blue,
            //       textColor: Colors.white,
            //       child: Icon(
            //         Icons.person_add_alt_outlined,
            //         size: 50,
            //       ),
            //       padding: EdgeInsets.all(50),
            //       shape: CircleBorder(),
            //     )),
            Positioned(
                child: Container(
              width: 500,
              height: 80,
            )),
            Expanded(
                //flex: 1,
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Center(),
                        SizedBox(height: 50),
                        Text('Let’s Sign You In',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.normal)),
                        SizedBox(height: 20),
                        Text('Welcome back, you’ve been missed!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 20,
                                fontWeight: FontWeight.normal)),
                        SizedBox(height: 40),
                        Padding(
                          //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Email',
                                hintText:
                                    'Enter valid email id as abc@gmail.com'),
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 15, bottom: 0),
                          //padding: EdgeInsets.symmetric(horizontal: 15),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                                hintText: 'Enter secure password'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 80),
                      width: double.infinity,
                      child: FloatingActionButton.extended(
                        onPressed: () {},
                        label: const Text('Login'),
                        backgroundColor: Colors.amber.shade400,
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
