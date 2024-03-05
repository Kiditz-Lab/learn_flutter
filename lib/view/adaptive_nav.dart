import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_flutter/components/change_theme_view.dart';
import 'package:learn_flutter/components/responsive.dart';

final _mobileKey = GlobalKey<ScaffoldState>();

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
      key: _mobileKey,
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
              if (_mobileKey.currentState?.isDrawerOpen == true) {
                _mobileKey.currentState?.closeDrawer();
              }
              context.go('/dashboard');
            },
            leading: const Icon(Icons.dashboard_outlined),
            title: const Text('Dashboard'),
          ),
          ListTile(
            onTap: () {
              context.go('/home');
              if (_mobileKey.currentState?.isDrawerOpen == true) {
                _mobileKey.currentState?.closeDrawer();
              }
            },
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
          ),
          ListTile(
            onTap: () {
              if (_mobileKey.currentState?.isDrawerOpen == true) {
                _mobileKey.currentState?.closeDrawer();
              }
              context.go('/profile');
            },
            leading: const Icon(Icons.person_2_outlined),
            title: const Text('Profile'),
          )
        ],
      ),
    );
  }
}
