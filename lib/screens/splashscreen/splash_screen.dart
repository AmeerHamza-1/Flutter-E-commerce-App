import 'dart:async';
import 'package:clothing_store/utils/pakages_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => const Screen1(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appthemeclr,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              logo,
              width: 150,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Column(
              children: [
                appversion.text.white.fontFamily(semibold).make(),
                credits.text.white.fontFamily(semibold).make(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
