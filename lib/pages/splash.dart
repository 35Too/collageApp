import 'package:flutter/material.dart';
import 'login_page.dart';

class  Splash extends StatefulWidget{
  const Splash({super.key});

  @override
  // TODO: implement hashCode
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToLogin();
  }

  _navigateToLogin() async {
    await Future.delayed(const Duration(seconds: 3),
            () {});
    Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(' assets/lib/images/medium.png'),
            const SizedBox(height: 20),
            const CircularProgressIndicator(),
          ],
        ),

      ),
    );
  }
}