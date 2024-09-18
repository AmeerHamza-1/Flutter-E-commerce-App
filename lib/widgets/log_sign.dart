import 'package:clothing_store/utils/pakages_path.dart';


class LogSignScreen extends StatelessWidget {
  final String title;
  const LogSignScreen({super.key,  required this.title});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SafeArea(
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.arrow_back, color: blackclr),
            ),
          ),
        ),
        SizedBox(height: screenHeight * 0.05),
         Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 28,
              fontFamily: semibold,
            ),
          ),
        ),
      ],
    );
  }
}
