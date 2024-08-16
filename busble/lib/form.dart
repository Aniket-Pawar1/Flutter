import 'package:busble/Widgets/icon.dart';
import 'package:busble/Widgets/image.dart';
import 'package:busble/Widgets/materialbuttonWidget.dart';
import 'package:busble/Widgets/text.dart';
import 'package:busble/Widgets/textformffield.dart';
import 'package:flutter/material.dart';

class Formpage extends StatefulWidget {
  const Formpage({super.key});

  @override
  State<Formpage> createState() => _FormpageState();
}

class _FormpageState extends State<Formpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _logo(),
              _infotext(),
              _image(),
              _userinput(),
              _passwordinput(),
              _loginbtn(),
              SizedBox(
                height: 10,
              ),
              _googleloginbtn(),
              _crateaccountnbtn()
            ],
          ),
        ),
      ),
    );
  }

  _logo() {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: AssetImagewidget(
        url: 'logo2.png',
        height: 40,
      ),
    );
  }

  _infotext() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          text: "Welcome to Busble",
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        TextWidget(
          text: "lorem inspum dolor sit constrctor sandapsinf entir no is are",
          color: Colors.grey,
          fontSize: 17,
        ),
      ],
    );
  }

  _image() {
    return AssetImagewidget(
      url: 'a.png',
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }

  _userinput() {
    return TextFormFieldwidget(
      onTap: () {},
      bordercolor: Colors.black,
      hintText: 'Username or Email',
      borderRadius: BorderRadius.circular(0),
      borderwidth: 0,
      prefixIcon: IconWidget(
        icon: Icons.people,
      ),
    );
  }

  _passwordinput() {
    return TextFormFieldwidget(
      onTap: () {},
      bordercolor: Colors.black,
      hintText: 'Password',
      borderRadius: BorderRadius.circular(0),
      borderwidth: 0,
      prefixIcon: IconWidget(
        icon: Icons.lock,
      ),
    );
  }

  _loginbtn() {
    return Materialbuttonwidget(
        onPressed: () {},
        minWidth: double.infinity,
        height: 60,
        color: Colors.blue[800],
        child: TextWidget(
          text: 'Login to Continue',
          color: Colors.white,
          fontSize: 17,
        ));
  }

  _googleloginbtn() {
    return Materialbuttonwidget(
      onPressed: () {},
      minWidth: double.infinity,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconWidget(
            icon: Icons.g_mobiledata,
            color: Colors.blue,
            size: 40,
          ),
          TextWidget(
            text: 'Login with Google',
            fontSize: 17,
          ),
        ],
      ),
    );
  }

  _crateaccountnbtn() {
    return Materialbuttonwidget(
      onPressed: () {},
      minWidth: double.infinity,
      height: 60,
      color: Colors.black87,
      child: TextWidget(
        text: 'Create a Buble Account',
        color: Colors.white,
        fontSize: 16,
      ),
    );
  }
}
