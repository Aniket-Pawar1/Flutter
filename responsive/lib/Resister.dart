import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive/login.dart';

class Resister extends StatefulWidget {
  const Resister({super.key});

  @override
  State<Resister> createState() => _ResisterState();
}

class _ResisterState extends State<Resister> {
  bool _obscureText = true;
  bool _obscureText2 = true;
  var _teacherbtncolor = true;
  bool _teacherText = true;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ));
            },
          ),
          backgroundColor: Color.fromARGB(255, 248, 248, 248),
        ),
        backgroundColor: Color.fromARGB(255, 248, 248, 248),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _twobtn(),
              SizedBox(
                height: 50.h,
              ),
              _userinput(),
              SizedBox(
                height: 20.h,
              ),
              _emailInput(),
              SizedBox(
                height: 10,
              ),
              _passwordinput(),
              SizedBox(
                height: 20,
              ),
              _passwordcomfirminput(),
              SizedBox(
                height: 40,
              ),
              _resisterbtn(),
              SizedBox(
                height: 30,
              ),
              _twobtns(),
              SizedBox(
                height: 20,
              ),
              _lasttexts(),
            ],
          ),
        ),
      ),
    );
  }

  _userinput() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Username',
            ),
          ),
        )
      ],
    );
  }

  _emailInput() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Email',
            ),
          ),
        )
      ],
    );
  }

  _passwordinput() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            obscureText: _obscureText,
            decoration: InputDecoration(
                hintText: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )),
          ),
        ),
      ],
    );
  }

  _passwordcomfirminput() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            obscureText: _obscureText2,
            decoration: InputDecoration(
                hintText: 'Confirm Password',
                suffixIcon: IconButton(
                  icon: Icon(
                      _obscureText2 ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _obscureText2 = !_obscureText2;
                    });
                  },
                )),
          ),
        ),
      ],
    );
  }

  _twobtn() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Resister",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                color: _teacherbtncolor ? Colors.white : Colors.blue,
                onPressed: () {
                  setState(() {
                    _teacherbtncolor = !_teacherbtncolor;
                    _teacherText = !_teacherText;
                  });
                },
                child: Text(
                  "Teacher",
                  style: TextStyle(
                    color: _teacherText ? Colors.grey[600] : Colors.white,
                  ),
                ),
                minWidth: 150,
                height: 50,
              ),
              MaterialButton(
                color: Colors.blue,
                onPressed: () {},
                child: Text(
                  "Student",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                minWidth: 150,
                height: 50,
              )
            ],
          )
        ],
      ),
    );
  }

  _resisterbtn() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          "Resister",
          style: TextStyle(color: Colors.white),
        ),
        color: Colors.blue,
        minWidth: double.infinity,
        height: 50.h,
      ),
    );
  }

  _twobtns() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MaterialButton(
            onPressed: () {},
            child: Image.network(
              height: 20.h,
              'data:image/png;base64,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',
            ),
            color: Colors.blue,
            minWidth: 150.w,
            height: 50.h,
          ),
          MaterialButton(
            onPressed: () {},
            child: Image.network(
              height: 20.h,
              'data:image/png;base64,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',
            ),
            color: Colors.white,
            minWidth: 150.w,
            height: 50.h,
          )
        ],
      ),
    );
  }

  _lasttexts() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "To creating an account have",
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          " Terms & Condition",
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
