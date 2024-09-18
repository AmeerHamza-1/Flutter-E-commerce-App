import 'package:clothing_store/utils/pakages_path.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.labelText,
    required this.controller,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isFilled = false;

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
      decoration: InputDecoration(
        labelStyle: const TextStyle(
          color: regulartxtclr,
          fontFamily: regular,
          fontSize: 15,
        ),
        labelText: widget.labelText,
        suffixIcon:
            _isFilled ? const Icon(Icons.check, color: Colors.green) : null,
      ),
    );
  }
}
