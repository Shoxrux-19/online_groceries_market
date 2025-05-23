import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_groceries_market/screens/product.dart';
import 'package:online_groceries_market/utils/colors.dart';

class ProductDetail extends StatefulWidget {
  final Product product;

  const ProductDetail({super.key, required this.product});

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context),
              const SizedBox(height: 32),
              _buildProductInfo(),
              _buildQuantitySelector(),
              const SizedBox(height: 30),
              const Divider(),
              _buildSectionTitle(
                "Product Detail",
                Icons.keyboard_arrow_down_outlined,
              ),
              _buildDescription(),
              const SizedBox(height: 30),
              const Divider(),
              _buildSectionTitle(
                "Nutritions",
                Icons.keyboard_arrow_right_outlined,
                extraWidget: _buildNutritionTag(),
              ),
              const SizedBox(height: 14),
              const Divider(),
              _buildSectionTitle(
                "Review",
                Icons.keyboard_arrow_right_outlined,
                extraWidget: _buildStars(),
              ),
              const SizedBox(height: 20),
              _buildAddToBasketButton(),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 223, 221),
            Color.fromARGB(255, 237, 255, 238),
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.file_upload_outlined),
              ),
            ],
          ),
          Image.asset(
            widget.product.imagePath,
            height: 200,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/svgs/under_line.svg"),
              const Text("  •  •", style: TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProductInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                widget.product.name,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              const Icon(Icons.favorite_outline),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            "1kg, Price",
            style: TextStyle(fontSize: 16, color: Color(0xFF7C7C7C)),
          ),
        ],
      ),
    );
  }

  Widget _buildQuantitySelector() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              if (quantity > 1) {
                setState(() => quantity--);
              }
            },
            icon: const Icon(Icons.remove),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 205, 197, 197),
              ),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Text(
              quantity.toString(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          IconButton(
            onPressed: () => setState(() => quantity++),
            icon: const Icon(Icons.add),
          ),
          const Spacer(),
          Text(
            "\$${widget.product.price.toStringAsFixed(2)}", // double ni formatlangan string ga aylantirish
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(
    String title,
    IconData icon, {
    Widget? extraWidget,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontFamily: "Gilroy",
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (extraWidget != null) ...[extraWidget, const Spacer()],
          Icon(icon),
        ],
      ),
    );
  }

  Widget _buildNutritionTag() {
    return Container(
      width: 33,
      height: 18,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 224, 219, 219),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: const Center(
        child: Text(
          "100gr",
          style: TextStyle(fontSize: 10, fontFamily: "Gilroy"),
        ),
      ),
    );
  }

  Widget _buildStars() {
    return Row(
      children: List.generate(
        5,
        (_) => const Icon(Icons.star, color: Colors.amber),
      ),
    );
  }

  Widget _buildDescription() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Text(
        widget.product.description,
        style: const TextStyle(fontFamily: "Gilroy"),
      ),
    );
  }

  Widget _buildAddToBasketButton() {
    return GestureDetector(
      onTap: () {
        // Savatga qo'shish logikasi shu yerda bo'ladi
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("${widget.product.name} added to basket")),
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: 60,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Text(
          "Add to Basket",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontFamily: "Gilroy-Regular",
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
