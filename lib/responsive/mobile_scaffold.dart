import 'package:flutter/material.dart';
import 'package:school/constants.dart';
import 'package:school/util/my_tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.white,
      drawer: myDrawer,
      body: Column(
        children: [
          //4 box on the top
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
          child: GridView.builder(
            itemCount: 4,
            gridDelegate:
             const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                 color: Colors.green,
                  ),
                );
              },
              ),
      ), 
      ),//SizedBox

          // tiles below it
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return MyTile();
              },
              ),
              )
        ],
        ),
      );

  }
}