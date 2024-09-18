import 'package:clothing_store/utils/pakages_path.dart';

class BrandButton extends StatelessWidget {
  final String imagePath;
  final String brandName;
  final VoidCallback onTap;

  const BrandButton({
    super.key,
    required this.imagePath,
    required this.brandName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          color: const Color(0xFFF5F6FA),
          borderRadius: BorderRadius.circular(13),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: const Color(0xFFFEFEFE),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                imagePath,
                width: 25,
                height: 17,
              ),
            ),
            16.widthBox,
            Text(
              brandName,
              style: const TextStyle(
                fontSize: 15,
                fontFamily: medium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
