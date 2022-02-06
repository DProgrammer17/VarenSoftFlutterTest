import 'package:flutter/material.dart';
import 'package:varen_soft_application/ui/coming_soon.dart';
import 'package:varen_soft_application/ui/trading_main_page.dart';

class BottomNavBar extends StatefulWidget{
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>{
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:  _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SizedBox(
        height: 61,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Theme.of(context).backgroundColor,
          iconSize: 30,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/bottom_nav_home.png'),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon:  ImageIcon(
                AssetImage('assets/images/bottom_nav_status-up.png'),
              ),
              label: 'Status',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/bottom_nav_wallet.png'),
              ),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/bottom_nav_profile.png'),
              ),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex, //New
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    ComingSoon(),
    TradingPage(),
    ComingSoon(),
    ComingSoon(),
  ];

}