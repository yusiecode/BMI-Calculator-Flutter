import 'package:flutter/material.dart';
import 'inputpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () async {
      await Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) {
            return const InputPage();
          }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/splash.png',),
            fit: BoxFit.cover,
          ),
          color: Colors.lightBlueAccent,
        ),
      ),
    );
  }
}
