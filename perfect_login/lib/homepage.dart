import 'package:flutter/material.dart';
import 'package:perfect_login/Widgets/iconwidget.dart';
import 'package:perfect_login/Widgets/textformffield.dart';
import 'Widgets/Textwidget.dart';
import 'Widgets/materialbutton.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Textwidget(
          text: 'Login Page',
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Iconwidget(
              icon: Icons.menu,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _circleimage(),
            _username(),
            _password(),
            _button(),
            Textwidget(
              text: 'or',
              color: Colors.grey,
            ),
            _loginwithgoogle()
          ],
        ),
      ),
    );
  }

  _circleimage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image(
        image: NetworkImage(
            'data:image/png;base64,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'),
        width: 100,
        height: 100,
      ),
    );
  }

  _username() {
    return TextFormFieldwidget(
      onTap: () {},
      hintText: 'Username',
      bordercolor: Colors.black,
      borderwidth: 0,
      borderRadius: BorderRadius.circular(5),
      prefixIcon: Iconwidget(
        icon: Icons.person,
      ),
    );
  }

  _password() {
    return TextFormFieldwidget(
      onTap: () {},
      hintText: 'password',
      maxLines: 1,
      bordercolor: Colors.black,
      borderwidth: 0,
      borderRadius: BorderRadius.circular(5),
      prefixIcon: Iconwidget(
        icon: Icons.password,
      ),
    );
  }

  _button() {
    return Materialbutton(
      onPressed: () {},
      child: Textwidget(
        text: 'Login',
        color: Colors.white,
        fontSize: 18,
      ),
      color: Colors.blue,
    );
  }

  _loginwithgoogle() {
    return Materialbutton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Iconwidget(icon: Icons.g_mobiledata_sharp,color: Color.fromARGB(255, 122, 0, 0),size: 40,),
          Textwidget(
            text: 'Login with Google',
            fontSize: 20,
            color: Color.fromARGB(255, 0, 104, 190),
          ),
        ],
      ),
      color: Colors.white,
    );
  }
  _createnewaccount(){
    Textwidget(text: '');
  }
}
