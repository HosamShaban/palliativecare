import 'package:palliativecare/Consts/colors.dart';
import 'package:palliativecare/View/chat_screen.dart';
import 'package:palliativecare/View/categories_screen.dart';
import 'package:palliativecare/View/home_screen.dart';
import 'package:palliativecare/View/profile_screen.dart';
import 'package:palliativecare/widget/tab_card.dart';
import 'package:flutter/material.dart';
import 'package:palliativecare/screenIndexProvider.dart';
import 'package:provider/provider.dart';

class Nav extends StatefulWidget {
  @override
  State<Nav> createState() => _NavState();

}

class _NavState extends State<Nav> {
  late final ScaffoldState scaffoldState;


  @override
  void initState() {
    context.read<screenIndexProvider>().tabFlag = 0;
    super.initState();
  }

  List<dynamic> screens = [
    const HomeScreen(),
    const CategoriesScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final _screenindexprovider = Provider.of<screenIndexProvider>(context);
    int currentScreenIndex = _screenindexprovider.tabFlag;
    return Scaffold(
      body: screens[currentScreenIndex],
      bottomNavigationBar:
      Container(
        height: 60,
        width: 300,
        decoration: BoxDecoration(
          color: ConstColors.primaryColor,
          boxShadow: [
            BoxShadow(
              color: const Color(0xff000000).withOpacity(0.04),
              offset: const Offset(0, -2),
            ),
            BoxShadow(
              color: const Color(0xff000000).withOpacity(0.10),
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            TabCard(
              color: currentScreenIndex == 2
                  ? ConstColors.whiteFontColor
                  : ConstColors.text2Color,
              iconData: Icons.chat,
              title: "محادثة",
              onTap: () {
                setState(() {
                  _screenindexprovider.tabFlag = 2;
                });
              },

            ),
            TabCard(
              color: currentScreenIndex == 1
                  ? ConstColors.whiteFontColor
                  : ConstColors.text2Color,
              iconData: Icons.type_specimen,
              title: "الاصناف",
              onTap: () {
                setState(() {
                  _screenindexprovider.tabFlag = 1;
                });
              },

            ),

            TabCard(
              color: currentScreenIndex == 0
                  ? ConstColors.whiteFontColor
                  : ConstColors.text2Color,
              iconData: Icons.home,
              title: "الرئيسية",
              onTap: () {
                setState(() {
                  _screenindexprovider.tabFlag = 0;
                });
              },
            ),

            TabCard(
              color: currentScreenIndex == 3
                  ? ConstColors.whiteFontColor
                  : ConstColors.text2Color,
              iconData: Icons.person,
              title: "صفحتي",
              onTap: () {
                setState(() {
                  _screenindexprovider.tabFlag = 3;
                });
              },

            ),
          ],
        ),
      ),
    );
  }
}

