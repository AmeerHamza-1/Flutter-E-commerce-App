import 'package:clothing_store/utils/pakages_path.dart';


class LogsignBtn extends StatelessWidget {
  final String btnTitle;
  final VoidCallback Navigationroute;
  const LogsignBtn({super.key, required this.btnTitle, required this.Navigationroute});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: Navigationroute,
      style: ElevatedButton.styleFrom(
        backgroundColor: appthemeclr,
        fixedSize: const Size(320, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        btnTitle,
        style: const TextStyle(fontFamily: medium, color: whiteclr),
      ),
    );
  }
}
