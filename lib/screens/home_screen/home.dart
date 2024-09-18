import 'package:clothing_store/controllers/home_controller.dart';
import 'package:clothing_store/screens/cart_screen/cart_screen.dart';
import 'package:clothing_store/screens/home_screen/home_screen.dart';
import 'package:clothing_store/screens/profile_screen/profile_screen.dart';
import 'package:clothing_store/screens/wishlist_screen/wishlist_screen.dart';
import 'package:clothing_store/utils/pakages_path.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var wishlistItems = <int>[].obs;

    var navbareItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            homeic,
            width: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            fvrticon,
            width: 26,
          ),
          label: wishlist),
      BottomNavigationBarItem(
          icon: Image.asset(
            carticon,
            width: 26,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            profileicon,
            width: 26,
          ),
          label: profile),
    ];

    var navBody = [
      HomeScreen(wishlistItems: wishlistItems),
      WishlistScreen(
        wishlistItems: wishlistItems,
        toggleWishlist: (int index) {
          if (wishlistItems.contains(index)) {
            wishlistItems.remove(index);
          } else {
            wishlistItems.add(index);
          }
        },
      ),
      const CartScreen(),
      ProfileScreen()
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
              child: navBody.elementAt(controller.currentNavInder.value))),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavInder.value,
          selectedItemColor: appthemeclr,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          items: navbareItem,
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteclr,
          onTap: (value) {
            controller.currentNavInder.value = value;
          },
        ),
      ),
    );
  }
}
