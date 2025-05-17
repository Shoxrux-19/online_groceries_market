// import 'dart:ui_web';

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_groceries_market/utils/colors.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFF2F3F2),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/svgs/search.svg"),
                            SizedBox(width: 8),
                            Text(
                              "Egg",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Gilroy",
                                color: Color(0xFF181B19),
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.cancel),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    SvgPicture.asset("assets/svgs/menyu.svg"),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 170,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                              color: const Color.fromARGB(255, 196, 195, 195),
                            ),
                          ),
                          child: Column(
                            children: [
                              Image.asset("assets/images/egg.jpg"),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Egg Chicken Red",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Gilroy",
                                    ),
                                  ),
                                  Text(
                                    "4pcs, Price",
                                    style: TextStyle(color: AppColors.mainGray),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "\$1.99",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: "Gilroy",
                                      ),
                                    ),
                                    Spacer(),
                                    IconButton.filled(
                                      onPressed: () {},
                                      icon: Icon(
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
                        SizedBox(width: 8),
                        Container(
                          width: 170,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                              color: const Color.fromARGB(255, 196, 195, 195),
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 12),
                              Image.asset("assets/images/whiteEgg.jpg"),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20),
                                  Text(
                                    "Egg Chicken White",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Gilroy",
                                    ),
                                  ),
                                  Text(
                                    "180g, Price",
                                    style: TextStyle(color: AppColors.mainGray),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "\$1.50",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: "Gilroy",
                                      ),
                                    ),
                                    Spacer(),
                                    IconButton.filled(
                                      onPressed: () {},
                                      icon: Icon(
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
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 170,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                              color: const Color.fromARGB(255, 196, 195, 195),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 12),
                              Center(
                                child: Image.asset("assets/images/pasta.jpg"),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      "Egg Pasta",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Gilroy",
                                      ),
                                    ),
                                    Text(
                                      "30gm, Price",
                                      style: TextStyle(
                                        color: AppColors.mainGray,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 30),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "\$15.99",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: "Gilroy",
                                      ),
                                    ),
                                    Spacer(),
                                    IconButton.filled(
                                      onPressed: () {},
                                      icon: Icon(
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
                        SizedBox(width: 8),
                        Container(
                          width: 170,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                              color: const Color.fromARGB(255, 196, 195, 195),
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 25),
                              Image.asset("assets/images/noodles.jpg"),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Egg Noodles",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Gilroy",
                                    ),
                                  ),
                                  Text(
                                    "2L, Price",
                                    style: TextStyle(color: AppColors.mainGray),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "\$15.99",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: "Gilroy",
                                      ),
                                    ),
                                    Spacer(),
                                    IconButton.filled(
                                      onPressed: () {},
                                      icon: Icon(
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
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 170,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                              color: const Color.fromARGB(255, 196, 195, 195),
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 25),
                              Image.asset(
                                "assets/images/mayonnasie.jpg",
                                width: 80,
                                height: 80,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mayonnais Eggles",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Gilroy",
                                    ),
                                  ),
                                  Text(
                                    "4pcs, Price",
                                    style: TextStyle(color: AppColors.mainGray),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "\$1.99",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: "Gilroy",
                                      ),
                                    ),
                                    Spacer(),
                                    IconButton.filled(
                                      onPressed: () {},
                                      icon: Icon(
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

                        SizedBox(width: 8),
                        Container(
                          width: 170,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                              color: const Color.fromARGB(255, 196, 195, 195),
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 40),
                              Image.asset("assets/images/makaron.jpg"),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Egg Noodles",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Gilroy",
                                    ),
                                  ),
                                  Text(
                                    "4pcs, Price",
                                    style: TextStyle(color: AppColors.mainGray),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "\$1.99",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: "Gilroy",
                                      ),
                                    ),
                                    Spacer(),
                                    IconButton.filled(
                                      onPressed: () {},
                                      icon: Icon(
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
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
