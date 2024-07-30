import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  get children => null;
    @override
  Widget build(BuildContext context){
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){} , selectedIcon: const Icon(LineAwesomeIcons.angle_left), icon: null ,),
        title: Text(tProfile, style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(isDark? LineAwesomeIcons.sun: LineAwesomeIcons.moon))
        ],
      )
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            children[
              SizedBox(
                width: 120 , 
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100), 
                  child: Image: AssetImage(tProfileImage),
                  ),

              ),
              const  SizedBox(height: 10 ),
              text(tProfileHeading, style: Theme.of(context).TextTheme.headline4),
              text(tProfilesubheading, style: Theme.of(context).TextTheme.bodytext2),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                child :ElevatedButton[
                  Onpress: (){},
                  child: const Text(tEditProfile, style: TextStyle(color: tDarkcolor)),
                  style: ElevatedButton.stylefrom(
                    backgroundColor: tPrimaryColor, side: Boaderside.none, shape: const StatdiumBorder()),
                  )
                  child:


                ],
              ),
                
            ],
            ),
        ),
      ),
    );
  }
}