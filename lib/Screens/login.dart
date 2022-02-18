import 'package:flutter/material.dart';
import 'package:sentinel/Screens/navigationbar.dart';

class LogIn extends StatefulWidget {
  LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool passwordVisible = true;
  bool checkBox = true;
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    Color _iconColor = Colors.blue;

    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: mediaQueryWidth * 0.2,
                              top: mediaQueryHeight * 0.13),
                          child: Text(
                            'Welcome To ',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: 'Roboto'),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: mediaQueryHeight * 0.13),
                          child: Text(
                            'Sentinel',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                                fontFamily: 'Roboto'),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Health analytics',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'Roboto'),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/background.jpg',
                    ),
                    fit: BoxFit.cover,
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
                  padding: EdgeInsets.only(left: mediaQueryWidth * 0.05),
                  child: Text(
                    'Email address',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.03,
                child: Padding(
                  padding: EdgeInsets.only(left: mediaQueryWidth * 0.05),
                  child: Text(
                    'Password',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
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
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: mediaQueryWidth * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            checkBox
                                ? Icons.check_box_outline_blank
                                : Icons.check_box,
                          ),
                          onPressed: () {
                            setState(() {
                              checkBox = !checkBox;
                            });
                            setState(() {
                              _iconColor = Colors.blue;
                            });
                          },
                        ),
                        Text('Remember me'),
                      ],
                    ),
                    InkWell(
                        child: Text(
                          "Forgot password?",
                          style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Roboto',
                              decoration: TextDecoration.underline),
                        ),
                        onTap: () {}),
                  ],
                ),
              ),
              SizedBox(
                height: mediaQueryHeight * 0.03,
              ),
              Center(
                child: ElevatedButton(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Center(
                      child: Text(
                        'LOG IN',
                        style: TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(205, 8, 27, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => NavBar()),
                    );
                  },
                ),
              ),
              SizedBox(
                height: mediaQueryHeight * 0.05,
              )
            ],
          ),
        ),
      ),
    );
  }
}
