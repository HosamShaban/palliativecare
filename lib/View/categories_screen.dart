import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState>? scaffoldKey;
  const CategoriesScreen({super.key, this.scaffoldKey});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}



class _CategoriesScreenState extends State<CategoriesScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'الأطباء',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,

      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffF3F4F9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: 'بحث',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color:Color(0xffADAEB3),
                          fontWeight: FontWeight.w500,
                        ),
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.search,
                            color: Color(0xffADAEB3),
                            size: 30,
                          ),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 210, top: 9),
                      ),
                      onChanged: (value) {
                        // Perform search
                      },
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
