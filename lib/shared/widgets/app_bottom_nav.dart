import 'package:clot/feature/home/screens/home_screen.dart';
import 'package:clot/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppBottomNav extends StatefulWidget {
  const AppBottomNav({super.key});

  @override
  State<AppBottomNav> createState() => _AppBottomNavState();
}

class _AppBottomNavState extends State<AppBottomNav> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    Container(),
    Container(),
    Container(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.08,
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: _onItemTapped,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Iconsax.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.notification),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.receipt),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Iconsax.profile_circle,
                ),
                label: '',
              ),
            ],
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: AppColors.greyText,
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }
}
