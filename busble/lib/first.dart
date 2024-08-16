import 'package:busble/Widgets/Iconbutton.dart';
import 'package:busble/Widgets/container.dart';
import 'package:busble/Widgets/icon.dart';
import 'package:busble/Widgets/image.dart';
// import 'package:busble/Widgets/positioned.dart';
import 'package:busble/Widgets/text.dart';
import 'package:busble/Widgets/textbutton.dart';
import 'package:busble/form.dart';
import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _logo(),
              _box(),
              SizedBox(
                height: 30,
              ),
              _community(),
              SizedBox(
                height: 50,
              ),
              _button(),
            ],
          ),
        ),
      ),
    );
  }

  _logo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AssetImagewidget(
          url: 'logo.png',
          height: 80,
        ),
        TextbuttonWidget(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Formpage(),
                ));
          },
          child: TextWidget(
            text: "Skip",
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }

  _box() {
    return ContainerWidget(
      height: 300,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ContainerWidget(
            width: double.infinity,
            height: 200,
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue[900],
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: IconWidget(
                    icon: Icons.camera_enhance_sharp,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconWidget(
                      icon: Icons.mode_edit_outline_sharp,
                      size: 30,
                      color: Colors.white,
                    ),
                    IconWidget(
                      icon: Icons.architecture_sharp,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            child: ContainerWidget(
              color: Color.fromARGB(207, 33, 149, 243),
              borderRadius: BorderRadius.circular(10),
              height: 130,
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ContainerWidget(
                    color: Color.fromARGB(85, 255, 255, 255),
                    height: 50,
                    width: 50,
                    borderRadius: BorderRadius.circular(100),
                    child: IconWidget(
                      icon: Icons.person_pin_rounded,
                      color: Colors.white,
                    ),
                  ),
                  ContainerWidget(
                    color: Color.fromARGB(85, 255, 255, 255),
                    height: 70,
                    width: 70,
                    borderRadius: BorderRadius.circular(100),
                    child: IconWidget(
                      icon: Icons.people_alt_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  ContainerWidget(
                    color: Color.fromARGB(85, 255, 255, 255),
                    height: 50,
                    width: 50,
                    borderRadius: BorderRadius.circular(100),
                    child: IconWidget(
                      icon: Icons.fireplace_rounded,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            bottom: 0,
          ),
        ],
      ),
    );
  }

  _community() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextWidget(
          text: "Community",
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
        TextWidget(
          text:
              "lorem paris connected to the baap company at the end of the day",
          color: Colors.white,
          fontSize: 18,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  _button() {
    return IconbuttonWidget(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Formpage(),
          ),
        );
      },
      icon: ContainerWidget(
        height: 70,
        width: 70,
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
        child: IconWidget(
          icon: Icons.arrow_forward_outlined,
          color: Colors.blue,
        ),
      ),
    );
  }
}
