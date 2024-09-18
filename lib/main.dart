import 'package:clothing_store/screens/splashscreen/splash_screen.dart';
import 'package:clothing_store/utils/pakages_path.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appname,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
          ),
          fontFamily: regular),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
