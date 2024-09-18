import 'package:clothing_store/utils/pakages_path.dart';

class PasswordTextField extends StatefulWidget {
  final String labelText;
  final TextEditingController controller;

  const PasswordTextField({
    super.key,
    required this.labelText,
    required this.controller,
  });

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isFilled = false;
  bool _isObscured = true;

  @override
  void initState() {
    super.initState();

    widget.controller.addListener(() {
      setState(() {
        _isFilled = widget.controller.text.isNotEmpty;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: _isObscured,
      decoration: InputDecoration(
        labelStyle: const TextStyle(
          color: regulartxtclr,
          fontFamily: regular,
          fontSize: 15,
        ),
        labelText: widget.labelText,
        suffixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _isFilled
                ? const Icon(Icons.check, color: Colors.green)
                : const SizedBox.shrink(),
            IconButton(
              icon: Icon(
                _isObscured ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  _isObscured = !_isObscured;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
