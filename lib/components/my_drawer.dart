import "package:flutter/material.dart";
import "../services/auth/auth_service.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout(BuildContext context) {
    // Get auth service
    final auth = AuthService();
    auth.signOut();
    // Navigate back to the login page or wherever appropriate
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // Logo
              DrawerHeader(
                child: Center(
                  child: Image.asset(
                    'assets/amal_logo1.png',
                    fit: BoxFit.contain,
                    height: 100, // Adjust the height as needed
                  ),
                ),
              ),

              // Explore list tile
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: const Text("Explore"),
                  leading: const Icon(Icons.explore),
                  onTap: () {
                    Navigator.pushNamed(context, '/explore');
                  },
                ),
              ),

              // Advertise list tile
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: const Text("Advertise"),
                  leading: const Icon(Icons.ads_click),
                  onTap: () {
                    Navigator.pushNamed(context, '/advertise');
                  },
                ),
              ),

              // Chat list tile
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: const Text("Chat"),
                  leading: const Icon(Icons.chat),
                  onTap: () {
                    Navigator.pushNamed(context, '/chat');
                  },
                ),
              ),

              // Me list tile
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: const Text("Me"),
                  leading: const Icon(Icons.person),
                  onTap: () {
                    Navigator.pushNamed(context, '/me');
                  },
                ),
              ),

              // Settings list tile
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: const Text("Settings"),
                  leading: const Icon(Icons.settings),
                  onTap: () {
                    Navigator.pushNamed(context, '/settings');
                  },
                ),
              ),
            ],
          ),

          // Logout list tile
          Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
            child: ListTile(
              title: const Text("Logout"),
              leading: const Icon(Icons.logout),
              onTap: () => logout(context),
            ),
          ),
        ],
      ),
    );
  }
}
