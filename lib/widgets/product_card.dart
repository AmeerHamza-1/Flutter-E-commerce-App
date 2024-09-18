import 'package:clothing_store/utils/pakages_path.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String price;
  final VoidCallback onTap;
  final VoidCallback onHeartTap;
  final bool isWishlisted;

  const ProductCard({
    super.key,
    required this.imagePath,
    required this.productName,
    required this.price,
    required this.onTap,
    required this.onHeartTap,
    required this.isWishlisted,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 160,
        height: 257,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    imagePath,
                    width: 160,
                    height: 170,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: GestureDetector(
                    onTap: onHeartTap,
                    child: Icon(
                      isWishlisted ? Icons.favorite : Icons.favorite_border,
                      color: isWishlisted ? Colors.red : Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              productName,
              style: const TextStyle(fontSize: 12, fontFamily: medium),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Text(
              price,
              style: const TextStyle(fontSize: 13, fontFamily: semibold),
            ),
          ],
        ),
      ),
    );
  }
}