// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/list.dart';

import 'package:test/second.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _FistpagStateState();
}

class _FistpagStateState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HELLO, PETER",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: _search(),
            ),
            _aboutpage(),
            Container(
              height: 300,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MyList();
                },
              ),
            ),
            _aboutpage(),
            Container(
              height: 300,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MyList();
                },
              ),
            ),
      
          
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Second(),
                      ));
                },
                child: Text("add"))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.zoom_in_map_rounded,
                  color: Colors.blue,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_home_work_outlined,
                  color: Colors.black,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_home_sharp,
                  color: Colors.black,
                ),
                label: 'home'),
          ]),
    );
  }

  Widget _search() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Search',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
        prefixIcon: Icon(Icons.search),
      ),
    );
  }

  Widget _aboutpage() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Text(
            "Back To School",
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

 
}
