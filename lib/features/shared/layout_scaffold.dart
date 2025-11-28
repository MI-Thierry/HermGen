import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LayoutScaffold extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  final double _iconSize = 25;

  const LayoutScaffold({required this.navigationShell, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: navigationShell.goBranch,
        selectedIndex: navigationShell.currentIndex,
        indicatorColor: Theme.of(context).colorScheme.primary,
        labelPadding: EdgeInsets.zero,
        destinations: [
          NavigationDestination(
            icon: Icon(
              Icons.home_outlined,
              size: _iconSize,
              color: navigationShell.currentIndex == 0
                  ? Theme.of(context).colorScheme.onPrimary
                  : null,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.favorite_outline,
              size: _iconSize,
              color: navigationShell.currentIndex == 1
                  ? Theme.of(context).colorScheme.onPrimary
                  : null,
            ),
            label: 'Wishlist',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.article_outlined,
              size: _iconSize,
              color: navigationShell.currentIndex == 2
                  ? Theme.of(context).colorScheme.onPrimary
                  : null,
            ),
            label: 'Categories',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.local_mall_outlined,
              size: _iconSize,
              color: navigationShell.currentIndex == 3
                  ? Theme.of(context).colorScheme.onPrimary
                  : null,
            ),
            label: 'Cart',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.person_outline,
              size: _iconSize,
              color: navigationShell.currentIndex == 4
                  ? Theme.of(context).colorScheme.onPrimary
                  : null,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
