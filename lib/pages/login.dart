import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';

// Map<String, String> MESSAGES_TEXTS = {
//   "WELCOME_MSG": "Welcome to Chat With Me App",
//   "LOGIN_MSG": "Login to continue",
// };

const double DEVICE_HEIGHT_FACTOR = 0.2;
const String WELCOME_MSG = "Welcome to Chat With Me App",
    LOGIN_MSG = "Login to continue";

const List<Widget> HEADER_TEXTS = [
  Text(
    //animated
    WELCOME_MSG,
    style: TextStyle(
        fontSize: 35, fontWeight: FontWeight.w700, color: Colors.deepPurple),
  ),
  Text(LOGIN_MSG,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w200,
      )),
];

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  LoginPageState() {
    _formKey = GlobalKey<FormState>();
  }
  double deviceHeight = 0, deviceWidth = 0;
  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: loginPageUI(),
    );
  }

  Widget loginPageUI() {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.1),
        //border line
        // decoration: BoxDecoration(
        //   border: Border.all(
        //     color: Colors.deepPurple,
        //     width: 3,
        //   ),
        // ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              headingWidget(),
              inputForm(),
            ]));
  }

  Widget headingWidget() {
    return Container(
      height: deviceHeight * DEVICE_HEIGHT_FACTOR,
      child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ...HEADER_TEXTS,
          ]),
    );
  }

  Widget inputForm() {
    return Container(
      height: deviceHeight * 0.16,
      child: Form(
        key: _formKey,
        onChanged: () => setState(() {}),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            emailTextField(),
            passwordTextField(),
          ],
        ),
      ),
    );
  }

  Widget emailTextField() {
    return TextFormField(
      autocorrect: false,
      style: const TextStyle(
        color: Colors.white,
      ),
      validator: (input) {},
      onSaved: (input) {},
      cursorColor: Colors.deepPurple,
      decoration: const InputDecoration(
        hintText: "Email",
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget passwordTextField() {
    return TextFormField(
      autocorrect: false,
      style: const TextStyle(
        color: Colors.white,
      ),
      validator: (input) {},
      onSaved: (input) {},
      cursorColor: Colors.deepPurple,
      obscureText: true,
      decoration: const InputDecoration(
        hintText: "Password",
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
