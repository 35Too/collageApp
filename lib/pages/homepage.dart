import 'package:flutter/material.dart';
import 'package:shule/constants.dart';
import 'package:shule/util/my_tile.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<homepage> {
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
class Appbar extends StatefulWidget {
  const Appbar({super.key});

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(fontSize: 18, color: Colors.white70),
        ),
        elevation: 10,
        backgroundColor: Colors.blue,
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      drawer: Drawer(),
    );
  }
}
