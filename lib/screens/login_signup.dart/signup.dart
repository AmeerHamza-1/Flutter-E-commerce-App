import 'package:clothing_store/screens/home_screen/home.dart';
import 'package:clothing_store/utils/pakages_path.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    // Dispose of the controllers when no longer needed
    _usernameController.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: whiteclr,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LogSignScreen(title: "Sign Up"),

              // Username field
              SizedBox(height: screenHeight * 0.05),
              CustomTextField(
                labelText: usernameftitle,
                controller: _usernameController,
              ),

              // Password field
              const SizedBox(height: 20),
              PasswordTextField(
                labelText: passwordftitle,
                controller: _passwordController,
              ),

              // Email field
              const SizedBox(height: 20),
              CustomTextField(
                labelText: emailftitle,
                controller: _emailController,
              ),

              // const Spacer(),
              SizedBox(
                height: screenHeight * 0.34,
              ),

              // Sign Up btn
              Center(
                child: LogsignBtn(
                  btnTitle: "Sign Up",
                  Navigationroute: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
