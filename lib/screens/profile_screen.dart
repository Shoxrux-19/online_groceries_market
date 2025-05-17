import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_svg/svg.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage("assets/images/profile_pic.png"),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Shoxrux",
                          style: TextStyle(fontSize: 20, fontFamily: "Gilroy"),
                        ),
                        SizedBox(width: 8),
                        SvgPicture.asset(
                          "assets/svgs/pencil.svg",
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      "muzaffarov@gmail.com",
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 101, 100, 100),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Divider(),
            SizedBox(height: 24),
            Row(
              children: [
                SvgPicture.asset("assets/svgs/bag.svg", height: 20, width: 18),
                SizedBox(width: 20),
                Text(
                  "Orders",
                  style: TextStyle(fontSize: 20, fontFamily: "Gilroy"),
                ),
                Spacer(),
                SvgPicture.asset("assets/svgs/strelka.svg"),
              ],
            ),
            SizedBox(height: 24),

            Divider(),
            SizedBox(height: 24),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/svgs/id_card.svg",
                  height: 20,
                  width: 18,
                ),
                SizedBox(width: 20),
                Text(
                  "My Details",
                  style: TextStyle(fontSize: 20, fontFamily: "Gilroy"),
                ),
                Spacer(),
                SvgPicture.asset("assets/svgs/strelka.svg"),
              ],
            ),
            SizedBox(height: 24),
            Divider(),

            Row(
              children: [
                SvgPicture.asset(
                  "assets/svgs/location.svg",
                  height: 20,
                  width: 18,
                ),
                SizedBox(width: 20),
                Text(
                  "Delivery Address",
                  style: TextStyle(fontSize: 20, fontFamily: "Gilroy"),
                ),
                Spacer(),
              ],

      body: SafeArea(
        child: Column(
          children: [
            buildProfileHeader(),
            SizedBox(height: 30),
            Divider(),
            buildProfileItem(
              iconPath: "assets/svgs/orders.svg",
              text: "Orders",
              onTap: () {},
            ),
            buildProfileItem(
              iconPath: "assets/svgs/my_details.svg",
              text: "My Detalis",
              onTap: () {},
            ),
            buildProfileItem(
              iconPath: "assets/svgs/location.svg",
              text: "Deliver Address",
              onTap: () {},
            ),
            buildProfileItem(
              iconPath: "assets/svgs/payment.svg",
              text: "Payment Methods",
              onTap: () {},
            ),
            buildProfileItem(
              iconPath: "assets/svgs/ticket.svg",
              text: "Promo Cord",
              onTap: () {},
            ),
            buildProfileItem(
              iconPath: "assets/svgs/notification.svg",
              text: "Notifecations",
              onTap: () {},
            ),
            buildProfileItem(
              iconPath: "assets/svgs/help.svg",
              text: "Help",
              onTap: () {},
            ),
            buildProfileItem(
              iconPath: "assets/svgs/about.svg",
              text: "About",
              onTap: () {},
            ),
            SizedBox(height: 50),
            buildLogOutButton(),
          ],
        ),
      ),
    );
  }

  InkWell buildLogOutButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 16),
        height: 70,
        decoration: BoxDecoration(
          color: Color(0xFFF2F3F2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(Icons.logout, color: Color(0xFF53B175), size: 20),
            SizedBox(width: 110),
            Text(
              "Log out",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "Gilroy",
                color: Color(0xFF53B175),
              ),

            ),
          ],
        ),
      ),
    );

  }

  Padding buildProfileHeader() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            child: Image.asset("assets/images/profile.png"),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Zikrillo",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Gilroy",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.edit, size: 15, color: Color(0xFF53B175)),
                  ),
                ],
              ),
              Text(
                "imomaliyevzikrillo@gmail.com",
                style: TextStyle(fontSize: 16, color: Color(0xFF7C7C7C)),
              ),
            ],
          ),
        ],
      ),
    );

  }
}

InkWell buildProfileItem({
  required String iconPath,
  required String text,
  required VoidCallback onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              SvgPicture.asset(iconPath),
              SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Gilroy",
                  color: Color(0xFF181725),
                ),
              ),
              Spacer(),
              Icon(Icons.keyboard_arrow_right_outlined),
            ],
          ),
        ),
        Divider(),
      ],
    ),
  );
}
