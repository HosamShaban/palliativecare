import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.only(right: 5),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        title: const Text(
          "الملف الشخصي",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            const Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/photo3.jpeg'),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "محمد",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                 Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                 Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                 Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                 Icon(Icons.star_border),
                 Icon(Icons.star_border),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
