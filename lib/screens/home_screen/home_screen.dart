import 'package:clothing_store/screens/home_screen/product_details.dart';
import 'package:clothing_store/utils/pakages_path.dart';
import 'package:clothing_store/widgets/brand_button.dart';
import 'package:clothing_store/widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  final List<int> wishlistItems;

  const HomeScreen({super.key, required this.wishlistItems});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

  // Wishlist management
  void toggleWishlist(int index) {
    setState(() {
      if (widget.wishlistItems.contains(index)) {
        widget.wishlistItems.remove(index);
      } else {
        widget.wishlistItems.add(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset(drawericon),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        actions: [
          IconButton(
            icon: Image.asset(cartbagicon),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hello",
              style: TextStyle(fontSize: 28, fontFamily: semibold),
            ),
            const Text(
              "Welcome to Laza.",
              style: TextStyle(
                  fontSize: 15, fontFamily: regular, color: regulartxtclr),
            ),
            16.heightBox,
            SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  prefixIcon: const Icon(Icons.search, color: regulartxtclr),
                  hintText: 'Search...',
                  hintStyle: const TextStyle(
                      fontSize: 15, fontFamily: regular, color: regulartxtclr),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            12.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Choose Brand',
                  style: TextStyle(fontSize: 18, fontFamily: semibold),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'View All',
                    style: TextStyle(
                        color: regulartxtclr,
                        fontFamily: regular,
                        fontSize: 13),
                  ),
                ),
              ],
            ),
            8.heightBox,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  BrandButton(
                      imagePath: adidaslogo, brandName: "Adidas", onTap: () {}),
                  8.heightBox,
                  BrandButton(
                      imagePath: nikelogo, brandName: "Nike", onTap: () {}),
                  8.heightBox,
                  BrandButton(
                      imagePath: filalogo, brandName: "Fila", onTap: () {}),
                  8.heightBox,
                  BrandButton(
                      imagePath: pumalogo, brandName: "Puma", onTap: () {}),
                  8.heightBox,
                ],
              ),
            ),
            16.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'New Arrival',
                  style: TextStyle(fontSize: 17, fontFamily: medium),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'View All',
                    style: TextStyle(
                        color: regulartxtclr,
                        fontFamily: regular,
                        fontSize: 13),
                  ),
                ),
              ],
            ),
            8.heightBox,
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.62,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: productImages.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    imagePath: productImages[index],
                    productName: productNames[index],
                    price: productPrices[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProductDetails()),
                      );
                    },
                    onHeartTap: () {
                      toggleWishlist(index);
                    },
                    isWishlisted: widget.wishlistItems.contains(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
