import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            ),
          ],
        ),
      ),
    );
  }
}
