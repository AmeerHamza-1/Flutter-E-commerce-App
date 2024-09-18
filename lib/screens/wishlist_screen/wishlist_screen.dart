import 'package:clothing_store/screens/home_screen/product_details.dart';
import 'package:clothing_store/utils/pakages_path.dart';

class WishlistScreen extends StatefulWidget {
  final List<int> wishlistItems;
  final Function(int) toggleWishlist;

  const WishlistScreen({
    super.key,
    required this.wishlistItems,
    required this.toggleWishlist, // To handle removing from wishlist
  });

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    final productImages = [item1img, item2img, item3img, item4img];
    final productNames = [
      productnames[0],
      productnames[1],
      productnames[2],
      productnames[3],
    ];
    final productPrices = [
      productprice[0],
      productprice[1],
      productprice[2],
      productprice[3],
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Wishlist',
          style: TextStyle(
            fontFamily: semibold,
          ),
        ),
      ),
      body: widget.wishlistItems.isEmpty
          ? const Center(
              child: Text(
                'Your wishlist is empty',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: regular,
                  color: regulartxtclr,
                ),
              ),
            )
          : ListView.builder(
              itemCount: widget.wishlistItems.length,
              itemBuilder: (context, index) {
                final wishlistIndex = widget.wishlistItems[index];

                return ListTile(
                  leading: GestureDetector(
                    onTap: () {
                      const ProductDetails();
                    },
                    child: Image.asset(productImages[wishlistIndex]),
                  ),
                  title: Text(productNames[wishlistIndex]),
                  subtitle: Text(productPrices[wishlistIndex]),
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      widget.toggleWishlist(wishlistIndex);
                      setState(() {});
                    },
                  ),
                  onTap: () {
                  },
                );
              },
            ),
    );
  }
}
