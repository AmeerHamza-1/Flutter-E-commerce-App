import 'package:clothing_store/utils/pakages_path.dart';

class SizeSelection extends StatefulWidget {
  const SizeSelection({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SizeSelectionState createState() => _SizeSelectionState();
}

class _SizeSelectionState extends State<SizeSelection> {
  String selectedSize = '';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: sizes.map((size) {
        bool isSelected = size == selectedSize;

        return GestureDetector(
          onTap: () {
            setState(() {
              selectedSize = size;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: isSelected ? Colors.grey : Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Text(
              size,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontFamily: semibold,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
