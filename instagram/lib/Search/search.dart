import 'package:flutter/material.dart';
import 'package:instagram/Search/searchboxes.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SearchBoxes(),
    );
  }
}
