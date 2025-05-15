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
                  radius: 30,
                  foregroundImage: NetworkImage(
                    "https://www.svgrepo.com/show/404545/avatar-man-profile-user-3.svg",
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Shoxrux",
                          style: TextStyle(fontSize: 20),
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
                      style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 101, 100, 100)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30,),
            Divider(),
            Row(
              spacing: 20,
              children: [
                SvgPicture.asset(
                  "assets/svgs/bag.svg",
                  height: 20,
                  width: 18,
                ),
                
                Text("Orders", style: TextStyle(fontSize: 20),),
                Spacer(),
                SvgPicture.asset("assets/svgs/strelka.svg",
                )
              ],
            ),
            Divider()
          ],
        ),

      ),
    );
  }
}
