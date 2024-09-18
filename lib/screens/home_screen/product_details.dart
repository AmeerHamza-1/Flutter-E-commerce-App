import 'package:clothing_store/utils/pakages_path.dart';
import 'package:clothing_store/widgets/size_selection.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
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
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(cartbagicon, width: 45, height: 45)),
                ],
              ),
            ),
            Image.asset(
              item1img,
              // width: 200,
              // height: 200,
              fit: BoxFit.fill,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Men's Printed Pullover Hoodie",
                        style: TextStyle(
                            color: regulartxtclr,
                            fontFamily: regular,
                            fontSize: 13),
                      ),
                      const Text(
                        'Nike Club Fleece',
                        style: TextStyle(fontSize: 22, fontFamily: semibold),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Price',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const Text(
                        '\$120',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),

                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Size'),
                          Text(
                            'Size Guide',
                            style: TextStyle(color: regulartxtclr),
                          ),
                        ],
                      ),
                      15.heightBox,
                      const SizeSelection(),
                      const SizedBox(height: 16),
                      const Text(
                        'Description',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel...',
                        style: TextStyle(
                            color: regulartxtclr, fontFamily: regular),
                      ),
                      const Text(
                        'Read More...',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: semibold,
                            fontSize: 15),
                      ),
                      20.heightBox,

                      const Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ronald Richards',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '13 Sep, 2024',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Pellentesque malesuada \neget vitae...',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Text(
                                '4.8',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      // Total Price
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Price',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '\$125',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      16.heightBox,
                      LogsignBtn(
                          btnTitle: "Add to Cart", Navigationroute: () {})
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
