import 'package:flutter/material.dart';
import 'package:shule/constants.dart';
import 'package:shule/util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar,
      body: Row(children: [
        // open drawer
        myDrawer,

        // rest of body
        Expanded(
          flex: 2,
          child: Column(
        children: [
          //4 box on the top
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
          child: GridView.builder(
            itemCount: 4,
            gridDelegate:
             const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
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
                return const MyTile();
              },
              ),
              )
        ],
        ),
        ),
        Expanded(
          child: Column(
            children: [
             Expanded(child: Container(color: Colors.blue)), 
            ],
            ),
            )
        
      ],
      ),
      );
  }
}