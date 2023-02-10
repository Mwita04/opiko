// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_place/google_place.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _startSearchFieldController = TextEditingController();
  final _endSearchFieldController = TextEditingController();

  // GooglePlace googlePlace;

  @override
  void initState() {
    //TO DO: Implement initState
    super.initState();
    String apiKey = '';
    //googlePlace = GooglePlace(apiKEY);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButton(color: Colors.black),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _startSearchFieldController,
              autofocus: false,
              style: const TextStyle(fontSize: 24),
              decoration: InputDecoration(
                hintText: 'Starting Point',
                hintStyle:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                filled: true,
                fillColor: Colors.grey[200],
                border: InputBorder.none,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _endSearchFieldController,
              autofocus: false,
              style: const TextStyle(fontSize: 24),
              decoration: InputDecoration(
                hintText: 'End Point',
                hintStyle:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                filled: true,
                fillColor: Colors.grey[200],
                border: InputBorder.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
