import 'package:flutter/material.dart';
import 'package:flutter_cinema_booking_ui/pages/login_page.dart';

import '../const.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: AppBar(
        forceMaterialTransparency: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Account",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: constraints.maxWidth * 0.15,
                        backgroundImage: const NetworkImage(
                            'https://t3.ftcdn.net/jpg/06/07/84/82/240_F_607848231_w5iFN4tMmtI2woJjMh7Q8mGvgARnzHgQ.jpg'),
                        backgroundColor: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 3.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'Angelina',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Angelina@example.com',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 32),
                      _buildListTile(
                        icon: Icons.settings,
                        title: 'Settings',
                        onTap: () {
                          // Navigate to settings page
                        },
                      ),
                      _buildListTile(
                        icon: Icons.history,
                        title: 'Booking History',
                        onTap: () {
                          // Navigate to booking history page
                        },
                      ),
                      _buildListTile(
                        icon: Icons.logout,
                        title: 'Logout',
                        onTap: () {
                          // Navigate to login page
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildListTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: Colors.white, size: 28),
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white70),
          onTap: onTap,
        ),
        const Divider(color: Colors.white24, thickness: 1),
      ],
    );
  }
}
