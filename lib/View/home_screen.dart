import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'الصفحة الرئيسية',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: InkWell(
          child: IconButton(
              onPressed: () {
                //       Navigator.push(context,MaterialPageRoute(builder: (context) => const ()));
              },
              icon: const Icon(
                Icons.email_outlined,
                color: Colors.black,
              )),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffF3F4F9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextField(
                              decoration: const InputDecoration(
                                hintText: 'Search',
                                prefixIcon: Icon(Icons.search),
                                border: InputBorder.none,
                              ),
                              onChanged: (value) {
                                // Perform search
                              },
                            ),
                          ),
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
