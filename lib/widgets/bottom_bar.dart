import 'package:clone_blinkit/constants/app_colors.dart';
import 'package:clone_blinkit/screens/logic/navigation_bar_cubit/bottom_app_bar_cubit.dart';
import 'package:clone_blinkit/screens/logic/navigation_bar_cubit/bottom_app_bar_state.dart';
import 'package:clone_blinkit/screens/home_screen.dart/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  final List<Widget> _screens = const [
    HomeScreen(),
    SearchScreen(),
    NotificationsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomBarCubit(),
      child: BlocBuilder<BottomBarCubit, BottomBarState>(
        builder: (context, state) {
          return Scaffold(
            body: _screens[state.selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              
              backgroundColor: AppColors.white,
              selectedItemColor: AppColors.softYellow,
              unselectedItemColor: Colors.grey,
              currentIndex: state.selectedIndex,
              onTap:
                  (index) => context.read<BottomBarCubit>().updateIndex(index),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: 'Notifications',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  label: 'Profile',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("🔍 Search Screen"));
  }
}

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("🔔 Notifications Screen"));
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("👤 Profile Screen"));
  }
}
