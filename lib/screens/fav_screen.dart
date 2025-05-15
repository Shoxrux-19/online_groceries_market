import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Center(
                child: Text(
                  "Favourite",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Gilroy",
                    color: Color(0xff181725),
                  ),
                ),
              ),
              SizedBox(height: 32),
              Divider(),
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(width: 32),
                  Image.asset("assets/svgs/sprite.png"),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Sprite Can",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Gilroy",
                              color: Color(0xFF181725),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "325ml, Price",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFf7C7C7C),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 150),
                      Text(
                        "\$1.50",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Gilroy",
                          color: Color(0xFF181725),
                        ),
                      ),
                      SizedBox(width: 16),
                      SvgPicture.asset("assets/svgs/strelka.svg"),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 30),
              Divider(),

              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(width: 32),
                  Image.asset("assets/svgs/coke.png"),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Diet Coce",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Gilroy",
                              color: Color(0xFF181725),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "3ml55, Price",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFf7C7C7C),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 150),
                      Text(
                        "\$1.50",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Gilroy",
                          color: Color(0xFF181725),
                        ),
                      ),
                      SizedBox(width: 16),
                      SvgPicture.asset("assets/svgs/strelka.svg"),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 30),
              Divider(),

              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(width: 20),
                  Image.asset("assets/svgs/juice.png"),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Apple & Grape Juice",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Gilroy",
                              color: Color(0xFF181725),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "325L, Price",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFf7C7C7C),
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox(width: 50)),
                  Row(
                    children: [
                      Text(
                        "\$15.50",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Gilroy",
                          color: Color(0xFF181725),
                        ),
                      ),
                      SizedBox(width: 16),
                      SvgPicture.asset("assets/svgs/strelka.svg"),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 30),
              Divider(),

              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(width: 32),
                  Image.asset("assets/svgs/cocacola.png"),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Coca Cola",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Gilroy",
                              color: Color(0xFF181725),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "325ml, Price",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFf7C7C7C),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 150),
                      Text(
                        "\$4.99",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Gilroy",
                          color: Color(0xFF181725),
                        ),
                      ),
                      SizedBox(width: 16),
                      SvgPicture.asset("assets/svgs/strelka.svg"),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 30),
              Divider(),

              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(width: 32),
                  Image.asset("assets/svgs/pepsi.png"),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Pepsi can",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Gilroy",
                              color: Color(0xFF181725),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "330ml, Price",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFf7C7C7C),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 150),
                      Text(
                        "\$4.99",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Gilroy",
                          color: Color(0xFF181725),
                        ),
                      ),
                      SizedBox(width: 16),
                      SvgPicture.asset("assets/svgs/strelka.svg"),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 30),
              Divider(),
              SizedBox(height: 50),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xFf53B175),
                ),
                width: 364,
                height: 67,
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Text(
                    "Add All To Cart",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Gilroy",
                      color: Color(0xFFFCFCFC),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
