import 'package:flutter/material.dart';
import 'package:sentinel/Screens/navigationbar.dart';

class LogIn extends StatefulWidget {
  LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _formkey = GlobalKey<FormState>();

  bool passwordVisible = true;
  bool checkBox = true;
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight=MediaQuery.of(context).size.height;
    var mediaQueryWidth=MediaQuery.of(context).size.width;
    return
      SafeArea(
        child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: mediaQueryWidth*0.2, top: mediaQueryHeight*0.1),
                            child: Text(
                              'Welcome To ',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: mediaQueryHeight*0.1),
                            child: Text(
                              'Sentinel',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Health analytics',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/background.jpg',
                      ),
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.2), BlendMode.dstATop),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.03,
                  child: Padding(
                    padding: EdgeInsets.only(right: mediaQueryWidth*0.3),
                    child: Text(
                      'Email address',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                      ),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your Email';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.03,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 180),
                    child: Text(
                      'Password',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                      ),
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        color: Colors.black,
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: passwordVisible,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        checkBox
                            ? Icons.check_box_outline_blank
                            : Icons.check_box,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        setState(() {
                          checkBox = !checkBox;
                        });
                      },
                    ),
                    Text('Remember me'),
                    InkWell(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: Text(
                            "Forgot password?",
                            style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        onTap: () {}),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'LOG IN',
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red[700],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                      if (!_formkey.currentState!.validate()) {
                        return;
                      }
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NavBar()),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                )
              ],
            ),
          ),
        ),
    ),
      );
  }
}
