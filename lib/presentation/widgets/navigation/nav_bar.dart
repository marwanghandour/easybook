import 'package:flutter/material.dart';

class ResponsiveNavBar extends StatelessWidget {
  const ResponsiveNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final bool isLargeScreen = width > 800;  // For larger screens, show full navbar

    return Row(
      children: [
        if (!isLargeScreen) 
          const _SideMenu(),
        
        if (isLargeScreen)
          const Expanded(
            child: _NavBarItems(),
          ),
      ],
    );
  }
}

class _SideMenu extends StatelessWidget {
  const _SideMenu();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.only(top: 20),
        children: _menuItems
            .map((item) => ListTile(
                  onTap: () {},
                  title: Text(item),
                ))
            .toList(),
      ),
    );
  }
}

class _NavBarItems extends StatelessWidget {
  const _NavBarItems();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _menuItems
            .map(
              (item) => InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    item,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

final List<String> _menuItems = <String>[
  'About',
  'Contact',
  'Settings',
  'Sign Out',
];
