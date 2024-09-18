import 'package:flutter/gestures.dart';
import 'package:clothing_store/utils/pakages_path.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Custom Widget
            const LogSignScreen(
              title: "Let's Get Started",
            ),
            SizedBox(height: screenHeight * 0.20),

            // Fb button
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: fbbtnclr,
                  fixedSize: const Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      fblogo,
                      width: 104,
                      height: 22,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),

            // X button
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: xbtnclr,
                  fixedSize: const Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      twitterlogo,
                      width: 100,
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Google button
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: goglebtnclr,
                  fixedSize: const Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      goglelogo,
                      width: 100,
                      height: 24,
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),

            // Signin text
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Already have an account? ",
                  style: const TextStyle(
                    color: regulartxtclr,
                    fontFamily: regular,
                    fontSize: 15,
                  ),
                  children: [
                    TextSpan(
                      text: "Signin",
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: semibold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Create Account cstm button
            Center(
              child: LogsignBtn(
                btnTitle: "Create an Account",
                Navigationroute: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
