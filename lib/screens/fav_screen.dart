import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:online_groceries_market/extensions/context_ext.dart';
import 'package:online_groceries_market/utils/colors.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  int pepperCount = 1;

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
                    color: AppColors.mainBlack,
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
                              color: AppColors.mainBlack,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "325ml, Price",
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.mainGray,
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
                          color: AppColors.mainBlack,
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
                              color: AppColors.mainBlack,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "3ml55, Price",
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.mainGray,
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
                          color: AppColors.mainBlack,
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
                              color: AppColors.mainBlack,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "325L, Price",
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.mainGray,
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
                          color: AppColors.mainBlack,
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
                              color: AppColors.mainBlack,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "325ml, Price",
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.mainGray,
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
                          color: AppColors.mainBlack,
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
                              color: AppColors.mainBlack,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "330ml, Price",
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.mainGray,
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
                          color: AppColors.mainBlack,
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
                  color: AppColors.mainColor,
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
                      color: AppColors.mainWhite,
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
