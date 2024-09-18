import 'package:clothing_store/screens/home_screen/home.dart';
import 'package:clothing_store/utils/pakages_path.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: whiteclr,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
          child: Column(
            children: [
              const LogSignScreen(title: "Welcome"),
              const Text(
                "Please Enter Your Data To Continue",
                style: TextStyle(
                  color: regulartxtclr,
                  fontFamily: regular,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: screenHeight * 0.1),
              CustomTextField(
                labelText: usernameftitle,
                controller: _usernameController,
              ),
              const SizedBox(height: 20),
              PasswordTextField(
                labelText: passwordftitle,
                controller: _passwordController,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      forgotpass,
                      style: TextStyle(
                        fontFamily: regular,
                        fontSize: 15,
                        color: goglebtnclr,
                      ),
                    )),
              ),
              SizedBox(
                height: screenHeight * 0.30,
              ),
              Center(
                child: LogsignBtn(
                  btnTitle: "Login",
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
