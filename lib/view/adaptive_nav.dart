import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_flutter/components/change_theme_view.dart';
import 'package:learn_flutter/components/responsive.dart';

final mainKey = GlobalKey<ScaffoldState>();

class AdaptiveNav extends StatelessWidget {
  final Widget? child;
  const AdaptiveNav({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: _MobileView(child: child),
      desktop: _DesktopView(child: child),
    );
  }
}

class _DesktopView extends StatelessWidget {
  final Widget? child;
  const _DesktopView({this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: mainKey,
      appBar: AppBar(
        centerTitle: false,
        title: const Text('My App'),
        actions: const [
          ChangeThemeView(),
        ],
      ),
      body: Row(
        children: [
          const _MainDrawer(),
          Expanded(
            child: child!,
          ),
        ],
      ),
    );
  }
}

class _MobileView extends StatefulWidget {
  final Widget? child;
  const _MobileView({
    this.child,
  });

  @override
  State<_MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<_MobileView> {
  int navIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: mainKey,
      drawer: const _MainDrawer(),
      appBar: AppBar(
        title: const Text('My App'),
        actions: const [
          ChangeThemeView(),
        ],
      ),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        selectedLabelStyle:
            TextStyle(color: Theme.of(context).colorScheme.primary),
        unselectedItemColor: Theme.of(context).colorScheme.primaryContainer,
        unselectedLabelStyle:
            TextStyle(color: Theme.of(context).colorScheme.primaryContainer),
        onTap: (value) {
          setState(() {
            navIndex = value;
          });
          switch (value) {
            case 0:
              context.go('/dashboard');
              break;
            case 1:
              context.go('/home');
              break;
            case 2:
              context.go('/profile');
              break;
            case 3:
              context.go('/customers');
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: 'Customers',
          )
        ],
      ),
    );
  }
}

class _MainDrawer extends StatelessWidget {
  const _MainDrawer();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: ListView(
        children: [
          ListTile(
            onTap: () {
              if (mainKey.currentState?.isDrawerOpen == true) {
                mainKey.currentState?.closeDrawer();
              }
              context.go('/dashboard');
            },
            leading: const Icon(Icons.dashboard_outlined),
            title: const Text('Dashboard'),
          ),
          ListTile(
            onTap: () {
              context.go('/home');
              if (mainKey.currentState?.isDrawerOpen == true) {
                mainKey.currentState?.closeDrawer();
              }
            },
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
          ),
          ListTile(
            onTap: () {
              if (mainKey.currentState?.isDrawerOpen == true) {
                mainKey.currentState?.closeDrawer();
              }
              context.go('/profile');
            },
            leading: const Icon(Icons.person_2_outlined),
            title: const Text('Profile'),
          ),
          ListTile(
            onTap: () {
              if (mainKey.currentState?.isDrawerOpen == true) {
                mainKey.currentState?.closeDrawer();
              }
              context.go('/customers');
            },
            leading: const Icon(Icons.person_2_outlined),
            title: const Text('Customers'),
          )
        ],
      ),
    );
  }
}
