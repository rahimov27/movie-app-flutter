import 'package:flutter/material.dart';
import 'package:movie_app/resources/resources.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1E25),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          width: 48,
                          height: 48,
                          child: Image(
                            image: AssetImage(Images.userprof),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Miles Morales",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                            Text(
                              "Film Hunter",
                              style: TextStyle(
                                  color: Color(0xffAFAFAF),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Image(
                        image: AssetImage(Images.arrowRight),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 34,
                ),
                Container(
                  width: double.infinity,
                  height: 2,
                  color: Colors.white.withOpacity(0.30),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Account",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: AccountWidget(
                    text: "Personal Data",
                    color: Color(0xff546EE5),
                    image: Image(
                      image: AssetImage(Images.activity),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: AccountWidget(
                    color: Color(0xff54C2E5),
                    text: "Email & Payment",
                    image: Image(image: AssetImage(Images.addUser)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: AccountWidget(
                    text: "Deactive Account",
                    color: Color(0xffE55454),
                    image: Image(
                      image: AssetImage(Images.delete),
                    ),
                  ),
                ),
                SizedBox(
                  height: 34,
                ),
                Container(
                  width: double.infinity,
                  height: 2,
                  color: Colors.white.withOpacity(0.30),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Privacy & Policy",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: AccountWidget(
                    text: "Notification",
                    color: Color(0xff546EE5),
                    image: Image(
                      image: AssetImage(Images.notification),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: AccountWidget(
                    text: "Your Ticket",
                    color: Color(0xff54C2E5),
                    image: Image(
                      image: AssetImage(Images.ticket),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: AccountWidget(
                    color: Color(0xffE55454),
                    text: "Logout",
                    image: Image(
                      image: AssetImage(Images.logout),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AccountWidget extends StatelessWidget {
  const AccountWidget({
    Key? key,
    required this.text,
    required this.image,
    required this.color,
  }) : super(key: key);

  final Image image;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 48,
              child: image,
              height: 48,
              color: color,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Spacer(),
          Image(
            image: AssetImage(Images.arrowRight),
          ),
        ],
      ),
    );
  }
}
