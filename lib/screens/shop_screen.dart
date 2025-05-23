import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_groceries_market/screens/product.dart';
import 'package:online_groceries_market/screens/product_detail.dart';
import 'package:online_groceries_market/utils/colors.dart';

class ShopScreen extends StatelessWidget {
  ShopScreen({super.key});

  // Mahsulotlar ro'yxatini aniqlash
  final List<Product> products = [
    Product(
      name: "Organic Bananas",
      price: 3.99,
      imagePath: "assets/images/banan.png",
      description:
          "Bananas are rich in potassium and great for energy. Perfect for a healthy snack.",
    ),
    Product(
      name: "Red Apple",
      price: 3.99,
      imagePath: "assets/images/apple.png",
      description:
          "Apples are nutritious. Apples may be good for weight loss. Apples may be good for your heart. As part of a healthful and varied diet.",
    ),
    Product(
      name: "Fresh Ginger",
      price: 3.99,
      imagePath: "assets/images/ginger.png",
      description:
          "Ginger is known for its anti-inflammatory properties and aids digestion.",
    ),
    Product(
      name: "Red Pepper",
      price: 3.99,
      imagePath: "assets/images/red_papper.png",
      description:
          "Red peppers are rich in vitamins A and C, great for a healthy diet.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            SafeArea(
              child: Center(child: SvgPicture.asset("assets/svgs/carrot.svg")),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.location_on),
                Text(
                  "Dhaka, Banassre",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              decoration: BoxDecoration(
                color: const Color(0xFFF2F3F2),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  SvgPicture.asset("assets/svgs/search.svg"),
                  const SizedBox(width: 8),
                  Text(
                    "Search Store",
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: "Gilroy",
                      color: Color.fromARGB(255, 104, 108, 105),
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.cancel),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                "assets/images/vegitables.png",
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Exclusive Offer",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF53B175),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) =>
                                      ProductDetail(product: products[0]),
                            ),
                          );
                        },
                        child: Container(
                          width: 170,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            border: Border.all(
                              color: const Color.fromARGB(255, 196, 195, 195),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              Center(
                                child: Image.asset(
                                  "assets/images/banan.png",
                                  height: 80,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 8),
                                    Text(
                                      "Organic Bananas",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Gilroy",
                                      ),
                                    ),
                                    Text(
                                      "4pcs, Price",
                                      style: TextStyle(
                                        color: AppColors.mainGray,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 27),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "\$${products[0].price.toStringAsFixed(2)}",
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontFamily: "Gilroy",
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton.filled(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder:
                                                (context) => ProductDetail(
                                                  product: products[0],
                                                ),
                                          ),
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                              Colors.green,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) =>
                                      ProductDetail(product: products[1]),
                            ),
                          );
                        },
                        child: Container(
                          width: 170,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            border: Border.all(
                              color: const Color.fromARGB(255, 196, 195, 195),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              Center(
                                child: Image.asset(
                                  "assets/images/apple.png",
                                  height: 80,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 8),
                                    Text(
                                      "Red Apple",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Gilroy",
                                      ),
                                    ),
                                    Text(
                                      "4pcs, Price",
                                      style: TextStyle(
                                        color: AppColors.mainGray,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 27),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "\$${products[1].price.toStringAsFixed(2)}",
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontFamily: "Gilroy",
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton.filled(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder:
                                                (context) => ProductDetail(
                                                  product: products[1],
                                                ),
                                          ),
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                              Colors.green,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) =>
                                      ProductDetail(product: products[2]),
                            ),
                          );
                        },
                        child: Container(
                          width: 170,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            border: Border.all(
                              color: const Color.fromARGB(255, 196, 195, 195),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              Center(
                                child: Image.asset(
                                  "assets/images/ginger.png",
                                  height: 80,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 8),
                                    Text(
                                      "Fresh Ginger",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Gilroy",
                                      ),
                                    ),
                                    Text(
                                      "4pcs, Price",
                                      style: TextStyle(
                                        color: AppColors.mainGray,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 27),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "\$${products[2].price.toStringAsFixed(2)}",
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontFamily: "Gilroy",
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton.filled(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder:
                                                (context) => ProductDetail(
                                                  product: products[2],
                                                ),
                                          ),
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                              Colors.green,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) =>
                                      ProductDetail(product: products[3]),
                            ),
                          );
                        },
                        child: Container(
                          width: 170,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            border: Border.all(
                              color: const Color.fromARGB(255, 196, 195, 195),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              Center(
                                child: Image.asset(
                                  "assets/images/red_papper.png",
                                  height: 80,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 8),
                                    Text(
                                      "Red Pepper",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Gilroy",
                                      ),
                                    ),
                                    Text(
                                      "4pcs, Price",
                                      style: TextStyle(
                                        color: AppColors.mainGray,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 27),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "\$${products[3].price.toStringAsFixed(2)}",
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontFamily: "Gilroy",
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton.filled(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder:
                                                (context) => ProductDetail(
                                                  product: products[3],
                                                ),
                                          ),
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                              Colors.green,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
